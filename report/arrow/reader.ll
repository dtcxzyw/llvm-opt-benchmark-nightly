inline.NumInlined: 10874
inline.NumDeleted: 3955
begin_hunk_0_@_ZN5arrow3ipc12_GLOBAL__N_128GetInclusionMaskAndOutSchemaERKSt10shared_ptrINS_6SchemaEERKSt6vectorIiSaIiEEPS7_IbSaIbEEPS4_:bb.a
bb.cd:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit68
  %i.ir = ptrtoint ptr %i.bl to i64
  %i.is = ptrtoint ptr %i.bm to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.it) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ce:                                            ; preds = %bb.bu, %.body
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.bu ], [ %.pn, %.body ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.v
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.ce ], [ %i.bx, %bb.v ]
  %.not.i.i.i70 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIiSaIiEED2Ev.exit71, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.iu = ptrtoint ptr %i.bl to i64
  %i.iv = ptrtoint ptr %i.bm to i64
  %i.iw = sub i64 %i.iu, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.iw) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit71

_ZNSt6vectorIiSaIiEED2Ev.exit71:                  ; preds = %bb.cf, %bb.cg
  resume { ptr, i32 } %.pn28.pn.pn

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.cd, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit68, %_ZNSt10shared_ptrIN5arrow6SchemaEEaSERKS2_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.39", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !52
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !52
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !83

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !104    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !76
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !104    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !76
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.m = load ptr, ptr %3, align 8, !tbaa !104    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !76
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_123ReadRecordBatchInternalERKNS_6BufferERKSt10shared_ptrINS_6SchemaEERKSt6vectorIbSaIbEERNS1_14IpcReadContextEPNS_2io16RandomAccessFileE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3, ptr noundef nonnull align 8 captures(none) dereferenceable(25) %4, ptr noundef %5) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.arrow::ArrayData", align 8 ; 7 uses
  %7 = alloca %"class.arrow::ipc::(anonymous namespace)::ArrayLoader", align 8 ; 20 uses
  %8 = alloca %"class.std::vector.323", align 16  ; 16 uses
  %9 = alloca %"class.std::vector.323", align 16  ; 16 uses
  %10 = alloca %"class.std::vector.283", align 16 ; 12 uses
  %11 = alloca %"class.std::shared_ptr", align 16 ; 13 uses
  %12 = alloca %"class.std::shared_ptr.330", align 8 ; 8 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %20 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %21 = alloca %"class.std::vector.283", align 16 ; 9 uses
  %22 = alloca %"class.std::shared_ptr.100", align 16 ; 6 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %25 = alloca %"class.arrow::Result.337", align 8 ; 10 uses
  %26 = alloca %"class.std::shared_ptr.23", align 16 ; 8 uses
  %27 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %28 = alloca %"class.std::vector.323", align 16 ; 9 uses
  %29 = alloca %"class.std::shared_ptr.341", align 8 ; 6 uses
  %30 = alloca %"class.std::shared_ptr.23", align 16 ; 6 uses
  %31 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %32 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %33 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %34 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %35 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %36 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %37 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %38 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %39 = alloca %"class.std::shared_ptr.26", align 16 ; 9 uses
  %40 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %41 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %42 = alloca %"class.arrow::Result", align 8    ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !120, !range !67, !noundef !68
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = select i1 %i.d, ptr %i.f, ptr null, !prof !55 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !129  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36, !noalias !130
  %.tr.i.i = trunc i64 %i.i to i32
  %i.j = shl i32 %.tr.i.i, 3
  store ptr %i.g, ptr %31, align 8, !tbaa !133, !noalias !130
  %i.k = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.i, ptr %i.k, align 8, !tbaa !137, !noalias !130
  %i.l = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i32 128, ptr %i.l, align 8, !tbaa !3, !noalias !130
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 20
  store i32 %i.j, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !130
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !138, !noalias !130
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !138, !noalias !130
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !105, !noalias !130
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !138, !noalias !130
  %i.m = getelementptr inbounds nuw i8, ptr %31, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false), !noalias !130
  %i.n = icmp ugt i64 %i.i, 11
  br i1 %i.n, label %bb.b, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !130 ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %i.o, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = add i64 %i.i, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.q, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36, !noalias !130
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.p
  %i.s = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %31), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36, !noalias !130
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.t = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !130
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  br label %_ZN5arrow6StatusD2Ev.exit50

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %33, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.11)
  %.pr = load ptr, ptr %33, align 8, !tbaa !52    ; 2 uses
  store ptr %.pr, ptr %32, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  %i.w = icmp eq ptr %.pr, null
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit50, label %bb.d, !prof !139

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %32) #36
  %i.x = load ptr, ptr %32, align 8, !tbaa !52    ; 2 uses
  %.not.i45 = icmp eq ptr %i.x, null
  br i1 %.not.i45, label %_ZN5arrow6StatusD2Ev.exit46, label %bb.e, !prof !55

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !56, !range !67, !noundef !68
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit46, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #36
  br label %_ZN5arrow6StatusD2Ev.exit46

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  br label %bb.jj

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.0124 = phi ptr [ %i.v, %_ZN5arrow6StatusD2Ev.exit.thread ], [ null, %_ZN5arrow6StatusD2Ev.exit ] ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.ab = load i32, ptr %.0124, align 4, !tbaa !3 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %.0124, i64 %i.ad ; 3 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !140 ; 2 uses
  %i.ag = icmp ugt i16 %i.af, 6
  br i1 %i.ag, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !140 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.0124, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !76
  %i.am = icmp eq i8 %i.al, 3
  %i.an = icmp ugt i16 %i.af, 8
  %or.cond.i = and i1 %i.an, %i.am
  br i1 %or.cond.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !140 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0124, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  store i32 0, ptr %i.a, align 4, !tbaa !141, !noalias !142
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3, !noalias !142
  %i.aw = sext i32 %i.av to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !140, !noalias !142
  %i.ba = icmp ugt i16 %i.az, 10
  br i1 %i.ba, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i53, label %_ZN5arrow6StatusD2Ev.exit58.thread

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i, %_ZN5arrow6StatusD2Ev.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  call void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %34, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(62) @.str.10)
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %34) #36
  %i.bb = load ptr, ptr %34, align 8, !tbaa !52   ; 2 uses
  %.not.i51 = icmp eq ptr %i.bb, null
  br i1 %.not.i51, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.g, !prof !55

bb.g:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !56, !range !67, !noundef !68
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %34) #36
  br label %_ZN5arrow6StatusD2Ev.exit52

_ZN5arrow6StatusD2Ev.exit52:                      ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  br label %bb.jj

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i53: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !140, !noalias !142 ; 2 uses
  %.not.i.i.i.i54 = icmp eq i16 %i.bg, 0
  br i1 %.not.i.i.i.i54, label %_ZN5arrow6StatusD2Ev.exit58.thread, label %_ZNK3org6apache5arrow7flatbuf11RecordBatch11compressionEv.exit.i

_ZNK3org6apache5arrow7flatbuf11RecordBatch11compressionEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i53
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3, !noalias !142
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3, !noalias !142
  %i.bn = sext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo ; 3 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !140, !noalias !142 ; 2 uses
  %i.br = icmp ugt i16 %i.bq, 6
  br i1 %i.br, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55, label %bb.j

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55: ; preds = %_ZNK3org6apache5arrow7flatbuf11RecordBatch11compressionEv.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !140, !noalias !142 ; 2 uses
  %.not.i.i.i56 = icmp eq i16 %i.bt, 0
  br i1 %.not.i.i.i56, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i, label %_ZNK3org6apache5arrow7flatbuf15BodyCompression6methodEv.exit.i

