inline.NumInlined: 8840
inline.NumDeleted: 3439
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6google8protobuf8compiler20CommandLineInterface29VerifyInputFilesInDescriptorsEPNS0_18DescriptorDatabaseE:bb.a
  %i.ag = getelementptr inbounds i8, ptr %i.r, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !115 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  invoke void @_ZSt16__throw_bad_castv() #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !122
  %.not.i1.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i, label %bb.g, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.g
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef signext i8 %i.an(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %.loopexit.split-lp, !inline_history !136

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30
  %.sink74 = phi ptr [ %i.bo, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30 ], [ %i.ai, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ]
  %.ph = phi ptr [ %i.bh, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30 ], [ %i.r, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink74, i64 67
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split, %.noexc25, %.noexc35
  %i.ar = phi ptr [ %i.r, %.noexc25 ], [ %i.bh, %.noexc35 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.as = phi i8 [ %i.ao, %.noexc25 ], [ %i.bu, %.noexc35 ], [ %i.aq, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i8 noundef signext %i.as)
          to label %.noexc27.invoke unwind label %.loopexit.split-lp

.noexc27.invoke:                                  ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %.critedge unwind label %.loopexit.split-lp ; 0 uses

.loopexit45:                                      ; preds = %bb.b
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke, %.noexc27.invoke, %.invoke, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.e, %bb.f, %bb.j, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19, %bb.g, %.noexc25, %bb.k, %.noexc35
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit45
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit45 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %lpad.phi

bb.i:                                             ; preds = %bb.c
  %i.av = load i8, ptr %i.e, align 4, !tbaa !543, !range !75, !noundef !76
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load i32, ptr %i.f, align 8
  %i.ay = icmp sgt i32 %i.ax, 0
  %or.cond = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !313
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, -4
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !105
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !101
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.be, i64 noundef %i.bg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19 unwind label %.loopexit.split-lp ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19: ; preds = %bb.j
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.34, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !82
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !115 ; 6 uses
  %.not.i.i.i29 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i29, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !122
  %.not.i1.i.i31 = icmp eq i8 %i.bq, 0
  br i1 %.not.i1.i.i31, label %bb.k, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo)
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.k
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !82
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef signext i8 %i.bt(ptr noundef nonnull align 8 dereferenceable(570) %i.bo, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %.loopexit.split-lp, !inline_history !136

bb.l:                                             ; preds = %bb.i
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.040.057, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bv, %i.d
  br i1 %.not, label %.loopexit, label %bb.b

.critedge:                                        ; preds = %.noexc27.invoke
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.a, %.critedge
  %.not49 = phi i1 [ false, %.critedge ], [ true, %bb.a ], [ true, %bb.l ]
  ret i1 %.not49
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6google8protobuf14DescriptorPoolESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !367    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPoolEEclEPS2_.exit

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPoolEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN6google8protobuf14DescriptorPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.a) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #42
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPoolEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8compiler20CommandLineInterface24InitializeDiskSourceTreeEPNS1_14DiskSourceTreeEPNS0_18DescriptorDatabaseE(ptr noundef nonnull align 8 dereferenceable(647) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %18 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.c, ptr %12, align 8, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !101
  store i8 0, ptr %i.c, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.e = call i64 @readlink(ptr noundef nonnull @.str.180, ptr noundef nonnull %i.a, i64 noundef 4096) #37 ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.e, 2147483647
  %i.i = load i64, ptr %i.d, align 8, !tbaa !101
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull %i.a, i64 noundef %i.h)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.l = load ptr, ptr %12, align 8, !tbaa !105   ; 6 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !101  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA1_KcRSt17basic_string_viewIcS4_EEEERS7_DpOT_.exit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.e, %bb.f
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.f ], [ %i.m, %bb.e ] ; 2 uses
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.1.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !34
  switch i8 %i.p, label %bb.f [
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i
    i8 47, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i
  ]

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not17.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not17.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA1_KcRSt17basic_string_viewIcS4_EEEERS7_DpOT_.exit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !544

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %or.cond.i = icmp ult i64 %.1.i.i.in.i, 2
  br i1 %or.cond.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA1_KcRSt17basic_string_viewIcS4_EEEERS7_DpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.m, i64 %.1.i.i.i) ; 5 uses
  store i64 %.sroa.speculated.i.i, ptr %13, align 8, !tbaa !30
  store ptr %i.l, ptr %i.n, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store i64 %.sroa.speculated.i.i, ptr %10, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store i64 33, ptr %11, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.181, ptr %i.q, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.noexc37.i unwind label %bb.k

