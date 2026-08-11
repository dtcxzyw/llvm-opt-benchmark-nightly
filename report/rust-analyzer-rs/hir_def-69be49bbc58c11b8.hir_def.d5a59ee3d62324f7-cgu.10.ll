inline.NumInlined: 3910
inline.NumDeleted: 1003
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE10reallocateBI_:bb.a

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def11ModuleDefIdEBN_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit.i
  store i64 0, ptr %i.h, align 8
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.h
  %i.m = icmp samesign ugt i64 %i.k, 576460752303423487
  br i1 %i.m, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  %i.n = shl nuw nsw i64 %i.k, 4
  %i.o = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.n, i64 16) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.l, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit, !prof !4

bb.k:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit: ; preds = %bb.j
  %i.q = extractvalue { i64, i1 } %i.o, 0
  %i.r = icmp slt i64 %1, 0
  br i1 %i.r, label %bb.m, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1

bb.m:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit
  %i.s = icmp samesign ugt i64 %1, 576460752303423487
  br i1 %i.s, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  %i.t = shl nuw nsw i64 %1, 4
  %i.u = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.t, i64 16) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %bb.p, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit2, !prof !4

bb.o:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit2: ; preds = %bb.n
  %i.w = extractvalue { i64, i1 } %i.u, 0
  %i.x = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.q, i64 noundef 8, i64 noundef %i.w) #42 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.r, label %bb.q, !prof !4

bb.q:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit2, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def11ModuleDefIdEBN_.exit
  %.sink7 = phi ptr [ %i.h, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def11ModuleDefIdEBN_.exit ], [ %i.x, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit2 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sink7, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.sink7, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit2
  %i.aa = tail call fastcc noundef i64 @_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_(i64 noundef %1)
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aa) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %.not = icmp ult i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdEEB1b_.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtCsileJQcQObtj_7hir_def11ModuleDefIdEB1P_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdEEB1b_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE10reallocateBI_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %i.d)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  resume { ptr, i32 } %i.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdEEB1b_.exit: ; preds = %bb.c, %bb.d
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdEEB1b_.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE13with_capacityBI_(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %0, 576460752303423487
  br i1 %i.c, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %0, 4
  %i.e = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 16) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit.i: ; preds = %bb.d
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.h = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #42 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def11ModuleDefIdEBN_.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.g) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def11ModuleDefIdEBN_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def11ModuleDefIdEBD_.exit.i
  store i64 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %0, ptr %i.j, align 8
  %i.k = ptrtoint ptr %i.h to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def11ModuleDefIdEBN_.exit
  %.sroa.0.0 = phi i64 [ %i.k, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def11ModuleDefIdEBN_.exit ], [ ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE4pushBI_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE7reserveBI_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  switch i64 %i.b, label %bb.d [
    i64 -1, label %bb.c
    i64 0, label %bb.e
  ], !prof !6362

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6363
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 1
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %2, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.b, %2, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.g, %bb.d ], [ -1, %2 ], [ 4, %bb.b ]
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i, i64 %i.f)
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE10reallocateBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %..i.i)
  %.val.pre = load ptr, ptr %0, align 8           ; 2 uses
  %.pre = load i64, ptr %.val.pre, align 8, !noalias !6366
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE7reserveBI_.exit

2:                                                ; preds = %bb.d
  br label %bb.e

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE7reserveBI_.exit: ; preds = %bb.e, %bb.a
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.l = add i64 %i.i, 1
  store i64 %i.l, ptr %.val, align 8, !noalias !6366
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE8data_rawBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdE10reallocateBI_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %1, 3
  %i.e = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 16) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit.i: ; preds = %bb.d
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.h = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #42 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternBlockIdEBN_.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.g) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternBlockIdEBN_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit.i
  store i64 0, ptr %i.h, align 8
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.h
  %i.m = icmp samesign ugt i64 %i.k, 1152921504606846975
  br i1 %i.m, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.n, i64 16) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.l, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit, !prof !4

bb.k:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit: ; preds = %bb.j
  %i.q = extractvalue { i64, i1 } %i.o, 0
  %i.r = icmp slt i64 %1, 0
  br i1 %i.r, label %bb.m, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1

bb.m:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit
  %i.s = icmp samesign ugt i64 %1, 1152921504606846975
  br i1 %i.s, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  %i.t = shl nuw nsw i64 %1, 3
  %i.u = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.t, i64 16) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %bb.p, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit2, !prof !4

bb.o:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit2: ; preds = %bb.n
  %i.w = extractvalue { i64, i1 } %i.u, 0
  %i.x = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.q, i64 noundef 8, i64 noundef %i.w) #42 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.r, label %bb.q, !prof !4

