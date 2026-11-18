Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryContext?download=true
inline.NumInlined: 12267
inline.NumDeleted: 6290
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !105  ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !95
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !95
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) #31 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !370
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !94   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !105  ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !94
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !95
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !105
  store ptr %i.v, ptr %i.s, align 8, !tbaa !94
  store i64 0, ptr %i.ac, align 8, !tbaa !105
  store i8 0, ptr %i.v, align 8, !tbaa !95
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.228) #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !94
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) #31 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !370
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !94 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !105 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !94
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !95
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !105
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !105
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !94
  store i64 0, ptr %i.as, align 8, !tbaa !105
  store i8 0, ptr %i.al, align 8, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm4bolt13BinaryContext19hasValidCodePaddingERKNS0_14BinaryFunctionE(ptr noundef nonnull align 8 dereferenceable(2268) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.anon.1894, align 8           ; 7 uses
  %3 = alloca %"class.llvm::format_object.1890", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::ErrorOr.792", align 8 ; 10 uses
  %7 = alloca %"class.llvm::MCInst", align 8      ; 13 uses
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 21 uses
  %8 = alloca %"class.std::function.809", align 8 ; 9 uses
  %9 = alloca %"class.std::function.809", align 8 ; 9 uses
  %10 = alloca %"class.std::function.809", align 8 ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !391
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !416
  switch i32 %i.f, label %bb.bc [
    i32 41, label %bb.b
    i32 40, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !841
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 13 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !796
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.bc, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @_ZNK4llvm4bolt14BinaryFunction7getDataEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.792") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1360) %1) #31
  %i.l = load i64, ptr %i.g, align 8, !tbaa !841  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.m, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %i.o, align 8, !tbaa !383
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 6, ptr %i.p, align 4, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !786
  %i.s = add i64 %i.r, %i.l
  store i64 %i.s, ptr %i.b, align 8, !tbaa !396
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !404
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.x, align 8
  %i.y = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 4 uses
  store i64 377, ptr %i.y, align 16
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %.sroa.4119.0..sroa_idx, align 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.u, ptr %.sroa.5120.0..sroa_idx, align 16
  store ptr %i.y, ptr %8, align 8, !tbaa !884
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm6MCInstEESt5_BindIFMNS0_4bolt13MCPlusBuilderEKFbS3_EPS7_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataS3_, ptr %i.w, align 8, !tbaa !1620
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm6MCInstEESt5_BindIFMNS0_4bolt13MCPlusBuilderEKFbS3_EPS7_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.v, align 8, !tbaa !80
  %i.z = load i64, ptr %i.i, align 8, !tbaa !796
  %i.aa = icmp ult i64 %i.l, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %.critedge.thread

.lr.ph.i:                                         ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %.pre3.i = load i64, ptr %i.b, align 8, !tbaa !396
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %.2168 = phi i64 [ %i.l, %.lr.ph.i ], [ %i.as, %bb.g ] ; 5 uses
  %i.ad = phi i64 [ %.pre3.i, %.lr.ph.i ], [ %i.at, %bb.g ]
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !406 ; 2 uses
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !885
  %i.ag = sub i64 %i.af, %.2168
  %i.ah = load ptr, ptr %6, align 8, !tbaa !886
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.2168
  %i.aj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm5nullsEv() #31
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr %i.ai, i64 %i.ag, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.aj) #31, !inline_history !1608
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %"_ZZN4llvm4bolt13BinaryContext19hasValidCodePaddingERKNS0_14BinaryFunctionEENK3$_1clESt8functionIFbRKNS_6MCInstEEE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZNKSt8functionIFbRKN4llvm6MCInstEEEclES3_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFbRKN4llvm6MCInstEEEclES3_.exit.i: ; preds = %bb.e
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !1620
  %i.aq = call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(128) %7) #31, !inline_history !1609
  br i1 %i.aq, label %bb.g, label %"_ZZN4llvm4bolt13BinaryContext19hasValidCodePaddingERKNS0_14BinaryFunctionEENK3$_1clESt8functionIFbRKNS_6MCInstEEE.exit"