_ZNK3org6apache5arrow7flatbuf15BodyCompression6methodEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !76, !noalias !142
  %.not8.i = icmp eq i8 %i.bw, 0
  br i1 %.not8.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i, label %bb.i

bb.i:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf15BodyCompression6methodEv.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA53_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %36, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(53) @.str.19)
  br label %_ZN5arrow6StatusD2Ev.exit58

bb.j:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf11RecordBatch11compressionEv.exit.i
  %i.bx = icmp samesign ugt i16 %i.bq, 4
  br i1 %i.bx, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i, label %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i: ; preds = %bb.j, %_ZNK3org6apache5arrow7flatbuf15BodyCompression6methodEv.exit.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !140, !noalias !142 ; 2 uses
  %.not.i.i10.i = icmp eq i16 %i.bz, 0
  br i1 %.not.i.i10.i, label %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.i, label %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.i

_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i
  %i.ca = zext i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !76, !noalias !142
  switch i8 %i.cc, label %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit13.thread.i [
    i8 0, label %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.i
    i8 1, label %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.fold.split.i
  ]

_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit13.thread.i: ; preds = %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA55_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %36, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(55) @.str.20)
  br label %_ZN5arrow6StatusD2Ev.exit58

_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.fold.split.i: ; preds = %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.i
  br label %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.i

_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.i: ; preds = %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.fold.split.i, %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i, %bb.j
  %storemerge.i = phi i32 [ 6, %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.i ], [ 6, %bb.j ], [ 6, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i ], [ 4, %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.fold.split.i ] ; 2 uses
  store i32 %storemerge.i, ptr %i.a, align 4, !tbaa !141, !noalias !142
  br label %_ZN5arrow6StatusD2Ev.exit58.thread

_ZN5arrow6StatusD2Ev.exit58.thread:               ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i53, %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.i
  %i.cd = phi i32 [ 0, %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i53 ], [ %storemerge.i, %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  br label %_ZN5arrow6StatusD2Ev.exit64

_ZN5arrow6StatusD2Ev.exit58:                      ; preds = %bb.i, %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit13.thread.i
  %.pr125 = load ptr, ptr %36, align 8, !tbaa !52 ; 2 uses
  store ptr %.pr125, ptr %35, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  %i.ce = icmp eq ptr %.pr125, null
  br i1 %i.ce, label %_ZN5arrow6StatusD2Ev.exit58._ZN5arrow6StatusD2Ev.exit64_crit_edge, label %bb.k, !prof !145
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc8internal23ReadSparseTensorPayloadERKNS0_10IpcPayloadE:bb.a
  %i.agw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #36
  br label %bb.lm

bb.ld:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit165, %_ZN5arrow6StatusD2Ev.exit156, %_ZN5arrow6StatusD2Ev.exit412, %_ZNSt12__shared_ptrIN5arrow14SparseCSFIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit405, %_ZNSt12__shared_ptrIN5arrow14SparseCSCIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit317, %_ZNSt12__shared_ptrIN5arrow14SparseCSRIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit257, %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.agx = load ptr, ptr %6, align 8, !tbaa !614  ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !617 ; 2 uses
  %.not4.i.i.i413 = icmp eq ptr %i.agx, %i.agz
  br i1 %.not4.i.i.i413, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i414

.lr.ph.i.i.i414:                                  ; preds = %bb.ld, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i415 = phi ptr [ %i.ahf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.agx, %bb.ld ] ; 3 uses
  %i.aha = load ptr, ptr %.05.i.i.i415, align 8, !tbaa !104 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.05.i.i.i415, i64 16 ; 2 uses
  %i.ahc = icmp eq ptr %i.aha, %i.ahb
  br i1 %i.ahc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i414
  %i.ahd = load i64, ptr %i.ahb, align 8, !tbaa !76
  %i.ahe = add i64 %i.ahd, 1
  call void @_ZdlPvm(ptr noundef %i.aha, i64 noundef %i.ahe) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i414, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ahf = getelementptr inbounds nuw i8, ptr %.05.i.i.i415, i64 32 ; 2 uses
  %.not.i.i.i416 = icmp eq ptr %i.ahf, %i.agz
  br i1 %.not.i.i.i416, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i414, !llvm.loop !618

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i417 = load ptr, ptr %6, align 8, !tbaa !614
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.ld
  %i.ahg = phi ptr [ %.pr.i417, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.agx, %bb.ld ] ; 3 uses
  %.not.i.i1.i418 = icmp eq ptr %i.ahg, null
  br i1 %.not.i.i1.i418, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.le

bb.le:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ahh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !619
  %i.ahj = ptrtoint ptr %i.ahi to i64
  %i.ahk = ptrtoint ptr %i.ahg to i64
  %i.ahl = sub i64 %i.ahj, %i.ahk
  call void @_ZdlPvm(ptr noundef nonnull %i.ahg, i64 noundef %i.ahl) #37
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.ahm = load ptr, ptr %5, align 8, !tbaa !620  ; 3 uses
  %.not.i.i.i419 = icmp eq ptr %i.ahm, null
  br i1 %.not.i.i.i419, label %_ZNSt6vectorIlSaIlEED2Ev.exit420, label %bb.lf

bb.lf:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ahn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !622
  %i.ahp = ptrtoint ptr %i.aho to i64
  %i.ahq = ptrtoint ptr %i.ahm to i64
  %i.ahr = sub i64 %i.ahp, %i.ahq
  call void @_ZdlPvm(ptr noundef nonnull %i.ahm, i64 noundef %i.ahr) #37
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit420

_ZNSt6vectorIlSaIlEED2Ev.exit420:                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ahs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !69 ; 8 uses
  %.not.i.i421 = icmp eq ptr %i.aht, null
  br i1 %.not.i.i421, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit425, label %bb.lg

bb.lg:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit420
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8 ; 4 uses
  %i.ahv = load atomic i64, ptr %i.ahu acquire, align 8 ; 2 uses
  %i.ahw = icmp eq i64 %i.ahv, 4294967297
  %i.ahx = trunc i64 %i.ahv to i32                ; 2 uses
  br i1 %i.ahw, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  store i32 0, ptr %i.ahu, align 8, !tbaa !77
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.aht, i64 12
  store i32 0, ptr %i.ahy, align 4, !tbaa !79
  %i.ahz = load ptr, ptr %i.aht, align 8, !tbaa !80
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load ptr, ptr %i.aia, align 8
  call void %i.aib(ptr noundef nonnull align 8 dereferenceable(16) %i.aht) #36, !inline_history !623
  %i.aic = load ptr, ptr %i.aht, align 8, !tbaa !80
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 24
  %i.aie = load ptr, ptr %i.aid, align 8
  call void %i.aie(ptr noundef nonnull align 8 dereferenceable(16) %i.aht) #36, !inline_history !623
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit425

bb.li:                                            ; preds = %bb.lg
  %i.aif = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i422 = icmp eq i8 %i.aif, 0
  br i1 %.not.i.i.i422, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.aig = add nsw i32 %i.ahx, -1
  store i32 %i.aig, ptr %i.ahu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i423

bb.lk:                                            ; preds = %bb.li
  %i.aih = atomicrmw volatile add ptr %i.ahu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i423

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i423: ; preds = %bb.lk, %bb.lj
  %.0.i.i.i.i424 = phi i32 [ %i.ahx, %bb.lj ], [ %i.aih, %bb.lk ]
  %i.aii = icmp eq i32 %.0.i.i.i.i424, 1
  br i1 %i.aii, label %bb.ll, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit425, !prof !83

bb.ll:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i423
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aht) #36
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit425

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit425: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit420, %bb.lh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i423, %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.lm:                                            ; preds = %bb.lc, %_ZNSt6vectorIlSaIlEED2Ev.exit409, %bb.hc, %bb.el, %bb.bu, %.body, %bb.e
  %.pn134 = phi { ptr, i32 } [ %i.agw, %bb.lc ], [ %.pn131.pn, %bb.bu ], [ %.pn125.pn.pn, %bb.el ], [ %.pn117.pn.pn, %bb.hc ], [ %.pn108.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit409 ], [ %.pn102, %.body ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.aij = load ptr, ptr %5, align 8, !tbaa !620  ; 3 uses
  %.not.i.i.i426 = icmp eq ptr %i.aij, null
  br i1 %.not.i.i.i426, label %_ZNSt6vectorIlSaIlEED2Ev.exit427, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.aik = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !622
  %i.aim = ptrtoint ptr %i.ail to i64
  %i.ain = ptrtoint ptr %i.aij to i64
  %i.aio = sub i64 %i.aim, %i.ain
  call void @_ZdlPvm(ptr noundef nonnull %i.aij, i64 noundef %i.aio) #37
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit427

_ZNSt6vectorIlSaIlEED2Ev.exit427:                 ; preds = %bb.lm, %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %.pn134
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_124ReadSparseTensorMetadataERKNS_6BufferEPSt10shared_ptrINS_8DataTypeEEPSt6vectorIlSaIlEEPS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEPlPNS_18SparseTensorFormat4typeEPPKN3org6apache5arrow7flatbuf12SparseTensorEPPKNST_6BufferE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull writeonly captures(none) %7, ptr noundef nonnull writeonly captures(none) %8) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @_ZN5arrow3ipc8internal23GetSparseTensorMetadataERKNS_6BufferEPSt10shared_ptrINS_8DataTypeEEPSt6vectorIlSaIlEEPS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEPlPNS_18SparseTensorFormat4typeE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %i.b = load ptr, ptr %11, align 8, !tbaa !52    ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.a, label %.critedge

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !120, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = select i1 %i.f, ptr %i.h, ptr null, !prof !55 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !129  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36, !noalias !684
  %.tr.i.i = trunc i64 %i.k to i32
  %i.l = shl i32 %.tr.i.i, 3
  store ptr %i.i, ptr %10, align 8, !tbaa !133, !noalias !684
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.k, ptr %i.m, align 8, !tbaa !137, !noalias !684
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 128, ptr %i.n, align 8, !tbaa !3, !noalias !684
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 %i.l, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !684
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !138, !noalias !684
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !138, !noalias !684
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !105, !noalias !684
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !138, !noalias !684
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false), !noalias !684
  %i.p = icmp ugt i64 %i.k, 11
  br i1 %i.p, label %bb.b, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !684 ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %i.q, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = add i64 %i.k, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.s, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36, !noalias !684
  br label %_ZN5arrow6StatusD2Ev.exit32

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r
  %i.u = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %10), !noalias !684
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36, !noalias !684
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit32.thread, label %_ZN5arrow6StatusD2Ev.exit32

