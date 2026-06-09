inline.NumInlined: 3566
inline.NumDeleted: 1489
begin_hunk_0_@_ZN6google8protobuf2io7Printer3SubC2EOS3_:bb.a
  store i64 0, ptr %i.by, align 8, !tbaa !48
  store i8 0, ptr %i.br, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cd = load i64, ptr %i.cc, align 8
  store i64 %i.cd, ptr %i.cb, align 8
  store i8 1, ptr %i.be, align 8, !tbaa !63
  br label %_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit

_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit, %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare void @_ZNK6google8protobuf15FieldDescriptor15GetLocationPathEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSD_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !42
  %i.f = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  store ptr %i.f, ptr %3, align 8, !tbaa !45
  %i.m = load i64, ptr %i.g, align 8, !tbaa !47
  store i64 %i.m, ptr %i.e, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = phi i64 [ %i.j, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !48
  store ptr %i.g, ptr %1, align 8, !tbaa !45
  store i64 0, ptr %i.o, align 8, !tbaa !48
  store i8 0, ptr %i.g, align 8, !tbaa !47
  invoke void @_ZN6google8protobuf2io7Printer3SubC2IRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_OT_(ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSC_EEEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8, !tbaa !47
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.q

_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSC_EEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSC_EEEvPT_DpOT0_.exit
  %i.x = load i64, ptr %i.e, align 8, !tbaa !47
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSC_EEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 184 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !137
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSD_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre8 = load ptr, ptr %i.a, align 8, !tbaa !357
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %i.ab = phi ptr [ %.pre8, %bb.e ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -184
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE30find_or_prepare_insert_non_sooIS9_EESD_INSH_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, 87
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !135, !noalias !358
  %i.k = and i64 %i.j, 65535
  %i.l = load i64, ptr %1, align 8, !tbaa !131, !noalias !358 ; 3 uses
  %i.m = lshr i64 %i.h, 7
  %i.n = xor i64 %i.k, %i.m
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 127
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !47 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = load ptr, ptr %2, align 8
  %i.v = load i64, ptr %i.d, align 8              ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.az, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.l                 ; 5 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.7.0
  %i.z = load <16 x i8>, ptr %i.y, align 1, !tbaa !47 ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.t, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ab, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.an, %.critedge ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.7.0, %i.ad
  %i.af = and i64 %i.ae, %i.l                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !48
  %i.ak = icmp eq i64 %i.aj, %i.v
  br i1 %i.ak, label %bb.c, label %.critedge, !prof !361

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.w, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.u, i64 %i.v)
  %i.al = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.am = add i16 %.sroa.033.059, -1
  %i.an = and i16 %i.am, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.an, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ao = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ap, 0
  br i1 %.not51, label %bb.d, label %.thread, !prof !183

.thread:                                          ; preds = %.critedge18
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.ay = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bb, align 8, !tbaa !172
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %1, align 1
  %i.c = zext i32 %.0.copyload.i.i to i64
  %i.d = shl nuw i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.0.copyload.i4.i = load i32, ptr %i.f, align 1
  %i.g = zext i32 %.0.copyload.i4.i to i64
  %i.h = or disjoint i64 %i.d, %i.g
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !47
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !47
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !47
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.e ]
  %i.w = xor i64 %.0.i, %0
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %2, 17
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.0.copyload.i.i4.i = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.i.i, %0
  %i.ad = xor i64 %.0.copyload.i.i4.i, -2543921745674291987
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %2, 33
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i20 = load i64, ptr %1, align 1
  %i.al = xor i64 %.0.copyload.i.i20, 1376283091369227076
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i21 = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.0.copyload.i.i21, %0
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i22 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i22, 589684135938649225
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i.i23 = load i64, ptr %i.au, align 1
  %i.av = xor i64 %.0.copyload.i.i23, %0
  %i.aw = zext i64 %i.at to i128
  %i.ax = zext i64 %i.av to i128
  %i.ay = mul nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = xor i128 %i.ay, %i.aq
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.aq, %i.ba
  %i.bc = xor i128 %i.bb, %i.ay
  %i.bd = trunc i128 %i.bc to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !183

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #20

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.a, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE19transfer_n_slots_fnEPvSI_SI_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit
  %.014 = phi i64 [ %i.p, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.r, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit ], [ %1, %bb.a ] ; 6 uses
  %.01012 = phi ptr [ %i.q, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit ], [ %2, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 3 uses
  store ptr %i.a, ptr %.0913, align 8, !tbaa !42
  %i.b = load ptr, ptr %.01012, align 8, !tbaa !45 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.b, ptr %.0913, align 8, !tbaa !45
  %i.i = load i64, ptr %i.c, align 8, !tbaa !47
  store i64 %i.i, ptr %i.a, align 8, !tbaa !47
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8transferEPNS1_13map_slot_typeIS9_mEESK_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01012, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !48
  store ptr %i.c, ptr %.01012, align 8, !tbaa !45
  store i64 0, ptr %i.j, align 8, !tbaa !48
  store i8 0, ptr %i.c, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.01012, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !176
  store i64 %i.o, ptr %i.m, align 8, !tbaa !176
  %i.p = add i64 %.014, -1                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.0913, i64 40
end_hunk_0
begin_hunk_1_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2EOSC_:bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !45
  %i.i = load i64, ptr %i.c, align 8, !tbaa !47
  store i64 %i.i, ptr %i.a, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !48
  store ptr %i.c, ptr %1, align 8, !tbaa !45
  store i64 0, ptr %i.j, align 8, !tbaa !48
  store i8 0, ptr %i.c, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 -1, ptr %i.o, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !53
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.m, align 8, !tbaa !42
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.t, ptr %i.m, align 8, !tbaa !45
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !47
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !48
  store ptr %i.u, ptr %i.n, align 8, !tbaa !45
  store i64 0, ptr %i.ab, align 8, !tbaa !48
  store i8 0, ptr %i.u, align 8, !tbaa !47
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.m, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !71
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.m, ptr noundef nonnull align 8 dereferenceable(73) %i.n, i64 16, i1 false), !tbaa.struct !72
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !71
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i: ; preds = %bb.f, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i
  %i.al = load i8, ptr %i.p, align 8, !tbaa !53
  store i8 %i.al, ptr %i.o, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !42
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !45 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !48 ; 2 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !45
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !47
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !47
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit

_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !48
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !45
  store i64 0, ptr %i.ax, align 8, !tbaa !48
  store i8 0, ptr %i.aq, align 8, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !55, !range !73, !noundef !74
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !55
  ret void
}

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE30find_or_prepare_insert_non_sooIS9_EESJ_INSN_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.135") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, 87
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !135, !noalias !482
  %i.k = and i64 %i.j, 65535
  %i.l = load i64, ptr %1, align 8, !tbaa !131, !noalias !482 ; 3 uses
  %i.m = lshr i64 %i.h, 7
  %i.n = xor i64 %i.k, %i.m
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 127
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !47 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = load ptr, ptr %2, align 8
  %i.v = load i64, ptr %i.d, align 8              ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.az, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.l                 ; 5 uses
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.7.0
  %i.z = load <16 x i8>, ptr %i.y, align 1, !tbaa !47 ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.t, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ab, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.an, %.critedge ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.7.0, %i.ad
  %i.af = and i64 %i.ae, %i.l                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !48
  %i.ak = icmp eq i64 %i.aj, %i.v
  br i1 %i.ak, label %bb.c, label %.critedge, !prof !361

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.w, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.u, i64 %i.v)
  %i.al = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.am = add i16 %.sroa.033.059, -1
  %i.an = and i16 %i.am, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.an, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ao = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ap, 0
  br i1 %.not51, label %bb.d, label %.thread, !prof !183