bb.g:                                             ; preds = %_ZNKSt8functionIFbRKN4llvm6MCInstEEEclES3_.exit.i
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !396 ; 2 uses
  %i.as = add i64 %i.ar, %.2168                   ; 3 uses
  %12 = load i64, ptr %i.b, align 8, !tbaa !396
  %i.at = add i64 %12, %i.ar                      ; 2 uses
  store i64 %i.at, ptr %i.b, align 8, !tbaa !396
  %i.au = load i64, ptr %i.i, align 8, !tbaa !796
  %i.av = icmp ult i64 %i.as, %i.au
  br i1 %i.av, label %bb.d, label %"_ZZN4llvm4bolt13BinaryContext19hasValidCodePaddingERKNS0_14BinaryFunctionEENK3$_1clESt8functionIFbRKNS_6MCInstEEE.exit", !llvm.loop !1610

"_ZZN4llvm4bolt13BinaryContext19hasValidCodePaddingERKNS0_14BinaryFunctionEENK3$_1clESt8functionIFbRKNS_6MCInstEEE.exit": ; preds = %_ZNKSt8functionIFbRKN4llvm6MCInstEEEclES3_.exit.i, %bb.g, %bb.d
  %.4 = phi i64 [ %.2168, %bb.d ], [ %.2168, %_ZNKSt8functionIFbRKN4llvm6MCInstEEEclES3_.exit.i ], [ %i.as, %bb.g ] ; 5 uses
  %.not = icmp eq i64 %.4, %i.l
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %"_ZZN4llvm4bolt13BinaryContext19hasValidCodePaddingERKNS0_14BinaryFunctionEENK3$_1clESt8functionIFbRKNS_6MCInstEEE.exit"
  %i.aw = load i64, ptr %i.i, align 8, !tbaa !796
  %i.ax = icmp eq i64 %.4, %i.aw
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !80  ; 2 uses
  %.not.i29 = icmp eq ptr %i.ay, null
  br i1 %.not.i29, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3) #31, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  br i1 %i.ax, label %bb.ba, label %_ZNSt14_Function_baseD2Ev.exit31

.critedge:                                        ; preds = %"_ZZN4llvm4bolt13BinaryContext19hasValidCodePaddingERKNS0_14BinaryFunctionEENK3$_1clESt8functionIFbRKNS_6MCInstEEE.exit"
  %.pr = load ptr, ptr %i.v, align 8, !tbaa !80   ; 2 uses
  %.not.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i30, label %_ZNSt14_Function_baseD2Ev.exit31, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %.critedge
  %.4231234 = phi i64 [ %.4, %.critedge ], [ %i.l, %bb.c ]
  %i.ba = phi ptr [ %.pr, %.critedge ], [ @_ZNSt17_Function_handlerIFbRKN4llvm6MCInstEESt5_BindIFMNS0_4bolt13MCPlusBuilderEKFbS3_EPS7_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, %bb.c ]
  %i.bb = call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3) #31, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit31

_ZNSt14_Function_baseD2Ev.exit31:                 ; preds = %.critedge.thread, %.critedge, %_ZNSt14_Function_baseD2Ev.exit
  %.4230 = phi i64 [ %.4231234, %.critedge.thread ], [ %.4, %.critedge ], [ %.4, %_ZNSt14_Function_baseD2Ev.exit ]
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !404
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZNSt14_Function_baseD2Ev.exit31
  %.0166 = phi i64 [ %.4230, %_ZNSt14_Function_baseD2Ev.exit31 ], [ %.0166.be, %.backedge.backedge ] ; 17 uses
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !391
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !416
  %i.bu = icmp eq i32 %i.bt, 3
  br i1 %i.bu, label %bb.j, label %.thread235

bb.j:                                             ; preds = %.backedge
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !796 ; 2 uses
  %.not.i36 = icmp ult i64 %.0166, %i.bv
  br i1 %.not.i36, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !396 ; 4 uses
  %i.bx = load ptr, ptr %i.bd, align 8, !tbaa !373 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not10.i.i.i.i.i, label %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bx, %bb.k ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.be, %bb.k ]
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !396
  %i.ca = icmp ult i64 %i.bw, %i.bz               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ca, ptr %.012.i.i.i.i.i, ptr %.0811.i.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ca, i64 16, i64 24
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !668 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !34