bb.q:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit2, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternBlockIdEBN_.exit
  %.sink7 = phi ptr [ %i.h, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternBlockIdEBN_.exit ], [ %i.x, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit2 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sink7, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.sink7, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit2
  %i.aa = tail call fastcc noundef i64 @_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_(i64 noundef %1)
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aa) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %.not = icmp ult i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdEEB1b_.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtCsileJQcQObtj_7hir_def13ExternBlockIdEB1P_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdEEB1b_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdE10reallocateBI_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %i.d)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  resume { ptr, i32 } %i.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdEEB1b_.exit: ; preds = %bb.c, %bb.d
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdEEB1b_.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdE13with_capacityBI_(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %0, 1152921504606846975
  br i1 %i.c, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %0, 3
  %i.e = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 16) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit.i: ; preds = %bb.d
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.h = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #42 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternBlockIdEBN_.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.g) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternBlockIdEBN_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternBlockIdEBD_.exit.i
  store i64 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %0, ptr %i.j, align 8
  %i.k = ptrtoint ptr %i.h to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternBlockIdEBN_.exit
  %.sroa.0.0 = phi i64 [ %i.k, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternBlockIdEBN_.exit ], [ ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdE4pushBI_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdE7reserveBI_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  switch i64 %i.b, label %bb.d [
    i64 -1, label %bb.c
    i64 0, label %bb.e
  ], !prof !6362

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6369
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 1
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %3, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.b, %3, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.g, %bb.d ], [ -1, %3 ], [ 4, %bb.b ]
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i, i64 %i.f)
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdE10reallocateBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %..i.i)
  %.val.pre = load ptr, ptr %0, align 8           ; 2 uses
  %.pre = load i64, ptr %.val.pre, align 8
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdE7reserveBI_.exit

3:                                                ; preds = %bb.d
  br label %bb.e

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdE7reserveBI_.exit: ; preds = %bb.e, %bb.a
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 2 uses
  store i32 %1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %2, ptr %i.l, align 4
  %i.m = add i64 %i.i, 1
  store i64 %i.m, ptr %.val, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdE8data_rawBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdE10reallocateBI_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %1, 3
  %i.e = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 16) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit.i: ; preds = %bb.d
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.h = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #42 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternCrateIdEBN_.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.g) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternCrateIdEBN_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit.i
  store i64 0, ptr %i.h, align 8
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.h
  %i.m = icmp samesign ugt i64 %i.k, 1152921504606846975
  br i1 %i.m, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.n, i64 16) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.l, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit, !prof !4

bb.k:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit: ; preds = %bb.j
  %i.q = extractvalue { i64, i1 } %i.o, 0
  %i.r = icmp slt i64 %1, 0
  br i1 %i.r, label %bb.m, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1

bb.m:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit
  %i.s = icmp samesign ugt i64 %1, 1152921504606846975
  br i1 %i.s, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  %i.t = shl nuw nsw i64 %1, 3
  %i.u = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.t, i64 16) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %bb.p, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit2, !prof !4

bb.o:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit2: ; preds = %bb.n
  %i.w = extractvalue { i64, i1 } %i.u, 0
  %i.x = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.q, i64 noundef 8, i64 noundef %i.w) #42 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.r, label %bb.q, !prof !4

bb.q:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit2, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternCrateIdEBN_.exit
  %.sink7 = phi ptr [ %i.h, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternCrateIdEBN_.exit ], [ %i.x, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit2 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sink7, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.sink7, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit2
  %i.aa = tail call fastcc noundef i64 @_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_(i64 noundef %1)
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aa) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %.not = icmp ult i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdEEB1b_.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtCsileJQcQObtj_7hir_def13ExternCrateIdEB1P_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdEEB1b_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdE10reallocateBI_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %i.d)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  resume { ptr, i32 } %i.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdEEB1b_.exit: ; preds = %bb.c, %bb.d
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdEEB1b_.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdE13with_capacityBI_(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %0, 1152921504606846975
  br i1 %i.c, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %0, 3
  %i.e = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 16) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit.i: ; preds = %bb.d
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.h = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #42 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternCrateIdEBN_.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.g) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternCrateIdEBN_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def13ExternCrateIdEBD_.exit.i
  store i64 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %0, ptr %i.j, align 8
  %i.k = ptrtoint ptr %i.h to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternCrateIdEBN_.exit
  %.sroa.0.0 = phi i64 [ %i.k, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def13ExternCrateIdEBN_.exit ], [ ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdE4pushBI_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdE7reserveBI_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  switch i64 %i.b, label %bb.d [
    i64 -1, label %bb.c
    i64 0, label %bb.e
  ], !prof !6362

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6372
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 1
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %3, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.b, %3, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.g, %bb.d ], [ -1, %3 ], [ 4, %bb.b ]
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i, i64 %i.f)
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdE10reallocateBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %..i.i)
  %.val.pre = load ptr, ptr %0, align 8           ; 2 uses
  %.pre = load i64, ptr %.val.pre, align 8
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdE7reserveBI_.exit