.thread:                                          ; preds = %.critedge18
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.ay = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bb, align 8, !tbaa !437
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEE9constructISaISt4pairIKS8_SE_EEJRKSt21piecewise_construct_tSt5tupleIJOS8_EESO_IJOSE_EEEEEvPT_PNS1_13map_slot_typeIS8_SE_EEDpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !422
  %i.b = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.c = load i64, ptr %4, align 8, !tbaa !429
  %i.d = inttoptr i64 %i.c to ptr                 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !42
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %1, align 8, !tbaa !45
  %i.m = load i64, ptr %i.g, align 8, !tbaa !47
  store i64 %i.m, ptr %i.e, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !48
  store ptr %i.g, ptr %i.b, align 8, !tbaa !45
  store i64 0, ptr %i.n, align 8, !tbaa !48
  store i8 0, ptr %i.g, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i8 -1, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !53
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.v, ptr %i.q, align 8, !tbaa !42
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.w, ptr %i.q, align 8, !tbaa !45
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !47
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !48
  store ptr %i.x, ptr %i.d, align 8, !tbaa !45
  store i64 0, ptr %i.ae, align 8, !tbaa !48
  store i8 0, ptr %i.x, align 8, !tbaa !47
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.q, i8 0, i64 24, i1 false)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !68
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !71
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.q, ptr noundef nonnull align 8 dereferenceable(73) %i.d, i64 16, i1 false), !tbaa.struct !72
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !71
  store ptr %i.an, ptr %i.am, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i: ; preds = %bb.f, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ao = load i8, ptr %i.s, align 8, !tbaa !53
  store i8 %i.ao, ptr %i.r, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !42
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !48 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2IJOS5_EJOSB_EEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !45
  %i.az = load i64, ptr %i.at, align 8, !tbaa !47
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !47
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2IJOS5_EJOSB_EEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2IJOS5_EJOSB_EEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !48
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !45
  store i64 0, ptr %i.ba, align 8, !tbaa !48
  store i8 0, ptr %i.at, align 8, !tbaa !47
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !55, !range !73, !noundef !74
  store i8 %i.bf, ptr %i.bd, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSD_EUlOT_T0_E_JRKSt7variantIJS9_SC_EEEEDcOSI_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !53
  %i.d = icmp eq i8 %i.c, 0
  %i.e = load ptr, ptr %0, align 8, !tbaa !477    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.e, align 8, !tbaa !42
  %i.g = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.i, ptr %i.a, align 8, !tbaa !44
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !45
  %i.l = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.l, ptr %i.f, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SP_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !47
  store i8 %i.n, ptr %i.m, align 1, !tbaa !47
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SP_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SP_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SP_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !48
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SP_.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71   ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SP_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !369
  store <2 x ptr> %i.v, ptr %i.f, align 8, !tbaa !369
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SP_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !71   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.w

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SP_.exit: ; preds = %bb.g, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SP_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE30find_or_prepare_insert_non_sooIS9_EESI_INSM_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.141") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, 87
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !135, !noalias !485
  %i.k = and i64 %i.j, 65535
  %i.l = load i64, ptr %1, align 8, !tbaa !131, !noalias !485 ; 3 uses
  %i.m = lshr i64 %i.h, 7
  %i.n = xor i64 %i.k, %i.m
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 127
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !47 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = load ptr, ptr %2, align 8
  %i.v = load i64, ptr %i.d, align 8              ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.az, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.l                 ; 5 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.7.0
  %i.z = load <16 x i8>, ptr %i.y, align 1, !tbaa !47 ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.t, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ab, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.an, %.critedge ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.7.0, %i.ad
  %i.af = and i64 %i.ae, %i.l                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !48
  %i.ak = icmp eq i64 %i.aj, %i.v
  br i1 %i.ak, label %bb.c, label %.critedge, !prof !361

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.w, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.u, i64 %i.v)
  %i.al = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.am = add i16 %.sroa.033.059, -1
  %i.an = and i16 %i.am, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.an, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ao = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ap, 0
  br i1 %.not51, label %bb.d, label %.thread, !prof !183