_ZN5arrow6StatusD2Ev.exit32.thread:               ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.v = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !684
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.w
  store ptr null, ptr %0, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %_ZN5arrow6StatusD2Ev.exit36

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.11)
  %.pr = load ptr, ptr %12, align 8, !tbaa !52    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %i.y = icmp eq ptr %.pr, null
  br i1 %i.y, label %_ZN5arrow6StatusD2Ev.exit36, label %.critedge

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %_ZN5arrow6StatusD2Ev.exit32, %_ZN5arrow6StatusD2Ev.exit32.thread
  %.038 = phi ptr [ %i.x, %_ZN5arrow6StatusD2Ev.exit32.thread ], [ null, %_ZN5arrow6StatusD2Ev.exit32 ] ; 4 uses
  %i.z = load i32, ptr %.038, align 4, !tbaa !3
  %i.aa = sext i32 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %.038, i64 %i.ab ; 3 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !140 ; 2 uses
  %i.ae = icmp ugt i16 %i.ad, 6
  br i1 %i.ae, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit36
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !140 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.038, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !76
  %i.ak = icmp eq i8 %i.aj, 5
  %i.al = icmp ugt i16 %i.ad, 8
  %or.cond.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.an = load i16, ptr %i.am, align 2, !tbaa !140 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit

_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.038, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar ; 4 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !643
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = sext i32 %i.at to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !140
  %.fr.i.i = freeze i16 %i.ay                     ; 2 uses
  %i.az = zext i16 %.fr.i.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az ; 2 uses
  %.not.i.i = icmp ne i16 %.fr.i.i, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !687 ; 2 uses
  %i.bc = and i64 %i.bb, 7
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %bb.d

_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i, %_ZN5arrow6StatusD2Ev.exit36
  call void @_ZN5arrow6Status8FromArgsIJRA63_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(63) @.str.59)
  br label %.critedge

bb.d:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !689
  call void @_ZN5arrow8internal12JoinToStringIJRA69_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(69) @.str.60, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !689
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %9, align 8, !tbaa !104, !noalias !689 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN5arrow6Status7InvalidIJRA69_KclEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !76, !noalias !689
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #37
  br label %_ZN5arrow6Status7InvalidIJRA69_KclEEES0_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %9, align 8, !tbaa !104, !noalias !689 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !76, !noalias !689
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36, !noalias !689
  resume { ptr, i32 } %i.bj

_ZN5arrow6Status7InvalidIJRA69_KclEEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36, !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.critedge

bb.g:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit
  store ptr %i.ba, ptr %8, align 8, !tbaa !694
  store ptr null, ptr %0, align 8, !tbaa !52, !alias.scope !696
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6Status7InvalidIJRA69_KclEEES0_DpOT_.exit, %bb.g, %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread, %_ZN5arrow6StatusD2Ev.exit32, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_12SparseTensorEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.39", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !52
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !52
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !83

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !104    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !76
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !104    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !76
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

