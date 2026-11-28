Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3WidthSel?download=true
inline.NumInlined: 2000
inline.NumDeleted: 381
begin_hunk_0_@_ZNK13AstSelExtract6rightpEv:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13AstSelExtract5frompEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15WidthSelVisitor22checkConstantOrReplaceEP7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.thread, label %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit

_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit:          ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 8, !tbaa !93
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 121
  br i1 %i.b, label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit, label %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.thread

_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.thread:   ; preds = %bb.a, %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.d = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !131

bb.b:                                             ; preds = %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.thread
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #21 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

common.resume:                                    ; preds = %bb.l, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.ap, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit:            ; preds = %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.thread, %bb.b, %bb.d
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.8, ptr nonnull @.str.9, i32 481, ptr null)
  %i.j = load ptr, ptr %2, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j, i64 noundef %i.l)
  tail call void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.m)
  %i.n = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #26 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96
  invoke void @_ZN8AstConstC2EP8FileLineNS_9Unsized32Ej(ptr noundef nonnull align 8 dereferenceable(208) %i.n, ptr noundef %i.p, i32 noundef 1)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  tail call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.n)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %.not.i.i9 = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %1, ptr %i.s, align 8, !tbaa !121
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.r, align 8, !tbaa !120
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !25   ; 4 uses
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.i, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #25
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #26 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store ptr %1, ptr %i.ai, align 8, !tbaa !121
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.j, label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.an) #22
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.ah, ptr %i.q, align 8, !tbaa !25
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ao, ptr %i.t, align 8, !tbaa !26
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.l:                                             ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 208) #22
  br label %common.resume

_ZN9VNDeleter11pushDeletepEP7AstNode.exit:        ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.g, %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !93
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11AstSliceSelC2EP8FileLineP11AstNodeExprRK9VNumRange(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #26 ; 10 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !95
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i16 121, ptr noundef %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %i.b, i32 %i.d)
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i32 noundef 32, i32 noundef %..i, i1 noundef zeroext true)
          to label %.noexc11 unwind label %bb.f

.noexc11:                                         ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.g = load i32, ptr %i.f, align 8, !tbaa !158
  %i.h = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i32 noundef %i.g, i32 noundef 0, i8 0)
          to label %.noexc.i unwind label %bb.c   ; 2 uses

.noexc.i:                                         ; preds = %.noexc11
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102
  %.not.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i, label %_ZN8AstConstC2EP8FileLinej.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !102
  %i.k = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  br label %_ZN8AstConstC2EP8FileLinej.exit

bb.c:                                             ; preds = %.noexc11
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #21
  br label %.body

_ZN8AstConstC2EP8FileLinej.exit:                  ; preds = %bb.b, %.noexc.i
  %i.n = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #26 ; 10 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !94
  %i.p = load i32, ptr %i.c, align 4, !tbaa !95
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.n, i16 121, ptr noundef %1)
          to label %.noexc14 unwind label %bb.g

.noexc14:                                         ; preds = %_ZN8AstConstC2EP8FileLinej.exit
  %sub.i = sub nsw i32 %i.o, %i.p
  %i.q = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %i.r = add nuw nsw i32 %i.q, 1
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.n, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(208) %i.n, i32 noundef 32, i32 noundef %i.r, i1 noundef zeroext true)
          to label %.noexc15 unwind label %bb.g

.noexc15:                                         ; preds = %.noexc14
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.u = load i32, ptr %i.t, align 8, !tbaa !158
  %i.v = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(208) %i.n, i32 noundef %i.u, i32 noundef 0, i8 0)
          to label %.noexc.i12 unwind label %bb.e ; 2 uses

.noexc.i12:                                       ; preds = %.noexc15
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102
  %.not.i.i.i13 = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i.i13, label %_ZN8AstConstC2EP8FileLinej.exit18, label %bb.d