3:                                                ; preds = %bb.d
  br label %bb.e

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdE7reserveBI_.exit: ; preds = %bb.e, %bb.a
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 2 uses
  store i32 %1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %2, ptr %i.l, align 4
  %i.m = add i64 %i.i, 1
  store i64 %i.m, ptr %.val, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdE8data_rawBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdE10reallocateBI_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %1, 3
  %i.e = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 16) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit.i: ; preds = %bb.d
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.h = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #42 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBN_.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.g) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBN_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit.i
  store i64 0, ptr %i.h, align 8
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.h
  %i.m = icmp samesign ugt i64 %i.k, 1152921504606846975
  br i1 %i.m, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.n, i64 16) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.l, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit, !prof !4

bb.k:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit: ; preds = %bb.j
  %i.q = extractvalue { i64, i1 } %i.o, 0
  %i.r = icmp slt i64 %1, 0
  br i1 %i.r, label %bb.m, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1

bb.m:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit
  %i.s = icmp samesign ugt i64 %1, 1152921504606846975
  br i1 %i.s, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  %i.t = shl nuw nsw i64 %1, 3
  %i.u = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.t, i64 16) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %bb.p, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit2, !prof !4

bb.o:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit2: ; preds = %bb.n
  %i.w = extractvalue { i64, i1 } %i.u, 0
  %i.x = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.q, i64 noundef 8, i64 noundef %i.w) #42 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.r, label %bb.q, !prof !4

bb.q:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit2, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBN_.exit
  %.sink7 = phi ptr [ %i.h, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBN_.exit ], [ %i.x, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit2 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sink7, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.sink7, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit2
  %i.aa = tail call fastcc noundef i64 @_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_(i64 noundef %1)
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aa) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %.not = icmp ult i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEB1b_.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEB1P_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEB1b_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdE10reallocateBI_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %i.d)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  resume { ptr, i32 } %i.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEB1b_.exit: ; preds = %bb.c, %bb.d
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEB1b_.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdE13with_capacityBI_(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %0, 1152921504606846975
  br i1 %i.c, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %0, 3
  %i.e = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 16) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit.i: ; preds = %bb.d
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.h = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #42 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBN_.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.g) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBN_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBD_.exit.i
  store i64 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %0, ptr %i.j, align 8
  %i.k = ptrtoint ptr %i.h to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBN_.exit
  %.sroa.0.0 = phi i64 [ %i.k, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEBN_.exit ], [ ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdE4pushBI_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdE7reserveBI_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  switch i64 %i.b, label %bb.d [
    i64 -1, label %bb.c
    i64 0, label %bb.e
  ], !prof !6362

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6375
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 1
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %3, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.b, %3, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.g, %bb.d ], [ -1, %3 ], [ 4, %bb.b ]
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i, i64 %i.f)
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdE10reallocateBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %..i.i)
  %.val.pre = load ptr, ptr %0, align 8           ; 2 uses
  %.pre = load i64, ptr %.val.pre, align 8
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdE7reserveBI_.exit

3:                                                ; preds = %bb.d
  br label %bb.e

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdE7reserveBI_.exit: ; preds = %bb.e, %bb.a
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 2 uses
  store i32 %1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %2, ptr %i.l, align 4
  %i.m = add i64 %i.i, 1
  store i64 %i.m, ptr %.val, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdE8data_rawBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def5UseIdE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !6 ; 9 uses
  %.not = icmp ult i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def5UseIdEEB1b_.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtCsileJQcQObtj_7hir_def5UseIdEB1P_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def5UseIdEEB1b_.exit unwind label %bb.t

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6378)
  %.not.i = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %.not.i, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.g = icmp slt i64 %i.d, 0
  br i1 %i.g, label %bb.g, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6378
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i: ; preds = %bb.f
  %i.h = icmp samesign ugt i64 %i.d, 1152921504606846975
  br i1 %i.h, label %bb.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i
  %i.i = shl nuw nsw i64 %i.d, 3
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.i, i64 16) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.j, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit.i.i, !prof !4

bb.i:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6378
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6378
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit.i.i: ; preds = %bb.h
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !6378
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef 8) #42, !noalias !6378 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.k, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def5UseIdEBN_.exit.i, !prof !4