end_hunk_1
begin_hunk_2_@_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl15ReadFooterAsyncEPNS0_8ExecutorEEUlRKSB_E0_NSC_17PassthruOnFailureISN_EEEEEEED0Ev:bb.a
bb.h:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !79
  %i.x = load ptr, ptr %.val.i.i.i, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #36, !inline_history !2121
  %i.aa = load ptr, ptr %.val.i.i.i, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #36, !inline_history !2121
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl15ReadFooterAsyncEPNS0_8ExecutorEEUlRKSB_E0_NSC_17PassthruOnFailureISN_EEEEEEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i2.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i2.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i4.i.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i4.i.i.i, 1
  br i1 %i.ag, label %bb.m, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl15ReadFooterAsyncEPNS0_8ExecutorEEUlRKSB_E0_NSC_17PassthruOnFailureISN_EEEEEEED2Ev.exit, !prof !83

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #36, !inline_history !2120
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl15ReadFooterAsyncEPNS0_8ExecutorEEUlRKSB_E0_NSC_17PassthruOnFailureISN_EEEEEEED2Ev.exit

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl15ReadFooterAsyncEPNS0_8ExecutorEEUlRKSB_E0_NSC_17PassthruOnFailureISN_EEEEEEED2Ev.exit: ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl15ReadFooterAsyncEPNS0_8ExecutorEEUlRKSB_E0_NSC_17PassthruOnFailureISN_EEEEEEE6invokeES4_(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %3 = alloca %"class.std::shared_ptr.26", align 16 ; 11 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %6 = alloca %"class.arrow::Future", align 16    ; 10 uses
  %7 = alloca %"class.arrow::Future", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !75  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.c = load ptr, ptr %.val, align 8, !tbaa !52
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNKR5arrow6ResultISt10shared_ptrINS_6BufferEEE10ValueOrDieEv.exit.i.i, label %bb.av, !prof !55

_ZNKR5arrow6ResultISt10shared_ptrINS_6BufferEEE10ValueOrDieEv.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !75
  store ptr null, ptr %i.h, align 8, !tbaa !69
  store <2 x ptr> %i.i, ptr %6, align 16, !tbaa !75
  store ptr null, ptr %i.e, align 8, !tbaa !414
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !266 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val5.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !69 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  %.val22.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !333, !noalias !2122 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i, i64 184
  store ptr %.val.i.i.i, ptr %i.k, align 8, !tbaa !266, !noalias !2122
  %i.l = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i, i64 192 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69, !noalias !2122 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val5.i.i.i, %i.m
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNKR5arrow6ResultISt10shared_ptrINS_6BufferEEE10ValueOrDieEv.exit.i.i
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %.val5.i.i.i, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76, !noalias !2122
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3, !noalias !2122
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3, !noalias !2122
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4, !noalias !2122 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !69, !noalias !2122
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.s = phi ptr [ %i.m, %bb.b ], [ %i.m, %bb.d ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.e ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8, !noalias !2122 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !77, !noalias !2122
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !79, !noalias !2122
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !80, !noalias !2122
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2122
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #36, !noalias !2122, !inline_history !2125
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !80, !noalias !2122
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2122
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #36, !noalias !2122, !inline_history !2125
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76, !noalias !2122
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3, !noalias !2122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4, !noalias !2122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !83

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #36, !noalias !2122
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %.val5.i.i.i, ptr %i.l, align 8, !tbaa !69, !noalias !2122
  %.val21.pre.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !333, !noalias !2122
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val21.pre.i.i.i.i.i, i64 184
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !266, !noalias !2122
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %_ZNKR5arrow6ResultISt10shared_ptrINS_6BufferEEE10ValueOrDieEv.exit.i.i
  %i.ai = phi ptr [ %.val.i.i.i, %_ZNKR5arrow6ResultISt10shared_ptrINS_6BufferEEE10ValueOrDieEv.exit.i.i ], [ %.pre.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !120, !range !67, !noalias !2122, !noundef !68
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !2122 ; 4 uses
  %i.ao = select i1 %i.al, ptr %i.an, ptr null, !prof !55 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !129, !noalias !2122 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !2122
  %.tr.i.i.i.i.i.i = trunc i64 %i.aq to i32
  %i.ar = shl i32 %.tr.i.i.i.i.i.i, 3
  store ptr %i.ao, ptr %2, align 8, !tbaa !133, !noalias !2122
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !137, !noalias !2122
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 128, ptr %i.at, align 8, !tbaa !3, !noalias !2122
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.ar, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 4, !tbaa !3, !noalias !2122
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !138, !noalias !2122
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, align 1, !tbaa !138, !noalias !2122
  %.sroa.75.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !105, !noalias !2122
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !138, !noalias !2122
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false), !noalias !2122
  %i.av = icmp ugt i64 %i.aq, 11
  br i1 %i.av, label %bb.l, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf6FooterEEEbPKhl.exit.thread.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i
  %i.aw = load i32, ptr %i.an, align 4, !tbaa !3, !noalias !2122 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aw, 0
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.m, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf6FooterEEEbPKhl.exit.thread.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = add i64 %i.aq, -1
  %.not.i.i.i.i23.i.i.i.i.i = icmp ult i64 %i.ay, %i.ax
  br i1 %.not.i.i.i.i23.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf6FooterEEEbPKhl.exit.thread.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf6FooterEEEbPKhl.exit.i.i.i.i.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf6FooterEEEbPKhl.exit.thread.i.i.i.i.i: ; preds = %bb.m, %bb.l, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !2122
  br label %bb.n

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf6FooterEEEbPKhl.exit.i.i.i.i.i: ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ax
  %i.ba = invoke noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf6Footer6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc.i.i.i unwind label %bb.au

.noexc.i.i.i:                                     ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf6FooterEEEbPKhl.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !2122
  br i1 %i.ba, label %_ZN3org6apache5arrow7flatbuf9GetFooterEPKv.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc.i.i.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf6FooterEEEbPKhl.exit.thread.i.i.i.i.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA50_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(50) @.str.57)
          to label %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl15ReadFooterAsyncEPNS_8internal8ExecutorEENKUlRKSt10shared_ptrINS_6BufferEEE0_clESA_.exit.i.i.i.i unwind label %bb.au

_ZN3org6apache5arrow7flatbuf9GetFooterEPKv.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.bb = load i32, ptr %i.an, align 4, !tbaa !3, !noalias !2122
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bc ; 4 uses
  %.val19.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !333, !noalias !2122
  %i.be = getelementptr inbounds nuw i8, ptr %.val19.i.i.i.i.i, i64 200
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !416, !noalias !2122
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !3, !noalias !2122
  %i.bg = sext i32 %i.bf to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !140, !noalias !2122
  %i.bk = icmp ugt i16 %i.bj, 12
  br i1 %i.bk, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf6Footer15custom_metadataEv.exit.thread.i.i.i.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN3org6apache5arrow7flatbuf9GetFooterEPKv.exit.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !140, !noalias !2122 ; 2 uses
  %.not.i.i.i26.i.i.i.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i.i.i26.i.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf6Footer15custom_metadataEv.exit.thread.i.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf6Footer15custom_metadataEv.exit.i.i.i.i.i

_ZNK3org6apache5arrow7flatbuf6Footer15custom_metadataEv.exit.i.i.i.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i.i
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3, !noalias !2122
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !2122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !2122
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !2122
  invoke void @_ZN5arrow3ipc8internal19GetKeyValueMetadataEPKN22arrow_vendored_private11flatbuffers6VectorINS3_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEEjEEPSt10shared_ptrINS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull %i.br, ptr noundef nonnull %3)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i unwind label %bb.o, !noalias !2122

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZNK3org6apache5arrow7flatbuf6Footer15custom_metadataEv.exit.i.i.i.i.i
  %i.bs = load ptr, ptr %4, align 8, !tbaa !52, !noalias !2122 ; 2 uses
  store ptr %i.bs, ptr %5, align 8, !tbaa !52, !alias.scope !2122
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !2122
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN5arrow6StatusD2Ev.exit30.i.i.i.i.i, label %.critedge17.i.i.i.i.i

bb.o:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf6Footer15custom_metadataEv.exit.i.i.i.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !2122
  call void @_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #36, !noalias !2122
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !2122
  br label %common.resume.i.i

