Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3LinkJump?download=true
inline.NumInlined: 2531
inline.NumDeleted: 1062
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN15LinkJumpVisitor5visitEP11AstContinue
define linkonce_odr dso_local void @_ZN15LinkJumpVisitor5visitEP11AstContinue(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.d = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !166

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

common.resume:                                    ; preds = %bb.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.p, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit:            ; preds = %bb.b, %bb.c, %bb.e
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.21, ptr nonnull @.str.22, i32 481, ptr null) ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.522, i64 noundef 32) ; 0 uses
  tail call void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.i)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN15LinkJumpVisitor12getJumpBlockEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull %i.b, i1 noundef zeroext true)
  %i.l = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !163
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i16 434, ptr noundef %i.n)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstJumpGo, i64 16), ptr %i.l, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  store ptr %i.k, ptr %i.o, align 8, !tbaa !170
  tail call void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.l)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 160) #24
  br label %common.resume

bb.j:                                             ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, %bb.h
  %i.q = tail call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef null) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !164  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !142
  %.not.i.i9 = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i9, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %1, ptr %i.t, align 8, !tbaa !165
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.s, align 8, !tbaa !164
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.l:                                             ; preds = %bb.j
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !141  ; 4 uses
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.m, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #27
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #28 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store ptr %1, ptr %i.aj, align 8, !tbaa !165
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.n, label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !142
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.ai, ptr %i.r, align 8, !tbaa !141
  store ptr %i.al, ptr %i.s, align 8, !tbaa !164
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.ap, ptr %i.u, align 8, !tbaa !142
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

_ZN9VNDeleter11pushDeletepEP7AstNode.exit:        ; preds = %bb.k, %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

