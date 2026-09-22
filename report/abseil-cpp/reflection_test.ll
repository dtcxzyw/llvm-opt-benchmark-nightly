Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/reflection_test?download=true
inline.NumInlined: 2880
inline.NumDeleted: 1275
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_SI_:bb.a
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  ret void

bb.ah:                                            ; preds = %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d, %bb.a
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.v
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.aj:                                            ; preds = %bb.y, %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body77

bb.ak:                                            ; preds = %bb.ab
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.al:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit88, %bb.ae
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body96

.body96:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i91, %bb.al
  %eh.lpad-body97 = phi { ptr, i32 } [ %i.fd, %bb.al ], [ %i.ed, %_ZN7testing7MessageD2Ev.exit5.i91 ] ; 2 uses
  %i.fe = load ptr, ptr %18, align 8, !tbaa !29   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %.body96
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !32
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %.body96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.ak ], [ %eh.lpad-body97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %eh.lpad-body97, %.body96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %.body77

.body77:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i73, %_ZN7testing7MessageD2Ev.exit5.i81, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.dc, %_ZN7testing7MessageD2Ev.exit5.i73 ], [ %i.fb, %bb.aj ], [ %i.do, %_ZN7testing7MessageD2Ev.exit5.i81 ] ; 2 uses
  %i.fj = load ptr, ptr %17, align 8, !tbaa !29   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %.body77
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !32
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %.body77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn.pn, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body

.body:                                            ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %_ZN7testing7MessageD2Ev.exit5.i20, %_ZN7testing7MessageD2Ev.exit5.i40, %bb.ah, %_ZN7testing7MessageD2Ev.exit5.i62, %_ZN7testing7MessageD2Ev.exit6.i52, %_ZN7testing7MessageD2Ev.exit6.i30, %_ZN7testing7MessageD2Ev.exit6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.h, %_ZN7testing7MessageD2Ev.exit5.i ], [ %i.x, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.aj, %_ZN7testing7MessageD2Ev.exit5.i20 ], [ %i.az, %_ZN7testing7MessageD2Ev.exit6.i30 ], [ %i.bl, %_ZN7testing7MessageD2Ev.exit5.i40 ], [ %i.cb, %_ZN7testing7MessageD2Ev.exit6.i52 ], [ %i.ez, %bb.ah ], [ %i.cn, %_ZN7testing7MessageD2Ev.exit5.i62 ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS2_15CommandLineFlagEEEJEE8iteratorEEENSt7__cxx1112basic_stringIcS8_SaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 16, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorEE5PrintERKSF_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorEE5PrintERKSF_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !33, !alias.scope !277
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !30, !alias.scope !277
  store i8 0, ptr %i.b, align 8, !tbaa !32, !alias.scope !277
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68, !noalias !277 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !277 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorEE5PrintERKSF_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69, !noalias !277 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !277 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !32, !alias.scope !277
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorEE5PrintERKSF_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !48
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !48
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #30
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !48
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIA9_cEENSB_8iteratorERKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(9) %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !281
  %i.b = and i64 %i.a, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.b
  %i.c = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.d = lshr i64 %2, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14 = load ptr, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.13.0 = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.f ]
  %.pn = phi i64 [ %2, %bb.a ], [ %i.ah, %bb.f ]
  %.sroa.628.0 = and i64 %.pn, %i.c               ; 4 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %.sroa.628.0
  tail call void @llvm.prefetch.p0(ptr %i.j, i32 0, i32 3, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.628.0
  %i.l = load <16 x i8>, ptr %i.k, align 1, !tbaa !32 ; 2 uses
  %i.m = icmp eq <16 x i8> %i.i, %i.l
  %i.n = bitcast <16 x i1> %i.m to i16
  %i.o = zext i16 %i.n to i32
  %i.p = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.o) #33, !srcloc !107 ; 2 uses
  %.not49 = icmp eq i32 %i.p, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.019.050 = phi i32 [ %i.p, %.lr.ph ], [ %i.ab, %bb.e ] ; 3 uses
  %i.s = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050, i1 true)
  %i.t = zext nneg i32 %i.s to i64
  %i.u = add nuw i64 %.sroa.628.0, %i.t
  %i.v = and i64 %i.u, %i.c                       ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %i.v ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !26
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.q
  br i1 %i.x, label %bb.d, label %bb.e, !prof !108