_ZN5arrow6StatusD2Ev.exit30.i.i.i.i.i:            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !333, !noalias !2122 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 208
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 216
  %i.by = load <2 x ptr>, ptr %3, align 16, !tbaa !75, !noalias !2122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !2122
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !69, !noalias !2122 ; 8 uses
  store <2 x ptr> %i.by, ptr %i.bv, align 8, !tbaa !75, !noalias !2122
  %.not.i.i.i.i31.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i31.i.i.i.i.i, label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit30.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 4 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8, !noalias !2122 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4294967297
  %i.cd = trunc i64 %i.cb to i32                  ; 2 uses
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ca, align 8, !tbaa !77, !noalias !2122
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 0, ptr %i.ce, align 4, !tbaa !79, !noalias !2122
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !80, !noalias !2122
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !2122
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #36, !noalias !2122, !inline_history !2126
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !80, !noalias !2122
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !2122
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #36, !noalias !2122, !inline_history !2126
  br label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76, !noalias !2122
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = add nsw i32 %i.cd, -1
  store i32 %i.cm, ptr %i.ca, align 8, !tbaa !3, !noalias !2122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cn = atomicrmw volatile add ptr %i.ca, i32 -1 acq_rel, align 4, !noalias !2122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cd, %bb.s ], [ %i.cn, %bb.t ]
  %i.co = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.co, label %bb.u, label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit.i.i.i.i.i, !prof !83

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #36, !noalias !2122
  br label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit.i.i.i.i.i

_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit.i.i.i.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.q, %_ZN5arrow6StatusD2Ev.exit30.i.i.i.i.i
  %i.cp = load ptr, ptr %i.bw, align 8, !tbaa !69, !noalias !2122 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8, !noalias !2122 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  br i1 %i.cs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cq, align 8, !tbaa !77, !noalias !2122
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.cu, align 4, !tbaa !79, !noalias !2122
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !80, !noalias !2122
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !2122
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #36, !noalias !2122, !inline_history !2127
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !80, !noalias !2122
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !2122
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #36, !noalias !2122, !inline_history !2127
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76, !noalias !2122
  %.not.i.i.i32.i.i.i.i.i = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i32.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !3, !noalias !2122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4, !noalias !2122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ct, %bb.y ], [ %i.dd, %bb.z ]
  %i.de = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.de, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, !prof !83

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #36, !noalias !2122
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.w, %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !2122
  br label %_ZNK3org6apache5arrow7flatbuf6Footer15custom_metadataEv.exit.thread.i.i.i.i.i

_ZNK3org6apache5arrow7flatbuf6Footer15custom_metadataEv.exit.thread.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i.i, %_ZN3org6apache5arrow7flatbuf9GetFooterEPKv.exit.i.i.i.i.i
  store ptr null, ptr %5, align 8, !tbaa !52, !alias.scope !2128
  br label %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl15ReadFooterAsyncEPNS_8internal8ExecutorEENKUlRKSt10shared_ptrINS_6BufferEEE0_clESA_.exit.i.i.i.i

.critedge17.i.i.i.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !69, !noalias !2122 ; 8 uses
  %.not.i.i33.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i33.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit37.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.critedge17.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %i.di = load atomic i64, ptr %i.dh acquire, align 8, !noalias !2122 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 4294967297
  %i.dk = trunc i64 %i.di to i32                  ; 2 uses
  br i1 %i.dj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.dh, align 8, !tbaa !77, !noalias !2122
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 0, ptr %i.dl, align 4, !tbaa !79, !noalias !2122
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !80, !noalias !2122
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc21StreamDecoderInternal14ReadDictionaryERKNS0_7MessageE:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dp, %bb.as ], [ %i.dz, %bb.at ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ea, label %bb.au, label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i.i, !prof !83

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #36
  br label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aq, %bb.ao
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !52, !noalias !2493 ; 2 uses
  %.not.i.i40.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i40.i, label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.thread.i.i, !prof !85

_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.eb = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i.i ], [ %i.di, %_ZN5arrow6StatusC2ERKS0_.exit.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !56, !range !67, !noundef !68
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #36
  br label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEED2Ev.exit.i: ; preds = %bb.av, %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !2493
  br label %_ZN5arrow6StatusD2Ev.exit

bb.aw:                                            ; preds = %bb.an, %bb.v
  %.pn17.i = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %.pn.i, %bb.an ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !2493
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i
  %.pn20.i = phi { ptr, i32 } [ %eh.lpad-body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i ], [ %.pn17.i, %bb.aw ], [ %i.br, %bb.u ]
  resume { ptr, i32 } %.pn20.i

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ef = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  store ptr %i.ef, ptr %0, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_ZN5arrow6StatusD2Ev.exit9, label %.critedge

_ZN5arrow6StatusD2Ev.exit9:                       ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !2512
  %i.ej = add nsw i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !2512
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !76
  switch i32 %i.ek, label %bb.az [
    i32 2, label %bb.ay
    i32 1, label %.sink.split
  ]

bb.ay:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit9
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit9, %bb.ay
  %.sink25 = phi i64 [ 240, %bb.ay ], [ 232, %_ZN5arrow6StatusD2Ev.exit9 ]
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %.sink25 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !105
  %i.en = add nsw i64 %i.em, 1
  store i64 %i.en, ptr %i.el, align 8, !tbaa !105
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %_ZN5arrow6StatusD2Ev.exit9
  store ptr null, ptr %0, align 8, !tbaa !52, !alias.scope !2513
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(45) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1076, !nonnull !68, !align !153
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %1) #36
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1076, !nonnull !68, !align !153
  %i.f = load i32, ptr %2, align 4, !tbaa !3
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !1076, !nonnull !68, !align !153
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(45) %3) #36
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(45) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRiRA45_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_114ReadDictionaryERKNS_6BufferERKNS1_14IpcReadContextEPNS1_14DictionaryKindEPNS_2io16RandomAccessFileE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(25) %2, ptr noundef nonnull writeonly captures(none) %3, ptr noundef %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Result.797", align 8 ; 13 uses
  %11 = alloca %"class.std::shared_ptr.185", align 8 ; 6 uses
  %12 = alloca %"class.arrow::ipc::(anonymous namespace)::ArrayLoader", align 8 ; 17 uses
  %13 = alloca %"class.std::shared_ptr.330", align 16 ; 12 uses
  %14 = alloca %"class.arrow::Field", align 8     ; 19 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %17 = alloca %"class.std::vector.323", align 8  ; 11 uses
  %18 = alloca [1 x %"class.std::shared_ptr.330"], align 16 ; 8 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %20 = alloca %"class.arrow::Result.337", align 8 ; 12 uses
  %21 = alloca %"class.std::shared_ptr.330", align 16 ; 5 uses
  %22 = alloca %"class.arrow::Result.802", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !120, !range !67, !noundef !68
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = select i1 %i.d, ptr %i.f, ptr null, !prof !55 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !129  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !2516
  %.tr.i.i = trunc i64 %i.i to i32
  %i.j = shl i32 %.tr.i.i, 3
  store ptr %i.g, ptr %6, align 8, !tbaa !133, !noalias !2516
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.i, ptr %i.k, align 8, !tbaa !137, !noalias !2516
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 128, ptr %i.l, align 8, !tbaa !3, !noalias !2516
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.j, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !2516
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !138, !noalias !2516
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !138, !noalias !2516
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !105, !noalias !2516
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !138, !noalias !2516
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false), !noalias !2516
  %i.n = icmp ugt i64 %i.i, 11
  br i1 %i.n, label %bb.b, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !2516 ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %i.o, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = add i64 %i.i, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.q, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !2516
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.p
  %i.s = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %6), !noalias !2516
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !2516
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.t = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !2516
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.u
  store ptr null, ptr %0, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %_ZN5arrow6StatusD2Ev.exit114

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.11)
  %.pr = load ptr, ptr %7, align 8, !tbaa !52     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.w = icmp eq ptr %.pr, null
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit114, label %.critedge