.thread:                                          ; preds = %.critedge18
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.ay = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bb, align 8, !tbaa !456
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19transfer_n_slots_fnEPvSN_SN_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator.196", align 1 ; 3 uses
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i64 [ %i.a, %.lr.ph ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.01012 = phi ptr [ %i.b, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef nonnull %4, ptr noundef %.0913, ptr noundef %.01012)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.a = add i64 %.014, -1                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01012, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %.0913, i64 96
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !488

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSS_PFvSS_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !131    ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !135
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.064 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.064
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.064 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not62 = icmp eq i16 %i.r, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_.exit, %bb.c
  %i.s = add nuw i64 %.064, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !489

.lr.ph:                                           ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_.exit
  %.sroa.055.063 = phi i16 [ %i.ff, %_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_.exit ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.055.063, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.064, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %i.w ; 13 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !48  ; 14 uses
  %i.ab = icmp ult i64 %i.aa, 9
  br i1 %i.ab, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.ac = icmp samesign ugt i64 %i.aa, 3
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i = load i32, ptr %i.y, align 1
  %i.ad = zext i32 %.0.copyload.i.i.i to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.ag, align 1
  %i.ah = zext i32 %.0.copyload.i4.i.i to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i8, ptr %i.y, align 1, !tbaa !47
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = getelementptr i8, ptr %i.y, i64 %i.aa
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !47
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.al, %i.ap
  %i.ar = lshr i64 %i.aa, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !47
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = or disjoint i64 %i.aq, %i.av
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i.i = phi i64 [ %i.ai, %bb.e ], [ %i.aw, %bb.g ]
  %i.ax = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ay = mul i64 %i.ax, -2543921745674291987
  %i.az = tail call noundef i64 @llvm.bswap.i64(i64 %i.ay)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ba = icmp ult i64 %i.aa, 17
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i = load i64, ptr %i.y, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.bc, align 1
  %i.bd = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.be = xor i64 %.0.copyload.i.i4.i.i, -2543921745674291987
  %i.bf = zext i64 %i.bd to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.k:                                             ; preds = %bb.i
  %i.bl = icmp ult i64 %i.aa, 33
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.0.copyload.i.i20.i = load i64, ptr %i.y, align 1
  %i.bm = xor i64 %.0.copyload.i.i20.i, 1376283091369227076
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload.i.i21.i = load i64, ptr %i.bn, align 1
  %i.bo = xor i64 %.0.copyload.i.i21.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bp = zext i64 %i.bm to i128
  %i.bq = zext i64 %i.bo to i128
  %i.br = mul nuw i128 %i.bq, %i.bp               ; 2 uses
  %i.bs = getelementptr i8, ptr %i.y, i64 %i.aa   ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -16
  %.0.copyload.i.i22.i = load i64, ptr %i.bt, align 1
  %i.bu = xor i64 %.0.copyload.i.i22.i, 589684135938649225
  %i.bv = getelementptr i8, ptr %i.bs, i64 -8
  %.0.copyload.i.i23.i = load i64, ptr %i.bv, align 1
  %i.bw = xor i64 %.0.copyload.i.i23.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bx = zext i64 %i.bu to i128
  %i.by = zext i64 %i.bw to i128
  %i.bz = mul nuw i128 %i.by, %i.bx               ; 2 uses
  %i.ca = xor i128 %i.bz, %i.br
  %i.cb = lshr i128 %i.ca, 64
  %i.cc = xor i128 %i.br, %i.cb
  %i.cd = xor i128 %i.cc, %i.bz
  %i.ce = trunc i128 %i.cd to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.m:                                             ; preds = %bb.k
  %.not.i54 = icmp ugt i64 %i.aa, 1024
  br i1 %.not.i54, label %bb.o, label %bb.n, !prof !183

bb.n:                                             ; preds = %bb.m
  %i.cf = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %i.y, i64 noundef %i.aa)
  %i.cg = xor i64 %i.cf, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ch = zext i64 %i.cg to i128
  %i.ci = mul nuw i128 %i.ch, 15902822328035259629 ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = xor i128 %i.cj, %i.ci
  %i.cl = trunc i128 %i.ck to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.o:                                             ; preds = %bb.m
  %i.cm = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.y, i64 noundef %i.aa)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cm, %bb.o ], [ %i.bk, %bb.j ], [ %i.ce, %bb.l ], [ %i.cl, %bb.n ], [ %i.az, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.cn = add i64 %i.aa, 87
  %i.co = add i64 %i.cn, %.0.i                    ; 2 uses
  %i.cp = lshr i64 %i.co, 7
  %i.cq = xor i64 %i.cp, %i.j                     ; 5 uses
end_hunk_1
begin_hunk_2_@_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESC_:bb.a
bb.h:                                             ; preds = %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEC2EOS7_.exit.i.i.i.i.i.i.i
  %i.af = load i64, ptr %i.k, align 8, !tbaa !48  ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEC2EOS7_.exit.i.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !45
  %i.ai = load i64, ptr %i.j, align 8, !tbaa !47
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !47
  %.pre = load i64, ptr %i.k, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aj = phi i64 [ %i.af, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !48
  store ptr %i.j, ptr %i.i, align 8, !tbaa !45
  store i64 0, ptr %i.k, align 8, !tbaa !48
  store i8 0, ptr %i.j, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load i8, ptr %i.l, align 8, !tbaa !516, !range !73, !noundef !74
  store i8 %i.am, ptr %i.al, align 8, !tbaa !516
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.an, align 8, !tbaa !512
  br i1 %i.u, label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %5, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #34
  unreachable

_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !131
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !135
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !47 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48   ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !44
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !335
  %i.i = icmp eq i64 %i.h, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.h)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47, !nonnull !74, !noundef !74
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !335
  %i.p = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.q = add i64 %.sroa.0.0.copyload.i, 87
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !135, !noalias !525
  %i.u = and i64 %i.t, 65535
  %i.v = load i64, ptr %0, align 8, !tbaa !131, !noalias !525 ; 4 uses
  %i.w = lshr i64 %i.r, 7
  %i.x = xor i64 %i.u, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.r to i8
  %i.z = and i8 %i.y, 127
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !47  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 4 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ae, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.an, %bb.f ], [ %i.x, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.am, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.v      ; 4 uses
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i.us
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !47 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ad, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.aj, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ak = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %.not43.i.us = icmp eq i16 %i.al, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit, !prof !183

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.am = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.an = add i64 %i.am, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !528

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.ax, %bb.g ], [ %i.aj, %.split.us ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.6.0.i.us, %i.ap
  %i.ar = and i64 %i.aq, %i.v                     ; 2 uses
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread32.i, label %bb.g, !prof !361

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.aw = add i16 %.sroa.017.046.i.us.us, -1
  %i.ax = and i16 %i.aw, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.ax, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bt, %bb.i ], [ %i.x, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.v            ; 4 uses
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !47 ; 2 uses
  %i.bb = icmp eq <16 x i8> %i.ad, %i.ba
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.bc, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bp, %bb.h ], [ %i.bc, %.split ] ; 3 uses
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.6.0.i, %i.be
  %i.bg = and i64 %i.bf, %i.v                     ; 2 uses
  %i.bh = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !48
  %i.bk = icmp eq i64 %i.bj, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, label %bb.h, !prof !361

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10: ; preds = %.lr.ph.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !45
  %bcmp.i.i.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %i.bl, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i11, 0
  br i1 %i.bm, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
  %i.bo = add i16 %.sroa.017.046.i, -1
  %i.bp = and i16 %i.bo, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bq = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %.not43.i = icmp eq i16 %i.br, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit, !prof !183