bb.d:                                             ; preds = %.noexc.i12
  store ptr %i.v, ptr %i.w, align 8, !tbaa !102
  %i.y = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  br label %_ZN8AstConstC2EP8FileLinej.exit18

bb.e:                                             ; preds = %.noexc15
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.s) #21
  br label %.body

_ZN8AstConstC2EP8FileLinej.exit18:                ; preds = %bb.d, %.noexc.i12
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %0, i16 304, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 440) (i8, ptr @_ZTV12AstNodeTriop, i64 16), ptr %0, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.ab, align 8
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %2)
  tail call void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.a)
  tail call void @_ZN7AstNode7setOp3pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.n)
  store ptr getelementptr inbounds nuw inrange(-16, 440) (i8, ptr @_ZTV11AstSliceSel, i64 16), ptr %0, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !92
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.noexc14, %_ZN8AstConstC2EP8FileLinej.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.e, %bb.f, %bb.c
  %.sink = phi ptr [ %i.a, %bb.f ], [ %i.a, %bb.c ], [ %i.n, %bb.e ], [ %i.n, %bb.g ]
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.m, %bb.c ], [ %i.aa, %bb.e ], [ %i.ae, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 208) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN15WidthSelVisitor10sliceDTypeEP17AstPackArrayDTypeii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.VNumRange, align 4           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK17AstNodeArrayDType4leftEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.e, align 8, !tbaa !93
  %i.f = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i, 121
  br i1 %i.f, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, label %_ZNK17AstNodeArrayDType4leftEv.exit.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.h = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.g)
  %i.i = zext i32 %i.h to i64
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !87
  br label %_ZNK17AstNodeArrayDType4leftEv.exit.i