_ZN5arrow6StatusD2Ev.exit114:                     ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.0201 = phi ptr [ %i.v, %_ZN5arrow6StatusD2Ev.exit.thread ], [ null, %_ZN5arrow6StatusD2Ev.exit ] ; 11 uses
  %i.x = load i32, ptr %.0201, align 4, !tbaa !3
  %i.y = sext i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %.0201, i64 %i.z ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !140 ; 2 uses
  %i.ac = icmp ugt i16 %i.ab, 6
  br i1 %i.ac, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message25header_as_DictionaryBatchEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit114
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !140 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message25header_as_DictionaryBatchEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0201, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !76
  %i.ai = icmp eq i8 %i.ah, 2
  %i.aj = icmp ugt i16 %i.ab, 8
  %or.cond.i = and i1 %i.aj, %i.ai
  br i1 %or.cond.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message25header_as_DictionaryBatchEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !140 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message25header_as_DictionaryBatchEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message25header_as_DictionaryBatchEv.exit

_ZNK3org6apache5arrow7flatbuf7Message25header_as_DictionaryBatchEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.0201, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap ; 9 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = sext i32 %i.ar to i64
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !140
  %i.aw = icmp ugt i16 %i.av, 6
  br i1 %i.aw, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i115, label %_ZNK3org6apache5arrow7flatbuf15DictionaryBatch4dataEv.exit.thread

_ZNK3org6apache5arrow7flatbuf7Message25header_as_DictionaryBatchEv.exit.thread: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i, %_ZN5arrow6StatusD2Ev.exit114
  call void @_ZN5arrow6Status8FromArgsIJRA66_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(66) @.str.81)
  br label %.critedge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i115: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message25header_as_DictionaryBatchEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 6
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !140 ; 2 uses
  %.not.i.i.i116 = icmp eq i16 %i.ay, 0
  br i1 %.not.i.i.i116, label %_ZNK3org6apache5arrow7flatbuf15DictionaryBatch4dataEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf15DictionaryBatch4dataEv.exit

_ZNK3org6apache5arrow7flatbuf15DictionaryBatch4dataEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i115
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store i32 0, ptr %i.a, align 4, !tbaa !141, !noalias !2519
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3, !noalias !2519
  %i.bf = sext i32 %i.be to i64
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !140, !noalias !2519
  %i.bj = icmp ugt i16 %i.bi, 10
  br i1 %i.bj, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i117, label %_ZN5arrow6StatusD2Ev.exit126.thread239

_ZNK3org6apache5arrow7flatbuf15DictionaryBatch4dataEv.exit.thread: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message25header_as_DictionaryBatchEv.exit, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i115
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !2522
  call void @_ZN5arrow8internal12JoinToStringIJRA23_KcRA21_S2_RA32_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(23) @.str.27, ptr noundef nonnull align 1 dereferenceable(21) @.str.82, ptr noundef nonnull align 1 dereferenceable(32) @.str.29), !noalias !2522
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf15DictionaryBatch4dataEv.exit.thread
  %i.bk = load ptr, ptr %5, align 8, !tbaa !104, !noalias !2522 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN5arrow6Status7IOErrorIJRA23_KcRA21_S2_RA32_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !76, !noalias !2522
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #37
  br label %_ZN5arrow6Status7IOErrorIJRA23_KcRA21_S2_RA32_S2_EEES0_DpOT_.exit

bb.e:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf15DictionaryBatch4dataEv.exit.thread
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %5, align 8, !tbaa !104, !noalias !2522 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.e
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !76, !noalias !2522
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

common.resume:                                    ; preds = %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ], [ %.pn99, %bb.bw ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !2522
  br label %common.resume

_ZN5arrow6Status7IOErrorIJRA23_KcRA21_S2_RA32_S2_EEES0_DpOT_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !2522
  br label %.critedge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i117: ; preds = %_ZNK3org6apache5arrow7flatbuf15DictionaryBatch4dataEv.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !140, !noalias !2519 ; 2 uses
  %.not.i.i.i.i118 = icmp eq i16 %i.bw, 0
  br i1 %.not.i.i.i.i118, label %_ZN5arrow6StatusD2Ev.exit126.thread239, label %_ZNK3org6apache5arrow7flatbuf11RecordBatch11compressionEv.exit.i

_ZNK3org6apache5arrow7flatbuf11RecordBatch11compressionEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i117
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3, !noalias !2519
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3, !noalias !2519
  %i.cd = sext i32 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce ; 3 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !140, !noalias !2519 ; 2 uses
  %i.ch = icmp ugt i16 %i.cg, 6
  br i1 %i.ch, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i119, label %bb.g

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i119: ; preds = %_ZNK3org6apache5arrow7flatbuf11RecordBatch11compressionEv.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 6
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !140, !noalias !2519 ; 2 uses
  %.not.i.i.i120 = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i.i120, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i, label %_ZNK3org6apache5arrow7flatbuf15BodyCompression6methodEv.exit.i

_ZNK3org6apache5arrow7flatbuf15BodyCompression6methodEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i119
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !76, !noalias !2519
  %.not8.i = icmp eq i8 %i.cm, 0
  br i1 %.not8.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i, label %bb.f

bb.f:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf15BodyCompression6methodEv.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA53_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(53) @.str.19)
  br label %_ZN5arrow6StatusD2Ev.exit122

bb.g:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf11RecordBatch11compressionEv.exit.i
  %i.cn = icmp samesign ugt i16 %i.cg, 4
  br i1 %i.cn, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i, label %_ZN5arrow6StatusD2Ev.exit126

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i: ; preds = %bb.g, %_ZNK3org6apache5arrow7flatbuf15BodyCompression6methodEv.exit.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i119
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !140, !noalias !2519 ; 2 uses
  %.not.i.i10.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i.i10.i, label %_ZN5arrow6StatusD2Ev.exit126, label %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.i

_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i9.i
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !76, !noalias !2519
  switch i8 %i.cs, label %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit13.thread.i [
    i8 0, label %_ZN5arrow6StatusD2Ev.exit126
    i8 1, label %_ZNK3org6apache5arrow7flatbuf15BodyCompression5codecEv.exit.thread.fold.split.i
end_hunk_3
begin_hunk_4_@_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9CountRowsEv:bb.a
  %9 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(513) %1)
  %.not92 = icmp sgt i32 %i.d, 0
  br i1 %.not92, label %.lr.ph, label %.critedge44

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 25
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(513) %1)
  %i.r = sext i32 %i.q to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %.not, label %bb.c, label %.critedge44, !llvm.loop !2627

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.08093 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.val = load i64, ptr %i.e, align 8
  %.val49 = load ptr, ptr %i.f, align 8, !tbaa !416 ; 3 uses
  %i.s = load i32, ptr %.val49, align 4, !tbaa !3, !noalias !2628
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %.val49, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.x = load i16, ptr %i.w, align 2, !tbaa !140, !noalias !2628 ; 2 uses
  %.not.i.i.i.i = icmp ne i16 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.val49, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3, !noalias !2628
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = mul nuw nsw i64 %indvars.iv, 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_123FileBlockFromFlatbufferEPKN3org6apache5arrow7flatbuf5BlockEl(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull readonly %i.af, i64 noundef %.val)
  %i.ag = load ptr, ptr %3, align 8, !tbaa !52
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.f, label %.critedge42, !prof !55

.critedge42:                                      ; preds = %bb.c
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #36
  %i.ai = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, label %bb.d, !prof !55

bb.d:                                             ; preds = %.critedge42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !56, !range !67, !noundef !68
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #36
  br label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit

_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit: ; preds = %.critedge42, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !2593
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl20ReadMessageFromBlockERKNS0_8internal9FileBlockERKSt8functionIFNS_6StatusEPKvPNS_2io16RandomAccessFileEEE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(513) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !2022 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.aq = load ptr, ptr %5, align 8, !tbaa !52
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.o, label %.critedge46, !prof !55