bb.i:                                             ; preds = %._crit_edge.i
  %i.bs = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.6.0.i
  br label %.split, !llvm.loop !528

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bn, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(73) ptr @_ZN6google8protobuf2io7Printer9ValueImplILb0EEaSILb1EEERS4_RKNS3_IXT_EEE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !53
  switch i8 %i.c, label %bb.g [
    i8 0, label %bb.c
    i8 1, label %_ZSt3getISt8functionIFbvEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EERKT_RKSt7variantIJDpT0_EE.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !514
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %_ZSt3getILm0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit.i, label %bb.d

_ZSt3getILm0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit.i: ; preds = %bb.c
  store i64 %i.f, ptr %0, align 8, !tbaa !44
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx12, align 8, !tbaa !335
  br label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
          to label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #34
  unreachable

_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.f, ptr %0, align 8, !tbaa !44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !335
  store i8 0, ptr %i.g, align 8, !tbaa !514
  br label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit

bb.g:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @.str.77, ptr %i.p, align 8, !tbaa !529
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

_ZSt3getISt8functionIFbvEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIRKS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS7_E4typeESE_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  br label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit

_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit: ; preds = %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i, %_ZSt3getILm0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit.i, %_ZSt3getISt8functionIFbvEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EERKT_RKSt7variantIJDpT0_EE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !tbaa !55, !range !73, !noundef !74
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.u, ptr %i.v, align 8, !tbaa !516
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !514
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #34
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIRKS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS7_E4typeESE_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 11 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !514   ; 2 uses
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.c, label %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit, label %bb.i

_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !tbaa !369
  br label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 16, !tbaa !71  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #34
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.m, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.ab, %bb.m ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFbvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit
  %i.n = phi <2 x ptr> [ splat (ptr null), %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit ], [ %i.h, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !72
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %0, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !369
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !369  ; 2 uses
  store <2 x ptr> %i.p, ptr %i.e, align 16, !tbaa !369
  store <2 x ptr> %i.n, ptr %i.o, align 8, !tbaa !369
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbvEEaSERKS1_.exit, label %bb.g
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_E9_M_invokeERKSt9_Any_dataOSA_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !44, !noalias !554
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !335, !noalias !554
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !554
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !558
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.b, align 8, !noalias !558
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE4findISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !558 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @_ZN6google8protobuf2io7Printer16AnnotationRecordC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.g)
  br label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit

_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit: ; preds = %bb.a, %bb.b
  %.sink.i.i.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sink.i.i.i, ptr %i.h, align 8, !tbaa !63, !alias.scope !558
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !554
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_, ptr %0, align 8, !tbaa !510
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !369
  store ptr %i.a, ptr %0, align 8, !tbaa !369
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE4findISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !131
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !135
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !47 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48   ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !44
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !335
  %i.i = icmp eq i64 %i.h, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.h)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47, !nonnull !74, !noundef !74
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !335
  %i.p = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.q = add i64 %.sroa.0.0.copyload.i, 87
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !135, !noalias !559
  %i.u = and i64 %i.t, 65535
  %i.v = load i64, ptr %0, align 8, !tbaa !131, !noalias !559 ; 4 uses
  %i.w = lshr i64 %i.r, 7
  %i.x = xor i64 %i.u, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.r to i8
  %i.z = and i8 %i.y, 127
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !47  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 4 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ae, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.an, %bb.f ], [ %i.x, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.am, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.v      ; 4 uses
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i.us
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !47 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ad, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.aj, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ak = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %.not43.i.us = icmp eq i16 %i.al, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit, !prof !183

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.am = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.an = add i64 %i.am, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !562

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.ax, %bb.g ], [ %i.aj, %.split.us ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.6.0.i.us, %i.ap
  %i.ar = and i64 %i.aq, %i.v                     ; 2 uses
  %i.as = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread32.i, label %bb.g, !prof !361

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.aw = add i16 %.sroa.017.046.i.us.us, -1
  %i.ax = and i16 %i.aw, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.ax, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bt, %bb.i ], [ %i.x, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.v            ; 4 uses
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !47 ; 2 uses
  %i.bb = icmp eq <16 x i8> %i.ad, %i.ba
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.bc, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bp, %bb.h ], [ %i.bc, %.split ] ; 3 uses
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.6.0.i, %i.be
  %i.bg = and i64 %i.bf, %i.v                     ; 2 uses
  %i.bh = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !48
  %i.bk = icmp eq i64 %i.bj, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, label %bb.h, !prof !361

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10: ; preds = %.lr.ph.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !45
  %bcmp.i.i.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %i.bl, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i11, 0
  br i1 %i.bm, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
  %i.bo = add i16 %.sroa.017.046.i, -1
  %i.bp = and i16 %i.bo, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bq = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %.not43.i = icmp eq i16 %i.br, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit, !prof !183

