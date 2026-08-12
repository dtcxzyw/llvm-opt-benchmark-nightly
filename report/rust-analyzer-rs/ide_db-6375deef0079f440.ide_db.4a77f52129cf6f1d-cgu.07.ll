inline.NumInlined: 1915
inline.NumDeleted: 865
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCs6oosyzwIepl_6ide_db7imports13import_assetsNtB4_12NameToImport5fuzzy:bb.a

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db.exit, %.loopexit
  ret void

bb.q:                                             ; preds = %.loopexit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.v, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.r ], [ %.pn13, %bb.v ], [ %i.bi, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.q
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.p

bb.t:                                             ; preds = %bb.v, %bb.o
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.u:                                             ; preds = %bb.k
  unreachable

bb.v:                                             ; preds = %.thread, %bb.b
  %.pn13 = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.bi, %bb.b ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #36
          to label %common.resume unwind label %bb.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RNvMsa_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_7IterMutRNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdE10into_sliceCs6oosyzwIepl_6ide_db(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #8 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 3
  %i.e = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCs8Xq8PKFYOms_3hir8ItemInNsj3_E21reserve_one_uncheckedCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1298, !noalias !1301, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1298, !noalias !1301
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !231

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !231

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCs8Xq8PKFYOms_3hir8ItemInNsj3_E8try_growCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit
    i64 0, label %bb.e
  ], !prof !1303

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #38
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCs8Xq8PKFYOms_3hir8ItemInNsj3_E8try_growCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 8 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1304, !noalias !1307, !nonnull !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !231

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 4
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 20                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 461168601842738790
  br i1 %or.cond.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit, !prof !1309

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit
  %i.k = mul i64 %.sink.i, 20                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 461168601842738790
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit45, !prof !1309

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.l = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #41 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 4, i64 noundef %i.j) #41 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul nuw nsw i64 %.val, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 20                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 461168601842738790
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit, !prof !1309

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1310
  store i64 0, ptr %i.a, align 8, !noalias !1310
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !1310
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !1310
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 4) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E13shrink_to_fitCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1313, !noalias !1316, !nonnull !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1313, !noalias !1316 ; 5 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.c

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.f, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, %i.g
  br i1 %i.i, label %bb.f, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.e, i64 %i.j, i1 false)
  %i.k = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.l = icmp ult i64 %i.k, 1152921504606846976
  br i1 %i.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit, label %bb.e, !prof !1318

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1319
  store i64 0, ptr %i.a, align 8, !noalias !1319
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !1319
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.d
  %1 = shl nuw nsw i64 %i.k, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 8) #41
  store i64 %i.g, ptr %i.b, align 8
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit

bb.f:                                             ; preds = %bb.c
  %i.m = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.g) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  switch i64 %i.n, label %bb.g [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit
    i64 0, label %bb.h
  ], !prof !1303