.critedge46:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #36
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.as = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.as, null
  br i1 %.not.i.i50, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit51, label %bb.j, !prof !55

bb.j:                                             ; preds = %.critedge46
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !56, !range !67, !noundef !68
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit51, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #36
  br label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit51

_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit51: ; preds = %.critedge46, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.loopexit

bb.l:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !2022 ; 2 uses
  %.not.i52 = icmp eq ptr %i.ax, null
  br i1 %.not.i52, label %_ZNSt14_Function_baseD2Ev.exit53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit53 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit53:                 ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.aq

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !2631)
  call void @llvm.experimental.noalias.scope.decl(metadata !2634)
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !265, !noalias !2637 ; 2 uses
  store i64 %i.bb, ptr %7, align 8, !tbaa !265, !alias.scope !2637
  store ptr null, ptr %i.i, align 8, !tbaa !265, !noalias !2637
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %.cast = inttoptr i64 %i.bb to ptr
  invoke void @_ZNK5arrow3ipc7Message8metadataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.17") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %.cast)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.bc = load ptr, ptr %8, align 8, !tbaa !266   ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !120, !range !67, !noundef !68
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8            ; 4 uses
  %i.bi = select i1 %i.bf, ptr %i.bh, ptr null, !prof !55 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !129 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !2638
  %.tr.i.i = trunc i64 %i.bk to i32
  %i.bl = shl i32 %.tr.i.i, 3
  store ptr %i.bi, ptr %2, align 8, !tbaa !133, !noalias !2638
  store i64 %i.bk, ptr %i.j, align 8, !tbaa !137, !noalias !2638
  store i32 128, ptr %i.k, align 8, !tbaa !3, !noalias !2638
  store i32 %i.bl, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !2638
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !138, !noalias !2638
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !138, !noalias !2638
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !105, !noalias !2638
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !138, !noalias !2638
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !2638
  %i.bm = icmp ugt i64 %i.bk, 11
  br i1 %i.bm, label %bb.q, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bn = load i32, ptr %i.bh, align 4, !tbaa !3, !noalias !2638 ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %i.bn, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.r, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = add i64 %i.bk, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.bp, %i.bo
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !2638
  br label %bb.s

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bo
  %i.br = invoke noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !2638
  br i1 %i.br, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.s

bb.s:                                             ; preds = %.noexc, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.11)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.y

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %.noexc
  %i.bs = load i32, ptr %i.bh, align 4, !tbaa !3, !noalias !2638
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %_ZN5arrow6StatusD2Ev.exit63

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.s
  %.pr = load ptr, ptr %10, align 8, !tbaa !52    ; 2 uses
  store ptr %.pr, ptr %9, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.bv = icmp eq ptr %.pr, null
  br i1 %i.bv, label %_ZN5arrow6StatusD2Ev.exit63, label %.critedge48, !prof !139

.critedge48:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #36
  %i.bw = load ptr, ptr %9, align 8, !tbaa !52    ; 2 uses
  %.not.i56 = icmp eq ptr %i.bw, null
  br i1 %.not.i56, label %_ZN5arrow6StatusD2Ev.exit57, label %bb.t, !prof !55

bb.t:                                             ; preds = %.critedge48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !56, !range !67, !noundef !68
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZN5arrow6StatusD2Ev.exit57, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #36
  br label %_ZN5arrow6StatusD2Ev.exit57

_ZN5arrow6StatusD2Ev.exit57:                      ; preds = %.critedge48, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.ca = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i58, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit59, label %bb.v, !prof !55

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit57
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !56, !range !67, !noundef !68
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit59, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #36
  br label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit59

_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit59: ; preds = %_ZN5arrow6StatusD2Ev.exit57, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.loopexit

bb.x:                                             ; preds = %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.y:                                             ; preds = %bb.s, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.ao

_ZN5arrow6StatusD2Ev.exit63:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.07982 = phi ptr [ %i.bu, %_ZN5arrow6StatusD2Ev.exit.thread ], [ null, %_ZN5arrow6StatusD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.cg = load i32, ptr %.07982, align 4, !tbaa !3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %.07982, i64 %i.ci ; 3 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !140 ; 2 uses
  %i.cl = icmp ugt i16 %i.ck, 6
  br i1 %i.cl, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit63
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 6
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !140 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.07982, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !76
  %i.cr = icmp eq i8 %i.cq, 3
  %i.cs = icmp ugt i16 %i.ck, 8
  %or.cond.i = and i1 %i.cs, %i.cr
  br i1 %or.cond.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !140 ; 2 uses
  %.not.i.i.i.i64 = icmp eq i16 %i.cu, 0
  br i1 %.not.i.i.i.i64, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.cv = zext i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.07982, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = sext i32 %i.da to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 %i.dc ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !140
  %i.df = icmp ugt i16 %i.de, 4
  br i1 %i.df, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK3org6apache5arrow7flatbuf11RecordBatch6lengthEv.exit

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i, %_ZN5arrow6StatusD2Ev.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  invoke void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(62) @.str.10)
          to label %_ZN5arrow6Status7IOErrorIJRA62_KcEEES0_DpOT_.exit unwind label %bb.ab

_ZN5arrow6Status7IOErrorIJRA62_KcEEES0_DpOT_.exit: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #36
  %i.dg = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %.not.i66 = icmp eq ptr %i.dg, null
  br i1 %.not.i66, label %_ZN5arrow6StatusD2Ev.exit67, label %bb.z, !prof !55

bb.z:                                             ; preds = %_ZN5arrow6Status7IOErrorIJRA62_KcEEES0_DpOT_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !56, !range !67, !noundef !68
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %_ZN5arrow6StatusD2Ev.exit67, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #36
  br label %_ZN5arrow6StatusD2Ev.exit67

_ZN5arrow6StatusD2Ev.exit67:                      ; preds = %_ZN5arrow6Status7IOErrorIJRA62_KcEEES0_DpOT_.exit, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.ao

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !140 ; 2 uses
  %.not.i.i68 = icmp eq i16 %i.dm, 0
  br i1 %.not.i.i68, label %_ZNK3org6apache5arrow7flatbuf11RecordBatch6lengthEv.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.dn = zext i16 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !105
  br label %_ZNK3org6apache5arrow7flatbuf11RecordBatch6lengthEv.exit