bb.k:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.l) #37, !noalias !6378
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def5UseIdEBN_.exit.i: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit.i.i
  store i64 0, ptr %i.m, align 8, !noalias !6378
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def5UseIdE10reallocateBI_.exit

bb.l:                                             ; preds = %bb.e
  %i.o = icmp slt i64 %i.c, 0
  br i1 %i.o, label %bb.m, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6378
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.l
  %i.p = icmp samesign ugt i64 %i.c, 1152921504606846975
  br i1 %i.p, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.q = shl nuw nsw i64 %i.c, 3
  %i.r = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.q, i64 16) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.p, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit.i, !prof !4

bb.o:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6378
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6378
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit.i: ; preds = %bb.n
  %i.t = extractvalue { i64, i1 } %i.r, 0
  %i.u = icmp slt i64 %i.d, 0
  br i1 %i.u, label %bb.q, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1.i

bb.q:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6378
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1.i: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit.i
  %i.v = shl nuw nsw i64 %i.d, 3
  %i.w = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.v, i64 16) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %bb.r, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit2.i, !prof !4

bb.r:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6378
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit2.i: ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1.i
  %i.y = extractvalue { i64, i1 } %i.w, 0
  %i.z = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.t, i64 noundef 8, i64 noundef %i.y) #42, !noalias !6378 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.s, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def5UseIdE10reallocateBI_.exit, !prof !4

bb.s:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit2.i
  %i.ab = tail call fastcc noundef i64 @_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_(i64 noundef range(i64 1, 0) %i.d), !noalias !6378
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ab) #37, !noalias !6378
  unreachable

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def5UseIdE10reallocateBI_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def5UseIdEBN_.exit.i, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit2.i
  %.sink7.i = phi ptr [ %i.m, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def5UseIdEBN_.exit.i ], [ %i.z, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit2.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink7.i, i64 8
  store i64 %i.d, ptr %i.ac, align 8, !noalias !6378
  store ptr %.sink7.i, ptr %0, align 8, !alias.scope !6378
  br label %bb.u

bb.t:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  resume { ptr, i32 } %i.ad

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def5UseIdEEB1b_.exit: ; preds = %bb.c, %bb.d
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def5UseIdE10reallocateBI_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def5UseIdEEB1b_.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def5UseIdE13with_capacityBI_(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %0, 1152921504606846975
  br i1 %i.c, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %0, 3
  %i.e = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 16) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def5UseIdEBD_.exit.i: ; preds = %bb.d
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.h = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #42 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
end_hunk_0
begin_hunk_1_@_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdE10reallocateBI_:bb.a

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def7ConstIdEBN_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit.i
  store i64 0, ptr %i.h, align 8
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.h
  %i.m = icmp samesign ugt i64 %i.k, 1152921504606846975
  br i1 %i.m, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.n, i64 16) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.l, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit, !prof !4

bb.k:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit: ; preds = %bb.j
  %i.q = extractvalue { i64, i1 } %i.o, 0
  %i.r = icmp slt i64 %1, 0
  br i1 %i.r, label %bb.m, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1

bb.m:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit
  %i.s = icmp samesign ugt i64 %1, 1152921504606846975
  br i1 %i.s, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  %i.t = shl nuw nsw i64 %1, 3
  %i.u = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.t, i64 16) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %bb.p, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit2, !prof !4

bb.o:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit2: ; preds = %bb.n
  %i.w = extractvalue { i64, i1 } %i.u, 0
  %i.x = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.q, i64 noundef 8, i64 noundef %i.w) #42 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.r, label %bb.q, !prof !4

bb.q:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit2, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def7ConstIdEBN_.exit
  %.sink7 = phi ptr [ %i.h, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def7ConstIdEBN_.exit ], [ %i.x, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit2 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sink7, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.sink7, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit2
  %i.aa = tail call fastcc noundef i64 @_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_(i64 noundef %1)
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aa) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdE13shrink_to_fitBI_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %.not = icmp ult i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdEEB1b_.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtCsileJQcQObtj_7hir_def7ConstIdEB1P_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdEEB1b_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdE10reallocateBI_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %i.d)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  resume { ptr, i32 } %i.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdEEB1b_.exit: ; preds = %bb.c, %bb.d
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdEEB1b_.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdE13with_capacityBI_(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %0, 1152921504606846975
  br i1 %i.c, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %0, 3
  %i.e = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 16) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit.i: ; preds = %bb.d
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.h = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #42 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def7ConstIdEBN_.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.g) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def7ConstIdEBN_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtCsileJQcQObtj_7hir_def7ConstIdEBD_.exit.i
  store i64 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %0, ptr %i.j, align 8
  %i.k = ptrtoint ptr %i.h to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def7ConstIdEBN_.exit
  %.sroa.0.0 = phi i64 [ %i.k, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtCsileJQcQObtj_7hir_def7ConstIdEBN_.exit ], [ ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdE4pushBI_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdE7reserveBI_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  switch i64 %i.b, label %bb.d [
    i64 -1, label %bb.c
    i64 0, label %bb.e
  ], !prof !6362

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6381
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 1
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %3, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.b, %3, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.g, %bb.d ], [ -1, %3 ], [ 4, %bb.b ]
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i, i64 %i.f)
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdE10reallocateBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %..i.i)
  %.val.pre = load ptr, ptr %0, align 8           ; 2 uses
  %.pre = load i64, ptr %.val.pre, align 8
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdE7reserveBI_.exit