bb.d:                                             ; preds = %bb.c
  br i1 %i.r, label %.thread36, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %1, i64 %i.q)
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.thread36, label %bb.e

.thread36:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  br label %.loopexit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.aa = add i32 %.sroa.019.050, -1
  %i.ab = and i32 %i.aa, %.sroa.019.050           ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.ac = icmp eq <16 x i8> %i.l, splat (i8 -128)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = zext i16 %i.ad to i32
  %i.af = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ae) #33, !srcloc !107
  %.not47 = icmp eq i32 %i.af, 0
  br i1 %.not47, label %bb.f, label %.loopexit, !prof !31

bb.f:                                             ; preds = %._crit_edge
  %i.ag = add i64 %.sroa.13.0, 16                 ; 2 uses
  %i.ah = add i64 %.sroa.628.0, %i.ag
  br label %bb.b, !llvm.loop !280

.loopexit:                                        ; preds = %._crit_edge, %.thread36
  %.sroa.0.4.ph = phi ptr [ %i.z, %.thread36 ], [ null, %._crit_edge ]
  %.sroa.3.4.ph = phi ptr [ %i.w, %.thread36 ], [ undef, %._crit_edge ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.4.ph, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i.i = load i64, ptr %i.b, align 1
  %i.c = icmp samesign ugt i64 %2, 3
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i34.i = load i32, ptr %1, align 1
  %i.d = zext i32 %.0.copyload.i.i34.i to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.g, align 1
  %i.h = zext i32 %.0.copyload.i4.i.i to i64
  %i.i = or disjoint i64 %i.e, %i.h
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %1, align 1, !tbaa !32
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 16
  %i.m = getelementptr i8, ptr %1, i64 %2
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32
  %i.p = zext i8 %i.o to i64
  %i.q = or disjoint i64 %i.l, %i.p
  %i.r = lshr i64 %2, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !32
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = or disjoint i64 %i.q, %i.v
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i

_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.i, %bb.c ], [ %i.w, %bb.e ], [ 87, %bb.d ]
  %i.x = xor i64 %.0.copyload.i.i.i, %.0.i.i
  %i.y = xor i64 %i.x, %0
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw nsw i128 %i.z, 8779197792823184629 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.f:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %2, 17
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i38.i = load i64, ptr %i.af, align 1
  %.0.copyload.i.i.i.i = load i64, ptr %1, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.0.copyload.i.i2.i.i = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i38.i, %.0.copyload.i.i.i.i
  %i.aj = xor i64 %i.ai, %0
  %i.ak = xor i64 %.0.copyload.i.i2.i.i, 8779197792823184629
  %i.al = zext i64 %i.aj to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.al, %i.am               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ult i64 %2, 33
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i42.i = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i42.i, %0        ; 2 uses
  %.0.copyload.i.i43.i = load i64, ptr %1, align 1
  %i.au = xor i64 %.0.copyload.i.i43.i, 1376283091369227076
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i44.i = load i64, ptr %i.av, align 1
  %i.aw = xor i64 %.0.copyload.i.i44.i, %i.at
  %i.ax = zext i64 %i.au to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = mul nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
  %.0.copyload.i.i48.i = load i64, ptr %i.bb, align 1
  %i.bc = xor i64 %.0.copyload.i.i48.i, 589684135938649225
  %i.bd = getelementptr i8, ptr %i.ba, i64 -8
  %.0.copyload.i.i49.i = load i64, ptr %i.bd, align 1
  %i.be = xor i64 %.0.copyload.i.i49.i, %i.at
  %i.bf = zext i64 %i.bc to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = xor i128 %i.bh, %i.az
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = xor i128 %i.az, %i.bj
  %i.bl = xor i128 %i.bk, %i.bh
  %i.bm = trunc i128 %i.bl to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bn = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i, %bb.g, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ad, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i ], [ %i.aq, %bb.g ], [ %i.bm, %bb.i ], [ %i.bn, %bb.j ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS2_15CommandLineFlagEEEJEE8iteratorEEENSt7__cxx1112basic_stringIcS8_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS2_15CommandLineFlagEEEJEE8iteratorEEENSt7__cxx1112basic_stringIcS8_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !32
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.f = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !32
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENSt7__cxx1112basic_stringIcS9_SaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !32
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.r = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !32
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIA18_cEENSB_8iteratorERKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(18) %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !285
  %i.b = and i64 %i.a, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.b
  %i.c = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.d = lshr i64 %2, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14 = load ptr, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.13.0 = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.f ]
  %.pn = phi i64 [ %2, %bb.a ], [ %i.ah, %bb.f ]
  %.sroa.628.0 = and i64 %.pn, %i.c               ; 4 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %.sroa.628.0
  tail call void @llvm.prefetch.p0(ptr %i.j, i32 0, i32 3, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.628.0
  %i.l = load <16 x i8>, ptr %i.k, align 1, !tbaa !32 ; 2 uses
  %i.m = icmp eq <16 x i8> %i.i, %i.l
  %i.n = bitcast <16 x i1> %i.m to i16
  %i.o = zext i16 %i.n to i32
  %i.p = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.o) #33, !srcloc !107 ; 2 uses
  %.not49 = icmp eq i32 %i.p, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.019.050 = phi i32 [ %i.p, %.lr.ph ], [ %i.ab, %bb.e ] ; 3 uses
  %i.s = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050, i1 true)
  %i.t = zext nneg i32 %i.s to i64
  %i.u = add nuw i64 %.sroa.628.0, %i.t
  %i.v = and i64 %i.u, %i.c                       ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %i.v ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !26
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.q
  br i1 %i.x, label %bb.d, label %bb.e, !prof !108