.noexc37.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.r = load ptr, ptr %9, align 8, !tbaa !105
  %i.s = call i32 @access(ptr noundef %i.r, i32 noundef 0) #37
  %i.t = load ptr, ptr %9, align 8, !tbaa !105    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.noexc37.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !34
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %.noexc37.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not84.i = icmp eq i32 %i.s, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br i1 %.not84.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !258  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !260
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA1_KcRSt17basic_string_viewIcS3_ETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEntclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb0EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 1 dereferenceable(1) @.str.10, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc38.i unwind label %bb.k

.noexc38.i:                                       ; preds = %bb.i
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !258
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !258
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA1_KcRSt17basic_string_viewIcS4_EEEERS7_DpOT_.exit.i

bb.j:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRA1_KcRSt17basic_string_viewIcS4_EEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.z, ptr noundef nonnull align 1 dereferenceable(1) @.str.10, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA1_KcRSt17basic_string_viewIcS4_EEEERS7_DpOT_.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  store i64 %.sroa.speculated.i.i, ptr %15, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  store i64 8, ptr %16, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @.str.179, ptr %i.af, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(48) %16)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.ag = load ptr, ptr %14, align 8, !tbaa !105
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store i64 %i.ai, ptr %7, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ag, ptr %.sroa.2.0..sroa_idx.i.i42.i, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store i64 33, ptr %8, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.181, ptr %i.aj, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %.noexc45.i unwind label %bb.o

.noexc45.i:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ak = load ptr, ptr %6, align 8, !tbaa !105
  %i.al = call i32 @access(ptr noundef %i.ak, i32 noundef 0) #37
  %i.am = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i44.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.i: ; preds = %.noexc45.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !34
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i44.i: ; preds = %.noexc45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.i
  %.not85.i = icmp eq i32 %i.al, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %.not85.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i49.i, label %.invoke.i

bb.n:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i

bb.o:                                             ; preds = %.invoke.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i49.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i44.i, %bb.p
  %.1.i.i50.in.i = phi i64 [ %.1.i.i50.i, %bb.p ], [ %.sroa.speculated.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i44.i ] ; 2 uses
  %.1.i.i50.i = add i64 %.1.i.i50.in.i, -1        ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %.1.i.i50.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !34
  switch i8 %i.au, label %bb.p [
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.i
    i8 47, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.i
  ]