_ZNK17AstNodeArrayDType4leftEv.exit.i:            ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %bb.b, %bb.a
  %i.j = phi ptr [ %.pre.i, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ], [ %i.b, %bb.a ], [ %i.b, %bb.b ] ; 3 uses
  %.sroa.0.0.insert.ext.i = phi i64 [ %i.i, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ], [ 0, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i, label %_ZNK17AstNodeArrayDType9declRangeEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK17AstNodeArrayDType4leftEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i2.i = load i16, ptr %i.m, align 8, !tbaa !93
  %i.n = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i2.i, 121
  br i1 %i.n, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i, label %_ZNK17AstNodeArrayDType9declRangeEv.exit

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.p = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw i64 %i.q, 32
  %i.s = or disjoint i64 %i.r, %.sroa.0.0.insert.ext.i
  %.pre58.pre = load ptr, ptr %i.a, align 8, !tbaa !87
  br label %_ZNK17AstNodeArrayDType9declRangeEv.exit

_ZNK17AstNodeArrayDType9declRangeEv.exit:         ; preds = %_ZNK17AstNodeArrayDType4leftEv.exit.i, %bb.c, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i
  %.pre58 = phi ptr [ %.pre58.pre, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i ], [ %i.j, %_ZNK17AstNodeArrayDType4leftEv.exit.i ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.2.0.insert.ext.i = phi i64 [ %i.s, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i ], [ %.sroa.0.0.insert.ext.i, %_ZNK17AstNodeArrayDType4leftEv.exit.i ], [ %.sroa.0.0.insert.ext.i, %bb.c ] ; 2 uses
  %.sroa.055.0.extract.trunc = trunc i64 %.sroa.2.0.insert.ext.i to i32
  %.sroa.055.4.extract.shift = lshr i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.055.4.extract.trunc = trunc nuw i64 %.sroa.055.4.extract.shift to i32
  %sub.i = sub nsw i32 %.sroa.055.0.extract.trunc, %.sroa.055.4.extract.trunc
  %i.t = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %i.u = sub nsw i32 %2, %3
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK17AstNodeArrayDType9declRangeEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.pre58, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i27, label %_ZNK17AstNodeArrayDType4leftEv.exit.i29, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i28 = load i16, ptr %i.y, align 8, !tbaa !93
  %i.z = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i28, 121
  br i1 %i.z, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i37, label %_ZNK17AstNodeArrayDType4leftEv.exit.i29

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i37: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.ab = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.aa)
  %i.ac = zext i32 %i.ab to i64
  %.pre.i38 = load ptr, ptr %i.a, align 8, !tbaa !87
  br label %_ZNK17AstNodeArrayDType4leftEv.exit.i29

_ZNK17AstNodeArrayDType4leftEv.exit.i29:          ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i37, %bb.e, %bb.d
  %i.ad = phi ptr [ %.pre.i38, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i37 ], [ %.pre58, %bb.d ], [ %.pre58, %bb.e ]
  %.sroa.0.0.insert.ext.i30 = phi i64 [ %i.ac, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i37 ], [ 0, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i31 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i1.i31, label %_ZNK17AstNodeArrayDType9declRangeEv.exit39, label %bb.f

bb.f:                                             ; preds = %_ZNK17AstNodeArrayDType4leftEv.exit.i29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i2.i32 = load i16, ptr %i.ag, align 8, !tbaa !93
  %i.ah = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i2.i32, 121
  br i1 %i.ah, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i36, label %_ZNK17AstNodeArrayDType9declRangeEv.exit39

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i36: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.aj = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ai)
  %i.ak = zext i32 %i.aj to i64
  %i.al = shl nuw i64 %i.ak, 32
  %i.am = or disjoint i64 %i.al, %.sroa.0.0.insert.ext.i30
  br label %_ZNK17AstNodeArrayDType9declRangeEv.exit39

_ZNK17AstNodeArrayDType9declRangeEv.exit39:       ; preds = %_ZNK17AstNodeArrayDType4leftEv.exit.i29, %bb.f, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i36
  %.sroa.2.0.insert.ext.i33 = phi i64 [ %i.am, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i36 ], [ %.sroa.0.0.insert.ext.i30, %_ZNK17AstNodeArrayDType4leftEv.exit.i29 ], [ %.sroa.0.0.insert.ext.i30, %bb.f ] ; 2 uses
  %.sroa.053.0.extract.trunc = trunc i64 %.sroa.2.0.insert.ext.i33 to i32
  %.sroa.053.4.extract.shift = lshr i64 %.sroa.2.0.insert.ext.i33, 32
  %.sroa.053.4.extract.trunc = trunc nuw i64 %.sroa.053.4.extract.shift to i32
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.sroa.053.0.extract.trunc, i32 %.sroa.053.4.extract.trunc)
  %i.an = icmp eq i32 %..i, %3
  br i1 %i.an, label %bb.p, label %_ZNK17AstNodeArrayDType9declRangeEv.exit39..critedge_crit_edge

_ZNK17AstNodeArrayDType9declRangeEv.exit39..critedge_crit_edge: ; preds = %_ZNK17AstNodeArrayDType9declRangeEv.exit39
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !87
  br label %.critedge

.critedge:                                        ; preds = %_ZNK17AstNodeArrayDType9declRangeEv.exit39..critedge_crit_edge, %_ZNK17AstNodeArrayDType9declRangeEv.exit
  %i.ao = phi ptr [ %.pre, %_ZNK17AstNodeArrayDType9declRangeEv.exit39..critedge_crit_edge ], [ %.pre58, %_ZNK17AstNodeArrayDType9declRangeEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i.i40 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i40, label %_ZNK17AstNodeArrayDType4leftEv.exit.i42, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i41 = load i16, ptr %i.ar, align 8, !tbaa !93
  %i.as = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i41, 121
  br i1 %i.as, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i50, label %_ZNK17AstNodeArrayDType4leftEv.exit.i42

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i50: ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  %i.au = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.at)
  %i.av = zext i32 %i.au to i64
  %.pre.i51 = load ptr, ptr %i.a, align 8, !tbaa !87
  br label %_ZNK17AstNodeArrayDType4leftEv.exit.i42