bb.i:                                             ; preds = %._crit_edge.i
  %i.bs = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.6.0.i
  br label %.split, !llvm.loop !562

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bn, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.255, align 8            ; 4 uses
  %4 = alloca %class.anon.252, align 8            ; 5 uses
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_, ptr %0, align 8, !tbaa !510
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !369
  store ptr %i.a, ptr %0, align 8, !tbaa !369
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !369    ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.c, ptr %4, align 8, !tbaa !563
  invoke void @_ZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEEC1ERKSO_RKSN_EUlPvPKvE_vJST_SV_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.f unwind label %.body.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit

.body.i.i.i.i.i.i:                                ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 32) #31
  resume { ptr, i32 } %i.f

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit: ; preds = %bb.d, %bb.f
  store ptr %i.c, ptr %0, align 8, !tbaa !369
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.g:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !369    ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !131
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.g, ptr %3, align 8, !tbaa !471
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 96, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i.i unwind label %bb.j

.noexc.i.i.i:                                     ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.k = load i64, ptr %i.g, align 8, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = and i64 %i.o, 65536
  %i.q = icmp ne i64 %i.p, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.k, ptr noundef %i.m, i64 noundef 96, i64 noundef 8, i1 noundef zeroext %i.q)
          to label %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i.i.i, %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #34
  unreachable