3:                                                ; preds = %bb.d
  br label %bb.e

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdE7reserveBI_.exit: ; preds = %bb.e, %bb.a
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 2 uses
  store i32 %1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %2, ptr %i.l, align 4
  %i.m = add i64 %i.i, 1
  store i64 %i.m, ptr %.val, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdE8data_rawBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameE13with_capacityCsileJQcQObtj_7hir_def(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %0, 1152921504606846975
  br i1 %i.c, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %0, 3
  %i.e = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 16) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.d
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.h = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #42 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.g) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit.i
  store i64 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %0, ptr %i.j, align 8
  %i.k = ptrtoint ptr %i.h to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit
  %.sroa.0.0 = phi i64 [ %i.k, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit ], [ ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameE4pushCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameE7reserveCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1)
          to label %._crit_edge unwind label %bb.e

._crit_edge:                                      ; preds = %bb.b
  %.val2.pre = load ptr, ptr %0, align 8          ; 2 uses
  %.pre = load i64, ptr %.val2.pre, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.f = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %.val2 = phi ptr [ %.val2.pre, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  store ptr %1, ptr %i.h, align 8
  %i.i = add i64 %i.f, 1
  store i64 %i.i, ptr %.val2, align 8
  ret void

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr nonnull %1) #40
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameE7reserveCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 6 uses
  %i.e = add i64 %i.b, %1                         ; 4 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %i.e, %i.d
  br i1 %.not, label %bb.d, label %bb.t

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp slt i64 %i.d, 0
  br i1 %i.h, label %bb.f, label %.thread17, !prof !4

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6384)
  %.not.i = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %.not.i, label %.thread25, label %bb.l

.thread17:                                        ; preds = %bb.e
  %i.i = shl nuw i64 %i.d, 1
  %..i19 = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 %i.e) ; 2 uses
  %.not.i20 = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %.not.i20, label %bb.g, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

.thread:                                          ; preds = %bb.d
  %..i4 = tail call noundef i64 @llvm.umax.i64(i64 %i.e, i64 4) ; 2 uses
  %.not.i5 = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %.not.i5, label %bb.g, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.thread

bb.g:                                             ; preds = %.thread17, %.thread
  %..i8 = phi i64 [ %..i4, %.thread ], [ %..i19, %.thread17 ] ; 4 uses
  %i.j = icmp slt i64 %..i8, 0
  br i1 %i.j, label %.thread25, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i

.thread25:                                        ; preds = %bb.f, %bb.g
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6384
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i: ; preds = %bb.g
  %i.k = icmp samesign ugt i64 %..i8, 1152921504606846975
  br i1 %i.k, label %bb.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i
  %i.l = shl nuw nsw i64 %..i8, 3
  %i.m = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.l, i64 16) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.j, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit.i.i, !prof !4

bb.i:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6384
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6384
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.h
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !6384
  %i.p = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #42, !noalias !6384 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit.i, !prof !4

bb.k:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.o) #37, !noalias !6384
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit.i: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit.i.i
end_hunk_1
begin_hunk_2_@_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE10reallocateCsileJQcQObtj_7hir_def:bb.a
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.h
  %i.n = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.l, i64 24) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  %i.p = extractvalue { i64, i1 } %i.n, 0
  %i.q = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.p, i64 16) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.l, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit, !prof !4

bb.k:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.j
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %i.t = icmp slt i64 %1, 0
  br i1 %i.t, label %bb.m, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1

bb.m:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit
  %i.u = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 24) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  %i.w = extractvalue { i64, i1 } %i.u, 0
  %i.x = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.w, i64 16) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.p, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit2, !prof !4

bb.o:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit2: ; preds = %bb.n
  %i.z = extractvalue { i64, i1 } %i.x, 0
  %i.aa = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.z) #42 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.r, label %bb.q, !prof !4