_ZNK17AstNodeArrayDType4leftEv.exit.i42:          ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i50, %bb.g, %.critedge
  %i.aw = phi ptr [ %.pre.i51, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i50 ], [ %i.ao, %.critedge ], [ %i.ao, %bb.g ]
  %.sroa.0.0.insert.ext.i43 = phi i64 [ %i.av, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i50 ], [ 0, %.critedge ], [ 0, %bb.g ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i44 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i1.i44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK17AstNodeArrayDType4leftEv.exit.i42
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i2.i45 = load i16, ptr %i.az, align 8, !tbaa !93
  %i.ba = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i2.i45, 121
  br i1 %i.ba, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i49, label %bb.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i49: ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.bc = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bb)
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw i64 %i.bd, 32
  %i.bf = or disjoint i64 %i.be, %.sroa.0.0.insert.ext.i43
  br label %bb.i

bb.i:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i49, %bb.h, %_ZNK17AstNodeArrayDType4leftEv.exit.i42
  %.sroa.2.0.insert.ext.i46 = phi i64 [ %i.bf, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i49 ], [ %.sroa.0.0.insert.ext.i43, %_ZNK17AstNodeArrayDType4leftEv.exit.i42 ], [ %.sroa.0.0.insert.ext.i43, %bb.h ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.2.0.insert.ext.i46 to i32
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.2.0.insert.ext.i46, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.bg = icmp slt i32 %.sroa.0.0.extract.trunc, %.sroa.0.4.extract.trunc ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %2) ; 2 uses
  %spec.select6.i.i = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 2 uses
  %i.bj = select i1 %i.bg, i32 %spec.select6.i.i, i32 %spec.select.i.i
  store i32 %i.bj, ptr %4, align 4, !tbaa !94
  %i.bk = select i1 %i.bg, i32 %spec.select.i.i, i32 %spec.select6.i.i
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !95
  store i8 1, ptr %i.bi, align 4, !tbaa !130
  %i.bl = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #26 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !96
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !101 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = select i1 %.not.i, ptr %i.br, ptr %i.bp
  %i.bt = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26
          to label %bb.j unwind label %bb.m       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !96
  invoke void @_ZN8AstRangeC2EP8FileLineRK9VNumRange(ptr noundef nonnull align 8 dereferenceable(160) %i.bt, ptr noundef %i.bu, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN17AstPackArrayDTypeC2EP8FileLineP12AstNodeDTypeP8AstRange(ptr noundef nonnull align 8 dereferenceable(176) %i.bl, ptr noundef %i.bn, ptr noundef %i.bs, ptr noundef nonnull %i.bt)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr @v3Global, align 8, !tbaa !189
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 304
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !288
  call void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(464) %i.bx, ptr noundef nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.p

bb.m:                                             ; preds = %bb.k, %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 160) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.by, %bb.m ], [ %i.bz, %bb.n ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 176) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZNK17AstNodeArrayDType9declRangeEv.exit39, %bb.l
  %.025 = phi ptr [ %i.bl, %bb.l ], [ %1, %_ZNK17AstNodeArrayDType9declRangeEv.exit39 ]
  ret ptr %.025
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode4op3pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI8AstConstS_EEbPKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !93
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 121
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

declare void @_ZN7AstNode7setOp3pEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8AstRangeC2EP8FileLineRK9VNumRange(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 402, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTV8AstRange, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.a, align 8, !tbaa !291
  %i.b = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #26 ; 10 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !94
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.b, i16 121, ptr noundef %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i32 noundef 32, i32 noundef %i.c, i1 noundef zeroext true)
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.f = load i32, ptr %i.e, align 8, !tbaa !158
  %i.g = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(208) %i.b, i32 noundef %i.f, i32 noundef 0, i8 0)
          to label %.noexc.i unwind label %bb.c   ; 2 uses