bb.d:                                             ; preds = %bb.c
  br i1 %i.r, label %.thread36, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %1, i64 %i.q)
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.thread36, label %bb.e

.thread36:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  br label %.loopexit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.aa = add i32 %.sroa.019.050, -1
  %i.ab = and i32 %i.aa, %.sroa.019.050           ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.ac = icmp eq <16 x i8> %i.l, splat (i8 -128)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = zext i16 %i.ad to i32
  %i.af = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ae) #33, !srcloc !107
  %.not47 = icmp eq i32 %i.af, 0
  br i1 %.not47, label %bb.f, label %.loopexit, !prof !31

bb.f:                                             ; preds = %._crit_edge
  %i.ag = add i64 %.sroa.13.0, 16                 ; 2 uses
  %i.ah = add i64 %.sroa.628.0, %i.ag
  br label %bb.b, !llvm.loop !284

.loopexit:                                        ; preds = %._crit_edge, %.thread36
  %.sroa.0.4.ph = phi ptr [ %i.z, %.thread36 ], [ null, %._crit_edge ]
  %.sroa.3.4.ph = phi ptr [ %i.w, %.thread36 ], [ undef, %._crit_edge ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.4.ph, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIA20_cEENSB_8iteratorERKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !289
  %i.b = and i64 %i.a, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.b
  %i.c = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.d = lshr i64 %2, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14 = load ptr, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.13.0 = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.f ]
  %.pn = phi i64 [ %2, %bb.a ], [ %i.ah, %bb.f ]
  %.sroa.628.0 = and i64 %.pn, %i.c               ; 4 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %.sroa.628.0
  tail call void @llvm.prefetch.p0(ptr %i.j, i32 0, i32 3, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.628.0
  %i.l = load <16 x i8>, ptr %i.k, align 1, !tbaa !32 ; 2 uses
  %i.m = icmp eq <16 x i8> %i.i, %i.l
  %i.n = bitcast <16 x i1> %i.m to i16
  %i.o = zext i16 %i.n to i32
  %i.p = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.o) #33, !srcloc !107 ; 2 uses
  %.not49 = icmp eq i32 %i.p, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.019.050 = phi i32 [ %i.p, %.lr.ph ], [ %i.ab, %bb.e ] ; 3 uses
  %i.s = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050, i1 true)
  %i.t = zext nneg i32 %i.s to i64
  %i.u = add nuw i64 %.sroa.628.0, %i.t
  %i.v = and i64 %i.u, %i.c                       ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14, i64 %i.v ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !26
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.q
  br i1 %i.x, label %bb.d, label %bb.e, !prof !108