_ZNK3org6apache5arrow7flatbuf11RecordBatch6lengthEv.exit: ; preds = %bb.ac, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit
  %i.dq = phi i64 [ %i.dp, %bb.ac ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit ]
  %i.dr = add nsw i64 %i.dq, %.08093
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67, %_ZNK3org6apache5arrow7flatbuf11RecordBatch6lengthEv.exit
  %i.ds = phi i1 [ true, %_ZNK3org6apache5arrow7flatbuf11RecordBatch6lengthEv.exit ], [ false, %_ZN5arrow6StatusD2Ev.exit67 ]
  %.1 = phi i64 [ %i.dr, %_ZNK3org6apache5arrow7flatbuf11RecordBatch6lengthEv.exit ], [ %.08093, %_ZN5arrow6StatusD2Ev.exit67 ] ; 2 uses
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !69  ; 8 uses
  %.not.i.i69 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i69, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.dv = load atomic i64, ptr %i.du acquire, align 8 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 4294967297
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  br i1 %i.dw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.du, align 8, !tbaa !77
end_hunk_4
begin_hunk_5_@_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl21ReadCachedRecordBatchEiNS_6FutureISt10shared_ptrINS0_7MessageEEEE:bb.a
  store i32 0, ptr %i.cf, align 8, !tbaa !77
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !79
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !80
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #36, !inline_history !2572
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !80
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #36, !inline_history !2572
  br label %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl21ReadCachedRecordBatchEiNS_6FutureISt10shared_ptrINS0_7MessageEEEEENUlvE_D2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i29 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i29, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i = phi i32 [ %i.ci, %bb.af ], [ %i.cs, %bb.ag ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ct, label %bb.ah, label %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl21ReadCachedRecordBatchEiNS_6FutureISt10shared_ptrINS0_7MessageEEEEENUlvE_D2Ev.exit, !prof !83

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #36
  br label %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl21ReadCachedRecordBatchEiNS_6FutureISt10shared_ptrINS0_7MessageEEEEENUlvE_D2Ev.exit

_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl21ReadCachedRecordBatchEiNS_6FutureISt10shared_ptrINS0_7MessageEEEEENUlvE_D2Ev.exit: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  ret void

.body:                                            ; preds = %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i, %common.resume.i14
  %.sroa.3.0 = phi ptr [ null, %common.resume.i14 ], [ null, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i ], [ %i.f, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i ]
  %.pn = phi { ptr, i32 } [ %common.resume.op.i15, %common.resume.i14 ], [ %.pn.i6.i, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i ], [ %.pn.i.i, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i ]
  call void @_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #36
  call fastcc void @_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl21ReadCachedRecordBatchEiNS_6FutureISt10shared_ptrINS0_7MessageEEEEENUlvE_D2Ev(ptr %.sroa.3.0) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !461
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !461
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl17GetFlatbufMessageERKSt10shared_ptrINS0_7MessageEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nonnull %.0.val) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %2 = alloca %"class.std::shared_ptr.17", align 8 ; 5 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNK5arrow3ipc7Message8metadataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.17") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %.0.val)
  %i.a = load ptr, ptr %2, align 8, !tbaa !266    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !79
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36, !inline_history !267
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36, !inline_history !267
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !120, !range !67, !noundef !68
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  %i.x = select i1 %i.u, ptr %i.w, ptr null, !prof !55 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !129  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36, !noalias !2694
  %.tr.i.i = trunc i64 %i.z to i32
  %i.aa = shl i32 %.tr.i.i, 3
  store ptr %i.x, ptr %1, align 8, !tbaa !133, !noalias !2694
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !137, !noalias !2694
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 128, ptr %i.ac, align 8, !tbaa !3, !noalias !2694
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.aa, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !2694
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !138, !noalias !2694
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !138, !noalias !2694
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !105, !noalias !2694
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !138, !noalias !2694
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !noalias !2694
  %i.ae = icmp ugt i64 %i.z, 11
  br i1 %i.ae, label %bb.h, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.af = load i32, ptr %i.w, align 4, !tbaa !3, !noalias !2694 ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %i.af, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = add i64 %i.z, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.ah, %i.ag
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.i, %bb.h, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36, !noalias !2694
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ag
  %i.aj = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %1), !noalias !2694
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36, !noalias !2694
  br i1 %i.aj, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.ak = load i32, ptr %i.w, align 4, !tbaa !3, !noalias !2694
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZN5arrow6StatusD2Ev.exit10

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.11)
  %.pr = load ptr, ptr %4, align 8, !tbaa !52     ; 2 uses
  store ptr %.pr, ptr %3, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.an = icmp eq ptr %.pr, null
  br i1 %i.an, label %_ZN5arrow6StatusD2Ev.exit10, label %bb.j, !prof !139

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultIPKN3org6apache5arrow7flatbuf7MessageEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #36
  %i.ao = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %.not.i5 = icmp eq ptr %i.ao, null
  br i1 %.not.i5, label %_ZN5arrow6StatusD2Ev.exit6, label %bb.k, !prof !55

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !56, !range !67, !noundef !68
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6StatusD2Ev.exit6, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #36
  br label %_ZN5arrow6StatusD2Ev.exit6

_ZN5arrow6StatusD2Ev.exit6:                       ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.m

_ZN5arrow6StatusD2Ev.exit10:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.02 = phi ptr [ %i.am, %_ZN5arrow6StatusD2Ev.exit.thread ], [ null, %_ZN5arrow6StatusD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr null, ptr %0, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.02, ptr %i.as, align 8, !tbaa !2582
  br label %bb.m

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit6, %_ZN5arrow6StatusD2Ev.exit10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !38
  %i.e = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !37   ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = shl nsw i64 %i.l, 3
  %i.n = zext i32 %i.i to i64                     ; 2 uses
  %i.o = add nsw i64 %i.m, %i.n                   ; 5 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.p = add i64 %i.o, 63                         ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 2305843009213693944
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #39 ; 4 uses
  %i.t = lshr i64 %i.p, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %i.u, ptr %i.d, align 8, !tbaa !38
  store ptr %i.s, ptr %0, align 8
  store i32 0, ptr %i.a, align 8
  %i.v = sdiv i64 %i.o, 64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  %i.x = and i64 %i.o, -9223372036854775745
  %i.y = icmp ugt i64 %i.x, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.y, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.w, i64 %storemerge.idx.i.i.i.i
  %i.z = trunc i64 %i.o to i32
  %i.aa = and i32 %i.z, 63
  store ptr %storemerge.i.i.i.i, ptr %i.b, align 8
  store i32 %i.aa, ptr %i.c, align 8
  br label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit

_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit:       ; preds = %.noexc, %bb.a
  %i.ab = phi ptr [ %i.s, %.noexc ], [ null, %bb.a ] ; 3 uses
  %i.ac = icmp sgt i64 %i.l, 8
  br i1 %i.ac, label %bb.b, label %bb.c, !prof !55

bb.b:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ab, ptr align 8 %i.e, i64 %i.l, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.c:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  %i.ad = icmp eq i64 %i.l, 8
  br i1 %i.ad, label %bb.d, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !105
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !105
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.d, %bb.c, %bb.b
  %.not.i28 = icmp eq i32 %i.i, 0
  br i1 %.not.i28, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.l
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.av, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.512.019.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.09.018.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.017.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.55.016.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ag = zext nneg i32 %.sroa.512.019.i.i.i.i.i.i to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = load i64, ptr %.sroa.09.018.i.i.i.i.i.i, align 8, !tbaa !105
  %i.aj = and i64 %i.ai, %i.ah
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aj, 0
  %i.ak = zext nneg i32 %.sroa.55.016.i.i.i.i.i.i to i64
  %i.al = shl nuw i64 1, %i.ak                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.am = load i64, ptr %.sroa.03.017.i.i.i.i.i.i, align 8, !tbaa !105
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %.sroa.03.017.i.i.i.i.i.i, align 8, !tbaa !105
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.f, %bb.e
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.017.i.i.i.i.i.i, align 8, !tbaa !105
  %i.ar = add i32 %.sroa.512.019.i.i.i.i.i.i, 1
  %i.as = icmp eq i32 %.sroa.512.019.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.as, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.018.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.as, i32 0, i32 %i.ar
  %i.at = add i32 %.sroa.55.016.i.i.i.i.i.i, 1
  %i.au = icmp eq i32 %.sroa.55.016.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.au, i32 0, i32 %i.at
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.au, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.017.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i
  %i.av = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %.loopexit, !llvm.loop !1063

.loopexit:                                        ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEiENUlPKvPNS_2io16RandomAccessFileEE_D2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(144) dereferenceable(144) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !388
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #37
  br label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit

_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit:           ; preds = %bb.a, %bb.b
end_hunk_5