.noexc.i:                                         ; preds = %.noexc9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102
  %.not.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i, label %_ZN8AstConstC2EP8FileLinej.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !102
  %i.j = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  br label %_ZN8AstConstC2EP8FileLinej.exit

bb.c:                                             ; preds = %.noexc9
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #21
  br label %.body

_ZN8AstConstC2EP8FileLinej.exit:                  ; preds = %bb.b, %.noexc.i
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.b)
  %i.m = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #26 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !95
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.m, i16 121, ptr noundef %1)
          to label %.noexc13 unwind label %bb.g

.noexc13:                                         ; preds = %_ZN8AstConstC2EP8FileLinej.exit
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.m, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(208) %i.m, i32 noundef 32, i32 noundef %i.o, i1 noundef zeroext true)
          to label %.noexc14 unwind label %bb.g

.noexc14:                                         ; preds = %.noexc13
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.r = load i32, ptr %i.q, align 8, !tbaa !158
  %i.s = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(208) %i.m, i32 noundef %i.r, i32 noundef 0, i8 0)
          to label %.noexc.i11 unwind label %bb.e ; 2 uses

.noexc.i11:                                       ; preds = %.noexc14
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102
  %.not.i.i.i12 = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i.i12, label %_ZN8AstConstC2EP8FileLinej.exit17, label %bb.d

bb.d:                                             ; preds = %.noexc.i11
  store ptr %i.s, ptr %i.t, align 8, !tbaa !102
  %i.v = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  br label %_ZN8AstConstC2EP8FileLinej.exit17

bb.e:                                             ; preds = %.noexc14
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.p) #21
  br label %.body

_ZN8AstConstC2EP8FileLinej.exit17:                ; preds = %bb.d, %.noexc.i11
  tail call void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.m)
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.noexc13, %_ZN8AstConstC2EP8FileLinej.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.e, %bb.f, %bb.c
  %.sink = phi ptr [ %i.b, %bb.f ], [ %i.b, %bb.c ], [ %i.m, %bb.e ], [ %i.m, %bb.g ]
  %.pn = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.l, %bb.c ], [ %i.x, %bb.e ], [ %i.z, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 208) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN17AstPackArrayDTypeC2EP8FileLineP12AstNodeDTypeP8AstRange(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(176) %0, i16 98, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV17AstPackArrayDType, i64 16), ptr %0, align 8, !tbaa !20
  store ptr %2, ptr %i.b, align 8, !tbaa !101
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %_ZN17AstPackArrayDType6rangepEP8AstRange.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %3)
  br label %_ZN17AstPackArrayDType6rangepEP8AstRange.exit

_ZN17AstPackArrayDType6rangepEP8AstRange.exit:    ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %.not.i = icmp eq ptr %i.d, %0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN17AstPackArrayDType6rangepEP8AstRange.exit
  store ptr %0, ptr %i.c, align 8, !tbaa !102
  %i.e = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %_ZN17AstPackArrayDType6rangepEP8AstRange.exit, %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %.not.i10 = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = select i1 %.not.i10, ptr %i.i, ptr %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = load i32, ptr %i.k, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.o, align 8, !tbaa !93
  %i.p = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i, 121
  br i1 %i.p, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.r = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.q)
  br label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZNK8AstRange9leftConstEv.exit.i.i:               ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %bb.e, %bb.d
  %i.s = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ %i.r, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !87   ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i4.i.i, label %_ZNK8AstRange7hiConstEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i.i = load i16, ptr %i.v, align 8, !tbaa !93
  %i.w = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i.i, 121
  br i1 %i.w, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, label %_ZNK8AstRange7hiConstEv.exit.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.y = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.x)
  br label %_ZNK8AstRange7hiConstEv.exit.i

_ZNK8AstRange7hiConstEv.exit.i:                   ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, %bb.f, %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.z = phi i32 [ 0, %bb.f ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i.i ], [ %i.y, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i ]
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !86  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1.i, label %_ZNK8AstRange9leftConstEv.exit.i3.i, label %bb.g