_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.k
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.be, %bb.k ], [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cb = load ptr, ptr %i.bf, align 8, !tbaa !374
  %i.cc = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.cb
  br i1 %i.cc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i.i
  %i.cd = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i.i) #35 ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 112
  %i.ce = load i64, ptr %.in.i.i, align 8, !tbaa !396 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !846
  %i.ch = add i64 %i.cg, %i.ce
  %.not.i.i = icmp ult i64 %i.bw, %i.ch
  br i1 %.not.i.i, label %_ZN4llvm4bolt13BinaryContext34getBinaryFunctionContainingAddressEmbb.exit.i, label %bb.m

_ZN4llvm4bolt13BinaryContext34getBinaryFunctionContainingAddressEmbb.exit.i: ; preds = %bb.l
  %i.ci = add i64 %i.ce, %.0166
  %i.cj = add i64 %i.ce, %i.bw
  store i64 %i.cj, ptr %i.b, align 8, !tbaa !396
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.l, %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i.i
  %i.ck = add i64 %.0166, 12                      ; 3 uses
  %.not7.i = icmp ugt i64 %i.ck, %i.bv
  br i1 %.not7.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = call noundef zeroext i1 @_ZN4llvm4bolt13BinaryContext19handleAArch64VeneerEmb(ptr noundef nonnull align 8 dereferenceable(2268) %0, i64 noundef %i.bw, i1 noundef zeroext true)
  br i1 %i.cl, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !396
  %i.cn = add i64 %i.cm, 12
  store i64 %i.cn, ptr %i.b, align 8, !tbaa !396
  %i.co = load ptr, ptr %i.bg, align 8, !tbaa !368, !nonnull !86, !align !369 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !103
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !104 ; 2 uses
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp ult i64 %i.cv, 49
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull @.str.211, i64 noundef 49) #31
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.cs, ptr noundef nonnull align 1 dereferenceable(49) @.str.211, i64 49, i1 false)
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !104
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 49
  store ptr %i.cz, ptr %i.cr, align 8, !tbaa !104
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi ptr [ %i.cx, %bb.p ], [ %i.co, %bb.q ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.da = load i64, ptr %i.q, align 8, !tbaa !786
  %i.db = add i64 %i.da, %i.ck
  %i.dc = inttoptr i64 %i.db to ptr
  store ptr %i.dc, ptr %5, align 8, !alias.scope !1621
  store ptr null, ptr %i.bh, align 8, !alias.scope !1621
  store i8 15, ptr %i.bi, align 8, !tbaa !468, !alias.scope !1621
  store i8 1, ptr %i.bj, align 1, !tbaa !467, !alias.scope !1621
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i) #31
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !104 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !103
  %.not.i8.i = icmp ult ptr %i.de, %i.dg
  br i1 %.not.i8.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.dh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i8 noundef zeroext 10) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store ptr %i.di, ptr %i.dd, align 8, !tbaa !104
  store i8 10, ptr %i.de, align 1, !tbaa !95
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.backedge.backedge

bb.t:                                             ; preds = %bb.n
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !391
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre192 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !416
  %i.dj = icmp eq i32 %.pre192, 3
  br i1 %i.dj, label %.thread, label %.thread235

.thread:                                          ; preds = %bb.m, %bb.j, %bb.t
  %i.dk = load i64, ptr %i.i, align 8, !tbaa !796 ; 3 uses
  %.not.i37 = icmp ult i64 %.0166, %i.dk
  br i1 %.not.i37, label %bb.u, label %.thread235

bb.u:                                             ; preds = %.thread
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !396 ; 3 uses
  %i.dm = load ptr, ptr %i.bk, align 8, !tbaa !672 ; 7 uses
  %.not40.i.i = icmp eq ptr %i.dm, null
  br i1 %.not40.i.i, label %.thread235, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = load i64, ptr %i.q, align 8, !tbaa !786 ; 2 uses
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %.thread235, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = sub nuw i64 %i.dl, %i.dn                ; 4 uses
end_hunk_0