_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i: ; preds = %.noexc.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 32) #31
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit: ; preds = %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i, %bb.g, %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit, %bb.c, %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEEC1ERKSO_RKSN_EUlPvPKvE_vJST_SV_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !42
  %i.c = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.e, ptr %i.a, align 8, !tbaa !44
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !45
  %i.h = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.h, ptr %i.b, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !47
  store i8 %i.j, ptr %i.i, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !48
  %i.m = load ptr, ptr %1, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN6google8protobuf2io7Printer16AnnotationRecordC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.p)
          to label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEEC1ERKSN_RKSM_EUlPvPKvE_JSS_SU_EENSt13invoke_resultIT_JDpT0_EE4typeEOSZ_DpOS10_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !47
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.q

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEEC1ERKSN_RKSM_EUlPvPKvE_JSS_SU_EENSt13invoke_resultIT_JDpT0_EE4typeEOSZ_DpOS10_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf8compiler10objectivec15SubstitutionMap5ValueB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { i64, ptr } @_ZNK6google8protobuf2io7Printer3Sub5valueEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !53
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !285

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.70, i32 noundef 1002, ptr noundef nonnull @.str.81) #35
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 15, ptr nonnull @.str.82)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit: ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.e, ptr %i.c)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 24, ptr nonnull @.str.83)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit: ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #34
  unreachable

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit, %bb.c, %bb.b, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #34
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !48
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.k, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.i, 1
  ret { i64, ptr } %.fca.1.insert.i
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE4findISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !131
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !135
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !47 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48   ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !44
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !335
  %i.i = icmp eq i64 %i.h, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE12EqualElementISt17basic_string_viewIcS7_EEEJRSI_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.h)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE12EqualElementISt17basic_string_viewIcS7_EEEJRSI_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE12EqualElementISt17basic_string_viewIcS7_EEEJRSI_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47, !nonnull !74, !noundef !74
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !335
  %i.p = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.q = add i64 %.sroa.0.0.copyload.i, 87
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !135, !noalias !565
  %i.u = and i64 %i.t, 65535
  %i.v = load i64, ptr %0, align 8, !tbaa !131, !noalias !565 ; 4 uses
  %i.w = lshr i64 %i.r, 7
  %i.x = xor i64 %i.u, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.r to i8
  %i.z = and i8 %i.y, 127
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !47  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 4 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ae, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.an, %bb.f ], [ %i.x, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.am, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.v      ; 4 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i.us
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !47 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ad, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.aj, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ak = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %.not43.i.us = icmp eq i16 %i.al, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit, !prof !183

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.am = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.an = add i64 %i.am, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !568

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.ax, %bb.g ], [ %i.aj, %.split.us ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.6.0.i.us, %i.ap
  %i.ar = and i64 %i.aq, %i.v                     ; 2 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread32.i, label %bb.g, !prof !361

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.aw = add i16 %.sroa.017.046.i.us.us, -1
  %i.ax = and i16 %i.aw, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.ax, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bt, %bb.i ], [ %i.x, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.v            ; 4 uses
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !47 ; 2 uses
  %i.bb = icmp eq <16 x i8> %i.ad, %i.ba
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.bc, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bp, %bb.h ], [ %i.bc, %.split ] ; 3 uses
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.6.0.i, %i.be
  %i.bg = and i64 %i.bf, %i.v                     ; 2 uses
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !48
  %i.bk = icmp eq i64 %i.bj, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, label %bb.h, !prof !361

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10: ; preds = %.lr.ph.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !45
  %bcmp.i.i.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %i.bl, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i11, 0
  br i1 %i.bm, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
  %i.bo = add i16 %.sroa.017.046.i, -1
  %i.bp = and i16 %i.bo, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bq = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %.not43.i = icmp eq i16 %i.br, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit, !prof !183