declare void @_ZN14VNVisitorConst5visitEP7AstCosD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstCoshD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstCountBits(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstCountOnes(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstCover(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstCoverBin(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP13AstCoverCross(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstCoverInc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstCoverOption(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP17AstCoverOtherDecl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstCoverToggle(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP18AstCoverToggleDecl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP17AstCoverTransItem(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP16AstCoverTransSet(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP13AstCovergroup(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP13AstCoverpoint(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP16AstCoverpointRef(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP18AstCvtArrayToArray(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP19AstCvtArrayToPacked(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP16AstCvtPackString(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP19AstCvtPackedToArray(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP21AstCvtUnpackedToQueue(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstDeassign(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP19AstDefImplicitDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstDefParam(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP17AstDefaultDisable(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstDelay(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15LinkJumpVisitor5visitEP10AstDisable(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector.196", align 8   ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = tail call noundef i32 @_ZL5debugv()
  %i.c = icmp sgt i32 %i.b, 7
  br i1 %i.c, label %bb.b, label %bb.r, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.1, i32 noundef 515)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = load ptr, ptr %4, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.523, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %1)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.k = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !30
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !30
  %.not = icmp eq i8 %i.u, 10
  %i.v = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i97: ; preds = %bb.f
  %i.y = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.f
  %i.z = load i64, ptr %i.w, align 8, !tbaa !30
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.aa) #24
  %.pre = load ptr, ptr %5, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  %i.ab = phi ptr [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i97 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !30
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext 10)
          to label %bb.m unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.b, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.j
  %i.an = load i64, ptr %i.al, align 8, !tbaa !30
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.aj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.l:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ar = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.l
  %i.au = load i64, ptr %i.as, align 8, !tbaa !30
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.k
  %.pn75 = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.q

bb.m:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %7, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !29
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.aw, i64 noundef %i.ay)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit108 unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit108: ; preds = %bb.n
  %i.ba = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit108
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !30
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.p:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.p
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !30
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.o
  %.pn77 = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %i.bg, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %bb.h
  %.pn77.pn = phi { ptr, i32 } [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %i.ah, %bb.h ], [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.bo

bb.r:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !172 ; 21 uses
  %.not80 = icmp eq ptr %i.bn, null
  br i1 %.not80, label %bb.s, label %_ZN7AstNode4castI7AstTaskS_EEPT_PT0_.exit

bb.s:                                             ; preds = %bb.r
  %i.bo = call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef null)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN9VNDeleter11pushDeletepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef %i.bo)
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

_ZN7AstNode4castI7AstTaskS_EEPT_PT0_.exit:        ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bq, align 8, !tbaa !173
  switch i16 %.sroa.0.0.copyload.i.i.i, label %bb.bg [
    i16 375, label %bb.t
    i16 473, label %bb.ae
    i16 472, label %bb.ap
  ]

bb.t:                                             ; preds = %_ZN7AstNode4castI7AstTaskS_EEPT_PT0_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !163
  %i.bt = call noundef ptr @_ZN15LinkJumpVisitor28getOrCreateTaskDisableQueuepEP7AstTaskP8FileLine(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull %i.bn, ptr noundef %i.bs)
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !163
  %i.bv = call noundef ptr @_ZN15LinkJumpVisitor17getQueueKillStmtpEP8FileLineP6AstVar(ptr noundef %i.bu, ptr noundef %i.bt) ; 2 uses
  call void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !174
  %i.by = icmp eq ptr %i.bx, %i.bn
  br i1 %i.by, label %bb.u, label %_ZN7AstNode2asI8AstBegin12AstNodeBlockEEPT_PT0_.exit.thread179

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !175
  %.not.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.not.i.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.sroa.06.0.in.i.i = phi ptr [ %i.cb, %bb.v ], [ %.sroa.06.0.i.i, %bb.x ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !135 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !177
  %i.ce = icmp eq ptr %i.bn, %i.cd
  br i1 %i.ce, label %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit, label %bb.w, !llvm.loop !4

bb.y:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cg = ptrtoint ptr %i.bn to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !129 ; 2 uses
  %i.cj = urem i64 %i.cg, %i.ci                   ; 2 uses
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !128
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !135 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !177
  %i.cq = icmp eq ptr %i.bn, %i.cp
  br i1 %i.cq, label %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i

bb.aa:                                            ; preds = %bb.ab
  %i.cr = icmp eq ptr %i.bn, %i.cu
  br i1 %i.cr, label %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %bb.aa
  %.020.i.i.i.i = phi ptr [ %i.cs, %bb.aa ], [ %i.cn, %bb.z ]
  %i.cs = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !135 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !177 ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = urem i64 %i.cv, %i.ci
  %.not19.i.i.i.i = icmp eq i64 %i.cw, %i.cj
  br i1 %.not19.i.i.i.i, label %bb.aa, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.ab
  br label %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit.thread, !llvm.loop !5

_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit: ; preds = %bb.aa, %bb.x, %bb.z
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.x ], [ %i.cn, %bb.z ], [ %i.cs, %bb.aa ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !181
  br label %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit.thread

_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.w, %bb.y, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit
  %.058 = phi ptr [ %i.cy, %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit ], [ %i.bn, %..loopexit_crit_edge21.i.i.i.i ], [ %i.bn, %bb.w ], [ %i.bn, %bb.y ], [ %i.bn, %.lr.ph.i.i.i.i ]
  %i.cz = call noundef ptr @_ZN15LinkJumpVisitor12getJumpBlockEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %.058, i1 noundef zeroext false)
  %i.da = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28 ; 5 uses
  %i.db = load ptr, ptr %i.br, align 8, !tbaa !163
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.da, i16 434, ptr noundef %i.db)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit.thread
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstJumpGo, i64 16), ptr %i.da, align 8, !tbaa !81
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 152
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !170
  call void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.bv, ptr noundef nonnull %i.da)
  br label %_ZN7AstNode2asI8AstBegin12AstNodeBlockEEPT_PT0_.exit.thread179

bb.ad:                                            ; preds = %_ZNSt13unordered_mapIPK7AstTaskP8AstBeginSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE4findERSA_.exit.thread
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 160) #24
  br label %bb.bo

bb.ae:                                            ; preds = %_ZN7AstNode4castI7AstTaskS_EEPT_PT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !182 ; 2 uses
  %.not88201 = icmp eq ptr %i.df, null
  br i1 %.not88201, label %._crit_edge, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %_ZN7AstNode2asI8AstBeginS_EEPT_PT0_.exit

._crit_edge:                                      ; preds = %_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit, %bb.ae
  %.lcssa201 = phi ptr [ null, %bb.ae ], [ %i.ed, %_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit ]
  store ptr %.lcssa201, ptr %8, align 8
  invoke void @_ZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS4_EE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN7AstNode2asI8AstBeginS_EEPT_PT0_.exit:         ; preds = %bb.ak, %.lr.ph203
  %i.di = phi ptr [ null, %.lr.ph203 ], [ %i.eb, %bb.ak ] ; 3 uses
  %i.dj = phi ptr [ null, %.lr.ph203 ], [ %i.ec, %bb.ak ] ; 3 uses
  %i.dk = phi ptr [ %i.df, %.lr.ph203 ], [ %i.ef, %bb.ak ] ; 3 uses
  %storemerge202 = phi ptr [ null, %.lr.ph203 ], [ %i.ed, %bb.ak ] ; 8 uses
  %.not.i118 = icmp eq ptr %i.dj, %i.di
  br i1 %.not.i118, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN7AstNode2asI8AstBeginS_EEPT_PT0_.exit
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !183
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !380
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit

bb.ag:                                            ; preds = %_ZN7AstNode2asI8AstBeginS_EEPT_PT0_.exit
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = ptrtoint ptr %storemerge202 to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 6 uses
  %i.dp = icmp eq i64 %i.do, 9223372036854775800
  br i1 %i.dp, label %bb.ah, label %_ZNKSt6vectorIP8AstBeginSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  store ptr %storemerge202, ptr %8, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #27
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIP8AstBeginSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.dq = ashr exact i64 %i.do, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 1)
  %i.dr = add nsw i64 %.sroa.speculated.i.i.i, %i.dq ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dq
  %i.dt = call i64 @llvm.umin.i64(i64 %i.dr, i64 1152921504606846975)
  %i.du = select i1 %i.ds, i64 1152921504606846975, i64 %i.dt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.du, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dv = shl nuw nsw i64 %i.du, 3
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #28
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc119:                                        ; preds = %_ZNKSt6vectorIP8AstBeginSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.do ; 2 uses
  store ptr %i.dk, ptr %i.dx, align 8, !tbaa !183
  %i.dy = icmp sgt i64 %i.do, 0
  br i1 %i.dy, label %bb.ai, label %_ZNSt6vectorIP8AstBeginSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ai:                                            ; preds = %.noexc119
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr align 8 %storemerge202, i64 %i.do, i1 false)
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8AstBeginSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ai, %.noexc119
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %storemerge202, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIP8AstBeginSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %storemerge202, i64 noundef %i.do) #24
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIP8AstBeginSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.dz, ptr %i.dg, align 8, !tbaa !380
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.du ; 2 uses
  store ptr %i.ea, ptr %i.dh, align 8, !tbaa !381
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.af
  %i.eb = phi ptr [ %i.ea, %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.di, %bb.af ]
  %i.ec = phi ptr [ %i.dz, %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.dl, %bb.af ]
  %i.ed = phi ptr [ %i.dw, %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %storemerge202, %bb.af ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !185 ; 5 uses
  %cond = icmp eq ptr %i.ef, null
  br i1 %cond, label %._crit_edge, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %.sroa.0.0.copyload.i.i.i121 = load i16, ptr %i.eg, align 8, !tbaa !173
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i121, 472
  br i1 %.not6.i, label %_ZN7AstNode2asI8AstBeginS_EEPT_PT0_.exit, label %bb.al, !prof !149

bb.al:                                            ; preds = %bb.ak
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  store ptr %i.ed, ptr %8, align 8
  %i.ei = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.7, i32 noundef 1063)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc122:                                        ; preds = %bb.al
  %i.ej = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc123:                                        ; preds = %.noexc122
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull @.str.36, i64 noundef 55)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc124:                                        ; preds = %.noexc123
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.eh, align 8, !tbaa !173
  %i.el = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !186
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef %i.en)
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc125:                                        ; preds = %.noexc124
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc126:                                        ; preds = %.noexc125
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ef, ptr noundef nonnull align 8 dereferenceable(112) %i.eo) #27
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %.noexc126
  unreachable

bb.am:                                            ; preds = %._crit_edge
  %i.eq = load ptr, ptr %8, align 8, !tbaa !382   ; 3 uses
  %.not.i.i.i128 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !381
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #24
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit

_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit:         ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN7AstNode2asI8AstBegin12AstNodeBlockEEPT_PT0_.exit.thread179

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIP8AstBeginSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %storemerge202, ptr %8, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge, %.noexc123, %.noexc125, %.noexc126, %.noexc124, %.noexc122, %bb.al, %bb.ah
  %lpad.loopexit.split-lp207 = landingpad { ptr, i32 }
          cleanup
  %.pre215 = load ptr, ptr %8, align 8, !tbaa !382
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.ew = phi ptr [ %storemerge202, %.loopexit.split-lp.loopexit ], [ %.pre215, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp207, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i129 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit130, label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !381
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fb) #24
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit130

_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit130:      ; preds = %.loopexit.split-lp, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bo

bb.ap:                                            ; preds = %_ZN7AstNode4castI7AstTaskS_EEPT_PT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bn, i64 152
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.fd, ptr %9, align 8, !tbaa !31, !alias.scope !383
  %i.fe = load ptr, ptr %i.fc, align 8, !tbaa !28, !noalias !383 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bn, i64 160
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !29, !noalias !383 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !383
  store i64 %i.fg, ptr %i.a, align 8, !tbaa !143, !noalias !383
  %i.fh = icmp ugt i64 %i.fg, 15
  br i1 %i.fh, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ap
  %i.fi = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.fi, ptr %9, align 8, !tbaa !28, !alias.scope !383
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !143, !noalias !383
  store i64 %i.fj, ptr %i.fd, align 8, !tbaa !30, !alias.scope !383
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.ap
  %i.fk = phi ptr [ %i.fi, %.noexc.i.i ], [ %i.fd, %bb.ap ] ; 2 uses
  switch i64 %i.fg, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %_ZNK12AstNodeBlock4nameB5cxx11Ev.exit
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %i.fl = load i8, ptr %i.fe, align 1, !tbaa !30
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !30
  br label %_ZNK12AstNodeBlock4nameB5cxx11Ev.exit

bb.ar:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr align 1 %i.fe, i64 %i.fg, i1 false)
  br label %_ZNK12AstNodeBlock4nameB5cxx11Ev.exit

_ZNK12AstNodeBlock4nameB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.aq, %bb.ar
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !143, !noalias !383 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !29, !alias.scope !383
  %i.fo = load ptr, ptr %9, align 8, !tbaa !28, !alias.scope !383
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm
  store i8 0, ptr %i.fp, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !383
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !187, !noalias !384
  %i.ft = load ptr, ptr %i.fq, align 8, !tbaa !187, !noalias !385
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNK12AstNodeBlock4nameB5cxx11Ev.exit
  %.sroa.09.0.i = phi ptr [ %i.fs, %_ZNK12AstNodeBlock4nameB5cxx11Ev.exit ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %.not.not.not.not.i.not = icmp eq ptr %.sroa.09.0.i, %i.ft ; 2 uses
  br i1 %.not.not.not.not.i.not, label %_ZNK15LinkJumpVisitor16existsBlockAboveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fw = getelementptr inbounds i8, ptr %.sroa.09.0.i, i64 -8 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !153 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !81
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.ga = load ptr, ptr %i.fz, align 8
  invoke void %i.ga(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(185) %i.fx)
          to label %.noexc134 unwind label %bb.az, !inline_history !370

.noexc134:                                        ; preds = %bb.at
  %i.gb = load i64, ptr %i.fu, align 8, !tbaa !29 ; 4 uses
  %i.gc = load i64, ptr %i.fn, align 8, !tbaa !29
  %i.gd = icmp eq i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.au, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i: ; preds = %.noexc134
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

bb.au:                                            ; preds = %.noexc134
  %i.ge = icmp eq i64 %i.gb, 0
  %.pre13.i = load ptr, ptr %2, align 8, !tbaa !28 ; 3 uses
  br i1 %i.ge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gf = load ptr, ptr %9, align 8, !tbaa !28
  %bcmp.i.i = call i32 @bcmp(ptr %.pre13.i, ptr %i.gf, i64 %i.gb)
  %i.gg = icmp eq i32 %bcmp.i.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.av, %bb.au, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i
  %i.gh = phi ptr [ %.pre.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i ], [ %.pre13.i, %bb.av ], [ %.pre13.i, %bb.au ] ; 2 uses
  %i.gi = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i ], [ %i.gg, %bb.av ], [ true, %bb.au ]
  %i.gj = icmp eq ptr %i.gh, %i.fv
  br i1 %i.gj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.gk = icmp ult i64 %i.gb, 16
  call void @llvm.assume(i1 %i.gk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.gl = load i64, ptr %i.fv, align 8, !tbaa !30
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.gi, label %_ZNK15LinkJumpVisitor16existsBlockAboveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.as

_ZNK15LinkJumpVisitor16existsBlockAboveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.as
  %i.gn = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.fd
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNK15LinkJumpVisitor16existsBlockAboveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.gp = load i64, ptr %i.fd, align 8, !tbaa !30
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNK15LinkJumpVisitor16existsBlockAboveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.not.not.not.not.i.not, label %bb.bf, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !188
  %i.gt = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !32
  %i.gu = icmp ne i32 %i.gs, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = and i64 %i.gw, 4294967295
  %.not84187 = icmp eq i64 %i.gx, 0
  %.not84 = select i1 %i.gu, i1 true, i1 %.not84187
  br i1 %.not84, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.gy = call noundef ptr @_ZN15LinkJumpVisitor12getJumpBlockEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull %i.bn, i1 noundef zeroext false)
  %i.gz = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !163
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.gz, i16 434, ptr noundef %i.hb)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstJumpGo, i64 16), ptr %i.gz, align 8, !tbaa !81
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 152
  store ptr %i.gy, ptr %i.hc, align 8, !tbaa !170
  call void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.gz)
  br label %_ZN7AstNode2asI8AstBegin12AstNodeBlockEEPT_PT0_.exit.thread179

bb.az:                                            ; preds = %bb.at
  %i.hd = landingpad { ptr, i32 }
          cleanup
  %i.he = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.fd
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.az
  %i.hg = load i64, ptr %i.fd, align 8, !tbaa !30
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bo

bb.ba:                                            ; preds = %bb.ax
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef 160) #24
  br label %bb.bo

bb.bb:                                            ; preds = %bb.aw
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !163
  %i.hl = call noundef ptr @_ZN15LinkJumpVisitor29getOrCreateBeginDisableQueuepEP8AstBeginP8FileLine(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull %i.bn, ptr noundef %i.hk)
  %i.hm = load ptr, ptr %i.hj, align 8, !tbaa !163
  %i.hn = call noundef ptr @_ZN15LinkJumpVisitor17getQueueKillStmtpEP8FileLineP6AstVar(ptr noundef %i.hm, ptr noundef %i.hl) ; 2 uses
  call void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef %i.hn)
  %i.ho = load ptr, ptr %i.fr, align 8, !tbaa !187, !noalias !386 ; 2 uses
  %i.hp = load ptr, ptr %i.fq, align 8, !tbaa !187, !noalias !387 ; 2 uses
  %.not188198 = icmp eq ptr %i.ho, %i.hp
  br i1 %.not188198, label %_ZN7AstNode2asI8AstBegin12AstNodeBlockEEPT_PT0_.exit.thread179, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb, %_ZN7AstNode2isI8AstBegin12AstNodeBlockEEbPKT0_.exit.thread
  %.sroa.0165.0199 = phi ptr [ %i.hq, %_ZN7AstNode2isI8AstBegin12AstNodeBlockEEbPKT0_.exit.thread ], [ %i.ho, %bb.bb ]
  %i.hq = getelementptr inbounds i8, ptr %.sroa.0165.0199, i64 -8 ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.smin.i64
!181 = !{!180, !179, i64 8}
!182 = !{!162, !96, i64 40}
!183 = !{!179, !179, i64 0}
!184 = !{!"p2 _ZTS8AstBegin", !83, i64 0}
!185 = !{!162, !96, i64 8}
!186 = !{!24, !24, i64 0}
!187 = !{!98, !98, i64 0}
!188 = !{!162, !19, i64 136}
!189 = !{!162, !96, i64 16}
!190 = !{!162, !19, i64 112}
!191 = !{!120, !69, i64 73}
!192 = !{!69, !69, i64 0}
!193 = !{!120, !94, i64 40}
!194 = !{!"short", !18, i64 0}
!195 = !{!120, !69, i64 72}
!196 = !{!162, !96, i64 24}
!197 = !{!162, !96, i64 32}
!198 = !{!"_ZTS12AstNodeBlock", !167, i64 0, !27, i64 152, !69, i64 184}
!199 = !{!198, !69, i64 184}
!200 = !{!"_ZTSN9VLifetime2enE", !18, i64 0}
!201 = !{!200, !200, i64 0}
!202 = !{!"_ZTSN7VAccess2enE", !18, i64 0}
!203 = !{!"_ZTS7VAccess", !202, i64 0}
!204 = !{!203, !202, i64 0}
!205 = !{!162, !159, i64 72}
!206 = !{!"_ZTSN12V3NumberData16V3NumberDataTypeE", !18, i64 0}
!207 = !{!"_ZTS12V3NumberData", !18, i64 0, !19, i64 32, !206, i64 36, !69, i64 37, !69, i64 37, !69, i64 37, !69, i64 37, !69, i64 37, !69, i64 37, !69, i64 37}
!208 = !{!207, !19, i64 32}
!209 = !{!"_ZTS11AstNodeExpr", !162, i64 0}
!210 = !{!"p1 _ZTS6AstVar", !23, i64 0}
!211 = !{!"p1 _ZTS11AstVarScope", !23, i64 0}
!212 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!213 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !212, i64 0}
!214 = !{!"_ZTSSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0, !213, i64 8}
!215 = !{!"_ZTSSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !214, i64 0}
!216 = !{!"_ZTS16VSelfPointerText", !215, i64 0}
!217 = !{!"_ZTS13AstNodeVarRef", !209, i64 0, !210, i64 152, !211, i64 160, !94, i64 168, !203, i64 176, !216, i64 184}
!218 = !{!217, !210, i64 152}
!219 = !{!"_ZTSSt13_Ios_Fmtflags", !18, i64 0}
!220 = !{!"_ZTSSt12_Ios_Iostate", !18, i64 0}
!221 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!222 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !26, i64 8}
!223 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!224 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!225 = !{!"_ZTSSt6locale", !224, i64 0}
!226 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !219, i64 24, !220, i64 28, !220, i64 32, !221, i64 40, !222, i64 48, !18, i64 64, !19, i64 192, !223, i64 200, !225, i64 208}
!227 = !{!226, !219, i64 24}
!228 = !{!219, !219, i64 0}
!229 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !225, i64 56}
!230 = !{!229, !24, i64 40}
!231 = !{!229, !24, i64 32}
!232 = !{!"_ZTSN11V3ErrorCode2enE", !18, i64 0}
!233 = !{!"_ZTS11V3ErrorCode", !232, i64 0}
!234 = !{!"any p3 pointer", !83, i64 0}
!235 = !{!"p3 _ZTS8FileLine", !234, i64 0}
!236 = !{!"p2 _ZTS8FileLine", !83, i64 0}
!237 = !{!"_ZTSSt15_Deque_iteratorIPK8FileLineRS2_PS2_E", !236, i64 0, !236, i64 8, !236, i64 16, !235, i64 24}
!238 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE16_Deque_impl_dataE", !235, i64 0, !26, i64 8, !237, i64 16, !237, i64 48}
!239 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE11_Deque_implE", !238, i64 0}
!240 = !{!"_ZTSSt11_Deque_baseIPK8FileLineSaIS2_EE", !239, i64 0}
!241 = !{!"_ZTSSt5dequeIPK8FileLineSaIS2_EE", !240, i64 0}
!242 = !{!"_ZTS13VErrorMessage", !233, i64 0, !27, i64 8, !160, i64 40, !241, i64 48}
!243 = !{!238, !235, i64 0}
!244 = !{!238, !235, i64 40}
!245 = !{!238, !235, i64 72}
!246 = !{!236, !236, i64 0}
!247 = !{!238, !26, i64 8}
!248 = !{!237, !235, i64 24}
!249 = !{!38, !37, i64 24}
!250 = !{!38, !37, i64 16}
!251 = !{!162, !19, i64 116}
!252 = !{!157, !156, i64 0}
!253 = !{!112, !26, i64 24}
!254 = !{!"_ZTSSt4pairIKPK7AstTaskP6AstVarE", !176, i64 0, !210, i64 8}
!255 = !{!254, !210, i64 8}
!256 = !{!210, !210, i64 0}
!257 = !{!"p1 _ZTS10AstNetlist", !23, i64 0}
!258 = !{!"p1 _ZTS11V3HierGraph", !23, i64 0}
!259 = !{!"p1 _ZTS12V3ThreadPool", !23, i64 0}
!260 = !{!"p1 _ZTS8V3LibMap", !23, i64 0}
!261 = !{!"_ZTSN14VWidthMinUsage2enE", !18, i64 0}
!262 = !{!"_ZTS14VWidthMinUsage", !261, i64 0}
!263 = !{!"_ZTSSt13__atomic_baseIiE", !19, i64 0}
!264 = !{!"_ZTSSt6atomicIiE", !263, i64 0}
!265 = !{!"_ZTSSt10_HashtableIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE", !107, i64 0, !26, i64 8, !109, i64 16, !26, i64 24, !111, i64 32, !108, i64 48}
!266 = !{!"_ZTSSt13unordered_mapIPKvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S7_EEE", !265, i64 0}
!267 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !107, i64 0, !26, i64 8, !109, i64 16, !26, i64 24, !111, i64 32, !108, i64 48}
!268 = !{!"_ZTSSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE", !267, i64 0}
!269 = !{!"_ZTSNSt6thread2idE", !26, i64 0}
!270 = !{!"_ZTS8V3Global", !257, i64 0, !258, i64 8, !259, i64 16, !260, i64 24, !262, i64 32, !264, i64 36, !69, i64 40, !69, i64 41, !69, i64 42, !69, i64 43, !69, i64 44, !69, i64 45, !69, i64 46, !69, i64 47, !69, i64 48, !69, i64 49, !69, i64 50, !69, i64 51, !69, i64 52, !69, i64 53, !69, i64 54, !69, i64 55, !69, i64 56, !69, i64 57, !69, i64 58, !69, i64 59, !69, i64 60, !69, i64 61, !69, i64 62, !69, i64 63, !26, i64 64, !266, i64 72, !268, i64 128, !269, i64 184, !76, i64 192}
!271 = !{!270, !257, i64 0}
!272 = !{!217, !94, i64 168}
!273 = !{!"_ZTSSt4lessIP6AstVarE"}
!274 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIP6AstVarEE", !273, i64 0}
!275 = !{!"_ZTSNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEE", !274, i64 0, !39, i64 8}
!276 = !{!"_ZTSSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE", !275, i64 0}
!277 = !{!"_ZTSSt3setIP6AstVarSt4lessIS1_ESaIS1_EE", !276, i64 0}
!278 = !{!"_ZTSSt10_HashtableIPK8AstConstSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE", !107, i64 0, !26, i64 8, !109, i64 16, !26, i64 24, !111, i64 32, !108, i64 48}
!279 = !{!"_ZTSSt13unordered_mapIPK8AstConstNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S8_EEE", !278, i64 0}
!280 = !{!"p1 _ZTS12AstTypeTable", !23, i64 0}
!281 = !{!"p1 _ZTS12AstConstPool", !23, i64 0}
!282 = !{!"p1 _ZTS10AstPackage", !23, i64 0}
!283 = !{!"p1 _ZTS8AstClass", !23, i64 0}
!284 = !{!"p1 _ZTS8AstCFunc", !23, i64 0}
!285 = !{!"p1 _ZTS11AstTopScope", !23, i64 0}
!286 = !{!"_ZTS10AstNetlist", !162, i64 0, !73, i64 152, !73, i64 153, !27, i64 160, !69, i64 192, !19, i64 196, !277, i64 200, !279, i64 248, !280, i64 304, !281, i64 312, !282, i64 320, !282, i64 328, !283, i64 336, !284, i64 344, !284, i64 352, !211, i64 360, !210, i64 368, !211, i64 376, !211, i64 384, !285, i64 392, !211, i64 400}
!287 = !{!286, !283, i64 336}
!288 = !{!"_ZTS9VIsCached", !26, i64 0, !26, i64 7}
!289 = !{!"_ZTS15AstNodeFTaskRef", !209, i64 0, !95, i64 152, !94, i64 160, !27, i64 168, !27, i64 200, !27, i64 232, !69, i64 264, !69, i64 265, !288, i64 272}
!290 = !{!"_ZTSZN15LinkJumpVisitor19handleDisableOnForkEP10AstDisableRKSt6vectorIP8AstBeginSaIS4_EEEUlPK12AstNodeBlockE_", !96, i64 0}
!291 = !{!290, !96, i64 0}
!292 = !{!160, !160, i64 0}
!293 = !{!114, !26, i64 24}
!294 = !{!"_ZTSSt4pairIKPK8AstBeginP6AstVarE", !179, i64 0, !210, i64 8}
!295 = !{!294, !210, i64 8}
!296 = !{!"p2 _ZTS6AstVar", !83, i64 0}
!297 = !{!"_ZTSN9VJoinType2enE", !18, i64 0}
!298 = !{!297, !297, i64 0}
!299 = !{!"_ZTSN8VVarType2enE", !18, i64 0}
!300 = !{!"_ZTS8VVarType", !299, i64 0}
!301 = !{!300, !299, i64 0}
!302 = !{!37, !37, i64 0}
!303 = !{!"_ZTSN10VDirection2enE", !18, i64 0}
!304 = !{!"_ZTS10VDirection", !303, i64 0}
!305 = !{!"_ZTS9VLifetime", !200, i64 0}
!306 = !{!"_ZTSN9VRandAttr2enE", !18, i64 0}
!307 = !{!"_ZTS9VRandAttr", !306, i64 0}
!308 = !{!"p1 _ZTS8AstIface", !23, i64 0}
!309 = !{!"_ZTS6AstVar", !162, i64 0, !27, i64 152, !27, i64 184, !27, i64 216, !300, i64 248, !304, i64 249, !304, i64 250, !305, i64 251, !307, i64 252, !19, i64 256, !69, i64 260, !69, i64 260, !69, i64 260, !69, i64 260, !69, i64 260, !69, i64 260, !69, i64 260, !69, i64 260, !69, i64 261, !69, i64 261, !69, i64 261, !69, i64 261, !69, i64 261, !69, i64 261, !69, i64 261, !69, i64 261, !69, i64 262, !69, i64 262, !69, i64 262, !69, i64 262, !69, i64 262, !69, i64 262, !69, i64 262, !69, i64 262, !69, i64 263, !69, i64 263, !69, i64 263, !69, i64 263, !69, i64 263, !69, i64 263, !69, i64 263, !69, i64 263, !69, i64 264, !69, i64 264, !69, i64 264, !69, i64 264, !69, i64 264, !69, i64 264, !69, i64 264, !69, i64 264, !69, i64 265, !69, i64 265, !69, i64 265, !69, i64 265, !69, i64 265, !69, i64 265, !69, i64 265, !69, i64 265, !69, i64 266, !69, i64 266, !69, i64 266, !69, i64 266, !69, i64 266, !69, i64 266, !69, i64 266, !69, i64 266, !69, i64 267, !69, i64 267, !69, i64 267, !69, i64 267, !69, i64 267, !69, i64 267, !69, i64 267, !308, i64 272}
!310 = !{!309, !19, i64 256}
!311 = !{!309, !308, i64 272}
!312 = !{!43, !43, i64 0}
!313 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !23, i64 0}
!314 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEE", !23, i64 0}
!315 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !313, i64 0, !314, i64 8}
!316 = !{!315, !314, i64 8}
!317 = !{!213, !212, i64 0}
!318 = !{!111, !26, i64 8}
!319 = !{!162, !96, i64 48}
!320 = !{!"branch_weights", i32 2102744406, i32 44739242}
!321 = !{!"branch_weights", i32 255873, i32 127}
!322 = !{!118, !26, i64 24}
!323 = !{!"_ZTSSt4pairIKPK8AstBeginPS0_E", !179, i64 0, !179, i64 8}
!324 = !{!323, !179, i64 8}
!325 = !{!"_ZTSN17FileLineSingleton11MsgEnBitSet4HashE"}
!326 = !{!"_ZTSNSt8__detail21_Hashtable_ebo_helperILi1EN17FileLineSingleton11MsgEnBitSet4HashELb0EEE", !325, i64 0}
!327 = !{!"_ZTSNSt8__detail15_Hash_code_baseIN17FileLineSingleton11MsgEnBitSetESt4pairIKS2_tENS_10_Select1stENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEE", !326, i64 0}
!328 = !{!"_ZTSN17FileLineSingleton11MsgEnBitSet5EqualE"}
!329 = !{!"_ZTSNSt8__detail21_Hashtable_ebo_helperILi0EN17FileLineSingleton11MsgEnBitSet5EqualELb0EEE", !328, i64 0}
!330 = !{!"_ZTSNSt8__detail15_Hashtable_baseIN17FileLineSingleton11MsgEnBitSetESt4pairIKS2_tENS_10_Select1stENS2_5EqualENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEEE", !327, i64 0, !329, i64 1}
!331 = !{!"_ZTSSt10_HashtableIN17FileLineSingleton11MsgEnBitSetESt4pairIKS1_tESaIS4_ENSt8__detail10_Select1stENS1_5EqualENS1_4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE", !330, i64 0, !107, i64 8, !26, i64 16, !109, i64 24, !26, i64 32, !111, i64 40, !108, i64 56}
!332 = !{!331, !107, i64 8}
!333 = !{!331, !26, i64 16}
!334 = !{!"p2 _ZTS10V3LangCode", !83, i64 0}
!335 = !{!"p1 _ZTS10V3LangCode", !23, i64 0}
!336 = !{!"_ZTSSt15_Deque_iteratorI10V3LangCodeRS0_PS0_E", !335, i64 0, !335, i64 8, !335, i64 16, !334, i64 24}
!337 = !{!"_ZTSNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_Deque_impl_dataE", !334, i64 0, !26, i64 8, !336, i64 16, !336, i64 48}
!338 = !{!337, !334, i64 0}
!339 = !{!335, !335, i64 0}
!340 = !{!337, !26, i64 8}
!341 = !{!23, !23, i64 0}
!342 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !83, i64 0}
!343 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !43, i64 0, !43, i64 8, !43, i64 16, !342, i64 24}
!344 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !342, i64 0, !26, i64 8, !343, i64 16, !343, i64 48}
!345 = !{!344, !342, i64 0}
!346 = !{!344, !26, i64 8}
!347 = !{!343, !342, i64 24}
!348 = !{!343, !43, i64 8}
!349 = !{!343, !43, i64 16}
!350 = !{!"p1 _ZTSN12V3NumberData9ValueAndXE", !23, i64 0}
!351 = !{!"_ZTSNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE17_Vector_impl_dataE", !350, i64 0, !350, i64 8, !350, i64 16}
!352 = !{!351, !350, i64 0}
!353 = !{!351, !350, i64 16}
!354 = !{!207, !206, i64 36}
!355 = !{!"llvm.loop.isvectorized", i32 1}
!356 = !{!"llvm.loop.unroll.runtime.disable"}
!357 = !{!351, !350, i64 8}
!358 = distinct !{null}
!359 = !{ptr @_ZN9VNVisitorD2Ev}
!360 = distinct !{!360, i1 true, !"_ZNK12AstNodeBlock4nameB5cxx11Ev"}
!361 = distinct !{!361, !360, !"_ZNK12AstNodeBlock4nameB5cxx11Ev: argument 0"}
!362 = distinct !{!362, i1 true, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE5beginEv"}
!363 = distinct !{!363, !362, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE5beginEv: argument 0"}
!364 = distinct !{!364, i1 true, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE6rbeginEv"}
!365 = distinct !{!365, !364, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE6rbeginEv: argument 0"}
!366 = distinct !{!366, i1 true, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE3endEv"}
!367 = distinct !{!367, !366, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE3endEv: argument 0"}
!368 = distinct !{!368, i1 true, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE4rendEv"}
!369 = distinct !{!369, !368, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE4rendEv: argument 0"}
!370 = distinct !{null}
!371 = distinct !{!371, i1 true, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE5beginEv"}
!372 = distinct !{!372, !371, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE5beginEv: argument 0"}
!373 = distinct !{!373, i1 true, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE6rbeginEv"}
!374 = distinct !{!374, !373, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE6rbeginEv: argument 0"}
!375 = distinct !{!375, i1 true, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE3endEv"}
!376 = distinct !{!376, !375, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE3endEv: argument 0"}
!377 = distinct !{!377, i1 true, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE4rendEv"}
!378 = distinct !{!378, !377, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE4rendEv: argument 0"}
!379 = !{!"_ZTSNSt12_Vector_baseIP8AstBeginSaIS1_EE17_Vector_impl_dataE", !184, i64 0, !184, i64 8, !184, i64 16}
!380 = !{!379, !184, i64 8}
!381 = !{!379, !184, i64 16}
!382 = !{!379, !184, i64 0}
!383 = !{!361}
!384 = !{!365, !363}
!385 = !{!369, !367}
!386 = !{!374, !372}
!387 = !{!378, !376}
!388 = distinct !{!388, i1 true, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE5beginEv"}
!389 = distinct !{!389, !388, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE5beginEv: argument 0"}
!390 = distinct !{!390, i1 true, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE6rbeginEv"}
!391 = distinct !{!391, !390, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE6rbeginEv: argument 0"}
!392 = distinct !{!392, i1 true, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE3endEv"}
!393 = distinct !{!393, !392, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE3endEv: argument 0"}
!394 = distinct !{!394, i1 true, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE4rendEv"}
!395 = distinct !{!395, !394, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE4rendEv: argument 0"}
!396 = !{!391, !389}
!397 = !{!395, !393}
!398 = !{!"p1 _ZTS12VFileContent", !23, i64 0}
!399 = !{!"_ZTS8FileLine", !194, i64 0, !194, i64 2, !69, i64 4, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !194, i64 24, !398, i64 32, !160, i64 40}
!400 = !{!399, !194, i64 0}
!401 = !{!95, !95, i64 0}
!402 = !{!94, !94, i64 0}
!403 = !{!97, !97, i64 0}
!404 = distinct !{!404, i1 true, !"_ZNSt8literals15string_literalsli1sB5cxx11EPKcm"}
!405 = distinct !{!405, !404, !"_ZNSt8literals15string_literalsli1sB5cxx11EPKcm: argument 0"}
!406 = distinct !{!406, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!407 = distinct !{!407, !406, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!408 = !{!405}
!409 = !{!407}
!410 = !{!"p1 _ZTS7AstLoop", !23, i64 0}
!411 = !{!"_ZTS11AstLoopTest", !167, i64 0, !410, i64 152}
!412 = !{!411, !410, i64 152}
!413 = !{!"_ZTSN11VPragmaType2enE", !18, i64 0}
!414 = !{!413, !413, i64 0}
!415 = distinct !{!415, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!416 = distinct !{!416, !415, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!417 = distinct !{!417, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!418 = distinct !{!418, !417, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!419 = !{!416}
!420 = !{!418}
!421 = !{!418, !416}
!422 = !{!"_ZTSSt12_Base_bitsetILm3EE", !18, i64 0}
!423 = !{!"_ZTSSt6bitsetILm146EE", !422, i64 0}
!424 = !{!"_ZTS12VErrorBitSet", !423, i64 0}
!425 = !{!"_ZTSSo"}
!426 = !{!"_ZTSSt13_Ios_Openmode", !18, i64 0}
!427 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !229, i64 0, !426, i64 64, !27, i64 72}
!428 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !425, i64 0, !427, i64 8}
!429 = !{!"_ZTSSt22__recursive_mutex_base", !18, i64 0}
!430 = !{!"_ZTSSt15recursive_mutex", !429, i64 0}
!431 = !{!"_ZTS10V3MutexImpISt15recursive_mutexE", !430, i64 0}
!432 = !{!"_ZTS14V3ErrorGuarded", !69, i64 0, !69, i64 1, !242, i64 8, !69, i64 136, !42, i64 144, !23, i64 192, !69, i64 200, !19, i64 204, !19, i64 208, !424, i64 216, !424, i64 240, !424, i64 264, !19, i64 288, !19, i64 292, !69, i64 296, !428, i64 304, !431, i64 680}
!433 = !{!432, !69, i64 0}
!434 = !{!432, !69, i64 1}
!435 = !{!432, !69, i64 136}
!436 = !{!432, !23, i64 192}
!437 = !{!432, !69, i64 200}
!438 = !{!432, !19, i64 204}
!439 = !{!432, !19, i64 208}
!440 = !{!432, !19, i64 288}
!441 = !{!432, !19, i64 292}
!442 = !{!432, !69, i64 296}
!443 = !{!"p1 _ZTS23__pthread_internal_list", !23, i64 0}
!444 = !{!"_ZTS23__pthread_internal_list", !443, i64 0, !443, i64 8}
!445 = !{!"_ZTS17__pthread_mutex_s", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !194, i64 20, !194, i64 22, !444, i64 24}
!446 = !{!445, !19, i64 16}
!447 = distinct !{!447, i1 true, !"_ZNSt5dequeIPK8FileLineSaIS2_EE5beginEv"}
!448 = distinct !{!448, !447, !"_ZNSt5dequeIPK8FileLineSaIS2_EE5beginEv: argument 0"}
!449 = !{!233, !232, i64 0}
!450 = !{!232, !232, i64 0}
!451 = !{!242, !160, i64 40}
!452 = !{!448}
!453 = !{!83, !83, i64 0}
!454 = distinct !{!454, !136}
!455 = !{!237, !236, i64 8}
!456 = !{!237, !236, i64 16}
!457 = !{!238, !236, i64 16}
!458 = !{!238, !236, i64 48}
!459 = distinct !{!459, !136}
!460 = distinct !{!460, !136}
!461 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!462 = distinct !{!462, !136}
!463 = distinct !{!463, !136}
!464 = distinct !{!464, !136}
!465 = distinct !{!465, !136}
!466 = !{!289, !94, i64 160}
!467 = distinct !{!467, i1 true, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE5beginEv"}
!468 = distinct !{!468, !467, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE5beginEv: argument 0"}
!469 = distinct !{!469, i1 true, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE6rbeginEv"}
!470 = distinct !{!470, !469, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE6rbeginEv: argument 0"}
!471 = distinct !{!471, i1 true, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE3endEv"}
!472 = distinct !{!472, !471, !"_ZN5vlstd15reverse_wrapperISt6vectorIP12AstNodeBlockSaIS3_EEE3endEv: argument 0"}
!473 = distinct !{!473, i1 true, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE4rendEv"}
!474 = distinct !{!474, !473, !"_ZNKSt6vectorIP12AstNodeBlockSaIS1_EE4rendEv: argument 0"}
!475 = !{!184, !184, i64 0}
!476 = !{!470, !468}
!477 = !{!474, !472}
!478 = distinct !{!478, !136}
!479 = !{!296, !296, i64 0}
!480 = !{!"_ZTSN8VSigning2enE", !18, i64 0}
!481 = !{!"_ZTS8VSigning", !480, i64 0}
!482 = !{!"_ZTS12AstNodeDType", !162, i64 0, !19, i64 152, !19, i64 156, !481, i64 160, !69, i64 161}
!483 = !{!"_ZTS16AstClassRefDType", !482, i64 0, !283, i64 168, !94, i64 176}
!484 = !{!483, !283, i64 168}
!485 = !{!483, !94, i64 176}
!486 = !{!"_ZTS13AstQueueDType", !482, i64 0, !159, i64 168}
!487 = !{!486, !159, i64 168}
!488 = distinct !{!488, !136}
!489 = distinct !{!489, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!490 = distinct !{!490, !489, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!491 = distinct !{!491, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!492 = distinct !{!492, !491, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!493 = distinct !{!493, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!494 = distinct !{!494, !493, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!495 = !{!492, !490}
!496 = !{!494}
!497 = distinct !{!497, !136}
!498 = distinct !{!498, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!499 = distinct !{!499, !498, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!500 = distinct !{!500, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!501 = distinct !{!501, !500, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!502 = !{!499}
!503 = !{!501}
!504 = !{!501, !499}
!505 = !{!313, !313, i64 0}
!506 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjE", !27, i64 0, !19, i64 32}
!507 = !{!506, !19, i64 32}
!508 = distinct !{!508, !136}
!509 = distinct !{null, null, null, null}
!510 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 8, !19, i64 12}
!511 = !{!510, !19, i64 8}
!512 = !{!510, !19, i64 12}
!513 = distinct !{null}
!514 = !{!289, !69, i64 264}
!515 = !{!289, !69, i64 265}
!516 = distinct !{!516, !136}
!517 = !{!180, !176, i64 0}
!518 = distinct !{!518, !136}
!519 = !{!116, !108, i64 48}
!520 = distinct !{!520, !136}
!521 = !{!254, !176, i64 0}
!522 = distinct !{!522, !136}
!523 = !{!112, !108, i64 48}
!524 = distinct !{!524, i1 true, !"_ZNK12AstNodeFTask4nameB5cxx11Ev"}
!525 = distinct !{!525, !524, !"_ZNK12AstNodeFTask4nameB5cxx11Ev: argument 0"}
!526 = !{!525}
!527 = !{!"_ZTS10AstTaskRef", !289, i64 0, !69, i64 280}
!528 = !{!527, !69, i64 280}
!529 = !{!289, !95, i64 152}
!530 = distinct !{!530, !136}
!531 = distinct !{!531, !136}
!532 = distinct !{!532, !136}
!533 = !{!323, !179, i64 0}
!534 = distinct !{!534, !136}
!535 = !{!118, !108, i64 48}
!536 = !{!"_ZTSZN15LinkJumpVisitor29getOrCreateBeginDisableQueuepEP8AstBeginP8FileLineEUlP7AstForkE_", !236, i64 0, !296, i64 8}
!537 = !{!536, !236, i64 0}
!538 = !{i64 8}
!539 = !{!536, !296, i64 8}
!540 = distinct !{!540, !136}
!541 = !{!294, !179, i64 0}
!542 = distinct !{!542, !136}
!543 = !{!114, !108, i64 48}
!544 = distinct !{!544, !136}
!545 = !{!"p1 _ZTSN17FileLineSingleton11MsgEnBitSetE", !23, i64 0}
!546 = !{!"_ZTSNSt12_Vector_baseIN17FileLineSingleton11MsgEnBitSetESaIS1_EE17_Vector_impl_dataE", !545, i64 0, !545, i64 8, !545, i64 16}
!547 = !{!546, !545, i64 0}
!548 = !{!546, !545, i64 16}
!549 = !{!331, !108, i64 24}
!550 = !{!337, !334, i64 40}
!551 = !{!337, !334, i64 72}
!552 = distinct !{!552, i1 true, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!553 = distinct !{!553, !552, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!554 = distinct !{!554, i1 true, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!555 = distinct !{!555, !554, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!556 = !{!553}
!557 = !{!555}
!558 = !{!344, !342, i64 40}
!559 = !{!344, !342, i64 72}
!560 = distinct !{!560, !136}
!561 = !{!344, !43, i64 16}
!562 = !{!344, !43, i64 48}
!563 = distinct !{!563, !136}
!564 = !{!336, !334, i64 24}
!565 = !{!336, !335, i64 8}
!566 = !{!336, !335, i64 16}
!567 = !{!337, !335, i64 16}
!568 = !{!337, !335, i64 48}
!569 = distinct !{!569, !136}
!570 = distinct !{!570, !136}
!571 = !{!343, !43, i64 0}
!572 = distinct !{!572, !136}
!573 = distinct !{!573, i1 true, !"_ZNK6AstVar4nameB5cxx11Ev"}
!574 = distinct !{!574, !573, !"_ZNK6AstVar4nameB5cxx11Ev: argument 0"}
!575 = !{!202, !202, i64 0}
!576 = !{!270, !69, i64 40}
!577 = !{!574}
!578 = !{!"_ZTSN12V3NumberData9ValueAndXE", !19, i64 0, !19, i64 4}
!579 = !{!578, !19, i64 0}
!580 = distinct !{!580, !136, !355, !356}
!581 = distinct !{!581, !136, !356, !355}
!582 = distinct !{!582, !136}
end_hunk_1