bb.p:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i49.i
  %.not17.i.i52.i = icmp eq i64 %.1.i.i50.i, 0
  br i1 %.not17.i.i52.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i49.i, !llvm.loop !544

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i49.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i49.i
  %or.cond3.i = icmp ult i64 %.1.i.i50.in.i, 2
  br i1 %or.cond3.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.thread.i, label %bb.q

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.i
  %.sroa.speculated.i54.i = call i64 @llvm.umin.i64(i64 %.sroa.speculated.i.i, i64 %.1.i.i50.i) ; 2 uses
  store i64 %.sroa.speculated.i54.i, ptr %13, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  store i64 %.sroa.speculated.i54.i, ptr %18, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i57.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx.i57.i, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  store i64 8, ptr %19, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str.179, ptr %i.av, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %19)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.aw = load ptr, ptr %14, align 8, !tbaa !105  ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  %i.az = load ptr, ptr %17, align 8, !tbaa !105  ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.bb = icmp eq ptr %i.az, %i.ba                ; 2 uses
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  br i1 %i.bb, label %bb.s, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.r
  br i1 %i.bb, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  switch i64 %i.bd, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.bf = load i8, ptr %i.az, align 1, !tbaa !34
  store i8 %i.bf, ptr %i.aw, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.az, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !101 ; 2 uses
  store i64 %i.bg, ptr %i.ah, align 8, !tbaa !101
  %i.bh = load ptr, ptr %14, align 8, !tbaa !105
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !34
  %.pre.i59.i = load ptr, ptr %17, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.az, ptr %14, align 8, !tbaa !105
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bk = load <2 x i64>, ptr %i.bj, align 8, !tbaa !34
  store <2 x i64> %i.bk, ptr %i.ah, align 8, !tbaa !34
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bl = load i64, ptr %i.ax, align 8, !tbaa !34
  store ptr %i.az, ptr %14, align 8, !tbaa !105
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bn = load <2 x i64>, ptr %i.bm, align 8, !tbaa !34
  store <2 x i64> %i.bn, ptr %i.ah, align 8, !tbaa !34
  %.not.i58.i = icmp eq ptr %i.aw, null
  br i1 %.not.i58.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.aw, ptr %17, align 8, !tbaa !105
  store i64 %i.bl, ptr %i.ba, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ba, ptr %17, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.w, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bo = phi ptr [ %i.aw, %bb.v ], [ %i.ba, %bb.w ], [ %.pre.i59.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.bp, align 8, !tbaa !101
  store i8 0, ptr %i.bo, align 1, !tbaa !34
  %i.bq = load ptr, ptr %17, align 8, !tbaa !105  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !34
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.bv = load ptr, ptr %14, align 8, !tbaa !105
  %i.bw = load i64, ptr %i.ah, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store i64 %i.bw, ptr %4, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i62.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bv, ptr %.sroa.2.0..sroa_idx.i.i62.i, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store i64 33, ptr %5, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.181, ptr %i.bx, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc65.i unwind label %bb.o

.noexc65.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.by = load ptr, ptr %3, align 8, !tbaa !105
  %i.bz = call i32 @access(ptr noundef %i.by, i32 noundef 0) #37
  %i.ca = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.i: ; preds = %.noexc65.i
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !34
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64.i: ; preds = %.noexc65.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.i
  %.not88.i = icmp eq i32 %i.bz, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.not88.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.thread.i, label %.invoke.i

.invoke.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i44.i
  %i.cf = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA1_KcS6_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.thread.i unwind label %bb.o ; 0 uses

bb.x:                                             ; preds = %bb.q
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.z

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.thread.i: ; preds = %bb.p, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.i
  %i.ch = load ptr, ptr %14, align 8, !tbaa !105  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.thread.i
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !34
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit53.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA1_KcRSt17basic_string_viewIcS4_EEEERS7_DpOT_.exit.i

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA1_KcRSt17basic_string_viewIcS4_EEEERS7_DpOT_.exit.i: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, %bb.j, %.noexc38.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA1_KcRSt17basic_string_viewIcS4_EEEERS7_DpOT_.exit.i, %bb.c
  %i.cm = load ptr, ptr %12, align 8, !tbaa !105  ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.c
  br i1 %i.cn, label %_ZN6google8protobuf8compiler12_GLOBAL__N_120AddDefaultProtoPathsEPSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_ESaISB_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i: ; preds = %bb.y
  %i.co = load i64, ptr %i.c, align 8, !tbaa !34
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #42
  br label %_ZN6google8protobuf8compiler12_GLOBAL__N_120AddDefaultProtoPathsEPSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_ESaISB_EE.exit

bb.z:                                             ; preds = %bb.x, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.as, %bb.o ], [ %i.cg, %bb.x ] ; 2 uses
  %i.cq = load ptr, ptr %14, align 8, !tbaa !105  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i: ; preds = %bb.z
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !34
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i, %bb.n
  %.pn.pn.i = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i ], [ %.pn.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i, %bb.k
  %.pn32.i = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.d
  %.pn32.pn.i = phi { ptr, i32 } [ %.pn32.i, %bb.aa ], [ %i.k, %bb.d ]
end_hunk_0