bb.i:                                             ; preds = %._crit_edge.i
  %i.bs = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.6.0.i
  br label %.split, !llvm.loop !568

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bn, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_smallISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE12EqualElementISt17basic_string_viewIcS7_EEEJRSI_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE10find_largeISt17basic_string_viewIcS7_EEENSH_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE12EqualElementISt17basic_string_viewIcS7_EEEJRSI_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #14

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor18default_value_enumEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #27

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS4_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !369   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !569, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS1_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS3_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISN_T0_DpT1_EESN_E4typeEOST_DpOSU_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !569
  %.val.i.i.i = load ptr, ptr %.val, align 8, !tbaa !574
  %.val.val.i.i.i = load i8, ptr %.val.i.i.i, align 1, !tbaa !156, !range !73, !noundef !74
  %i.d = trunc nuw i8 %.val.val.i.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZZNK6google8protobuf8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPNS0_2io7PrinterEbENK3$_0clEv.exit.i.i.i"

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val2.i.i.i = load ptr, ptr %i.e, align 8
  %i.f = load ptr, ptr %.val2.i.i.i, align 8, !tbaa !155
  tail call void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.f, ptr null, i64 0, i64 42, ptr nonnull @.str.87)
  br label %"_ZZNK6google8protobuf8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPNS0_2io7PrinterEbENK3$_0clEv.exit.i.i.i"