bb.q:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit2, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBR_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBR_11MacroCallIdEECsileJQcQObtj_7hir_def.exit
  %.sink7 = phi ptr [ %i.i, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBR_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBR_11MacroCallIdEECsileJQcQObtj_7hir_def.exit ], [ %i.aa, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit2 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink7, i64 8
  store i64 %1, ptr %i.ac, align 8
  store ptr %.sink7, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit2
  %i.ad = tail call fastcc noundef i64 @_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def(i64 noundef %1)
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ad) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE13shrink_to_fitCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %.not = icmp ult i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1f_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtB1f_11MacroCallIdEEECsileJQcQObtj_7hir_def.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1T_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtB1T_11MacroCallIdEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1f_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtB1f_11MacroCallIdEEECsileJQcQObtj_7hir_def.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE10reallocateCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %i.d)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  resume { ptr, i32 } %i.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1f_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtB1f_11MacroCallIdEEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c, %bb.d
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1f_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtB1f_11MacroCallIdEEECsileJQcQObtj_7hir_def.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE13with_capacityCsileJQcQObtj_7hir_def(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %0, i64 24) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.e = extractvalue { i64, i1 } %i.c, 0
  %i.f = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 16) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.d
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.i = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef 8) #42 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBR_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBR_11MacroCallIdEECsileJQcQObtj_7hir_def.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.h) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBR_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBR_11MacroCallIdEECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBH_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBH_11MacroCallIdEECsileJQcQObtj_7hir_def.exit.i
  store i64 0, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBR_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBR_11MacroCallIdEECsileJQcQObtj_7hir_def.exit
  %.sroa.0.0 = phi i64 [ %i.l, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBR_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBR_11MacroCallIdEECsileJQcQObtj_7hir_def.exit ], [ ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE4pushCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE7reserveCsileJQcQObtj_7hir_def.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  switch i64 %i.b, label %bb.d [
    i64 -1, label %bb.c
    i64 0, label %bb.e
  ], !prof !6362

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6420
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 1
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %2, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.b, %2, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.g, %bb.d ], [ -1, %2 ], [ 4, %bb.b ]
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i, i64 %i.f)
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE10reallocateCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %..i.i)
  %.val.pre = load ptr, ptr %0, align 8           ; 2 uses
  %.pre = load i64, ptr %.val.pre, align 8, !noalias !6423
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE7reserveCsileJQcQObtj_7hir_def.exit

2:                                                ; preds = %bb.d
  br label %bb.e

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE7reserveCsileJQcQObtj_7hir_def.exit: ; preds = %bb.e, %bb.a
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 4 dereferenceable(24) %1, i64 24, i1 false)
  %i.l = add i64 %i.i, 1
  store i64 %i.l, ptr %.val, align 8, !noalias !6423
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE8data_rawCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE10reallocateBJ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 12) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.e = extractvalue { i64, i1 } %i.c, 0
  %i.f = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 16) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit.i: ; preds = %bb.d
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.i = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef 8) #42 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def6ImplIdbEEBO_.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.h) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def6ImplIdbEEBO_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit.i
  store i64 0, ptr %i.i, align 8
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.h
  %i.n = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.l, i64 12) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  %i.p = extractvalue { i64, i1 } %i.n, 0
  %i.q = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.p, i64 16) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.l, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit, !prof !4

bb.k:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit: ; preds = %bb.j
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %i.t = icmp slt i64 %1, 0
  br i1 %i.t, label %bb.m, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1

bb.m:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit
  %i.u = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 12) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  %i.w = extractvalue { i64, i1 } %i.u, 0
  %i.x = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.w, i64 16) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.p, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit2, !prof !4

bb.o:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit2: ; preds = %bb.n
  %i.z = extractvalue { i64, i1 } %i.x, 0
  %i.aa = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.z) #42 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.r, label %bb.q, !prof !4

bb.q:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit2, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def6ImplIdbEEBO_.exit
  %.sink7 = phi ptr [ %i.i, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def6ImplIdbEEBO_.exit ], [ %i.aa, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit2 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink7, i64 8
  store i64 %1, ptr %i.ac, align 8
  store ptr %.sink7, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit2
  %i.ad = tail call fastcc noundef i64 @_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_(i64 noundef %1)
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ad) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE13shrink_to_fitBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %.not = icmp ult i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEEEB1c_.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonTNtCsileJQcQObtj_7hir_def6ImplIdbEEB1Q_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEEEB1c_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE10reallocateBJ_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %i.d)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  resume { ptr, i32 } %i.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEEEB1c_.exit: ; preds = %bb.c, %bb.d
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEEEB1c_.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE13with_capacityBJ_(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %0, i64 12) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.e = extractvalue { i64, i1 } %i.c, 0
  %i.f = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 16) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.f, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit.i, !prof !4

