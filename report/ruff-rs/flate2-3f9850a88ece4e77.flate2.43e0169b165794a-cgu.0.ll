Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/flate2-3f9850a88ece4e77.flate2.43e0169b165794a-cgu.0?download=true
inline.NumInlined: 246
inline.NumDeleted: 46
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc3vec3VechEE3mapRShNCNvMNtCsmA23ifqKc8_6flate22gzNtB1u_8GzHeader5extra0EB1w_(ptr nofree readonly align 8 captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %.val, %bb.b ], [ null, %bb.a ]
  %.sroa.3.0 = phi i64 [ %.val3, %bb.b ], [ undef, %bb.a ]
  %i.c = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc3vec3VechEE3mapRShNCNvMNtCsmA23ifqKc8_6flate22gzNtB1u_8GzHeader7comment0EB1w_(ptr nofree readonly align 8 captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %.val, %bb.b ], [ null, %bb.a ]
  %.sroa.3.0 = phi i64 [ %.val3, %bb.b ], [ undef, %bb.a ]
  %i.c = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc3vec3VechEE3mapRShNCNvMNtCsmA23ifqKc8_6flate22gzNtB1u_8GzHeader8filename0EB1w_(ptr nofree readonly align 8 captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %.val, %bb.b ], [ null, %bb.a ]
  %.sroa.3.0 = phi i64 [ %.val3, %bb.b ], [ undef, %bb.a ]
  %i.c = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayReECsmA23ifqKc8_6flate2(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  store ptr %1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCskyMLgGZzWrX_14rustc_demangle, ptr %.sroa.2.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj18_Kj1_ECsmA23ifqKc8_6flate2(ptr %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj1e_Kj1_ECsmA23ifqKc8_6flate2(ptr %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj20_Kj1_ECsmA23ifqKc8_6flate2(ptr %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: noinline nonlazybind uwtable
define ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newNtNtCsmA23ifqKc8_6flate23mem13CompressErrorEBU_(i8 %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.a = tail call align 8 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 16, 113) 16, i64 8) #31 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCsmA23ifqKc8_6flate23mem13CompressErrorINtB5_4IntoINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2k_4SyncEL_EE4intoBC_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 8, i64 16) #32
  unreachable

_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCsmA23ifqKc8_6flate23mem13CompressErrorINtB5_4IntoINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2k_4SyncEL_EE4intoBC_.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = tail call ptr @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4__new(i8 %0, ptr nonnull %i.a, ptr nonnull align 8 @53)
  ret ptr %i.d
}

; Function Attrs: noinline nonlazybind uwtable
define ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newNtNtCsmA23ifqKc8_6flate23mem15DecompressErrorEBU_(i8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.a = tail call align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 16, 113) 24, i64 8) #31 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCsmA23ifqKc8_6flate23mem15DecompressErrorINtB5_4IntoINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2m_4SyncEL_EE4intoBC_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 8, i64 24) #32
  unreachable

_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCsmA23ifqKc8_6flate23mem15DecompressErrorINtB5_4IntoINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2m_4SyncEL_EE4intoBC_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = tail call ptr @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4__new(i8 %0, ptr nonnull %i.a, ptr nonnull align 8 @55)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterhKj2_EECsmA23ifqKc8_6flate2(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load i64, ptr %1, align 8
  %i.e = sub nuw i64 %i.c, %i.d
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr align 8 %0, i64 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.a, align 8              ; 4 uses
  %i.l = load i64, ptr %i.j, align 8              ; 3 uses
  %.not5.i.i.i = icmp eq i64 %i.k, %i.l
  br i1 %.not5.i.i.i, label %bb.b, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.i
  %i.m = getelementptr i8, ptr %i.a, i64 %i.k
  %scevgep8 = getelementptr i8, ptr %i.m, i64 16
  %i.n = sub i64 %i.l, %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep, ptr align 1 %scevgep8, i64 %i.n, i1 false)
  %i.o = add i64 %i.l, %i.i
  %i.p = sub i64 %i.o, %i.k
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.preheader, %bb.a
  %.val1.i.i.i.i.i4.i.i.i = phi i64 [ %i.i, %bb.a ], [ %i.p, %.lr.ph.i.i.i.preheader ]
  store i64 %.val1.i.i.i.i.i4.i.i.i, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB16_5slice4iter4IterhEEECsmA23ifqKc8_6flate2(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr align 8 %0, i64 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 8 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 8 uses
  %i.n = load ptr, ptr %i.b, align 8              ; 9 uses
  %i.o = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2g_3VechE14extend_trustedB3_E0ECsmA23ifqKc8_6flate2.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.s = sub nuw i64 %i.q, %i.r                   ; 8 uses
  %min.iters.check = icmp ult i64 %i.s, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %i.m, %i.k
  %i.u = sub i64 %i.r, %i.t
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check6 = icmp ult i64 %i.s, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.s, 28
  %n.vec = and i64 %i.s, -32                      ; 5 uses
  %i.w = add i64 %i.m, %n.vec                     ; 2 uses
  %i.x = getelementptr i8, ptr %i.j, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <16 x i8>, ptr %i.y, align 1
  %wide.load7 = load <16 x i8>, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %i.x, i64 %index  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <16 x i8> %wide.load, ptr %i.aa, align 1
  store <16 x i8> %wide.load7, ptr %i.ab, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2g_3VechE14extend_trustedB3_E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.s, -4                      ; 4 uses
  %i.ad = add i64 %i.m, %n.vec8                   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.m
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %index9
  %wide.load10 = load <4 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %i.ae, i64 %index9
  store <4 x i8> %wide.load10, ptr %i.ag, align 1
  %index.next11 = add nuw i64 %index9, 4          ; 2 uses
  %i.ah = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %i.s, %n.vec8
  br i1 %cmp.n12, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2g_3VechE14extend_trustedB3_E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.3.0.i.i.ph = phi i64 [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %3 = sub i64 %i.q, %i.r
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.3.0.i.i.prol = phi i64 [ %i.al, %vec.epilog.scalar.ph.prol ], [ %.sroa.3.0.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.prol = phi i64 [ %i.am, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.prol
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.3.0.i.i.prol
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = add i64 %.sroa.3.0.i.i.prol, 1          ; 3 uses
  %i.am = add nuw i64 %.sroa.01.0.i.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !11

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.al, %vec.epilog.scalar.ph.prol ]
  %.sroa.3.0.i.i.unr = phi i64 [ %.sroa.3.0.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.al, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.am, %vec.epilog.scalar.ph.prol ]
  %i.an = sub i64 %.sroa.01.0.i.i.i.ph, %i.q
  %i.ao = add i64 %i.an, %i.r
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2g_3VechE14extend_trustedB3_E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.3.0.i.i = phi i64 [ %i.bi, %vec.epilog.scalar.ph ], [ %.sroa.3.0.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.bj, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.3.0.i.i
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr i8, ptr %i.j, i64 %.sroa.3.0.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  store i8 %i.av, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr i8, ptr %i.j, i64 %.sroa.3.0.i.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 2
  store i8 %i.ba, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr i8, ptr %i.j, i64 %.sroa.3.0.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 3
  store i8 %i.bf, ptr %i.bh, align 1
  %i.bi = add i64 %.sroa.3.0.i.i, 4               ; 2 uses
  %i.bj = add nuw i64 %.sroa.01.0.i.i.i, 4        ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.s
  br i1 %i.bk, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2g_3VechE14extend_trustedB3_E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph, !llvm.loop !12

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2g_3VechE14extend_trustedB3_E0ECsmA23ifqKc8_6flate2.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %storemerge.i.i = phi i64 [ %i.m, %bb.b ], [ %i.ad, %vec.epilog.middle.block ], [ %i.w, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bi, %vec.epilog.scalar.ph ]
  store i64 %storemerge.i.i, ptr %i.l, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @0, ptr nonnull inttoptr (i64 35 to ptr), ptr nonnull align 8 @2) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RINvNtCs4NRVxsYgnAr_4core10intrinsics23is_val_statically_knownbECsmA23ifqKc8_6flate2(i1 zeroext %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RINvNtCs4NRVxsYgnAr_4core3cmp3minjECsmA23ifqKc8_6flate2(i64 %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCsehVNULHUZqJ_7zlib_rs(i64 %0, i64 %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core3mem4dropINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsehVNULHUZqJ_7zlib_rs5c_api8z_streamEECsmA23ifqKc8_6flate2(ptr align 8 captures(address) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %0, i64 112, i64 8) #31
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsmA23ifqKc8_6flate2(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsmA23ifqKc8_6flate2.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsmA23ifqKc8_6flate2.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsmA23ifqKc8_6flate2.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsmA23ifqKc8_6flate2.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsmA23ifqKc8_6flate2.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %0)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsmA23ifqKc8_6flate23crc3CrcEEEB1z_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.a, i64 24, i64 8) #31
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringEECsmA23ifqKc8_6flate2(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.f, i64 range(i64 1, 0) %i.d, i64 1) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsmA23ifqKc8_6flate2(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsmA23ifqKc8_6flate2.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsmA23ifqKc8_6flate2.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsehVNULHUZqJ_7zlib_rs5c_api8z_streamEECsmA23ifqKc8_6flate2(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.a, i64 112, i64 8) #31
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsmA23ifqKc8_6flate23crc3CrcEEB1d_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.a, i64 24, i64 8) #31
  ret void
}

end_hunk_0
begin_hunk_1_@_RINvXs1_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsmA23ifqKc8_6flate2:bb.a
  store i64 %2, ptr %i.q, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %i.g, i64 %i.r) #32
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.h, align 8
  store i64 %i.g, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.u, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsmA23ifqKc8_6flate2.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsmA23ifqKc8_6flate2(ptr %0, ptr %1, ptr nofree align 8 captures(none) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %.pre = load i64, ptr %i.f, align 8             ; 2 uses
  %xtraiter = and i64 %i.d, 1
  %i.g = add i64 %i.b, -1
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.d, -2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val.i.i.i.i = load ptr, ptr %2, align 8
  %i.i = getelementptr i8, ptr %2, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.i, align 8
  store i64 %.val1.i.i.i.i, ptr %.val.i.i.i.i, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.d, %.new
  %i.j = phi i64 [ %.pre, %.new ], [ %i.w, %bb.d ]
  %.sroa.01.0 = phi i64 [ 0, %.new ], [ %i.x, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0
  %i.l = load i8, ptr %i.k, align 1
  %i.m = load ptr, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 %i.l, ptr %i.n, align 1
  %i.o = load i64, ptr %i.f, align 8
  %i.p = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.p, ptr %i.f, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = load ptr, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.p
  store i8 %i.s, ptr %i.u, align 1
  %i.v = load i64, ptr %i.f, align 8
  %i.w = add i64 %i.v, 1                          ; 4 uses
  store i64 %i.w, ptr %i.f, align 8
  %i.x = add nuw i64 %.sroa.01.0, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.e, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.pre, %bb.b ], [ %i.w, %.unr-lcssa ]
  %.sroa.01.0.epil.init = phi i64 [ 0, %bb.b ], [ %i.x, %.unr-lcssa ]
  %lcmp.mod17 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.epil.init
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.epil.init
  store i8 %i.z, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.f, align 8
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.w, %.unr-lcssa ], [ %i.ad, %.epil.preheader ]
  %.val.i.i.i.i13 = load ptr, ptr %2, align 8
  store i64 %.lcssa, ptr %.val.i.i.i.i13, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterhKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2i_3VechE14extend_trustedBE_E0E0ECsmA23ifqKc8_6flate2(ptr nofree align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8 ; 2 uses
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.34.0.copyload = load ptr, ptr %.sroa.34.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = load i64, ptr %i.b, align 8
  %.not5.i = icmp eq i64 %i.c, %i.d
  br i1 %.not5.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.5.0 = phi i64 [ %i.j, %.lr.ph.i ], [ %.sroa.23.0.copyload, %bb.a ] ; 2 uses
  %i.e = phi i64 [ %i.k, %.lr.ph.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = add nuw i64 %i.e, 1
  store i64 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  %i.h = load i8, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.34.0.copyload, i64 %.sroa.5.0
  store i8 %i.h, ptr %i.i, align 1
  %i.j = add i64 %.sroa.5.0, 1                    ; 2 uses
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = load i64, ptr %i.b, align 8
  %.not.i = icmp eq i64 %i.k, %i.l
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.a
  %.val1.i.i.i.i.i4.i = phi i64 [ %.sroa.23.0.copyload, %bb.a ], [ %i.j, %.lr.ph.i ]
  store i64 %.val1.i.i.i.i.i4.i, ptr %.sroa.02.0.copyload, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninithEE8try_folduNCINvMNtB7_9try_traitINtB3R_17NeverShortCircuituE10wrap_mut_2uhNCINvNvB10_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5l_3VechE14extend_trustedINtB20_8IntoIterhKj2_EE0E0E0B46_E0B46_ECsmA23ifqKc8_6flate2(ptr nofree align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = load i64, ptr %i.a, align 8
  %.not5 = icmp eq i64 %i.b, %i.c
  br i1 %.not5, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 24
  %.val1.i.i.i.i.i4.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %.val1.i.i.i.i.i4 = phi i64 [ %.val1.i.i.i.i.i4.pre, %.._crit_edge_crit_edge ], [ %i.p, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i.i3 = load ptr, ptr %i.f, align 8
  store i64 %.val1.i.i.i.i.i4, ptr %.val.i.i.i.i.i3, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.g = phi i64 [ %i.b, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.h = add nuw i64 %i.g, 1
  store i64 %i.h, ptr %0, align 8
  %i.i = load ptr, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = load i64, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 %i.k, ptr %i.n, align 1
  %i.o = load i64, ptr %i.e, align 8
  %i.p = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.p, ptr %i.e, align 8
  %i.q = load i64, ptr %0, align 8                ; 2 uses
  %i.r = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.q, %i.r
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2I_3VechE14extend_trustedBP_E0E0ECsmA23ifqKc8_6flate2(ptr %0, ptr %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsmA23ifqKc8_6flate2.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.3.0.copyload, %.sroa.7.0.copyload2
  %i.f = sub i64 %i.c, %i.e
  %diff.check = icmp ugt i64 %i.f, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.3.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.3.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <16 x i8>, ptr %i.j, align 1
  %wide.load4 = load <16 x i8>, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %i.i, i64 %index   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <16 x i8> %wide.load, ptr %i.l, align 1
  store <16 x i8> %wide.load4, ptr %i.m, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.d, -4                      ; 4 uses
  %i.o = add i64 %.sroa.3.0.copyload, %n.vec5     ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.3.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index6
  %wide.load7 = load <4 x i8>, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %i.p, i64 %index6
  store <4 x i8> %wide.load7, ptr %i.r, align 1
  %index.next8 = add nuw i64 %index6, 4           ; 2 uses
  %i.s = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.d, %n.vec5
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.3.0.ph = phi i64 [ %.sroa.3.0.copyload, %iter.check ], [ %.sroa.3.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 3 uses
  %3 = sub i64 %i.b, %i.c
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.3.0.prol = phi i64 [ %i.w, %vec.epilog.scalar.ph.prol ], [ %.sroa.3.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.x, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.sroa.3.0.prol
  store i8 %i.u, ptr %i.v, align 1
  %i.w = add i64 %.sroa.3.0.prol, 1               ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !15

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.w, %vec.epilog.scalar.ph.prol ]
  %.sroa.3.0.unr = phi i64 [ %.sroa.3.0.ph, %vec.epilog.scalar.ph.preheader ], [ %i.w, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %i.y = sub i64 %.sroa.01.0.i.ph, %i.b
  %i.z = add i64 %i.y, %i.c
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.3.0 = phi i64 [ %i.at, %vec.epilog.scalar.ph ], [ %.sroa.3.0.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.sroa.3.0
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.3.0
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  store i8 %i.ag, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.3.0
  %i.an = getelementptr i8, ptr %i.am, i64 2
  store i8 %i.al, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.3.0
  %i.as = getelementptr i8, ptr %i.ar, i64 3
  store i8 %i.aq, ptr %i.as, align 1
  %i.at = add i64 %.sroa.3.0, 4                   ; 2 uses
  %i.au = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.d
  br i1 %i.av, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph, !llvm.loop !16

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsmA23ifqKc8_6flate2.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.3.0.copyload, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.at, %vec.epilog.scalar.ph ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VechEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendhE6extendAhj2_ECsmA23ifqKc8_6flate2(ptr align 8 %0, i16 %1) unnamed_addr #6 personality ptr @rust_eh_personality {
_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterhKj2_EE11spec_extendCsmA23ifqKc8_6flate2.exit:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr align 8 %0, i64 2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.d
  store i16 %1, ptr %scevgep.i.i, align 1
  %i.e = add i64 %i.d, 2
  store i64 %i.e, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VechEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendhE6extendBv_ECsmA23ifqKc8_6flate2(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.35.0.copyload.i = load i64, ptr %.sroa.35.0..sroa_idx.i, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr align 8 %0, i64 %.sroa.35.0.copyload.i)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not.i.i = icmp samesign eq i64 %.sroa.35.0.copyload.i, 0
  br i1 %.not.i.i, label %_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCsmA23ifqKc8_6flate2.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr readonly align 1 %.sroa.24.0.copyload.i, i64 %.sroa.35.0.copyload.i, i1 false)
  br label %_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCsmA23ifqKc8_6flate2.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.03.0.copyload.i, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.24.0.copyload.i, ptr %i.i, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEECsmA23ifqKc8_6flate2.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEECsmA23ifqKc8_6flate2.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  resume { ptr, i32 } %i.h

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCsmA23ifqKc8_6flate2.exit: ; preds = %.noexc.i, %bb.b
  %i.k = load i64, ptr %i.c, align 8
  %i.l = add i64 %i.k, %.sroa.35.0.copyload.i
  store i64 %i.l, ptr %i.c, align 8
  store i64 %.sroa.03.0.copyload.i, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.24.0.copyload.i, ptr %i.m, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VechEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendhE6extendINtNtNtBO_8adapters6copied6CopiedINtNtNtBQ_5slice4iter4IterhEEECsmA23ifqKc8_6flate2(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr align 8 %0, i64 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 8 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 8 uses
  %i.n = load ptr, ptr %i.b, align 8              ; 9 uses
  %i.o = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB1m_5slice4iter4IterhEEE11spec_extendCsmA23ifqKc8_6flate2.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.s = sub nuw i64 %i.q, %i.r                   ; 8 uses
  %min.iters.check = icmp ult i64 %i.s, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %i.m, %i.k
  %i.u = sub i64 %i.r, %i.t
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check2 = icmp ult i64 %i.s, 32
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.s, 28
  %n.vec = and i64 %i.s, -32                      ; 5 uses
  %i.w = add i64 %i.m, %n.vec                     ; 2 uses
  %i.x = getelementptr i8, ptr %i.j, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <16 x i8>, ptr %i.y, align 1
  %wide.load3 = load <16 x i8>, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %i.x, i64 %index  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <16 x i8> %wide.load, ptr %i.aa, align 1
  store <16 x i8> %wide.load3, ptr %i.ab, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB1m_5slice4iter4IterhEEE11spec_extendCsmA23ifqKc8_6flate2.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4 = and i64 %i.s, -4                      ; 4 uses
  %i.ad = add i64 %i.m, %n.vec4                   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.m
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next7, %vec.epilog.vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %index5
  %wide.load6 = load <4 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %i.ae, i64 %index5
  store <4 x i8> %wide.load6, ptr %i.ag, align 1
  %index.next7 = add nuw i64 %index5, 4           ; 2 uses
  %i.ah = icmp eq i64 %index.next7, %n.vec4
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n8 = icmp eq i64 %i.s, %n.vec4
  br i1 %cmp.n8, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB1m_5slice4iter4IterhEEE11spec_extendCsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.3.0.i.i.i.i.ph = phi i64 [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec4, %vec.epilog.middle.block ] ; 3 uses
  %3 = sub i64 %i.q, %i.r
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.3.0.i.i.i.i.prol = phi i64 [ %i.al, %vec.epilog.scalar.ph.prol ], [ %.sroa.3.0.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.prol = phi i64 [ %i.am, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i.i.prol
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.3.0.i.i.i.i.prol
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = add i64 %.sroa.3.0.i.i.i.i.prol, 1      ; 3 uses
  %i.am = add nuw i64 %.sroa.01.0.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !19

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.al, %vec.epilog.scalar.ph.prol ]
  %.sroa.3.0.i.i.i.i.unr = phi i64 [ %.sroa.3.0.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.al, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.am, %vec.epilog.scalar.ph.prol ]
  %i.an = sub i64 %.sroa.01.0.i.i.i.i.i.ph, %i.q
  %i.ao = add i64 %i.an, %i.r
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB1m_5slice4iter4IterhEEE11spec_extendCsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.bi, %vec.epilog.scalar.ph ], [ %.sroa.3.0.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.bj, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i.i
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.3.0.i.i.i.i
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr i8, ptr %i.j, i64 %.sroa.3.0.i.i.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  store i8 %i.av, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr i8, ptr %i.j, i64 %.sroa.3.0.i.i.i.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 2
  store i8 %i.ba, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr i8, ptr %i.j, i64 %.sroa.3.0.i.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 3
  store i8 %i.bf, ptr %i.bh, align 1
  %i.bi = add i64 %.sroa.3.0.i.i.i.i, 4           ; 2 uses
  %i.bj = add nuw i64 %.sroa.01.0.i.i.i.i.i, 4    ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.s
  br i1 %i.bk, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB1m_5slice4iter4IterhEEE11spec_extendCsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph, !llvm.loop !20

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @0, ptr nonnull inttoptr (i64 35 to ptr), ptr nonnull align 8 @2) #32
  unreachable

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB1m_5slice4iter4IterhEEE11spec_extendCsmA23ifqKc8_6flate2.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %storemerge.i.i.i.i = phi i64 [ %i.m, %bb.b ], [ %i.ad, %vec.epilog.middle.block ], [ %i.w, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bi, %vec.epilog.scalar.ph ]
  store i64 %storemerge.i.i.i.i, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RINvYINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterhKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1Q_3VechE14extend_trustedB3_E0ECsmA23ifqKc8_6flate2(ptr nofree align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = load i64, ptr %i.b, align 8
  %.not5.i.i = icmp eq i64 %i.c, %i.d
  br i1 %.not5.i.i, label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterhKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2i_3VechE14extend_trustedBE_E0E0ECsmA23ifqKc8_6flate2.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.5.0.i = phi i64 [ %i.j, %.lr.ph.i.i ], [ %.sroa.2.0.copyload, %bb.a ] ; 2 uses
  %i.e = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = add nuw i64 %i.e, 1
  store i64 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  %i.h = load i8, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 %.sroa.5.0.i
  store i8 %i.h, ptr %i.i, align 1
  %i.j = add i64 %.sroa.5.0.i, 1                  ; 2 uses
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = load i64, ptr %i.b, align 8
  %.not.i.i = icmp eq i64 %i.k, %i.l
  br i1 %.not.i.i, label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterhKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2i_3VechE14extend_trustedBE_E0E0ECsmA23ifqKc8_6flate2.exit, label %.lr.ph.i.i

_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterhKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2i_3VechE14extend_trustedBE_E0E0ECsmA23ifqKc8_6flate2.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.val1.i.i.i.i.i4.i.i = phi i64 [ %.sroa.2.0.copyload, %bb.a ], [ %i.j, %.lr.ph.i.i ]
  store i64 %.val1.i.i.i.i.i4.i.i, ptr %.sroa.0.0.copyload, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2g_3VechE14extend_trustedB3_E0ECsmA23ifqKc8_6flate2(ptr %0, ptr %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 8 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 8 uses
  %.sroa.3.0.copyload2 = ptrtoaddr ptr %.sroa.3.0.copyload to i64
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2I_3VechE14extend_trustedBP_E0E0ECsmA23ifqKc8_6flate2.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.2.0.copyload, %.sroa.3.0.copyload2
  %i.f = sub i64 %i.c, %i.e
  %diff.check = icmp ugt i64 %i.f, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.2.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.sroa.2.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <16 x i8>, ptr %i.j, align 1
  %wide.load4 = load <16 x i8>, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %i.i, i64 %index   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <16 x i8> %wide.load, ptr %i.l, align 1
  store <16 x i8> %wide.load4, ptr %i.m, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2I_3VechE14extend_trustedBP_E0E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.d, -4                      ; 4 uses
  %i.o = add i64 %.sroa.2.0.copyload, %n.vec5     ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.sroa.2.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index6
  %wide.load7 = load <4 x i8>, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %i.p, i64 %index6
  store <4 x i8> %wide.load7, ptr %i.r, align 1
  %index.next8 = add nuw i64 %index6, 4           ; 2 uses
  %i.s = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.d, %n.vec5
  br i1 %cmp.n9, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2I_3VechE14extend_trustedBP_E0E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.3.0.i.ph = phi i64 [ %.sroa.2.0.copyload, %iter.check ], [ %.sroa.2.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 3 uses
  %3 = sub i64 %i.b, %i.c
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.3.0.i.prol = phi i64 [ %i.w, %vec.epilog.scalar.ph.prol ], [ %.sroa.3.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.prol = phi i64 [ %i.x, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.i.prol
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 %.sroa.3.0.i.prol
  store i8 %i.u, ptr %i.v, align 1
  %i.w = add i64 %.sroa.3.0.i.prol, 1             ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !23

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.w, %vec.epilog.scalar.ph.prol ]
  %.sroa.3.0.i.unr = phi i64 [ %.sroa.3.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.w, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.i.unr = phi i64 [ %.sroa.01.0.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %i.y = sub i64 %.sroa.01.0.i.i.ph, %i.b
  %i.z = add i64 %i.y, %i.c
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2I_3VechE14extend_trustedBP_E0E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.3.0.i = phi i64 [ %i.at, %vec.epilog.scalar.ph ], [ %.sroa.3.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.i
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 %.sroa.3.0.i
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.sroa.3.0.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  store i8 %i.ag, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.sroa.3.0.i
  %i.an = getelementptr i8, ptr %i.am, i64 2
  store i8 %i.al, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.sroa.3.0.i
  %i.as = getelementptr i8, ptr %i.ar, i64 3
  store i8 %i.aq, ptr %i.as, align 1
  %i.at = add i64 %.sroa.3.0.i, 4                 ; 2 uses
  %i.au = add nuw i64 %.sroa.01.0.i.i, 4          ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.d
  br i1 %i.av, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2I_3VechE14extend_trustedBP_E0E0ECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph, !llvm.loop !24

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2I_3VechE14extend_trustedBP_E0E0ECsmA23ifqKc8_6flate2.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge.i = phi i64 [ %.sroa.2.0.copyload, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.at, %vec.epilog.scalar.ph ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNCINvMNtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uhNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2v_3VechE14extend_trustedINtNtNtB9_5array4iter8IntoIterhKj2_EE0E0E0CsmA23ifqKc8_6flate2(ptr nofree align 8 captures(none) %0, i8 %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i8 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNCINvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninithEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2uhNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4r_3VechE14extend_trustedINtBa_8IntoIterhKj2_EE0E0E0B2B_E0CsmA23ifqKc8_6flate2(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  store i8 %i.c, ptr %i.h, align 1
  %i.i = load i64, ptr %i.f, align 8
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterhKj2_EE0CsmA23ifqKc8_6flate2(ptr nofree align 8 captures(none) %0, i8 %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i8 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB18_5slice4iter4IterhEEE0CsmA23ifqKc8_6flate2(ptr nofree align 8 captures(none) %0, i8 %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i8 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied9copy_foldhuNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB23_3VechE14extend_trustedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEE0E0E0CsmA23ifqKc8_6flate2(ptr nofree align 8 captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  store i8 %i.a, ptr %i.f, align 1
  %i.g = load i64, ptr %i.d, align 8
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterhEEE0E0CsmA23ifqKc8_6flate2(ptr nofree align 8 captures(none) %0, i8 %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i8 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBe_5array4iter8IntoIterhKj2_EE0E0CsmA23ifqKc8_6flate2(ptr nofree align 8 captures(none) %0, i8 %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i8 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i32 @_RNvMCsmA23ifqKc8_6flate2NtB2_11Compression3new(i32 returned %0) unnamed_addr #5 {
bb.a:
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @_RNvMCsmA23ifqKc8_6flate2NtB2_11Compression4best() unnamed_addr #5 {
bb.a:
  ret i32 9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @_RNvMCsmA23ifqKc8_6flate2NtB2_11Compression4fast() unnamed_addr #5 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @_RNvMCsmA23ifqKc8_6flate2NtB2_11Compression4none() unnamed_addr #5 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i32 @_RNvMCsmA23ifqKc8_6flate2NtB2_11Compression5level(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  ret i32 %i.a
end_hunk_1
begin_hunk_2_@_RNvMs1_NtCsmA23ifqKc8_6flate22gzNtB5_9GzBuilder11into_header:bb.a
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.y = load i64, ptr %i.g, align 8
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.z, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.noexc
  %i.ad = load i64, ptr %i.ac, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %i.ab, i64 %i.ad) #32
          to label %.noexc26 unwind label %bb.d

.noexc26:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit ], [ %i.af, %bb.d ]
  %.sroa.015.0 = phi i1 [ %.not, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit ], [ true, %bb.d ]
  %.sroa.014.0 = phi i1 [ %.sroa.014.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit ], [ true, %bb.d ]
  %.sroa.013.0 = phi i1 [ %.sroa.013.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit ], [ true, %bb.d ]
  %i.ae = icmp ne ptr %i.p, null
  %or.cond = and i1 %i.ae, %.sroa.013.0
  br i1 %or.cond, label %bb.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit65

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %.noexc
  %i.ag = load ptr, ptr %i.ac, align 8
  store i64 %i.ab, ptr %i.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 15 uses
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 20 uses
  store i64 10, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aj = load i64, ptr %i.j, align 8
  %.not = icmp eq i64 %i.aj, -1                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VechEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendhE6extendBv_ECsmA23ifqKc8_6flate2.exit, %bb.e
  %.sroa.0.0 = phi i8 [ 0, %bb.e ], [ 4, %_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VechEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendhE6extendBv_ECsmA23ifqKc8_6flate2.exit ] ; 2 uses
  %.not19 = icmp eq ptr %i.l, null                ; 4 uses
  br i1 %.not19, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit33, label %bb.p

.body:                                            ; preds = %_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCsmA23ifqKc8_6flate2.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr nonnull align 8 %i.i, i64 2)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.an = trunc i64 %i.am to i16
  %i.ao = load ptr, ptr %i.ah, align 8
  %i.ap = load i64, ptr %i.ai, align 8            ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.ao, i64 %i.ap
  store i16 %i.an, ptr %scevgep.i.i.i, align 1
  %i.aq = add i64 %i.ap, 2
  store i64 %i.aq, ptr %i.ai, align 8
  %.sroa.076.0.copyload = load i64, ptr %i.h, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr nonnull align 8 %i.i, i64 %i.am)
          to label %.noexc.i.i unwind label %bb.j

.noexc.i.i:                                       ; preds = %bb.h
  %.not.i.i.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not.i.i.i, label %_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCsmA23ifqKc8_6flate2.exit.i, label %bb.i

bb.i:                                             ; preds = %.noexc.i.i
  %i.ar = load i64, ptr %i.ai, align 8
  %i.as = load ptr, ptr %i.ah, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr readonly align 1 %.sroa.2.0.copyload, i64 %i.am, i1 false)
  br label %_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCsmA23ifqKc8_6flate2.exit.i

bb.j:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.076.0.copyload, ptr %i.e, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.av, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.e)
          to label %.body.thread unwind label %bb.k

.body.thread:                                     ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCsmA23ifqKc8_6flate2.exit.i: ; preds = %bb.i, %.noexc.i.i
  %i.ax = load i64, ptr %i.ai, align 8
  %i.ay = add i64 %i.ax, %i.am
  store i64 %i.ay, ptr %i.ai, align 8
  store i64 %.sroa.076.0.copyload, ptr %i.f, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.az, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.f)
          to label %_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VechEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendhE6extendBv_ECsmA23ifqKc8_6flate2.exit unwind label %.body

_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VechEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendhE6extendBv_ECsmA23ifqKc8_6flate2.exit: ; preds = %_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCsmA23ifqKc8_6flate2.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit: ; preds = %bb.x, %bb.w, %bb.o, %bb.n, %.body, %.body.thread, %bb.v, %bb.l
  %.pn = phi { ptr, i32 } [ %i.dt, %bb.v ], [ %i.bc, %bb.o ], [ %i.au, %.body.thread ], [ %i.ba, %bb.l ], [ %i.ak, %.body ], [ %i.bc, %bb.n ], [ %i.dv, %bb.w ], [ %i.dv, %bb.x ]
  %.sroa.014.1 = phi i1 [ %.not19, %bb.v ], [ false, %bb.o ], [ true, %.body.thread ], [ true, %bb.l ], [ true, %.body ], [ false, %bb.n ], [ %.not19, %bb.w ], [ %.not19, %bb.x ]
  %.sroa.013.1 = phi i1 [ %.not20, %bb.v ], [ true, %bb.o ], [ true, %.body.thread ], [ true, %bb.l ], [ true, %.body ], [ true, %bb.n ], [ false, %bb.w ], [ false, %bb.x ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsmA23ifqKc8_6flate2(ptr nonnull align 8 %i.i) #34
          to label %bb.c unwind label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsmA23ifqKc8_6flate2(ptr nonnull align 8 %i.h) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.at, %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit33: ; preds = %bb.u, %.loopexit91, %bb.f
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.f ], [ %i.be, %.loopexit91 ], [ %i.be, %bb.u ] ; 2 uses
  %.not20 = icmp eq ptr %i.p, null                ; 2 uses
  br i1 %.not20, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit45, label %bb.y

bb.n:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i8 0, ptr %i.l, align 1
  %i.bd = icmp eq i64 %i.n, 0
  br i1 %i.bd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.l, i64 range(i64 1, 0) %i.n, i64 1) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit

bb.p:                                             ; preds = %bb.f
  %i.be = or disjoint i8 %.sroa.0.0, 8            ; 2 uses
  %i.bf = invoke { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh4iterCsczeH2rCysW5_9crc32fast(ptr nonnull %i.l, i64 %i.n)
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bg = extractvalue { ptr, ptr } %i.bf, 0
  %i.bh = extractvalue { ptr, ptr } %i.bf, 1
  %i.bi = invoke { ptr, ptr } @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6copiedhECsehVNULHUZqJ_7zlib_rs(ptr %i.bg, ptr %i.bh)
          to label %bb.r unwind label %bb.n       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bj = extractvalue { ptr, ptr } %i.bi, 0
  %i.bk = extractvalue { ptr, ptr } %i.bi, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.bj, ptr %i.d, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8
  invoke void @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d)
          to label %.noexc29 unwind label %bb.n

.noexc29:                                         ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = trunc nuw i64 %i.bn to i1
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bq = load i64, ptr %i.bp, align 8
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr nonnull align 8 %i.i, i64 %i.bq)
          to label %.noexc30 unwind label %bb.n

.noexc30:                                         ; preds = %bb.s
  %i.br = load ptr, ptr %i.ah, align 8            ; 8 uses
  %i.bs = ptrtoaddr ptr %i.br to i64
  %i.bt = load i64, ptr %i.ai, align 8            ; 8 uses
  %i.bu = load ptr, ptr %i.d, align 8             ; 9 uses
  %i.bv = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %.loopexit91, label %iter.check

iter.check:                                       ; preds = %.noexc30
  %i.bx = ptrtoint ptr %i.bv to i64               ; 3 uses
  %i.by = ptrtoint ptr %i.bu to i64               ; 4 uses
  %i.bz = sub nuw i64 %i.bx, %i.by                ; 8 uses
  %min.iters.check = icmp ult i64 %i.bz, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ca = add i64 %i.bt, %i.bs
  %i.cb = sub i64 %i.by, %i.ca
  %diff.check = icmp ugt i64 %i.cb, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check117 = icmp ult i64 %i.bz, 32
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %i.bz, 28
  %n.vec = and i64 %i.bz, -32                     ; 5 uses
  %i.cd = add i64 %i.bt, %n.vec                   ; 2 uses
  %i.ce = getelementptr i8, ptr %i.br, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load = load <16 x i8>, ptr %i.cf, align 1
  %wide.load118 = load <16 x i8>, ptr %i.cg, align 1
  %i.ch = getelementptr i8, ptr %i.ce, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <16 x i8> %wide.load, ptr %i.ch, align 1
  store <16 x i8> %wide.load118, ptr %i.ci, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %.loopexit91, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec119 = and i64 %i.bz, -4                   ; 4 uses
  %i.ck = add i64 %i.bt, %n.vec119                ; 2 uses
  %i.cl = getelementptr i8, ptr %i.br, i64 %i.bt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index120
  %wide.load121 = load <4 x i8>, ptr %i.cm, align 1
  %i.cn = getelementptr i8, ptr %i.cl, i64 %index120
  store <4 x i8> %wide.load121, ptr %i.cn, align 1
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next122, %n.vec119
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %i.bz, %n.vec119
  br i1 %cmp.n123, label %.loopexit91, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.3.0.i.i.i.i.i.ph = phi i64 [ %i.bt, %iter.check ], [ %i.bt, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec119, %vec.epilog.middle.block ] ; 3 uses
  %3 = sub i64 %i.bx, %i.by
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.3.0.i.i.i.i.i.prol = phi i64 [ %i.cs, %vec.epilog.scalar.ph.prol ], [ %.sroa.3.0.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.prol = phi i64 [ %i.ct, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.01.0.i.i.i.i.i.i.prol
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.3.0.i.i.i.i.i.prol
  store i8 %i.cq, ptr %i.cr, align 1
  %i.cs = add i64 %.sroa.3.0.i.i.i.i.i.prol, 1    ; 3 uses
  %i.ct = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !45

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa155.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.cs, %vec.epilog.scalar.ph.prol ]
  %.sroa.3.0.i.i.i.i.i.unr = phi i64 [ %.sroa.3.0.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cs, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ct, %vec.epilog.scalar.ph.prol ]
  %i.cu = sub i64 %.sroa.01.0.i.i.i.i.i.i.ph, %i.bx
  %i.cv = add i64 %i.cu, %i.by
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %.loopexit91, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.3.0.i.i.i.i.i = phi i64 [ %i.dp, %vec.epilog.scalar.ph ], [ %.sroa.3.0.i.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.dq, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.01.0.i.i.i.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.3.0.i.i.i.i.i
  store i8 %i.cy, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.01.0.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = getelementptr i8, ptr %i.br, i64 %.sroa.3.0.i.i.i.i.i
  %i.de = getelementptr i8, ptr %i.dd, i64 1
  store i8 %i.dc, ptr %i.de, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.01.0.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = getelementptr i8, ptr %i.br, i64 %.sroa.3.0.i.i.i.i.i
  %i.dj = getelementptr i8, ptr %i.di, i64 2
  store i8 %i.dh, ptr %i.dj, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.01.0.i.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 3
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = getelementptr i8, ptr %i.br, i64 %.sroa.3.0.i.i.i.i.i
  %i.do = getelementptr i8, ptr %i.dn, i64 3
  store i8 %i.dm, ptr %i.do, align 1
  %i.dp = add i64 %.sroa.3.0.i.i.i.i.i, 4         ; 2 uses
  %i.dq = add nuw i64 %.sroa.01.0.i.i.i.i.i.i, 4  ; 2 uses
  %i.dr = icmp eq i64 %i.dq, %i.bz
  br i1 %i.dr, label %.loopexit91, label %vec.epilog.scalar.ph, !llvm.loop !46

bb.t:                                             ; preds = %.noexc29
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @0, ptr nonnull inttoptr (i64 35 to ptr), ptr nonnull align 8 @2) #32
          to label %.noexc31 unwind label %bb.n

.noexc31:                                         ; preds = %bb.t
  unreachable

.loopexit91:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc30
  %storemerge.i.i.i.i.i = phi i64 [ %i.bt, %.noexc30 ], [ %i.ck, %vec.epilog.middle.block ], [ %i.cd, %middle.block ], [ %.lcssa155.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.dp, %vec.epilog.scalar.ph ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.l, align 1
  %i.ds = icmp eq i64 %i.n, 0
  br i1 %i.ds, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit33, label %bb.u

bb.u:                                             ; preds = %.loopexit91
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.l, i64 range(i64 1, 0) %i.n, i64 1) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit33

bb.v:                                             ; preds = %.invoke
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit45: ; preds = %bb.ad, %.loopexit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit33
  %.sroa.0.2 = phi i8 [ %.sroa.0.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit33 ], [ %i.dx, %.loopexit ], [ %i.dx, %bb.ad ]
  %i.du = load i64, ptr %i.ai, align 8
  %.not90 = icmp eq i64 %i.du, 0
  br i1 %.not90, label %.invoke, label %bb.ae

bb.w:                                             ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i8 0, ptr %i.p, align 1
  %i.dw = icmp eq i64 %i.r, 0
  br i1 %i.dw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.p, i64 range(i64 1, 0) %i.r, i64 1) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit

bb.y:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit33
  %i.dx = or i8 %.sroa.0.1, 16                    ; 2 uses
  %i.dy = invoke { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh4iterCsczeH2rCysW5_9crc32fast(ptr nonnull %i.p, i64 %i.r)
          to label %bb.z unwind label %bb.w       ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.dz = extractvalue { ptr, ptr } %i.dy, 0
  %i.ea = extractvalue { ptr, ptr } %i.dy, 1
  %i.eb = invoke { ptr, ptr } @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6copiedhECsehVNULHUZqJ_7zlib_rs(ptr %i.dz, ptr %i.ea)
          to label %bb.aa unwind label %bb.w      ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.ec = extractvalue { ptr, ptr } %i.eb, 0
  %i.ed = extractvalue { ptr, ptr } %i.eb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ec, ptr %i.b, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8
  invoke void @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
          to label %.noexc40 unwind label %bb.w

.noexc40:                                         ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.noexc40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ej = load i64, ptr %i.ei, align 8
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr nonnull align 8 %i.i, i64 %i.ej)
          to label %.noexc41 unwind label %bb.w

.noexc41:                                         ; preds = %bb.ab
  %i.ek = load ptr, ptr %i.ah, align 8            ; 8 uses
  %i.el = ptrtoaddr ptr %i.ek to i64
  %i.em = load i64, ptr %i.ai, align 8            ; 8 uses
  %i.en = load ptr, ptr %i.b, align 8             ; 9 uses
  %i.eo = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %.loopexit, label %iter.check141

iter.check141:                                    ; preds = %.noexc41
  %i.eq = ptrtoint ptr %i.eo to i64               ; 3 uses
  %i.er = ptrtoint ptr %i.en to i64               ; 4 uses
  %i.es = sub nuw i64 %i.eq, %i.er                ; 8 uses
  %min.iters.check128 = icmp ult i64 %i.es, 4
  br i1 %min.iters.check128, label %vec.epilog.scalar.ph142.preheader, label %vector.memcheck126

vector.memcheck126:                               ; preds = %iter.check141
  %i.et = add i64 %i.em, %i.el
  %i.eu = sub i64 %i.er, %i.et
  %diff.check127 = icmp ugt i64 %i.eu, -32
  br i1 %diff.check127, label %vec.epilog.scalar.ph142.preheader, label %vector.main.loop.iter.check129

vector.main.loop.iter.check129:                   ; preds = %vector.memcheck126
  %min.iters.check130 = icmp ult i64 %i.es, 32
  br i1 %min.iters.check130, label %vec.epilog.ph145, label %vector.ph131

vector.ph131:                                     ; preds = %vector.main.loop.iter.check129
  %i.ev = and i64 %i.es, 28
  %n.vec132 = and i64 %i.es, -32                  ; 5 uses
  %i.ew = add i64 %i.em, %n.vec132                ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ek, i64 %i.em
  br label %vector.body133

vector.body133:                                   ; preds = %vector.ph131, %vector.body133
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body133 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 %index134 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load135 = load <16 x i8>, ptr %i.ey, align 1
  %wide.load136 = load <16 x i8>, ptr %i.ez, align 1
  %i.fa = getelementptr i8, ptr %i.ex, i64 %index134 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <16 x i8> %wide.load135, ptr %i.fa, align 1
  store <16 x i8> %wide.load136, ptr %i.fb, align 1
  %index.next137 = add nuw i64 %index134, 32      ; 2 uses
  %i.fc = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.fc, label %middle.block138, label %vector.body133, !llvm.loop !47

middle.block138:                                  ; preds = %vector.body133
  %cmp.n139 = icmp eq i64 %i.es, %n.vec132
  br i1 %cmp.n139, label %.loopexit, label %vec.epilog.iter.check143

vec.epilog.iter.check143:                         ; preds = %middle.block138
  %min.epilog.iters.check144 = icmp eq i64 %i.ev, 0
  br i1 %min.epilog.iters.check144, label %vec.epilog.scalar.ph142.preheader, label %vec.epilog.ph145, !prof !6

vec.epilog.ph145:                                 ; preds = %vector.main.loop.iter.check129, %vec.epilog.iter.check143
  %vec.epilog.resume.val140 = phi i64 [ %n.vec132, %vec.epilog.iter.check143 ], [ 0, %vector.main.loop.iter.check129 ]
  %n.vec146 = and i64 %i.es, -4                   ; 4 uses
  %i.fd = add i64 %i.em, %n.vec146                ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ek, i64 %i.em
  br label %vec.epilog.vector.body147

vec.epilog.vector.body147:                        ; preds = %vec.epilog.vector.body147, %vec.epilog.ph145
  %index148 = phi i64 [ %vec.epilog.resume.val140, %vec.epilog.ph145 ], [ %index.next150, %vec.epilog.vector.body147 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 %index148
  %wide.load149 = load <4 x i8>, ptr %i.ff, align 1
  %i.fg = getelementptr i8, ptr %i.fe, i64 %index148
  store <4 x i8> %wide.load149, ptr %i.fg, align 1
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next150, %n.vec146
  br i1 %i.fh, label %vec.epilog.middle.block151, label %vec.epilog.vector.body147, !llvm.loop !48

vec.epilog.middle.block151:                       ; preds = %vec.epilog.vector.body147
  %cmp.n152 = icmp eq i64 %i.es, %n.vec146
  br i1 %cmp.n152, label %.loopexit, label %vec.epilog.scalar.ph142.preheader

vec.epilog.scalar.ph142.preheader:                ; preds = %iter.check141, %vector.memcheck126, %vec.epilog.iter.check143, %vec.epilog.middle.block151
  %.sroa.3.0.i.i.i.i.i37.ph = phi i64 [ %i.em, %iter.check141 ], [ %i.em, %vector.memcheck126 ], [ %i.ew, %vec.epilog.iter.check143 ], [ %i.fd, %vec.epilog.middle.block151 ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i38.ph = phi i64 [ 0, %iter.check141 ], [ 0, %vector.memcheck126 ], [ %n.vec132, %vec.epilog.iter.check143 ], [ %n.vec146, %vec.epilog.middle.block151 ] ; 3 uses
  %4 = sub i64 %i.eq, %i.er
  %xtraiter156 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %vec.epilog.scalar.ph142.prol.loopexit, label %vec.epilog.scalar.ph142.prol

vec.epilog.scalar.ph142.prol:                     ; preds = %vec.epilog.scalar.ph142.preheader, %vec.epilog.scalar.ph142.prol
  %.sroa.3.0.i.i.i.i.i37.prol = phi i64 [ %i.fl, %vec.epilog.scalar.ph142.prol ], [ %.sroa.3.0.i.i.i.i.i37.ph, %vec.epilog.scalar.ph142.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i38.prol = phi i64 [ %i.fm, %vec.epilog.scalar.ph142.prol ], [ %.sroa.01.0.i.i.i.i.i.i38.ph, %vec.epilog.scalar.ph142.preheader ] ; 2 uses
  %prol.iter158 = phi i64 [ %prol.iter158.next, %vec.epilog.scalar.ph142.prol ], [ 0, %vec.epilog.scalar.ph142.preheader ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sroa.01.0.i.i.i.i.i.i38.prol
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.3.0.i.i.i.i.i37.prol
  store i8 %i.fj, ptr %i.fk, align 1
  %i.fl = add i64 %.sroa.3.0.i.i.i.i.i37.prol, 1  ; 3 uses
  %i.fm = add nuw i64 %.sroa.01.0.i.i.i.i.i.i38.prol, 1 ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %vec.epilog.scalar.ph142.prol.loopexit, label %vec.epilog.scalar.ph142.prol, !llvm.loop !49

vec.epilog.scalar.ph142.prol.loopexit:            ; preds = %vec.epilog.scalar.ph142.prol, %vec.epilog.scalar.ph142.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph142.preheader ], [ %i.fl, %vec.epilog.scalar.ph142.prol ]
  %.sroa.3.0.i.i.i.i.i37.unr = phi i64 [ %.sroa.3.0.i.i.i.i.i37.ph, %vec.epilog.scalar.ph142.preheader ], [ %i.fl, %vec.epilog.scalar.ph142.prol ]
  %.sroa.01.0.i.i.i.i.i.i38.unr = phi i64 [ %.sroa.01.0.i.i.i.i.i.i38.ph, %vec.epilog.scalar.ph142.preheader ], [ %i.fm, %vec.epilog.scalar.ph142.prol ]
  %i.fn = sub i64 %.sroa.01.0.i.i.i.i.i.i38.ph, %i.eq
  %i.fo = add i64 %i.fn, %i.er
  %i.fp = icmp ugt i64 %i.fo, -4
  br i1 %i.fp, label %.loopexit, label %vec.epilog.scalar.ph142

vec.epilog.scalar.ph142:                          ; preds = %vec.epilog.scalar.ph142.prol.loopexit, %vec.epilog.scalar.ph142
  %.sroa.3.0.i.i.i.i.i37 = phi i64 [ %i.gi, %vec.epilog.scalar.ph142 ], [ %.sroa.3.0.i.i.i.i.i37.unr, %vec.epilog.scalar.ph142.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i.i38 = phi i64 [ %i.gj, %vec.epilog.scalar.ph142 ], [ %.sroa.01.0.i.i.i.i.i.i38.unr, %vec.epilog.scalar.ph142.prol.loopexit ] ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sroa.01.0.i.i.i.i.i.i38
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.3.0.i.i.i.i.i37
  store i8 %i.fr, ptr %i.fs, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sroa.01.0.i.i.i.i.i.i38
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = getelementptr i8, ptr %i.ek, i64 %.sroa.3.0.i.i.i.i.i37
  %i.fx = getelementptr i8, ptr %i.fw, i64 1
  store i8 %i.fv, ptr %i.fx, align 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sroa.01.0.i.i.i.i.i.i38
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = getelementptr i8, ptr %i.ek, i64 %.sroa.3.0.i.i.i.i.i37
  %i.gc = getelementptr i8, ptr %i.gb, i64 2
  store i8 %i.ga, ptr %i.gc, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sroa.01.0.i.i.i.i.i.i38
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 3
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = getelementptr i8, ptr %i.ek, i64 %.sroa.3.0.i.i.i.i.i37
  %i.gh = getelementptr i8, ptr %i.gg, i64 3
  store i8 %i.gf, ptr %i.gh, align 1
  %i.gi = add i64 %.sroa.3.0.i.i.i.i.i37, 4       ; 2 uses
  %i.gj = add nuw i64 %.sroa.01.0.i.i.i.i.i.i38, 4 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, %i.es
  br i1 %i.gk, label %.loopexit, label %vec.epilog.scalar.ph142, !llvm.loop !50

bb.ac:                                            ; preds = %.noexc40
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @0, ptr nonnull inttoptr (i64 35 to ptr), ptr nonnull align 8 @2) #32
          to label %.noexc42 unwind label %bb.w

.noexc42:                                         ; preds = %bb.ac
  unreachable

.loopexit:                                        ; preds = %vec.epilog.scalar.ph142.prol.loopexit, %vec.epilog.scalar.ph142, %middle.block138, %vec.epilog.middle.block151, %.noexc41
  %storemerge.i.i.i.i.i39 = phi i64 [ %i.em, %.noexc41 ], [ %i.fd, %vec.epilog.middle.block151 ], [ %i.ew, %middle.block138 ], [ %.lcssa.unr, %vec.epilog.scalar.ph142.prol.loopexit ], [ %i.gi, %vec.epilog.scalar.ph142 ]
  store i64 %storemerge.i.i.i.i.i39, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.p, align 1
  %i.gl = icmp eq i64 %i.r, 0
  br i1 %i.gl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit45, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.p, i64 range(i64 1, 0) %i.r, i64 1) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit45

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit45
  %i.gm = load ptr, ptr %i.ah, align 8
  store i8 31, ptr %i.gm, align 1
  %i.gn = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.go = icmp ugt i64 %i.gn, 1
  br i1 %i.go, label %bb.af, label %.invoke

bb.af:                                            ; preds = %bb.ae
  %i.gp = load ptr, ptr %i.ah, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  store i8 -117, ptr %i.gq, align 1
  %i.gr = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.gs = icmp ugt i64 %i.gr, 2
  br i1 %i.gs, label %bb.ag, label %.invoke

bb.ag:                                            ; preds = %bb.af
  %i.gt = load ptr, ptr %i.ah, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  store i8 8, ptr %i.gu, align 1
  %i.gv = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.gw = icmp ugt i64 %i.gv, 3
  br i1 %i.gw, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.gx = load ptr, ptr %i.ah, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 3
  store i8 %.sroa.0.2, ptr %i.gy, align 1
  %i.gz = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ha = icmp ugt i64 %i.gz, 4
  br i1 %i.ha, label %bb.ai, label %.invoke

bb.ai:                                            ; preds = %bb.ah
  %i.hb = load ptr, ptr %i.ah, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hd = trunc i32 %i.x to i8
  store i8 %i.hd, ptr %i.hc, align 1
  %i.he = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.hf = icmp ugt i64 %i.he, 5
  br i1 %i.hf, label %bb.aj, label %.invoke

bb.aj:                                            ; preds = %bb.ai
  %i.hg = load ptr, ptr %i.ah, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 5
  %i.hi = lshr i32 %i.x, 8
  %i.hj = trunc i32 %i.hi to i8
  store i8 %i.hj, ptr %i.hh, align 1
  %i.hk = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.hl = icmp ugt i64 %i.hk, 6
  br i1 %i.hl, label %bb.ak, label %.invoke

bb.ak:                                            ; preds = %bb.aj
  %i.hm = load ptr, ptr %i.ah, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 6
  %i.ho = lshr i32 %i.x, 16
  %i.hp = trunc i32 %i.ho to i8
  store i8 %i.hp, ptr %i.hn, align 1
  %i.hq = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.hr = icmp ugt i64 %i.hq, 7
  br i1 %i.hr, label %bb.al, label %.invoke

bb.al:                                            ; preds = %bb.ak
  %i.hs = load ptr, ptr %i.ah, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 7
  %i.hu = lshr i32 %i.x, 24
  %i.hv = trunc nuw i32 %i.hu to i8
  store i8 %i.hv, ptr %i.ht, align 1
  %i.hw = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.hx = icmp ugt i64 %i.hw, 8
  br i1 %i.hx, label %bb.am, label %.invoke

bb.am:                                            ; preds = %bb.al
  %i.hy = icmp ugt i32 %2, 8
  %i.hz = icmp samesign ult i32 %2, 2
  %. = select i1 %i.hz, i8 4, i8 0
  %.sroa.011.0 = select i1 %i.hy, i8 2, i8 %.
  %i.ia = load ptr, ptr %i.ah, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i8 %.sroa.011.0, ptr %i.ib, align 1
  %i.ic = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.id = icmp ugt i64 %i.ic, 9
  br i1 %i.id, label %bb.an, label %.invoke

.invoke:                                          ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit45
  %i.ie = phi i64 [ 8, %bb.al ], [ 7, %bb.ak ], [ 6, %bb.aj ], [ 5, %bb.ai ], [ 4, %bb.ah ], [ 3, %bb.ag ], [ 2, %bb.af ], [ 1, %bb.ae ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit45 ], [ 9, %bb.am ]
  %i.if = phi i64 [ %i.hw, %bb.al ], [ %i.hq, %bb.ak ], [ %i.hk, %bb.aj ], [ %i.he, %bb.ai ], [ %i.gz, %bb.ah ], [ %i.gv, %bb.ag ], [ %i.gr, %bb.af ], [ %i.gn, %bb.ae ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit45 ], [ %i.ic, %bb.am ]
  %i.ig = phi ptr [ @22, %bb.al ], [ @21, %bb.ak ], [ @20, %bb.aj ], [ @19, %bb.ai ], [ @18, %bb.ah ], [ @17, %bb.ag ], [ @16, %bb.af ], [ @15, %bb.ae ], [ @14, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit45 ], [ @23, %bb.am ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.ie, i64 %i.if, ptr nonnull align 8 %i.ig) #32
          to label %.cont unwind label %bb.v

.cont:                                            ; preds = %.invoke
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.ih = trunc nuw i8 %i.t to i1
  %..i = select i1 %i.ih, i8 %i.v, i8 -1
  %i.ii = load ptr, ptr %i.ah, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 9
  store i8 %..i, ptr %i.ij, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit65: ; preds = %bb.ap, %bb.ao, %bb.c
  %i.ik = icmp ne ptr %i.l, null
  %or.cond3 = and i1 %i.ik, %.sroa.014.0
  br i1 %or.cond3, label %bb.aq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit67

bb.ao:                                            ; preds = %bb.c
  store i8 0, ptr %i.p, align 1
  %i.il = icmp eq i64 %i.r, 0
  br i1 %i.il, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit65, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.p, i64 range(i64 1, 0) %i.r, i64 1) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit65

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit67: ; preds = %bb.ar, %bb.aq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit65
  %i.im = load i64, ptr %i.j, align 8
  %i.in = icmp ne i64 %i.im, -1
  %or.cond5 = and i1 %.sroa.015.0, %i.in
  br i1 %or.cond5, label %bb.at, label %bb.as

bb.aq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECsmA23ifqKc8_6flate2.exit65
  store i8 0, ptr %i.l, align 1
  %i.io = icmp eq i64 %i.n, 0
end_hunk_2
begin_hunk_3_@_RNvXs8_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_7InflateNtB7_14InflateBackend4make:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.62.0..sroa_idx.i, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.133.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %i.d = zext i8 %2 to i32                        ; 2 uses
  %i.e = sub nsw i32 0, %i.d
  %.sroa.0.0 = select i1 %1, i32 %i.d, i32 %i.e
  %i.f = invoke i32 @_RNvCsln9KOpKfUCx_11libz_rs_sys13inflateInit2_(ptr nonnull %i.b, i32 range(i32 -255, 256) %.sroa.0.0, ptr nonnull @35, i32 112)
          to label %_RNvNtNtNtCsmA23ifqKc8_6flate23ffi1c9c_backend15mz_inflateInit2.exit unwind label %bb.c ; 2 uses

bb.c:                                             ; preds = %_RNvXs0_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_13StreamWrapperNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #33
  unreachable

_RNvNtNtNtCsmA23ifqKc8_6flate23ffi1c9c_backend15mz_inflateInit2.exit: ; preds = %_RNvXs0_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_13StreamWrapperNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit
  store i32 %i.f, ptr %i.a, align 4
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvNtNtNtCsmA23ifqKc8_6flate23ffi1c9c_backend15mz_inflateInit2.exit
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedllECs2AWtUsOyxgP_3std(i8 0, ptr nonnull align 4 %i.a, ptr nonnull align 4 @43, ptr null, ptr undef, ptr nonnull align 8 @44) #32
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_RNvNtNtNtCsmA23ifqKc8_6flate23ffi1c9c_backend15mz_inflateInit2.exit
  store ptr %i.b, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, i8 0, i64 16, i1 false)
  ret void

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull align 8 %i.b, i64 112, i64 8) #31
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_7InflateNtB7_14InflateBackend5reset(ptr nofree align 8 captures(none) initializes((8, 24)) %0, i1 zeroext %1) unnamed_addr #4 {
bb.a:
  %. = select i1 %1, i32 15, i32 -15
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i32 @_RNvCsln9KOpKfUCx_11libz_rs_sys13inflateReset2(ptr %i.a, i32 %.) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionReENtNtB7_3fmt5Debug3fmtCsmA23ifqKc8_6flate2(ptr align 8 %0, ptr align 8 %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %i.c = call zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %1, ptr nonnull @47, i64 4, ptr nonnull %i.a, ptr nonnull align 8 @46)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @45, i64 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @_RNvXs_CsmA23ifqKc8_6flate2NtB4_11CompressionNtNtCs4NRVxsYgnAr_4core7default7Default7default() unnamed_addr #5 {
bb.a:
  ret i32 6
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsmA23ifqKc8_6flate23zioNtNtB6_3mem10DecompressNtB4_3Ops3run(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1, ptr %2, i64 %3, ptr %4, i64 %5, i8 %6) unnamed_addr #4 {
bb.a:
  tail call void @_RNvXs8_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_7InflateNtB7_14InflateBackend10decompress(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr %2, i64 %3, ptr %4, i64 %5, i8 %6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsmA23ifqKc8_6flate23zioNtNtB6_3mem10DecompressNtB4_3Ops7run_vec(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree align 8 captures(none) %1, ptr %2, i64 %3, ptr align 8 %4, i8 %5) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMs0_NtCsmA23ifqKc8_6flate23memNtB5_10Decompress14decompress_vec(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr %2, i64 %3, ptr align 8 %4, i8 %5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvXs_NtCsmA23ifqKc8_6flate23zioNtNtB6_3mem10DecompressNtB4_3Ops8total_in(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.a, align 8
  ret i64 %.val.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvXs_NtCsmA23ifqKc8_6flate23zioNtNtB6_3mem10DecompressNtB4_3Ops9total_out(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.a, align 8
  ret i64 %.val.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXs_NtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB4_17NeverShortCircuituENtB4_3Try11from_outputCsmA23ifqKc8_6flate2() unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXs_NtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB4_17NeverShortCircuituENtB4_3Try6branchCsmA23ifqKc8_6flate2() unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXs_NtNtCs4NRVxsYgnAr_4core5array4iterAhj2_NtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsmA23ifqKc8_6flate2(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 18)) %0, i16 %1) unnamed_addr #1 {
bb.a:
  store i64 0, ptr %0, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.210.0..sroa_idx, align 8
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %1, ptr %.sroa.311.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterhKj2_EE11spec_extendCsmA23ifqKc8_6flate2(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load i64, ptr %1, align 8
  %i.e = sub nuw i64 %i.c, %i.d
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr align 8 %0, i64 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.a, align 8              ; 4 uses
  %i.l = load i64, ptr %i.j, align 8              ; 3 uses
  %.not5.i.i.i.i = icmp eq i64 %i.k, %i.l
  br i1 %.not5.i.i.i.i, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterhKj2_EECsmA23ifqKc8_6flate2.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.i
  %i.m = getelementptr i8, ptr %i.a, i64 %i.k
  %scevgep8.i = getelementptr i8, ptr %i.m, i64 16
  %i.n = sub i64 %i.l, %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep.i, ptr align 1 %scevgep8.i, i64 %i.n, i1 false)
  %i.o = sub i64 %i.i, %i.k
  %i.p = add i64 %i.o, %i.l
  br label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterhKj2_EECsmA23ifqKc8_6flate2.exit

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterhKj2_EECsmA23ifqKc8_6flate2.exit: ; preds = %bb.a, %.lr.ph.i.i.i.preheader.i
  %.val1.i.i.i.i.i4.i.i.i.i = phi i64 [ %i.i, %bb.a ], [ %i.p, %.lr.ph.i.i.i.preheader.i ]
  store i64 %.val1.i.i.i.i.i4.i.i.i.i, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB1m_5slice4iter4IterhEEE11spec_extendCsmA23ifqKc8_6flate2(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdB6qrhj7hiN_9addr2line(ptr align 8 %0, i64 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 8 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 8 uses
  %i.n = load ptr, ptr %i.b, align 8              ; 9 uses
  %i.o = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB16_5slice4iter4IterhEEECsmA23ifqKc8_6flate2.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.s = sub nuw i64 %i.q, %i.r                   ; 8 uses
  %min.iters.check = icmp ult i64 %i.s, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %i.m, %i.k
  %i.u = sub i64 %i.r, %i.t
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check2 = icmp ult i64 %i.s, 32
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.s, 28
  %n.vec = and i64 %i.s, -32                      ; 5 uses
  %i.w = add i64 %i.m, %n.vec                     ; 2 uses
  %i.x = getelementptr i8, ptr %i.j, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <16 x i8>, ptr %i.y, align 1
  %wide.load3 = load <16 x i8>, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %i.x, i64 %index  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <16 x i8> %wide.load, ptr %i.aa, align 1
  store <16 x i8> %wide.load3, ptr %i.ab, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB16_5slice4iter4IterhEEECsmA23ifqKc8_6flate2.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4 = and i64 %i.s, -4                      ; 4 uses
  %i.ad = add i64 %i.m, %n.vec4                   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.m
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next7, %vec.epilog.vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %index5
  %wide.load6 = load <4 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %i.ae, i64 %index5
  store <4 x i8> %wide.load6, ptr %i.ag, align 1
  %index.next7 = add nuw i64 %index5, 4           ; 2 uses
  %i.ah = icmp eq i64 %index.next7, %n.vec4
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !73

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n8 = icmp eq i64 %i.s, %n.vec4
  br i1 %cmp.n8, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB16_5slice4iter4IterhEEECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.3.0.i.i.i.ph = phi i64 [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec4, %vec.epilog.middle.block ] ; 3 uses
  %3 = sub i64 %i.q, %i.r
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.3.0.i.i.i.prol = phi i64 [ %i.al, %vec.epilog.scalar.ph.prol ], [ %.sroa.3.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i.prol = phi i64 [ %i.am, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i.prol
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.3.0.i.i.i.prol
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = add i64 %.sroa.3.0.i.i.i.prol, 1        ; 3 uses
  %i.am = add nuw i64 %.sroa.01.0.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !74

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.al, %vec.epilog.scalar.ph.prol ]
  %.sroa.3.0.i.i.i.unr = phi i64 [ %.sroa.3.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.al, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.am, %vec.epilog.scalar.ph.prol ]
  %i.an = sub i64 %.sroa.01.0.i.i.i.i.ph, %i.q
  %i.ao = add i64 %i.an, %i.r
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB16_5slice4iter4IterhEEECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.3.0.i.i.i = phi i64 [ %i.bi, %vec.epilog.scalar.ph ], [ %.sroa.3.0.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.bj, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.3.0.i.i.i
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr i8, ptr %i.j, i64 %.sroa.3.0.i.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  store i8 %i.av, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr i8, ptr %i.j, i64 %.sroa.3.0.i.i.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 2
  store i8 %i.ba, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr i8, ptr %i.j, i64 %.sroa.3.0.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 3
  store i8 %i.bf, ptr %i.bh, align 1
  %i.bi = add i64 %.sroa.3.0.i.i.i, 4             ; 2 uses
  %i.bj = add nuw i64 %.sroa.01.0.i.i.i.i, 4      ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.s
  br i1 %i.bk, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB16_5slice4iter4IterhEEECsmA23ifqKc8_6flate2.exit, label %vec.epilog.scalar.ph, !llvm.loop !75

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @0, ptr nonnull inttoptr (i64 35 to ptr), ptr nonnull align 8 @2) #32
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB16_5slice4iter4IterhEEECsmA23ifqKc8_6flate2.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %storemerge.i.i.i = phi i64 [ %i.m, %bb.b ], [ %i.ad, %vec.epilog.middle.block ], [ %i.w, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bi, %vec.epilog.scalar.ph ]
  store i64 %storemerge.i.i.i, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtCsmA23ifqKc8_6flate23ffi1cNtB4_13StreamWrapperNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr nofree readnone align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_fmtCsmA23ifqKc8_6flate2.exit:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !8, !nonnull !8
  %i.f = tail call zeroext i1 %i.e(ptr %i.a, ptr nonnull @48, i64 13), !inline_history !0
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCsmA23ifqKc8_6flate2(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #4 {
bb.a:
  tail call void @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsehVNULHUZqJ_7zlib_rs(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_7DeflateNtB7_14DeflateBackend4make(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, i32 %1, i1 zeroext %2, i8 %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.b = tail call align 8 dereferenceable_or_null(112) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 16, 113) 112, i64 8) #31 ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvXs0_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_13StreamWrapperNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 8, i64 112) #32
  unreachable

_RNvXs0_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_13StreamWrapperNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.31.0..sroa_idx.i, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.62.0..sroa_idx.i, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.133.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %i.d = zext i8 %3 to i32                        ; 2 uses
  %i.e = sub nsw i32 0, %i.d
  %.sroa.0.0 = select i1 %2, i32 %i.d, i32 %i.e
  %i.f = invoke i32 @_RNvCsln9KOpKfUCx_11libz_rs_sys13deflateInit2_(ptr nonnull %i.b, i32 %1, i32 8, i32 range(i32 -255, 256) %.sroa.0.0, i32 8, i32 0, ptr nonnull @35, i32 112)
          to label %_RNvNtNtNtCsmA23ifqKc8_6flate23ffi1c9c_backend15mz_deflateInit2.exit unwind label %bb.c ; 2 uses

bb.c:                                             ; preds = %_RNvXs0_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_13StreamWrapperNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #33
  unreachable

_RNvNtNtNtCsmA23ifqKc8_6flate23ffi1c9c_backend15mz_deflateInit2.exit: ; preds = %_RNvXs0_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_13StreamWrapperNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit
  store i32 %i.f, ptr %i.a, align 4
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvNtNtNtCsmA23ifqKc8_6flate23ffi1c9c_backend15mz_deflateInit2.exit
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedllECs2AWtUsOyxgP_3std(i8 0, ptr nonnull align 4 %i.a, ptr nonnull align 4 @43, ptr null, ptr undef, ptr nonnull align 8 @49) #32
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_RNvNtNtNtCsmA23ifqKc8_6flate23ffi1c9c_backend15mz_deflateInit2.exit
  store ptr %i.b, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, i8 0, i64 16, i1 false)
  ret void

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull align 8 %i.b, i64 112, i64 8) #31
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_7DeflateNtB7_14DeflateBackend5reset(ptr nofree align 8 captures(none) initializes((8, 24)) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i32 @_RNvCsln9KOpKfUCx_11libz_rs_sys12deflateReset(ptr %i.c) ; 2 uses
  store i32 %i.d, ptr %i.a, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedllECs2AWtUsOyxgP_3std(i8 0, ptr nonnull align 4 %i.a, ptr nonnull align 4 @43, ptr null, ptr undef, ptr nonnull align 8 @50) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtCsmA23ifqKc8_6flate23ffi1cNtB5_7DeflateNtB7_14DeflateBackend8compress(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1, ptr %2, i64 %3, ptr %4, i64 %5, i8 %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  %i.e = load ptr, ptr %1, align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr null, ptr %i.f, align 8
  store ptr %2, ptr %i.e, align 8
  %i.g = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCsehVNULHUZqJ_7zlib_rs(i64 %3, i64 4294967295)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = trunc i64 %i.g to i32
  store i32 %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  store ptr %4, ptr %i.j, align 8
  %i.k = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCsehVNULHUZqJ_7zlib_rs(i64 %5, i64 4294967295)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.m = trunc i64 %i.k to i32
  store i32 %i.m, ptr %i.l, align 8
  %i.n = zext i8 %6 to i32
  %i.o = tail call i32 @_RNvCsln9KOpKfUCx_11libz_rs_sys7deflate(ptr nonnull %i.e, i32 %i.n) ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %2 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.s, %i.u
  store i64 %i.v, ptr %i.t, align 8
  %i.w = load ptr, ptr %i.j, align 8
  %i.x = ptrtoint ptr %i.w to i64
end_hunk_3