bb.g:                                             ; preds = %bb.f
  %i.o = extractvalue { i64, i64 } %i.m, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.n, i64 noundef %i.o) #38
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E21reserve_one_uncheckedCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1322, !noalias !1325, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1322, !noalias !1325
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !231

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !231

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit
    i64 0, label %bb.e
  ], !prof !1303

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #38
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1327, !noalias !1330, !nonnull !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !231

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not48 = icmp eq i64 %i.c, %1
  br i1 %.not48, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %i.k = icmp ult i64 %1, 1152921504606846976
  br i1 %i.k, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit, label %bb.m, !prof !1318

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit
  %i.l = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.l, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit50, label %bb.m, !prof !1318

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #41 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit50: ; preds = %bb.g
  %2 = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %2, i64 noundef 8, i64 noundef %i.j) #41 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit50, %bb.j
  %.sroa.031.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit50 ]
  store ptr %.sroa.031.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.s = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.s, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit, label %bb.l, !prof !1318

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1332
  store i64 0, ptr %i.a, align 8, !noalias !1332
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !1332
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.k
  %3 = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit50, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit50 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit50 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E21reserve_one_uncheckedCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !1335, !noundef !5 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 3
  br i1 %i.b, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs6oosyzwIepl_6ide_db.exit, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs6oosyzwIepl_6ide_db.exit.thread

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noalias !1335, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.e, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs6oosyzwIepl_6ide_db.exit.thread, !prof !1338

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs6oosyzwIepl_6ide_db.exit.thread: ; preds = %bb.a, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs6oosyzwIepl_6ide_db.exit
  %.sink10.i7 = phi i64 [ %i.d, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs6oosyzwIepl_6ide_db.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = icmp eq i64 %.sink10.i7, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i7, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.e, label %bb.b, !prof !231

bb.b:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs6oosyzwIepl_6ide_db.exit.thread
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E8try_growCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit
    i64 0, label %bb.d
  ], !prof !1303

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs6oosyzwIepl_6ide_db.exit.thread, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs6oosyzwIepl_6ide_db.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E8try_growCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5   ; 6 uses
  %i.c = icmp ult i64 %i.b, 4                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1339, !noalias !1342, !nonnull !5 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !5 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !231

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 4
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i64 %1, 3                    ; 4 uses
  %i.j = icmp ult i64 %1, 1152921504606846976
  br i1 %i.j, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit, label %bb.m, !prof !1318

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit
  %i.k = icmp ult i64 %i.b, 1152921504606846976
  br i1 %i.k, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit45, label %bb.m, !prof !1318

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.l = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #41 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit45: ; preds = %bb.g
  %2 = shl nuw nsw i64 %.sink.i, 3
  %i.n = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %2, i64 noundef 8, i64 noundef %i.i) #41 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.e, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.r = icmp ult i64 %i.b, 1152921504606846976
  br i1 %i.r, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit, label %bb.l, !prof !1318

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1344
  store i64 0, ptr %i.a, align 8, !noalias !1344
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !1344
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.k
  %3 = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit45 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs6oosyzwIepl_6ide_db.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !1347, !noalias !1350, !noundef !5 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1347, !noalias !1350, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1347, !noalias !1350
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !231

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !231

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !1352, !noundef !5 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !231

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #40, !noalias !1352
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul i64 %i.m, 88                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 104811045873349724
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBJ_.exit.i, !prof !1309

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBJ_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBJ_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 104811045873349725
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBJ_.exit45.i, !prof !1309

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBJ_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !1352
  %i.q = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #41, !noalias !1352 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBJ_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 88
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #41, !noalias !1352 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBJ_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBJ_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !1352
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !1352
  store i64 %i.m, ptr %0, align 8, !alias.scope !1352
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.o, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.o, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !1352
  %i.x = mul i64 %.sink.i.i, 88                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 104811045873349725
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBH_.exit.i, !prof !1309

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1355
  store i64 0, ptr %i.a, align 8, !noalias !1355
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !1355
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !1355
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBH_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #41, !noalias !1352
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBJ_.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #38
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6oosyzwIepl_6ide_db.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEBH_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs6oosyzwIepl_6ide_db13items_locator15items_with_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %4, i8 noundef range(i8 0, 3) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 5 uses
  %i.n = alloca [56 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [56 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [80 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [48 x i8], align 8               ; 9 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [40 x i8], align 8               ; 5 uses
  %i.ag = alloca [1 x i8], align 1                ; 6 uses
  store i8 %5, ptr %i.ag, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.ah = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ai = icmp ult i64 %i.ah, 3
  br i1 %i.ai, label %bb.c, label %.thread

.body:                                            ; preds = %bb.z, %.body.i, %bb.j, %bb.b, %.body45, %bb.w
  %.sroa.015.0 = phi i1 [ true, %bb.w ], [ %.sroa.015.3, %.body45 ], [ true, %.body.i ], [ true, %bb.j ], [ %.sroa.015.1, %bb.b ], [ true, %bb.z ]
  %.sroa.014.0 = phi i8 [ 1, %bb.w ], [ %.sroa.014.4, %.body45 ], [ 1, %.body.i ], [ 1, %bb.j ], [ %.sroa.014.1, %bb.b ], [ 1, %bb.z ]
  %.sroa.013.0 = phi i1 [ true, %bb.w ], [ %.sroa.013.4, %.body45 ], [ true, %.body.i ], [ true, %bb.j ], [ %.sroa.013.1, %bb.b ], [ true, %bb.z ]
  %.pn31 = phi { ptr, i32 } [ %i.bq, %bb.w ], [ %.pn29, %.body45 ], [ %i.bh, %.body.i ], [ %i.az, %bb.j ], [ %i.ak, %bb.b ], [ %i.bt, %bb.z ]
  %i.aj = load i8, ptr %4, align 8, !range !91, !noundef !5
  switch i8 %i.aj, label %bb.bw [
    i8 0, label %bb.bx
    i8 1, label %bb.by
  ]

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db.exit.i, %bb.r, %bb.bt, %bb.h, %bb.e, %bb.d
  %.sroa.015.1 = phi i1 [ %.sroa.015.2, %bb.bt ], [ true, %bb.d ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db.exit.i ], [ true, %bb.r ], [ true, %bb.h ], [ true, %bb.e ]
  %.sroa.014.1 = phi i8 [ %.sroa.014.3, %bb.bt ], [ 1, %bb.d ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db.exit.i ], [ 1, %bb.r ], [ 1, %bb.h ], [ 1, %bb.e ]
  %.sroa.013.1 = phi i1 [ %.sroa.013.3, %bb.bt ], [ true, %bb.d ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db.exit.i ], [ true, %bb.r ], [ true, %bb.h ], [ true, %bb.e ]
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

default.unreachable60:                            ; preds = %bb.ab
  unreachable

.thread:                                          ; preds = %bb.f, %bb.g, %bb.a, %bb.c
  store i64 2, ptr %i.y, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %i.al, align 8
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.am = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs6oosyzwIepl_6ide_db13items_locator15items_with_name10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.am, label %bb.d [
    i8 0, label %.thread
    i8 1, label %bb.e
end_hunk_0