bb.g:                                             ; preds = %_ZNK8AstRange7hiConstEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i2.i = load i16, ptr %i.ab, align 8, !tbaa !93
  %i.ac = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i2.i, 121
  br i1 %i.ac, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i, label %_ZNK8AstRange9leftConstEv.exit.i3.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ae = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ad)
  br label %_ZNK8AstRange9leftConstEv.exit.i3.i

_ZNK8AstRange9leftConstEv.exit.i3.i:              ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i, %bb.g, %_ZNK8AstRange7hiConstEv.exit.i
  %i.af = phi i32 [ 0, %bb.g ], [ 0, %_ZNK8AstRange7hiConstEv.exit.i ], [ %i.ae, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i ]
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !87  ; 3 uses
  %.not.i.i4.i4.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i4.i4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i3.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i5.i = load i16, ptr %i.ah, align 8, !tbaa !93
  %i.ai = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i5.i, 121
  br i1 %i.ai, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i, label %bb.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %i.ak = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.aj)
  br label %bb.i

bb.i:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i, %bb.h, %_ZNK8AstRange9leftConstEv.exit.i3.i
  %i.al = phi i32 [ 0, %bb.h ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i3.i ], [ %i.ak, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i ]
  %i.am = tail call noundef i32 @llvm.smax.i32(i32 %i.s, i32 %i.z)
  %i.an = tail call noundef i32 @llvm.smin.i32(i32 %i.af, i32 %i.al)
  %i.ao = add i32 %i.am, 1
  %i.ap = sub i32 %i.ao, %i.an
  %i.aq = mul nsw i32 %i.ap, %i.l                 ; 2 uses
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8V3Global5rootpEv(ptr noundef nonnull align 8 dereferenceable(1920) %0) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !189
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8AstRange13elementsConstEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.c, align 8, !tbaa !93
  %i.d = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i, 121
  br i1 %i.d, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i, label %_ZNK8AstRange9leftConstEv.exit.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.f = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  br label %_ZNK8AstRange9leftConstEv.exit.i

_ZNK8AstRange9leftConstEv.exit.i:                 ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i, %bb.b, %bb.a
  %i.g = phi i32 [ %i.f, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i4.i, label %_ZNK8AstRange7hiConstEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i = load i16, ptr %i.j, align 8, !tbaa !93
  %i.k = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i, 121
  br i1 %i.k, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i, label %_ZNK8AstRange7hiConstEv.exit

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.m = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  br label %_ZNK8AstRange7hiConstEv.exit

_ZNK8AstRange7hiConstEv.exit:                     ; preds = %_ZNK8AstRange9leftConstEv.exit.i, %bb.c, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i
  %i.n = phi i32 [ %i.m, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i ], [ 0, %bb.c ]
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i1, label %_ZNK8AstRange9leftConstEv.exit.i3, label %bb.d

bb.d:                                             ; preds = %_ZNK8AstRange7hiConstEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i2 = load i16, ptr %i.p, align 8, !tbaa !93
  %i.q = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i2, 121
  br i1 %i.q, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7, label %_ZNK8AstRange9leftConstEv.exit.i3

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.s = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.r)
  br label %_ZNK8AstRange9leftConstEv.exit.i3

_ZNK8AstRange9leftConstEv.exit.i3:                ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7, %bb.d, %_ZNK8AstRange7hiConstEv.exit
  %i.t = phi i32 [ %i.s, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7 ], [ 0, %_ZNK8AstRange7hiConstEv.exit ], [ 0, %bb.d ]
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i4.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i4.i4, label %_ZNK8AstRange7loConstEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i5 = load i16, ptr %i.v, align 8, !tbaa !93
  %i.w = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i5, 121
  br i1 %i.w, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6, label %_ZNK8AstRange7loConstEv.exit

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.y = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.x)
  br label %_ZNK8AstRange7loConstEv.exit

end_hunk_0