"_ZZNK6google8protobuf8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPNS0_2io7PrinterEbENK3$_0clEv.exit.i.i.i": ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !569
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS1_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS3_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISN_T0_DpT1_EESN_E4typeEOST_DpOSU_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS1_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS3_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISN_T0_DpT1_EESN_E4typeEOST_DpOSU_.exit": ; preds = %bb.a, %"_ZZNK6google8protobuf8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPNS0_2io7PrinterEbENK3$_0clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.c, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS4_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS4_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS2_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !510
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS4_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !369
  store ptr %.val, ptr %0, align 8, !tbaa !369
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS4_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !575
  store ptr %i.a, ptr %0, align 8, !tbaa !369
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS4_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !369 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS4_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #31
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS4_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPS4_bE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !45     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48   ; 4 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.n, align 8, !tbaa !48
  store ptr %i.g, ptr %1, align 8, !tbaa !45
  store i64 0, ptr %i.m, align 8, !tbaa !48
  store i8 0, ptr %i.g, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !42
  br label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.r = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !47
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 2 uses
  store <2 x i64> %i.r, ptr %i.q, align 8, !tbaa !47
  store ptr %i.g, ptr %1, align 8, !tbaa !45
  store i64 0, ptr %i.p, align 8, !tbaa !48
  store i8 0, ptr %i.g, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !42
  %i.t = icmp eq ptr %i.f, %i.e
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  %i.v = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.w = phi i64 [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.f, ptr %i.b, align 8, !tbaa !45
  %i.z = load i64, ptr %i.e, align 8, !tbaa !47
  store i64 %i.z, ptr %i.s, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.aa = phi ptr [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.c ]
  %i.ac = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !48
  store ptr %i.e, ptr %3, align 8, !tbaa !45
  store i64 0, ptr %i.ab, align 8, !tbaa !48
  store i8 0, ptr %i.e, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2IRivEEOT_(ptr noundef nonnull align 8 dereferenceable(73) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !45  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.aa
  br i1 %i.ah, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_4