bb.e:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit.i: ; preds = %bb.d
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.i = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef 8) #42 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def6ImplIdbEEBO_.exit, !prof !4

bb.g:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.h) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def6ImplIdbEEBO_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def6ImplIdbEEBE_.exit.i
  store i64 0, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def6ImplIdbEEBO_.exit
  %.sroa.0.0 = phi i64 [ %i.l, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def6ImplIdbEEBO_.exit ], [ ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE4pushBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE7reserveBJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  switch i64 %i.b, label %bb.d [
    i64 -1, label %bb.c
    i64 0, label %bb.e
  ], !prof !6362

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6426
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 1
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %2, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.b, %2, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.g, %bb.d ], [ -1, %2 ], [ 4, %bb.b ]
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i, i64 %i.f)
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE10reallocateBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %..i.i)
  %.val.pre = load ptr, ptr %0, align 8           ; 2 uses
  %.pre = load i64, ptr %.val.pre, align 8, !noalias !6429
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE7reserveBJ_.exit

2:                                                ; preds = %bb.d
  br label %bb.e

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE7reserveBJ_.exit: ; preds = %bb.e, %bb.a
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull readonly align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.l = add i64 %i.i, 1
  store i64 %i.l, ptr %.val, align 8, !noalias !6429
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE8data_rawBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBJ_6per_ns4ItemuEEE10reallocateBJ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %1, 288230376151711743
  br i1 %i.c, label %bb.d, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit.i, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit.i: ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %1, 5
  %i.e = or disjoint i64 %i.d, 16                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.f = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef 8) #42 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBO_6per_ns4ItemuEEEBO_.exit, !prof !4

bb.e:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.e) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBO_6per_ns4ItemuEEEBO_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit.i
  store i64 0, ptr %i.f, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 3 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.g, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.f
  %i.k = icmp samesign ugt i64 %i.i, 288230376151711743
  br i1 %i.k, label %bb.h, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit, !prof !4

bb.h:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit: ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i
  %i.l = shl nuw nsw i64 %i.i, 5
  %i.m = or disjoint i64 %i.l, 16
  %i.n = icmp slt i64 %1, 0
  br i1 %i.n, label %bb.i, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1

bb.i:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit
  %i.o = icmp samesign ugt i64 %1, 288230376151711743
  br i1 %i.o, label %bb.j, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit2, !prof !4

bb.j:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit2: ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1
  %i.p = shl nuw nsw i64 %1, 5
  %i.q = or disjoint i64 %i.p, 16
  %i.r = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.q) #42 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.k, !prof !4

bb.k:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit2, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBO_6per_ns4ItemuEEEBO_.exit
  %.sink7 = phi ptr [ %i.f, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBO_6per_ns4ItemuEEEBO_.exit ], [ %i.r, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit2 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink7, i64 8
  store i64 %1, ptr %i.t, align 8
  store ptr %.sink7, ptr %0, align 8
  ret void

bb.l:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit2
  %i.u = tail call fastcc noundef i64 @_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_(i64 noundef %1)
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.u) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBJ_6per_ns4ItemuEEE13shrink_to_fitBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %.not = icmp ult i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtB1c_6per_ns4ItemuEEEEB1c_.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonTNtCsileJQcQObtj_7hir_def7TraitIdINtNtB1Q_6per_ns4ItemuEEEB1Q_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtB1c_6per_ns4ItemuEEEEB1c_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBJ_6per_ns4ItemuEEE10reallocateBJ_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %i.d)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  resume { ptr, i32 } %i.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtB1c_6per_ns4ItemuEEEEB1c_.exit: ; preds = %bb.c, %bb.d
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtB1c_6per_ns4ItemuEEEEB1c_.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBJ_6per_ns4ItemuEEE13with_capacityBJ_(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %0, 288230376151711743
  br i1 %i.c, label %bb.d, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit.i, !prof !4

bb.d:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit.i: ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.d = shl nuw nsw i64 %0, 5
  %i.e = or disjoint i64 %i.d, 16                 ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.f = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef 8) #42 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBO_6per_ns4ItemuEEEBO_.exit, !prof !4