bb.d:                                             ; preds = %bb.c
  br i1 %i.r, label %.thread36, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %1, i64 %i.q)
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.thread36, label %bb.e

.thread36:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  br label %.loopexit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.aa = add i32 %.sroa.019.050, -1
  %i.ab = and i32 %i.aa, %.sroa.019.050           ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.ac = icmp eq <16 x i8> %i.l, splat (i8 -128)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = zext i16 %i.ad to i32
  %i.af = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ae) #33, !srcloc !107
  %.not47 = icmp eq i32 %i.af, 0
  br i1 %.not47, label %bb.f, label %.loopexit, !prof !31

bb.f:                                             ; preds = %._crit_edge
  %i.ag = add i64 %.sroa.13.0, 16                 ; 2 uses
  %i.ah = add i64 %.sroa.628.0, %i.ag
  br label %bb.b, !llvm.loop !288

.loopexit:                                        ; preds = %._crit_edge, %.thread36
  %.sroa.0.4.ph = phi ptr [ %i.z, %.thread36 ], [ null, %._crit_edge ]
  %.sroa.3.4.ph = phi ptr [ %i.w, %.thread36 ], [ undef, %._crit_edge ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.4.ph, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.92, i32 noundef 246)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.93, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal20MatchPrintAndExplainIKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EERS9_EEbRT_RKNS_7MatcherIT0_EEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %6 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !94
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %5, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.f = icmp ne ptr %i.e, null
  %i.g = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.f)
  br i1 %i.g, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE7MatchesESA_.exit, label %.noexc3.i

.noexc3.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.92, i32 noundef 234)
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.93, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc3.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE7MatchesESA_.exit

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i ], [ %.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %.noexc3.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE7MatchesESA_.exit: ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5), !inline_history !290
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !94
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !48
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.r = icmp ne ptr %i.q, null
  %i.s = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.r)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.92, i32 noundef 234)
          to label %.noexc23 unwind label %bb.g

.noexc23:                                         ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.93, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc23
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.f

bb.e:                                             ; preds = %.noexc23
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !96
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit unwind label %bb.g, !inline_history !291

_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit: ; preds = %bb.f
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !94
  invoke void @_ZN7testing8internal16ContainerPrinter10PrintValueISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EEvEEvRKT_PSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.y)
          to label %_ZN7testing8internal14UniversalPrintISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRKT_PSo.exit unwind label %bb.g

_ZN7testing8internal14UniversalPrintISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRKT_PSo.exit: ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZN7testing8internal11GetTypeNameB5cxx11ERKSt9type_info(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) @_ZTISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE)
          to label %_ZN7testing8internal11GetTypeNameIKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEEv.exit unwind label %bb.h

_ZN7testing8internal11GetTypeNameIKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEEv.exit: ; preds = %_ZN7testing8internal14UniversalPrintISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRKT_PSo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ab = icmp ult i64 %i.aa, 21
  br i1 %i.ab, label %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN7testing8internal11GetTypeNameIKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEEv.exit
  %i.ac = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 2) #30
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30

_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZN7testing8internal11GetTypeNameIKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEEv.exit, %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.94, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ag = load ptr, ptr %7, align 8, !tbaa !29
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.ag, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.91, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.i ; 0 uses

end_hunk_0