bb.e:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.e) #37
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBO_6per_ns4ItemuEEEBO_.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBE_6per_ns4ItemuEEEBE_.exit.i
  store i64 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %0, ptr %i.h, align 8
  %i.i = ptrtoint ptr %i.f to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBO_6per_ns4ItemuEEEBO_.exit
  %.sroa.0.0 = phi i64 [ %i.i, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBO_6per_ns4ItemuEEEBO_.exit ], [ ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBJ_6per_ns4ItemuEEE4pushBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBJ_6per_ns4ItemuEEE7reserveBJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  switch i64 %i.b, label %bb.d [
    i64 -1, label %bb.c
    i64 0, label %bb.e
  ], !prof !6362

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6432
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 1
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %2, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.b, %2, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.g, %bb.d ], [ -1, %2 ], [ 4, %bb.b ]
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i, i64 %i.f)
  tail call fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBJ_6per_ns4ItemuEEE10reallocateBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %..i.i)
  %.val.pre = load ptr, ptr %0, align 8           ; 2 uses
  %.pre = load i64, ptr %.val.pre, align 8, !noalias !6435
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBJ_6per_ns4ItemuEEE7reserveBJ_.exit

2:                                                ; preds = %bb.d
  br label %bb.e

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBJ_6per_ns4ItemuEEE7reserveBJ_.exit: ; preds = %bb.e, %bb.a
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.l = add i64 %i.i, 1
  store i64 %i.l, ptr %.val, align 8, !noalias !6435
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBJ_6per_ns4ItemuEEE8data_rawBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE13shrink_to_fitCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !6 ; 8 uses
  %.not = icmp ult i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEECsileJQcQObtj_7hir_def.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1S_2id2IdEEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEECsileJQcQObtj_7hir_def.exit unwind label %bb.v

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6438)
  %.not.i = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %.not.i, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.g = icmp slt i64 %i.d, 0
  br i1 %i.g, label %bb.g, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6438
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i: ; preds = %bb.f
  %i.h = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 range(i64 1, 0) %i.d, i64 24) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %bb.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.j, i64 16) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.j, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit.i.i, !prof !4

bb.i:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6438
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6438
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.h
  %i.m = extractvalue { i64, i1 } %i.k, 0         ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !6438
  %i.n = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef 8) #42, !noalias !6438 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEECsileJQcQObtj_7hir_def.exit.i, !prof !4

bb.k:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.m) #37, !noalias !6438
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEECsileJQcQObtj_7hir_def.exit.i: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit.i.i
  store i64 0, ptr %i.n, align 8, !noalias !6438
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE10reallocateCsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.e
  %i.p = icmp slt i64 %i.c, 0
  br i1 %i.p, label %bb.m, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6438
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.l
  %i.q = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.c, i64 24) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %i.t = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.s, i64 16) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.p, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit.i, !prof !4

bb.o:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6438
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6438
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.n
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = icmp slt i64 %i.d, 0
  br i1 %i.w, label %bb.q, label %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1.i

bb.q:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6438
  unreachable

_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1.i: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit.i
  %i.x = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 range(i64 1, 0) %i.d, i64 24) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.s, label %bb.r, !prof !4

bb.r:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1.i
  %i.z = extractvalue { i64, i1 } %i.x, 0
  %i.aa = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.z, i64 16) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.t, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit2.i, !prof !4

bb.s:                                             ; preds = %_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsileJQcQObtj_7hir_def.exit.i1.i
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6438
  unreachable

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #37, !noalias !6438
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit2.i: ; preds = %bb.r
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  %i.ad = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.ac) #42, !noalias !6438 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.u, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE10reallocateCsileJQcQObtj_7hir_def.exit, !prof !4

bb.u:                                             ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit2.i
  %i.af = tail call fastcc noundef i64 @_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def(i64 noundef range(i64 1, 0) %i.d), !noalias !6438
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.af) #37, !noalias !6438
  unreachable

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE10reallocateCsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEECsileJQcQObtj_7hir_def.exit.i, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit2.i
  %.sink7.i = phi ptr [ %i.n, %_RINvCsbdtVtHYmo6x_8thin_vec20header_with_capacityTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEECsileJQcQObtj_7hir_def.exit.i ], [ %i.ad, %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEECsileJQcQObtj_7hir_def.exit2.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink7.i, i64 8
  store i64 %i.d, ptr %i.ag, align 8, !noalias !6438
  store ptr %.sink7.i, ptr %0, align 8, !alias.scope !6438
  br label %bb.w

bb.v:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  resume { ptr, i32 } %i.ah

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c, %bb.d
  store i64 ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE10reallocateCsileJQcQObtj_7hir_def.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEECsileJQcQObtj_7hir_def.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCsileJQcQObtj_7hir_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext true) #39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBU_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtEEINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationj1_EEE14insert_no_growB46_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !6 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !6441
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !54

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
end_hunk_2
