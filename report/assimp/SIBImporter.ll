inline.NumInlined: 1537
inline.NumDeleted: 733
begin_hunk_0_@_ZN17DeadlyImportErrorC2IJRA21_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_:bb.a
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #23
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EEC2EPNS_8IOStreamEb(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #23 ; 0 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1) #23, !inline_history !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #25
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit: ; preds = %bb.a
  %i.m = zext i1 %2 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.o, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.p, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store i8 %i.m, ptr %i.r, align 8
  invoke void @_ZN6Assimp12StreamReaderILb0ELb0EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit
  ret void

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA38_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA38_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #23
  resume { ptr, i32 } %i.o
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6AssimpL9ReadSceneEPNS_3SIBEPNS_12StreamReaderILb0ELb0EEE(ptr noundef nonnull %0, ptr nofree noundef nonnull %1) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %3 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %4 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %5 = alloca %struct.aiString, align 4           ; 5 uses
  %6 = alloca %struct.aiColor3D, align 4          ; 5 uses
  %7 = alloca %struct.aiColor3D, align 4          ; 5 uses
  %8 = alloca %struct.aiColor3D, align 4          ; 5 uses
  %9 = alloca %struct.aiColor3D, align 4          ; 5 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %10 = alloca %struct.aiString, align 4          ; 5 uses
  %11 = alloca %struct.aiString, align 4          ; 7 uses
  %12 = alloca %"struct.Assimp::SIBObject", align 8 ; 26 uses
  %13 = alloca %struct.aiString, align 4          ; 5 uses
  %14 = alloca %class.aiVector3t, align 8         ; 5 uses
  %15 = alloca %class.aiVector3t, align 8         ; 5 uses
  %16 = alloca %"struct.Assimp::SIBMesh", align 8 ; 43 uses
  %17 = alloca %struct.aiString, align 4          ; 7 uses
  %18 = alloca %struct.aiString, align 4          ; 6 uses
  %19 = alloca %class.aiMatrix4x4t, align 4       ; 11 uses
  %20 = alloca %class.aiMatrix4x4t, align 4       ; 12 uses
  %21 = alloca %"class.std::vector.45", align 8   ; 8 uses
  %22 = alloca %struct.aiFace, align 8            ; 10 uses
  %23 = alloca %class.aiVector3t, align 4         ; 6 uses
  %24 = alloca %"struct.Assimp::SIBObject", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 39 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 78 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = and i64 %i.h, 4294967288
  %.not131 = icmp eq i64 %i.i, 0
  br i1 %.not131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 1028 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 1032 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 1048 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 1052 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 1068 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 1072 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 1088 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 4
  %.sroa.8.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %12, i64 1036
  %.sroa.10.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %12, i64 1040
  %.sroa.12.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %12, i64 1044 ; 2 uses
  %.sroa.18.0..sroa_idx46.i.i = getelementptr inbounds nuw i8, ptr %12, i64 1056
  %.sroa.20.0..sroa_idx48.i.i = getelementptr inbounds nuw i8, ptr %12, i64 1060 ; 2 uses
  %.sroa.22.0..sroa_idx50.i.i = getelementptr inbounds nuw i8, ptr %12, i64 1064
  %.sroa.28.0..sroa_idx56.i.i = getelementptr inbounds nuw i8, ptr %12, i64 1076 ; 2 uses
  %.sroa.30.0..sroa_idx58.i.i = getelementptr inbounds nuw i8, ptr %12, i64 1080
  %.sroa.32.0..sroa_idx60.i.i = getelementptr inbounds nuw i8, ptr %12, i64 1084
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 1096
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 1104
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 60
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 248 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 256
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 264
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 272
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 280
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 216
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 192 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 168 ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 176 ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 144 ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 120 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 152 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 184 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 208 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 160 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 44 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %20, i64 28
  %i.bu = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %19, i64 36
  %i.ca = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %19, i64 44
  %i.cc = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %20, i64 36
  %i.ce = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %24, i64 1028 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %24, i64 1096
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %24, i64 1104
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit60
  %i.cn = call fastcc i64 @_ZN6AssimpL9ReadChunkEPNS_12StreamReaderILb0ELb0EEE(ptr noundef %1) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.cn to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.cn, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.co = load ptr, ptr %i.c, align 8             ; 6 uses
  %i.cp = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 4 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = add i32 %i.ct, %.sroa.5.0.extract.trunc ; 2 uses
  %i.cv = load ptr, ptr %i.b, align 8
  %i.cw = icmp eq i32 %i.cu, -1
  br i1 %i.cw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cx = load ptr, ptr %i.k, align 8             ; 2 uses
  store ptr %i.cx, ptr %i.b, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.d:                                             ; preds = %bb.b
  %i.cy = zext i32 %i.cu to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cy ; 3 uses
  store ptr %i.cz, ptr %i.b, align 8
  %i.da = load ptr, ptr %i.k, align 8
  %i.db = icmp ugt ptr %i.cz, %i.da
  br i1 %i.db, label %bb.e, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.d
  %i.dc = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull @.str.16)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

common.resume:                                    ; preds = %bb.jq, %bb.jt, %bb.jw, %bb.jz, %bb.gt, %bb.gy, %common.resume.i.i30, %bb.jb, %bb.jg, %bb.jj, %bb.nd, %bb.my, %common.resume.i55, %common.resume.i84, %common.resume.i74, %.body.i, %common.resume.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.dd, %bb.g ], [ %common.resume.op.i, %common.resume.i ], [ %.pn106.pn.pn.i, %.body.i ], [ %common.resume.op.i76, %common.resume.i74 ], [ %i.bkn, %bb.nd ], [ %i.bab, %bb.jj ], [ %common.resume.op.i86, %common.resume.i84 ], [ %common.resume.op.i57, %common.resume.i55 ], [ %i.bkf, %bb.my ], [ %i.asv, %bb.gt ], [ %i.atc, %bb.gy ], [ %common.resume.op.i.i32, %common.resume.i.i30 ], [ %i.azf, %bb.jb ], [ %i.azn, %bb.jg ], [ %i.bav, %bb.jq ], [ %i.bbb, %bb.jt ], [ %i.bbj, %bb.jw ], [ %i.bbw, %bb.jz ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dc) #23
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.c, %bb.d
  %i.de = phi ptr [ %i.cx, %bb.c ], [ %i.cz, %bb.d ] ; 7 uses
  %i.df = ptrtoint ptr %i.cv to i64
  %i.dg = sub i64 %i.df, %i.cr
  switch i32 %.sroa.0.0.extract.trunc, label %bb.mv [
    i32 1212498244, label %bb.h
    i32 1397244240, label %bb.o
    i32 1196576851, label %_ZN6AssimpL12CheckVersionEPNS_12StreamReaderILb0ELb0EEE.exit
    i32 1413830736, label %_ZN6AssimpL12CheckVersionEPNS_12StreamReaderILb0ELb0EEE.exit
    i32 1229869908, label %bb.gh
    i32 1296127058, label %bb.jn
    i32 1279739988, label %bb.kg
  ]

bb.h:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.di = icmp ugt ptr %i.dh, %i.de
  br i1 %i.di, label %bb.i, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i

bb.i:                                             ; preds = %bb.h
  %i.dj = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull @.str.13)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

common.resume.i:                                  ; preds = %bb.n, %bb.k
  %.sink.i = phi ptr [ %i.dn, %bb.n ], [ %i.dj, %bb.k ]
  %common.resume.op.i = phi { ptr, i32 } [ %i.do, %bb.n ], [ %i.dk, %bb.k ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i) #23
  br label %common.resume

bb.k:                                             ; preds = %bb.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i: ; preds = %bb.h
  %i.dl = load i32, ptr %i.co, align 1
  store ptr %i.dh, ptr %i.c, align 8
  %i.dm = add i32 %i.dl, -3
  %or.cond.i = icmp ult i32 %i.dm, -2
  br i1 %or.cond.i, label %bb.l, label %_ZN6AssimpL12CheckVersionEPNS_12StreamReaderILb0ELb0EEE.exit

bb.l:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull @.str.17)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.o:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store float 1.000000e+00, ptr %16, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.al, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.an, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ap, align 4
  store i32 0, ptr %i.ar, align 8
  store ptr null, ptr %i.as, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.aq, i8 0, i64 168, i1 false)
  store ptr %i.ar, ptr %i.at, align 8
  store ptr %i.ar, ptr %i.au, align 8
  store i64 0, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %17, i8 0, i64 1028, i1 false)
  %i.dp = ptrtoint ptr %i.de to i64
  %i.dq = sub i64 %i.dp, %i.cq
  %i.dr = and i64 %i.dq, 4294967288
  %.not330381.i = icmp eq i64 %i.dr, 0
  br i1 %.not330381.i, label %_ZN6AssimpL16CalculateNormalsEPNS_7SIBMeshE.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit206.i
  %i.ds = phi i32 [ %i.tu, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit206.i ], [ 0, %bb.o ] ; 21 uses
  %i.dt = phi ptr [ %i.tw, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit206.i ], [ %i.cp, %bb.o ]
  %i.du = phi ptr [ %i.un, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit206.i ], [ %i.de, %bb.o ] ; 4 uses
  %i.dv = phi ptr [ %i.ub, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit206.i ], [ %i.co, %bb.o ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 3 uses
  %i.dx = icmp ugt ptr %i.dw, %i.du
  br i1 %i.dx, label %bb.p, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i61

bb.p:                                             ; preds = %.lr.ph.i
  %i.dy = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull @.str.13)
          to label %.invoke unwind label %bb.q

.invoke:                                          ; preds = %bb.r, %bb.p
  %i.dz = phi ptr [ %i.dy, %bb.p ], [ %i.ee, %bb.r ]
  invoke void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

common.resume.i62:                                ; preds = %bb.s, %bb.q
  %.sink.i63 = phi ptr [ %i.ee, %bb.s ], [ %i.dy, %bb.q ]
  %common.resume.op.i64 = phi { ptr, i32 } [ %i.ef, %bb.s ], [ %i.ea, %bb.q ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i63) #23
  br label %.body.i

bb.q:                                             ; preds = %bb.p
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i62

_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i61: ; preds = %.lr.ph.i
  %i.eb = load i32, ptr %i.dv, align 1
  store ptr %i.dw, ptr %i.c, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.ed = icmp ugt ptr %i.ec, %i.du
  br i1 %i.ed, label %bb.r, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i

bb.r:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i61
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull @.str.13)
          to label %.invoke unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i62

_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i61
  %i.eg = load i32, ptr %i.dw, align 1            ; 5 uses
  store ptr %i.ec, ptr %i.c, align 8
  %i.eh = zext i32 %i.eg to i64
  %i.ei = ptrtoint ptr %i.du to i64
  %i.ej = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = and i64 %i.ek, 4294967295
  %i.em = icmp samesign ult i64 %i.el, %i.eh
  br i1 %i.em, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i
  %i.en = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc66 unwind label %.loopexit

.noexc66:                                         ; preds = %bb.t
end_hunk_0
begin_hunk_1_@_ZN6AssimpL9ReadSceneEPNS_3SIBEPNS_12StreamReaderILb0ELb0EEE:bb.a
  %.058107.1.i.i.i = phi ptr [ %i.abc, %bb.dz ], [ %i.aah, %.lr.ph.preheader.1.i.i.i ] ; 2 uses
  %i.aan = load i32, ptr %.058107.1.i.i.i, align 4 ; 3 uses
  %i.aao = icmp eq i32 %.057108.1.i.i.i, %i.yi
  %i.aap = icmp eq i32 %i.aan, %i.yi
  %or.cond.1.i.i.i = select i1 %i.aao, i1 true, i1 %i.aap
  br i1 %or.cond.1.i.i.i, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %.lr.ph.1.i.i.i
  %i.aaq = invoke fastcc noundef nonnull align 4 dereferenceable(12) ptr @_ZN6AssimpL7GetEdgeEPNS_7SIBMeshEjj(ptr noundef nonnull %16, i32 noundef %.057108.1.i.i.i, i32 noundef %i.aan)
          to label %.noexc61.i.i unwind label %.loopexit.i221.i ; 3 uses

.noexc61.i.i:                                     ; preds = %bb.dw
  %i.aar = load i32, ptr %i.aaq, align 4          ; 4 uses
  %i.aas = icmp eq i32 %i.aar, %.1.1.i.i.i        ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  %i.aau = load i32, ptr %i.aat, align 4          ; 4 uses
  %i.aav = icmp eq i32 %i.aau, %.1.1.i.i.i        ; 2 uses
  %or.cond70.1.i.i.i = select i1 %i.aas, i1 true, i1 %i.aav
  %or.cond70.not.1.i.i.i = xor i1 %or.cond70.1.i.i.i, true
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %i.aax = load i8, ptr %i.aaw, align 4, !range !32
  %i.aay = trunc nuw i8 %i.aax to i1
  %or.cond73.1.i.i.i = select i1 %or.cond70.not.1.i.i.i, i1 true, i1 %i.aay
  br i1 %or.cond73.1.i.i.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %.noexc61.i.i
  %.not.1.i.i.i = icmp eq i32 %i.aar, %.051.1.i.i.i
  %.not64.1.i.i.i = icmp eq i32 %i.aar, -1
  %i.aaz = or i1 %.not.1.i.i.i, %.not64.1.i.i.i
  %or.cond75.1.i.i.i = or i1 %i.aas, %i.aaz
  br i1 %or.cond75.1.i.i.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %.not65.1.i.i.i = icmp eq i32 %i.aau, %.051.1.i.i.i
  %.not67.1.i.i.i = icmp eq i32 %i.aau, -1
  %i.aba = or i1 %.not65.1.i.i.i, %.not67.1.i.i.i
  %or.cond77.1.i.i.i = or i1 %i.aav, %i.aba
  %spec.select.1.i.i.i = select i1 %or.cond77.1.i.i.i, i32 %.053110.1.i.i.i, i32 %i.aau
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %.noexc61.i.i, %.lr.ph.1.i.i.i
  %.255.1.i.i.i = phi i32 [ %.053110.1.i.i.i, %.lr.ph.1.i.i.i ], [ %.053110.1.i.i.i, %.noexc61.i.i ], [ %spec.select.1.i.i.i, %bb.dy ], [ %i.aar, %bb.dx ] ; 4 uses
  %i.abb = add nuw i32 %.056109.1.i.i.i, 1        ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.058107.1.i.i.i, i64 12
  %exitcond.1.not.i.i.i = icmp eq i32 %i.abb, %i.aag
  br i1 %exitcond.1.not.i.i.i, label %._crit_edge.1.i.i.i, label %.lr.ph.1.i.i.i, !llvm.loop !33

._crit_edge.1.i.i.i:                              ; preds = %bb.dz
  %i.abd = icmp eq i32 %.255.1.i.i.i, -1
  %i.abe = icmp eq i32 %.255.1.i.i.i, %.1.i.i.i
  %or.cond78.1.i.i.i = or i1 %i.abd, %i.abe
  br i1 %or.cond78.1.i.i.i, label %._crit_edge.1.thread.i.i.i, label %.preheader.1.i.i.i

._crit_edge.1.thread.i.i.i:                       ; preds = %._crit_edge.1.i.i.i, %.preheader.1.i.i.i
  %foldExtExtBinop = fmul <2 x float> %i.zw, %i.zw
  %i.abf = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.abg = extractelement <2 x float> %i.zw, i64 0 ; 2 uses
  %i.abh = call float @llvm.fmuladd.f32(float %i.abg, float %i.abg, float %i.abf)
  %i.abi = call noundef float @llvm.fmuladd.f32(float %i.zz, float %i.zz, float %i.abh) ; 2 uses
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.abi) ; 2 uses
  %i.abj = fcmp ule float %sqrt.i.i.i.i, f0x3089705F
  %i.abk = fcmp oeq float %i.abi, 0.000000e+00
  %or.cond106.i.i.i = or i1 %i.abk, %i.abj        ; 2 uses
  %i.abl = fdiv float 1.000000e+00, %sqrt.i.i.i.i ; 2 uses
  %i.abm = insertelement <2 x float> poison, float %i.abl, i64 0
  %i.abn = shufflevector <2 x float> %i.abm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abo = fmul <2 x float> %i.zw, %i.abn
  %i.abp = fmul float %i.zz, %i.abl
  %.sroa.080.2.i.i.i = select i1 %or.cond106.i.i.i, <2 x float> %i.zw, <2 x float> %i.abo
  %.sroa.15.2.i.i.i = select i1 %or.cond106.i.i.i, float %i.zz, float %i.abp
  %i.abq = zext i32 %i.ym to i64
  %i.abr = load ptr, ptr %i.bl, align 8
  %i.abs = getelementptr inbounds nuw [12 x i8], ptr %i.abr, i64 %i.abq ; 2 uses
  store <2 x float> %.sroa.080.2.i.i.i, ptr %i.abs, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  store float %.sroa.15.2.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %indvars.iv.next111.i.i = add nuw nsw i64 %indvars.iv110.i.i, 1 ; 2 uses
  %exitcond114.not.i.i = icmp eq i64 %indvars.iv.next111.i.i, %wide.trip.count113.i.i
  br i1 %exitcond114.not.i.i, label %._crit_edge91.i.i, label %bb.dq, !llvm.loop !34

.loopexit.i221.i:                                 ; preds = %bb.dw
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit63.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.ds
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit63.i.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit63.i.i: ; preds = %.loopexit.split-lp.i.i, %.loopexit.i221.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i221.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.wc, i64 noundef %i.wb) #24
  br label %.body.i

_ZN6AssimpL16CalculateNormalsEPNS_7SIBMeshE.exit.i: ; preds = %bb.o, %.loopexit147.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i
  %i.abt = phi i32 [ %i.tu, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i ], [ %i.tu, %.loopexit147.i.i ], [ 0, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(64) %16, i64 64, i1 false)
  %i.abu = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %19)
          to label %bb.ea unwind label %bb.ed     ; 0 uses

bb.ea:                                            ; preds = %_ZN6AssimpL16CalculateNormalsEPNS_7SIBMeshE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %20, ptr noundef nonnull align 4 dereferenceable(64) %19, i64 64, i1 false)
  store float 0.000000e+00, ptr %i.bs, align 4
  store float 0.000000e+00, ptr %i.bt, align 4
  store float 0.000000e+00, ptr %i.bu, align 4
  %i.abv = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %20)
          to label %bb.eb unwind label %bb.ee     ; 11 uses

bb.eb:                                            ; preds = %bb.ea
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 4 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %i.abz = load float, ptr %i.aby, align 4
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abv, i64 36 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abv, i64 24 ; 2 uses
  %i.acc = load float, ptr %i.aca, align 4
  %i.acd = load float, ptr %i.acb, align 4
  store float %i.acd, ptr %i.aca, align 4
  store float %i.acc, ptr %i.acb, align 4
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abv, i64 48
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abv, i64 12
  %i.acg = load float, ptr %i.acf, align 4
  %i.ach = load <12 x float>, ptr %i.abw, align 4
  store float %i.abz, ptr %i.abx, align 4
  store float %i.acg, ptr %i.ace, align 4
  %i.aci = shufflevector <12 x float> %i.ach, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.aci, ptr %i.abw, align 4
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abv, i64 52 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abv, i64 28 ; 2 uses
  %i.acl = load float, ptr %i.acj, align 4
  %i.acm = load float, ptr %i.ack, align 4
  store float %i.acm, ptr %i.acj, align 4
  store float %i.acl, ptr %i.ack, align 4
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abv, i64 56 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abv, i64 44 ; 2 uses
  %i.acp = load float, ptr %i.acn, align 4
  %i.acq = load float, ptr %i.aco, align 4
  store float %i.acq, ptr %i.acn, align 4
  store float %i.acp, ptr %i.aco, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.acr = load ptr, ptr %i.s, align 8            ; 2 uses
  %i.acs = load ptr, ptr %0, align 8              ; 2 uses
  %i.act = ptrtoint ptr %i.acr to i64
  %i.acu = ptrtoint ptr %i.acs to i64
  %i.acv = sub i64 %i.act, %i.acu
  %i.acw = ashr exact i64 %i.acv, 3               ; 3 uses
  %i.acx = icmp ugt i64 %i.acw, 96076792050570581
  br i1 %i.acx, label %bb.ec, label %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #25
          to label %.noexc227.i unwind label %.loopexit.split-lp98

.noexc227.i:                                      ; preds = %bb.ec
  unreachable

_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.eb
  store i64 0, ptr %21, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.acr, %i.acs
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN6Assimp8TempMeshESaIS1_EEC2EmRKS2_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.acy = mul nuw nsw i64 %i.acw, 96             ; 3 uses
  %i.acz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acy) #26
          to label %.noexc228.i unwind label %.loopexit97 ; 5 uses

.noexc228.i:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  store ptr %i.acz, ptr %21, align 8
  %i.ada = getelementptr inbounds nuw [96 x i8], ptr %i.acz, i64 %i.acw
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.acz, i8 0, i64 %i.acy, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.acz, i64 %i.acy
  br label %_ZNSt12_Vector_baseIN6Assimp8TempMeshESaIS1_EEC2EmRKS2_.exit.thread.i.i

_ZNSt12_Vector_baseIN6Assimp8TempMeshESaIS1_EEC2EmRKS2_.exit.thread.i.i: ; preds = %.noexc228.i, %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.adb = phi ptr [ %i.acz, %.noexc228.i ], [ null, %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 9 uses
  %i.adc = phi ptr [ %i.ada, %.noexc228.i ], [ null, %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 2 uses
  %i.add = phi ptr [ %scevgep.i.i.i.i.i.i, %.noexc228.i ], [ null, %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 5 uses
  store ptr %i.adc, ptr %i.bw, align 8
  store ptr %i.add, ptr %i.bv, align 8
  %i.ade = load ptr, ptr %i.bd, align 8
  %i.adf = load ptr, ptr %i.bc, align 8           ; 2 uses
  %.not401.i = icmp eq ptr %i.ade, %i.adf
  br i1 %.not401.i, label %._crit_edge390.i, label %.lr.ph389.i

.lr.ph389.i:                                      ; preds = %_ZNSt12_Vector_baseIN6Assimp8TempMeshESaIS1_EEC2EmRKS2_.exit.thread.i.i
  %i.adg = ptrtoint ptr %i.add to i64
  %i.adh = ptrtoint ptr %i.adb to i64
  %i.adi = sub i64 %i.adg, %i.adh
  %i.adj = sdiv exact i64 %i.adi, 96
  br label %bb.ef

._crit_edge390.i.loopexit:                        ; preds = %_ZN6aiFaceD2Ev.exit.i
  %.pre172 = load i32, ptr %17, align 4
  br label %._crit_edge390.i

._crit_edge390.i:                                 ; preds = %._crit_edge390.i.loopexit, %_ZNSt12_Vector_baseIN6Assimp8TempMeshESaIS1_EEC2EmRKS2_.exit.thread.i.i
  %i.adk = phi i32 [ %.pre172, %._crit_edge390.i.loopexit ], [ %i.abt, %_ZNSt12_Vector_baseIN6Assimp8TempMeshESaIS1_EEC2EmRKS2_.exit.thread.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %24, i8 0, i64 1028, i1 false)
  %spec.select.i229.i = call i32 @llvm.umin.i32(i32 %i.adk, i32 1023) ; 4 uses
  store i32 %spec.select.i229.i, ptr %24, align 8
  %i.adl = zext nneg i32 %spec.select.i229.i to i64 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr nonnull align 4 %i.ba, i64 %i.adl, i1 false)
  %i.adm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.adl
  store i8 0, ptr %i.adm, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %16, i64 64, i1 false)
  %i.adn = load ptr, ptr %i.ci, align 8           ; 2 uses
  %i.ado = load ptr, ptr %i.ch, align 8
  %i.adp = ptrtoint ptr %i.adn to i64
  %i.adq = ptrtoint ptr %i.ado to i64
  %i.adr = sub i64 %i.adp, %i.adq
  %i.ads = ashr exact i64 %i.adr, 3               ; 3 uses
  store i64 %i.ads, ptr %i.cj, align 8
  %.not403.i = icmp eq ptr %i.add, %i.adb
  br i1 %.not403.i, label %._crit_edge400.i, label %.lr.ph399.i

.lr.ph399.i:                                      ; preds = %._crit_edge390.i
  %i.adt = ptrtoint ptr %i.add to i64
  %i.adu = ptrtoint ptr %i.adb to i64
  %i.adv = sub i64 %i.adt, %i.adu
  %i.adw = sdiv exact i64 %i.adv, 96
  br label %bb.fg

.loopexit340.i:                                   ; preds = %bb.dj
  %lpad.loopexit342.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp341.i.loopexit:                 ; preds = %.lr.ph87.i.i
  %lpad.loopexit94 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp341.i.loopexit.split-lp:        ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp95 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ed:                                            ; preds = %_ZN6AssimpL16CalculateNormalsEPNS_7SIBMeshE.exit.i
  %i.adx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ee:                                            ; preds = %bb.ea
  %i.ady = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

.loopexit97:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %lpad.loopexit99 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

.loopexit.split-lp98:                             ; preds = %bb.ec
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.ef:                                            ; preds = %_ZN6aiFaceD2Ev.exit.i, %.lr.ph389.i
  %i.adz = phi ptr [ %i.adf, %.lr.ph389.i ], [ %i.akx, %_ZN6aiFaceD2Ev.exit.i ]
  %i.aea = phi i64 [ 0, %.lr.ph389.i ], [ %i.akv, %_ZN6aiFaceD2Ev.exit.i ] ; 2 uses
  %.088387.i = phi i32 [ 0, %.lr.ph389.i ], [ %i.aku, %_ZN6aiFaceD2Ev.exit.i ]
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %i.aea
  %i.aec = load i32, ptr %i.aeb, align 4
  %i.aed = load ptr, ptr %i.ay, align 8
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %i.aea
  %i.aef = load i32, ptr %i.aee, align 4          ; 2 uses
  %i.aeg = zext i32 %i.aec to i64
  %i.aeh = load ptr, ptr %i.be, align 8
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %i.aeg ; 2 uses
  %i.aej = zext i32 %i.aef to i64
  %.not.i = icmp ugt i64 %i.adj, %i.aej
  br i1 %.not.i, label %._crit_edge446.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aek = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aek, ptr noundef nonnull @.str.18)
          to label %._crit_edge446.i unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.ael = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

._crit_edge446.i:                                 ; preds = %bb.eh, %bb.ef
  %.089.i = phi i32 [ %i.aef, %bb.ef ], [ 0, %bb.eh ]
  %i.aem = zext i32 %.089.i to i64
  %i.aen = getelementptr inbounds nuw [96 x i8], ptr %i.adb, i64 %i.aem ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store i32 0, ptr %22, align 8
  store ptr null, ptr %i.bx, align 8
  %i.aeo = load i32, ptr %i.aei, align 4          ; 3 uses
  store i32 %i.aeo, ptr %22, align 8
  %i.aep = zext i32 %i.aeo to i64
  %i.aeq = shl nuw nsw i64 %i.aep, 2
  %i.aer = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aeq) #26
          to label %bb.ej unwind label %bb.ep

bb.ej:                                            ; preds = %._crit_edge446.i
  store ptr %i.aer, ptr %i.bx, align 8
  %.not402.i = icmp eq i32 %i.aeo, 0
  br i1 %.not402.i, label %._crit_edge386.i, label %.lr.ph385.i

.lr.ph385.i:                                      ; preds = %bb.ej
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aei, i64 4
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aen, i64 8 ; 5 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aen, i64 16 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aen, i64 24 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aen, i64 32 ; 4 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aen, i64 40 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aen, i64 48 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aen, i64 56 ; 4 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aen, i64 64 ; 2 uses
  br label %bb.eq

._crit_edge386.i:                                 ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i, %bb.ej
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aen, i64 80 ; 3 uses
  %i.afc = load ptr, ptr %i.afb, align 8          ; 6 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aen, i64 88
  %i.afe = load ptr, ptr %i.afd, align 8
  %.not.i230.i = icmp eq ptr %i.afc, %i.afe
  br i1 %.not.i230.i, label %bb.eo, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge386.i
  store i32 0, ptr %i.afc, align 8
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 8 ; 3 uses
  store ptr null, ptr %i.aff, align 8
  %i.afg = icmp eq ptr %22, %i.afc
  br i1 %i.afg, label %_ZN6aiFaceC2ERKS_.exit.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.afh = load i32, ptr %22, align 8             ; 3 uses
  store i32 %i.afh, ptr %i.afc, align 8
  %.not.i.i.i231.i = icmp eq i32 %i.afh, 0
  br i1 %.not.i.i.i231.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.afi = zext i32 %i.afh to i64
  %i.afj = shl nuw nsw i64 %i.afi, 2              ; 2 uses
  %i.afk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afj) #26
          to label %.noexc232.i unwind label %bb.ep ; 2 uses

.noexc232.i:                                      ; preds = %bb.em
  store ptr %i.afk, ptr %i.aff, align 8
  %i.afl = load ptr, ptr %i.bx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.afk, ptr align 4 %i.afl, i64 %i.afj, i1 false)
  br label %_ZN6aiFaceC2ERKS_.exit.i.i

bb.en:                                            ; preds = %bb.el
  store ptr null, ptr %i.aff, align 8
  br label %_ZN6aiFaceC2ERKS_.exit.i.i

_ZN6aiFaceC2ERKS_.exit.i.i:                       ; preds = %bb.en, %.noexc232.i, %bb.ek
  %i.afm = load ptr, ptr %i.afb, align 8
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  store ptr %i.afn, ptr %i.afb, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i

bb.eo:                                            ; preds = %._crit_edge386.i
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aen, i64 72
  invoke void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.afo, ptr %i.afc, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.em, %._crit_edge446.i
  %i.afp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.eq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i, %.lr.ph385.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph385.i ], [ %indvars.iv.next.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i ] ; 2 uses
  %.090383.i = phi ptr [ %i.aes, %.lr.ph385.i ], [ %i.ako, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i ] ; 4 uses
  %i.afq = load ptr, ptr %i.aet, align 8
  %i.afr = load ptr, ptr %i.aen, align 8
  %i.afs = ptrtoint ptr %i.afq to i64
  %i.aft = ptrtoint ptr %i.afr to i64
  %i.afu = sub i64 %i.afs, %i.aft
  %i.afv = sdiv exact i64 %i.afu, 12
  %i.afw = trunc i64 %i.afv to i32
  %i.afx = load ptr, ptr %i.bx, align 8
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %indvars.iv.i
  store i32 %i.afw, ptr %i.afy, align 4
  %i.afz = load i32, ptr %.090383.i, align 4
  %i.aga = zext i32 %i.afz to i64
  %i.agb = load ptr, ptr %i.aq, align 8
  %i.agc = getelementptr inbounds nuw [12 x i8], ptr %i.agb, i64 %i.aga ; 2 uses
  %.sroa.0318.0.copyload.i = load <2 x float>, ptr %i.agc, align 4 ; 4 uses
  %.sroa.9321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  %.sroa.9321.0.copyload.i = load float, ptr %.sroa.9321.0..sroa_idx.i, align 4 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.090383.i, i64 4
  %i.age = load i32, ptr %i.agd, align 4
  %i.agf = zext i32 %i.age to i64
  %i.agg = load ptr, ptr %i.bl, align 8
  %i.agh = getelementptr inbounds nuw [12 x i8], ptr %i.agg, i64 %i.agf ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.agh, align 4 ; 4 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx.i, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.agi = getelementptr inbounds nuw i8, ptr %.090383.i, i64 8
  %i.agj = load i32, ptr %i.agi, align 4
  %i.agk = zext i32 %i.agj to i64
  %i.agl = load ptr, ptr %i.bf, align 8
  %i.agm = getelementptr inbounds nuw [12 x i8], ptr %i.agl, i64 %i.agk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %23, ptr noundef nonnull align 4 dereferenceable(12) %i.agm, i64 12, i1 false)
  %.sroa.0318.0.vec.extract.i = extractelement <2 x float> %.sroa.0318.0.copyload.i, i64 0
  %.sroa.0318.4.vec.extract.i = extractelement <2 x float> %.sroa.0318.0.copyload.i, i64 1
  %i.agn = load <8 x float>, ptr %19, align 4     ; 4 uses
  %i.ago = shufflevector <2 x float> %.sroa.0318.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.agp = shufflevector <8 x float> %i.agn, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.agq = fmul <2 x float> %i.ago, %i.agp
  %i.agr = shufflevector <8 x float> %i.agn, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ags = shufflevector <2 x float> %.sroa.0318.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agr, <2 x float> %i.ags, <2 x float> %i.agq)
  %i.agu = shufflevector <8 x float> %i.agn, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.agv = insertelement <2 x float> poison, float %.sroa.9321.0.copyload.i, i64 0
  %i.agw = shufflevector <2 x float> %i.agv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agu, <2 x float> %i.agw, <2 x float> %i.agt)
  %i.agy = shufflevector <8 x float> %i.agn, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.agz = fadd <2 x float> %i.agy, %i.agx        ; 2 uses
  %i.aha = load float, ptr %i.by, align 4
  %i.ahb = load float, ptr %i.bz, align 4
  %i.ahc = fmul float %.sroa.0318.4.vec.extract.i, %i.ahb
  %i.ahd = call float @llvm.fmuladd.f32(float %i.aha, float %.sroa.0318.0.vec.extract.i, float %i.ahc)
  %i.ahe = load float, ptr %i.ca, align 4
  %i.ahf = call float @llvm.fmuladd.f32(float %i.ahe, float %.sroa.9321.0.copyload.i, float %i.ahd)
  %i.ahg = load float, ptr %i.cb, align 4
  %i.ahh = fadd float %i.ahg, %i.ahf              ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1
  %i.ahi = load <8 x float>, ptr %20, align 4     ; 4 uses
  %i.ahj = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ahk = shufflevector <8 x float> %i.ahi, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ahl = fmul <2 x float> %i.ahj, %i.ahk
  %i.ahm = shufflevector <8 x float> %i.ahi, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ahn = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahm, <2 x float> %i.ahn, <2 x float> %i.ahl)
  %i.ahp = shufflevector <8 x float> %i.ahi, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ahq = insertelement <2 x float> poison, float %.sroa.9.0.copyload.i, i64 0
  %i.ahr = shufflevector <2 x float> %i.ahq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahp, <2 x float> %i.ahr, <2 x float> %i.aho)
  %i.aht = shufflevector <8 x float> %i.ahi, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ahu = fadd <2 x float> %i.aht, %i.ahs        ; 2 uses
  %i.ahv = load float, ptr %i.cc, align 4
  %i.ahw = load float, ptr %i.cd, align 4
  %i.ahx = fmul float %.sroa.0.4.vec.extract.i, %i.ahw
  %i.ahy = call float @llvm.fmuladd.f32(float %i.ahv, float %.sroa.0.0.vec.extract.i, float %i.ahx)
  %i.ahz = load float, ptr %i.ce, align 4
  %i.aia = call float @llvm.fmuladd.f32(float %i.ahz, float %.sroa.9.0.copyload.i, float %i.ahy)
  %i.aib = load float, ptr %i.bs, align 4
  %i.aic = fadd float %i.aib, %i.aia              ; 2 uses
  %i.aid = load ptr, ptr %i.aet, align 8          ; 6 uses
  %i.aie = load ptr, ptr %i.aeu, align 8
  %.not.i238.i = icmp eq ptr %i.aid, %i.aie
  br i1 %.not.i238.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store <2 x float> %i.agz, ptr %i.aid, align 4
  %.sroa.9321.0..sroa_idx322.i = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  store float %i.ahh, ptr %.sroa.9321.0..sroa_idx322.i, align 4
  %i.aif = load ptr, ptr %i.aet, align 8
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 12
  store ptr %i.aig, ptr %i.aet, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit.i

bb.es:                                            ; preds = %bb.eq
  %i.aih = load ptr, ptr %i.aen, align 8          ; 5 uses
  %i.aii = ptrtoint ptr %i.aid to i64
  %i.aij = ptrtoint ptr %i.aih to i64
  %i.aik = sub i64 %i.aii, %i.aij                 ; 4 uses
  %i.ail = icmp eq i64 %i.aik, 9223372036854775800
  br i1 %i.ail, label %.invoke595.i, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke595.i:                                     ; preds = %bb.ey, %bb.ev, %bb.es
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
          to label %.cont596.i unwind label %.loopexit.split-lp336.i

.cont596.i:                                       ; preds = %.invoke595.i
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.es
  %i.aim = sdiv exact i64 %i.aik, 12              ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aim, i64 1)
  %i.ain = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aim ; 2 uses
  %i.aio = icmp ult i64 %i.ain, %i.aim
  %i.aip = call i64 @llvm.umin.i64(i64 %i.ain, i64 768614336404564650)
  %i.aiq = select i1 %i.aio, i64 768614336404564650, i64 %i.aip ; 3 uses
  %.not.i.i.i239.i = icmp ne i64 %i.aiq, 0
  call void @llvm.assume(i1 %.not.i.i.i239.i)
  %i.air = mul nuw nsw i64 %i.aiq, 12
  %i.ais = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.air) #26
          to label %.noexc243.i unwind label %.loopexit335.i ; 5 uses

.noexc243.i:                                      ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.aik ; 2 uses
  store <2 x float> %i.agz, ptr %i.ait, align 4
  %.sroa.9321.0..sroa_idx324.i = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  store float %i.ahh, ptr %.sroa.9321.0..sroa_idx324.i, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aih, %i.aid
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc243.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aiv, %.lr.ph.i.i.i.i.i.i ], [ %i.ais, %.noexc243.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aiu, %.lr.ph.i.i.i.i.i.i ], [ %i.aih, %.noexc243.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !35
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i240.i = icmp eq ptr %i.aiu, %i.aid
  br i1 %.not.i.i.i.i.i240.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc243.i
  %.0.lcssa.i.i.i.i.i241.i = phi ptr [ %i.ais, %.noexc243.i ], [ %i.aiv, %.lr.ph.i.i.i.i.i.i ]
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i241.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %i.aih, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aih, i64 noundef %i.aik) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.et, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.ais, ptr %i.aen, align 8
  store ptr %i.aiw, ptr %i.aet, align 8
  %i.aix = getelementptr inbounds nuw [12 x i8], ptr %i.ais, i64 %i.aiq
  store ptr %i.aix, ptr %i.aeu, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.er
  %i.aiy = load ptr, ptr %i.aew, align 8          ; 6 uses
  %i.aiz = load ptr, ptr %i.aex, align 8
  %.not.i244.i = icmp eq ptr %i.aiy, %i.aiz
  br i1 %.not.i244.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit.i
  store <2 x float> %i.ahu, ptr %i.aiy, align 4
  %.sroa.9.0..sroa_idx314.i = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  store float %i.aic, ptr %.sroa.9.0..sroa_idx314.i, align 4
  %i.aja = load ptr, ptr %i.aew, align 8
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 12
  store ptr %i.ajb, ptr %i.aew, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i

bb.ev:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit.i
  %i.ajc = load ptr, ptr %i.aev, align 8          ; 5 uses
  %i.ajd = ptrtoint ptr %i.aiy to i64
  %i.aje = ptrtoint ptr %i.ajc to i64
  %i.ajf = sub i64 %i.ajd, %i.aje                 ; 4 uses
  %i.ajg = icmp eq i64 %i.ajf, 9223372036854775800
  br i1 %i.ajg, label %.invoke595.i, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i245.i

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i245.i: ; preds = %bb.ev
  %i.ajh = sdiv exact i64 %i.ajf, 12              ; 3 uses
  %.sroa.speculated.i.i.i246.i = call i64 @llvm.umax.i64(i64 %i.ajh, i64 1)
  %i.aji = add nsw i64 %.sroa.speculated.i.i.i246.i, %i.ajh ; 2 uses
  %i.ajj = icmp ult i64 %i.aji, %i.ajh
  %i.ajk = call i64 @llvm.umin.i64(i64 %i.aji, i64 768614336404564650)
  %i.ajl = select i1 %i.ajj, i64 768614336404564650, i64 %i.ajk ; 3 uses
  %.not.i.i.i247.i = icmp ne i64 %i.ajl, 0
  call void @llvm.assume(i1 %.not.i.i.i247.i)
  %i.ajm = mul nuw nsw i64 %i.ajl, 12
  %i.ajn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajm) #26
          to label %.noexc258.i unwind label %.loopexit335.i ; 5 uses

.noexc258.i:                                      ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i245.i
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %i.ajf ; 2 uses
  store <2 x float> %i.ahu, ptr %i.ajo, align 4
  %.sroa.9.0..sroa_idx316.i = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  store float %i.aic, ptr %.sroa.9.0..sroa_idx316.i, align 4
  %.not10.i.i.i.i.i248.i = icmp eq ptr %i.ajc, %i.aiy
  br i1 %.not10.i.i.i.i.i248.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i, label %.lr.ph.i.i.i.i.i249.i

.lr.ph.i.i.i.i.i249.i:                            ; preds = %.noexc258.i, %.lr.ph.i.i.i.i.i249.i
  %.012.i.i.i.i.i250.i = phi ptr [ %i.ajq, %.lr.ph.i.i.i.i.i249.i ], [ %i.ajn, %.noexc258.i ] ; 2 uses
  %.0911.i.i.i.i.i251.i = phi ptr [ %i.ajp, %.lr.ph.i.i.i.i.i249.i ], [ %i.ajc, %.noexc258.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i250.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i251.i, i64 12, i1 false), !alias.scope !39
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i251.i, i64 12 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i250.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i252.i = icmp eq ptr %i.ajp, %i.aiy
  br i1 %.not.i.i.i.i.i252.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i, label %.lr.ph.i.i.i.i.i249.i, !llvm.loop !15

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i: ; preds = %.lr.ph.i.i.i.i.i249.i, %.noexc258.i
  %.0.lcssa.i.i.i.i.i254.i = phi ptr [ %i.ajn, %.noexc258.i ], [ %i.ajq, %.lr.ph.i.i.i.i.i249.i ]
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i254.i, i64 12
  %.not.i23.i.i255.i = icmp eq ptr %i.ajc, null
  br i1 %.not.i23.i.i255.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ajc, i64 noundef %i.ajf) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i: ; preds = %bb.ew, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i
  store ptr %i.ajn, ptr %i.aev, align 8
  store ptr %i.ajr, ptr %i.aew, align 8
  %i.ajs = getelementptr inbounds nuw [12 x i8], ptr %i.ajn, i64 %i.ajl
  store ptr %i.ajs, ptr %i.aex, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i, %bb.eu
  %i.ajt = load ptr, ptr %i.aez, align 8          ; 5 uses
  %i.aju = load ptr, ptr %i.afa, align 8
  %.not.i260.i = icmp eq ptr %i.ajt, %i.aju
  br i1 %.not.i260.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ajt, ptr noundef nonnull align 4 dereferenceable(12) %23, i64 12, i1 false)
  %i.ajv = load ptr, ptr %i.aez, align 8
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 12
  store ptr %i.ajw, ptr %i.aez, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i

bb.ey:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i
  %i.ajx = load ptr, ptr %i.aey, align 8          ; 5 uses
  %i.ajy = ptrtoint ptr %i.ajt to i64
  %i.ajz = ptrtoint ptr %i.ajx to i64
  %i.aka = sub i64 %i.ajy, %i.ajz                 ; 4 uses
  %i.akb = icmp eq i64 %i.aka, 9223372036854775800
  br i1 %i.akb, label %.invoke595.i, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i: ; preds = %bb.ey
  %i.akc = sdiv exact i64 %i.aka, 12              ; 3 uses
  %.sroa.speculated.i.i.i262.i = call i64 @llvm.umax.i64(i64 %i.akc, i64 1)
  %i.akd = add nsw i64 %.sroa.speculated.i.i.i262.i, %i.akc ; 2 uses
  %i.ake = icmp ult i64 %i.akd, %i.akc
  %i.akf = call i64 @llvm.umin.i64(i64 %i.akd, i64 768614336404564650)
  %i.akg = select i1 %i.ake, i64 768614336404564650, i64 %i.akf ; 3 uses
  %.not.i.i.i263.i = icmp ne i64 %i.akg, 0
  call void @llvm.assume(i1 %.not.i.i.i263.i)
  %i.akh = mul nuw nsw i64 %i.akg, 12
  %i.aki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akh) #26
          to label %.noexc274.i unwind label %.loopexit335.i ; 5 uses

.noexc274.i:                                      ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 %i.aka
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.akj, ptr noundef nonnull align 4 dereferenceable(12) %23, i64 12, i1 false)
  %.not10.i.i.i.i.i264.i = icmp eq ptr %i.ajx, %i.ajt
  br i1 %.not10.i.i.i.i.i264.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i, label %.lr.ph.i.i.i.i.i265.i

.lr.ph.i.i.i.i.i265.i:                            ; preds = %.noexc274.i, %.lr.ph.i.i.i.i.i265.i
  %.012.i.i.i.i.i266.i = phi ptr [ %i.akl, %.lr.ph.i.i.i.i.i265.i ], [ %i.aki, %.noexc274.i ] ; 2 uses
  %.0911.i.i.i.i.i267.i = phi ptr [ %i.akk, %.lr.ph.i.i.i.i.i265.i ], [ %i.ajx, %.noexc274.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i266.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i267.i, i64 12, i1 false), !alias.scope !43
  %i.akk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i267.i, i64 12 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i266.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i268.i = icmp eq ptr %i.akk, %i.ajt
  br i1 %.not.i.i.i.i.i268.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i, label %.lr.ph.i.i.i.i.i265.i, !llvm.loop !15

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i: ; preds = %.lr.ph.i.i.i.i.i265.i, %.noexc274.i
  %.0.lcssa.i.i.i.i.i270.i = phi ptr [ %i.aki, %.noexc274.i ], [ %i.akl, %.lr.ph.i.i.i.i.i265.i ]
  %i.akm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i270.i, i64 12
  %.not.i23.i.i271.i = icmp eq ptr %i.ajx, null
  br i1 %.not.i23.i.i271.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ajx, i64 noundef %i.aka) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i: ; preds = %bb.ez, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i
  store ptr %i.aki, ptr %i.aey, align 8
  store ptr %i.akm, ptr %i.aez, align 8
  %i.akn = getelementptr inbounds nuw [12 x i8], ptr %i.aki, i64 %i.akg
  store ptr %i.akn, ptr %i.afa, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %.090383.i, i64 12
  %i.akp = load i32, ptr %22, align 8
  %i.akq = zext i32 %i.akp to i64
  %i.akr = icmp samesign ult i64 %indvars.iv.next.i, %i.akq
  br i1 %i.akr, label %bb.eq, label %._crit_edge386.i, !llvm.loop !47

.loopexit335.i:                                   ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i245.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit337.i = landingpad { ptr, i32 }
          cleanup
  br label %25

.loopexit.split-lp336.i:                          ; preds = %.invoke595.i
  %lpad.loopexit.split-lp338.i = landingpad { ptr, i32 }
          cleanup
  br label %25

25:                                               ; preds = %.loopexit.split-lp336.i, %.loopexit335.i
  %lpad.phi339.i = phi { ptr, i32 } [ %lpad.loopexit337.i, %.loopexit335.i ], [ %lpad.loopexit.split-lp338.i, %.loopexit.split-lp336.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.fb

_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i: ; preds = %bb.eo, %_ZN6aiFaceC2ERKS_.exit.i.i
  %i.aks = load ptr, ptr %i.bx, align 8           ; 2 uses
  %i.akt = icmp eq ptr %i.aks, null
  br i1 %i.akt, label %_ZN6aiFaceD2Ev.exit.i, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.aks) #24
  br label %_ZN6aiFaceD2Ev.exit.i

_ZN6aiFaceD2Ev.exit.i:                            ; preds = %bb.fa, %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.aku = add i32 %.088387.i, 1                  ; 2 uses
  %i.akv = zext i32 %i.aku to i64                 ; 2 uses
  %i.akw = load ptr, ptr %i.bd, align 8
  %i.akx = load ptr, ptr %i.bc, align 8           ; 2 uses
  %i.aky = ptrtoint ptr %i.akw to i64
  %i.akz = ptrtoint ptr %i.akx to i64
  %i.ala = sub i64 %i.aky, %i.akz
  %i.alb = ashr exact i64 %i.ala, 2
  %i.alc = icmp ugt i64 %i.alb, %i.akv
  br i1 %i.alc, label %bb.ef, label %._crit_edge390.i.loopexit, !llvm.loop !48

bb.fb:                                            ; preds = %25, %bb.ep
  %.pn99.i = phi { ptr, i32 } [ %lpad.phi339.i, %25 ], [ %i.afp, %bb.ep ]
  %i.ald = load ptr, ptr %i.bx, align 8           ; 2 uses
  %i.ale = icmp eq ptr %i.ald, null
  br i1 %i.ale, label %_ZN6aiFaceD2Ev.exit276.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @_ZdaPv(ptr noundef nonnull %i.ald) #24
  br label %_ZN6aiFaceD2Ev.exit276.i

_ZN6aiFaceD2Ev.exit276.i:                         ; preds = %bb.fc, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.gd

._crit_edge400.loopexit.i:                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i
  %.pre437.i = load ptr, ptr %i.ch, align 8
  %.pre439.i = ptrtoint ptr %i.ard to i64
  %.pre440.i = ptrtoint ptr %.pre437.i to i64
  %.pre442.i = sub i64 %.pre439.i, %.pre440.i
  %.pre444.i = ashr exact i64 %.pre442.i, 3
  br label %._crit_edge400.i

._crit_edge400.i:                                 ; preds = %._crit_edge400.loopexit.i, %._crit_edge390.i
  %.pre-phi445.i = phi i64 [ %.pre444.i, %._crit_edge400.loopexit.i ], [ %i.ads, %._crit_edge390.i ]
  %i.alf = sub nsw i64 %.pre-phi445.i, %i.ads
  store i64 %i.alf, ptr %i.cl, align 8
  %i.alg = load ptr, ptr %i.ae, align 8           ; 5 uses
  %i.alh = load ptr, ptr %i.cm, align 8
  %.not.i277.i = icmp eq ptr %i.alg, %i.alh
  br i1 %.not.i277.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %._crit_edge400.i
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ali, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i229.i, ptr %i.alg, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ali, ptr nonnull align 4 %i.cg, i64 %i.adl, i1 false)
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 %i.adl
  store i8 0, ptr %i.alj, align 1
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alg, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.alk, ptr noundef nonnull align 4 dereferenceable(84) %i.cf, i64 84, i1 false)
  %i.all = load ptr, ptr %i.ae, align 8
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 1112
  store ptr %i.alm, ptr %i.ae, align 8
  br label %_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i

bb.fe:                                            ; preds = %._crit_edge400.i
  invoke void @_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr %i.alg, ptr noundef nonnull align 8 dereferenceable(1112) %24)
          to label %_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aln = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.fg:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i, %.lr.ph399.i
  %i.alo = phi ptr [ %i.adn, %.lr.ph399.i ], [ %i.ard, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i ]
  %.076397.i = phi i64 [ 0, %.lr.ph399.i ], [ %i.are, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i ] ; 4 uses
  %i.alp = getelementptr inbounds nuw [96 x i8], ptr %i.adb, i64 %.076397.i ; 7 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 72 ; 3 uses
  %i.alr = load ptr, ptr %i.alq, align 8          ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alp, i64 80
  %i.alt = load ptr, ptr %i.als, align 8          ; 2 uses
  %i.alu = icmp eq ptr %i.alr, %i.alt
  br i1 %i.alu, label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.alv = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #26
          to label %bb.fi unwind label %.loopexit334.i ; 19 uses

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.alv, align 8
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 4 ; 3 uses
  store i32 0, ptr %i.alw, align 4
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alv, i64 8 ; 3 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alv, i64 16 ; 3 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alv, i64 224
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alv, i64 1272
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alv, i64 1312
  store ptr null, ptr %i.amb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.aly, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.alz, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ama, i8 0, i64 36, i1 false)
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alv, i64 236
  store i32 %spec.select.i229.i, ptr %i.amc, align 4
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alv, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.amd, ptr nonnull align 4 %i.ba, i64 %i.adl, i1 false)
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 %i.adl
  store i8 0, ptr %i.ame, align 1
  %i.amf = ptrtoint ptr %i.alt to i64
  %i.amg = ptrtoint ptr %i.alr to i64
  %i.amh = sub i64 %i.amf, %i.amg
  %i.ami = ashr exact i64 %i.amh, 4               ; 3 uses
  %i.amj = trunc i64 %i.ami to i32                ; 2 uses
  store i32 %i.amj, ptr %i.alx, align 8
  %i.amk = and i64 %i.ami, 4294967295             ; 5 uses
  %i.aml = shl nuw nsw i64 %i.amk, 4
  %i.amm = or disjoint i64 %i.aml, 8
  %i.amn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.amm) #26
          to label %bb.fj unwind label %.loopexit334.i ; 2 uses

bb.fj:                                            ; preds = %bb.fi
  store i64 %i.amk, ptr %i.amn, align 16
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 8 ; 4 uses
  %i.amp = icmp eq i64 %i.amk, 0
  br i1 %i.amp, label %.loopexit333.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.amq = getelementptr inbounds nuw [16 x i8], ptr %i.amo, i64 %i.amk
  %i.amr = add nuw nsw i64 %i.amk, 1152921504606846975
  %i.ams = and i64 %i.amr, 1152921504606846975
  %xtraiter = and i64 %i.ami, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.fk, %.prol.preheader
  %i.amt = phi ptr [ %i.amv, %.prol.preheader ], [ %i.amo, %bb.fk ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.fk ]
  store i32 0, ptr %i.amt, align 8
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  store ptr null, ptr %i.amu, align 8
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amt, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !49

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.fk
  %.unr = phi ptr [ %i.amo, %bb.fk ], [ %i.amv, %.prol.preheader ]
  %i.amw = icmp samesign ult i64 %i.ams, 7
  br i1 %i.amw, label %.loopexit333.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.amx = phi ptr [ %i.ann, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.amx, align 8
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  store ptr null, ptr %i.amy, align 8
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amx, i64 16
  store i32 0, ptr %i.amz, align 8
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amx, i64 24
  store ptr null, ptr %i.ana, align 8
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amx, i64 32
  store i32 0, ptr %i.anb, align 8
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amx, i64 40
  store ptr null, ptr %i.anc, align 8
  %i.and = getelementptr inbounds nuw i8, ptr %i.amx, i64 48
  store i32 0, ptr %i.and, align 8
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amx, i64 56
  store ptr null, ptr %i.ane, align 8
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amx, i64 64
  store i32 0, ptr %i.anf, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amx, i64 72
  store ptr null, ptr %i.ang, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amx, i64 80
  store i32 0, ptr %i.anh, align 8
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amx, i64 88
  store ptr null, ptr %i.ani, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amx, i64 96
  store i32 0, ptr %i.anj, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amx, i64 104
  store ptr null, ptr %i.ank, align 8
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amx, i64 112
  store i32 0, ptr %i.anl, align 8
  %i.anm = getelementptr inbounds nuw i8, ptr %i.amx, i64 120
  store ptr null, ptr %i.anm, align 8
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amx, i64 128 ; 2 uses
  %i.ano = icmp eq ptr %i.ann, %i.amq
  br i1 %i.ano, label %.loopexit333.i, label %.new

.loopexit333.i:                                   ; preds = %.prol.loopexit, %.new, %bb.fj
  %i.anp = getelementptr inbounds nuw i8, ptr %i.alv, i64 208 ; 3 uses
  store ptr %i.amo, ptr %i.anp, align 8
  %i.anq = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  %i.anr = load ptr, ptr %i.anq, align 8
  %i.ans = load ptr, ptr %i.alp, align 8
  %i.ant = ptrtoint ptr %i.anr to i64
  %i.anu = ptrtoint ptr %i.ans to i64
  %i.anv = sub i64 %i.ant, %i.anu
  %i.anw = sdiv exact i64 %i.anv, 12              ; 2 uses
  %i.anx = trunc i64 %i.anw to i32                ; 2 uses
  store i32 %i.anx, ptr %i.alw, align 4
  %i.any = and i64 %i.anw, 4294967295
  %i.anz = mul nuw nsw i64 %i.any, 12             ; 9 uses
  %i.aoa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.anz) #26
          to label %bb.fl unwind label %.loopexit334.i ; 2 uses

bb.fl:                                            ; preds = %.loopexit333.i
  %i.aob = icmp eq i32 %i.anx, 0                  ; 3 uses
  br i1 %i.aob, label %.loopexit332.i, label %.loopexit332.loopexit.i

.loopexit332.loopexit.i:                          ; preds = %bb.fl
  %i.aoc = add nsw i64 %i.anz, -12
  %i.aod = urem i64 %i.aoc, 12
  %i.aoe = sub nsw i64 %i.anz, %i.aod
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aoa, i8 0, i64 %i.aoe, i1 false)
  br label %.loopexit332.i

.loopexit332.i:                                   ; preds = %.loopexit332.loopexit.i, %bb.fl
  store ptr %i.aoa, ptr %i.aly, align 8
  %i.aof = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.anz) #26
          to label %bb.fm unwind label %.loopexit334.i ; 2 uses

bb.fm:                                            ; preds = %.loopexit332.i
  br i1 %i.aob, label %.loopexit331.i, label %.loopexit331.loopexit.i

.loopexit331.loopexit.i:                          ; preds = %bb.fm
  %i.aog = add nsw i64 %i.anz, -12
  %i.aoh = urem i64 %i.aog, 12
  %i.aoi = sub nsw i64 %i.anz, %i.aoh
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aof, i8 0, i64 %i.aoi, i1 false)
  br label %.loopexit331.i

.loopexit331.i:                                   ; preds = %.loopexit331.loopexit.i, %bb.fm
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.alv, i64 24 ; 2 uses
  store ptr %i.aof, ptr %i.aoj, align 8
  %i.aok = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.anz) #26
          to label %bb.fn unwind label %.loopexit334.i ; 3 uses

bb.fn:                                            ; preds = %.loopexit331.i
  br i1 %i.aob, label %.loopexit.thread.i, label %.lr.ph393.i

.loopexit.thread.i:                               ; preds = %bb.fn
  %i.aol = getelementptr inbounds nuw i8, ptr %i.alv, i64 112
  store ptr %i.aok, ptr %i.aol, align 8
  %i.aom = getelementptr inbounds nuw i8, ptr %i.alv, i64 176
  store i32 2, ptr %i.aom, align 8
  %i.aon = trunc i64 %.076397.i to i32
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.alv, i64 232
  store i32 %i.aon, ptr %i.aoo, align 8
  br label %.preheader.i

.lr.ph393.i:                                      ; preds = %bb.fn
  %i.aop = add nsw i64 %i.anz, -12
  %i.aoq = urem i64 %i.aop, 12
  %i.aor = sub nsw i64 %i.anz, %i.aoq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aok, i8 0, i64 %i.aor, i1 false)
  %i.aos = getelementptr inbounds nuw i8, ptr %i.alv, i64 112 ; 2 uses
  store ptr %i.aok, ptr %i.aos, align 8
  %i.aot = getelementptr inbounds nuw i8, ptr %i.alv, i64 176
  store i32 2, ptr %i.aot, align 8
  %i.aou = trunc i64 %.076397.i to i32
  %i.aov = getelementptr inbounds nuw i8, ptr %i.alv, i64 232
  store i32 %i.aou, ptr %i.aov, align 8
  %i.aow = getelementptr inbounds nuw i8, ptr %i.alp, i64 24
  %i.aox = getelementptr inbounds nuw i8, ptr %i.alp, i64 48
  br label %bb.fo

.preheader.loopexit.i:                            ; preds = %bb.fo
  %.pre436.i = load i32, ptr %i.alx, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.loopexit.thread.i
  %i.aoy = phi i32 [ %.pre436.i, %.preheader.loopexit.i ], [ %i.amj, %.loopexit.thread.i ]
  %.not405.i = icmp eq i32 %i.aoy, 0
  br i1 %.not405.i, label %._crit_edge396.i, label %.lr.ph395.i.preheader

.lr.ph395.i.preheader:                            ; preds = %.preheader.i
  %i.aoz = load ptr, ptr %i.alq, align 8
  %i.apa = load ptr, ptr %i.anp, align 8
  %i.apb = icmp eq ptr %i.aoz, %i.apa
  br i1 %i.apb, label %._crit_edge396.i, label %.lr.ph395.i

.loopexit334.i:                                   ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.loopexit331.i, %.loopexit332.i, %.loopexit333.i, %bb.fi, %bb.fh
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

.loopexit.split-lp.i:                             ; preds = %bb.fr
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.fo:                                            ; preds = %bb.fo, %.lr.ph393.i
  %indvars.iv427.i = phi i64 [ 0, %.lr.ph393.i ], [ %indvars.iv.next428.i, %bb.fo ] ; 7 uses
  %i.apc = load ptr, ptr %i.alp, align 8
  %i.apd = getelementptr inbounds nuw [12 x i8], ptr %i.apc, i64 %indvars.iv427.i
  %i.ape = load ptr, ptr %i.aly, align 8
  %i.apf = getelementptr inbounds nuw [12 x i8], ptr %i.ape, i64 %indvars.iv427.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.apf, ptr noundef nonnull align 4 dereferenceable(12) %i.apd, i64 12, i1 false)
  %i.apg = load ptr, ptr %i.aow, align 8
  %i.aph = getelementptr inbounds nuw [12 x i8], ptr %i.apg, i64 %indvars.iv427.i
  %i.api = load ptr, ptr %i.aoj, align 8
  %i.apj = getelementptr inbounds nuw [12 x i8], ptr %i.api, i64 %indvars.iv427.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.apj, ptr noundef nonnull align 4 dereferenceable(12) %i.aph, i64 12, i1 false)
  %i.apk = load ptr, ptr %i.aox, align 8
  %i.apl = getelementptr inbounds nuw [12 x i8], ptr %i.apk, i64 %indvars.iv427.i
  %i.apm = load ptr, ptr %i.aos, align 8
  %i.apn = getelementptr inbounds nuw [12 x i8], ptr %i.apm, i64 %indvars.iv427.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.apn, ptr noundef nonnull align 4 dereferenceable(12) %i.apl, i64 12, i1 false)
  %indvars.iv.next428.i = add nuw nsw i64 %indvars.iv427.i, 1 ; 2 uses
  %i.apo = load i32, ptr %i.alw, align 4
  %i.app = zext i32 %i.apo to i64
  %i.apq = icmp samesign ult i64 %indvars.iv.next428.i, %i.app
  br i1 %i.apq, label %bb.fo, label %.preheader.loopexit.i, !llvm.loop !51

._crit_edge396.i:                                 ; preds = %_ZN6aiFaceaSERKS_.exit.i, %.lr.ph395.i.preheader, %.preheader.i
  %i.apr = load ptr, ptr %i.ci, align 8           ; 3 uses
  %i.aps = load ptr, ptr %i.ck, align 8
  %.not.i280.i = icmp eq ptr %i.apr, %i.aps
  br i1 %.not.i280.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %._crit_edge396.i
  store ptr %i.alv, ptr %i.apr, align 8
  %i.apt = load ptr, ptr %i.ci, align 8
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 8 ; 2 uses
  store ptr %i.apu, ptr %i.ci, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i

bb.fq:                                            ; preds = %._crit_edge396.i
  %i.apv = load ptr, ptr %i.ch, align 8           ; 4 uses
  %i.apw = ptrtoint ptr %i.apr to i64
  %i.apx = ptrtoint ptr %i.apv to i64
  %i.apy = sub i64 %i.apw, %i.apx                 ; 6 uses
  %i.apz = icmp eq i64 %i.apy, 9223372036854775800
  br i1 %i.apz, label %bb.fr, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
          to label %.noexc283.i unwind label %.loopexit.split-lp.i

.noexc283.i:                                      ; preds = %bb.fr
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fq
  %i.aqa = ashr exact i64 %i.apy, 3               ; 3 uses
  %.sroa.speculated.i.i.i281.i = call i64 @llvm.umax.i64(i64 %i.aqa, i64 1)
  %i.aqb = add nsw i64 %.sroa.speculated.i.i.i281.i, %i.aqa ; 2 uses
  %i.aqc = icmp ult i64 %i.aqb, %i.aqa
  %i.aqd = call i64 @llvm.umin.i64(i64 %i.aqb, i64 1152921504606846975)
  %i.aqe = select i1 %i.aqc, i64 1152921504606846975, i64 %i.aqd ; 3 uses
  %.not.i.i.i282.i = icmp ne i64 %i.aqe, 0
  call void @llvm.assume(i1 %.not.i.i.i282.i)
  %i.aqf = shl nuw nsw i64 %i.aqe, 3
  %i.aqg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqf) #26
          to label %.noexc284.i unwind label %.loopexit334.i ; 4 uses

.noexc284.i:                                      ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aqh = getelementptr inbounds i8, ptr %i.aqg, i64 %i.apy ; 2 uses
  store ptr %i.alv, ptr %i.aqh, align 8
  %i.aqi = icmp sgt i64 %i.apy, 0
  br i1 %i.aqi, label %bb.fs, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.fs:                                            ; preds = %.noexc284.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aqg, ptr align 8 %i.apv, i64 %i.apy, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.fs, %.noexc284.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.apv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.apv, i64 noundef %i.apy) #24
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ft, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.aqg, ptr %i.ch, align 8
  store ptr %i.aqj, ptr %i.ci, align 8
  %i.aqk = getelementptr inbounds nuw [8 x i8], ptr %i.aqg, i64 %i.aqe
  store ptr %i.aqk, ptr %i.ck, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i

.lr.ph395.i:                                      ; preds = %.lr.ph395.i.preheader, %_ZN6aiFaceaSERKS_.exit.i
  %indvars.iv430.i = phi i64 [ %indvars.iv.next431.i, %_ZN6aiFaceaSERKS_.exit.i ], [ 0, %.lr.ph395.i.preheader ] ; 3 uses
  %i.aql = load ptr, ptr %i.alq, align 8          ; 2 uses
  %i.aqm = getelementptr inbounds nuw [16 x i8], ptr %i.aql, i64 %indvars.iv430.i ; 2 uses
  %i.aqn = load ptr, ptr %i.anp, align 8          ; 2 uses
  %i.aqo = getelementptr inbounds nuw [16 x i8], ptr %i.aqn, i64 %indvars.iv430.i ; 2 uses
  %i.aqp = icmp eq ptr %i.aql, %i.aqn
  br i1 %i.aqp, label %_ZN6aiFaceaSERKS_.exit.i, label %bb.fu

bb.fu:                                            ; preds = %.lr.ph395.i
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqo, i64 8 ; 3 uses
  %i.aqr = load ptr, ptr %i.aqq, align 8          ; 2 uses
  %i.aqs = icmp eq ptr %i.aqr, null
  br i1 %i.aqs, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @_ZdaPv(ptr noundef nonnull %i.aqr) #24
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.aqt = load i32, ptr %i.aqm, align 8          ; 3 uses
  store i32 %i.aqt, ptr %i.aqo, align 8
  %.not.i285.i = icmp eq i32 %i.aqt, 0
  br i1 %.not.i285.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aqu = zext i32 %i.aqt to i64
  %i.aqv = shl nuw nsw i64 %i.aqu, 2              ; 2 uses
  %i.aqw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aqv) #26
          to label %.noexc286.i unwind label %bb.fz ; 2 uses

.noexc286.i:                                      ; preds = %bb.fx
  store ptr %i.aqw, ptr %i.aqq, align 8
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqm, i64 8
  %i.aqy = load ptr, ptr %i.aqx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aqw, ptr align 4 %i.aqy, i64 %i.aqv, i1 false)
  br label %_ZN6aiFaceaSERKS_.exit.i

bb.fy:                                            ; preds = %bb.fw
  store ptr null, ptr %i.aqq, align 8
  br label %_ZN6aiFaceaSERKS_.exit.i

_ZN6aiFaceaSERKS_.exit.i:                         ; preds = %bb.fy, %.noexc286.i, %.lr.ph395.i
  %indvars.iv.next431.i = add nuw nsw i64 %indvars.iv430.i, 1 ; 2 uses
  %i.aqz = load i32, ptr %i.alx, align 8
  %i.ara = zext i32 %i.aqz to i64
  %i.arb = icmp samesign ult i64 %indvars.iv.next431.i, %i.ara
  br i1 %i.arb, label %.lr.ph395.i, label %._crit_edge396.i, !llvm.loop !52

bb.fz:                                            ; preds = %bb.fx
  %i.arc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.fp, %bb.fg
  %i.ard = phi ptr [ %i.apu, %bb.fp ], [ %i.aqj, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.alo, %bb.fg ] ; 2 uses
  %i.are = add nuw i64 %.076397.i, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.are, %i.adw
  br i1 %exitcond.not, label %._crit_edge400.loopexit.i, label %bb.fg, !llvm.loop !54

_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i: ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp8TempMeshEEEvT_S5_(ptr noundef %i.adb, ptr noundef %i.add)
          to label %_ZSt8_DestroyIPN6Assimp8TempMeshES1_EvT_S3_RSaIT0_E.exit.i.i unwind label %bb.gb

_ZSt8_DestroyIPN6Assimp8TempMeshES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i
  %.not.i.i.i287.i = icmp eq ptr %i.adb, null
  br i1 %.not.i.i.i287.i, label %_ZN6AssimpL9ReadShapeEPNS_3SIBEPNS_12StreamReaderILb0ELb0EEE.exit, label %bb.ga

bb.ga:                                            ; preds = %_ZSt8_DestroyIPN6Assimp8TempMeshES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.arf = ptrtoint ptr %i.adc to i64
  %i.arg = ptrtoint ptr %i.adb to i64
  %i.arh = sub i64 %i.arf, %i.arg
  call void @_ZdlPvm(ptr noundef nonnull %i.adb, i64 noundef %i.arh) #24
  br label %_ZN6AssimpL9ReadShapeEPNS_3SIBEPNS_12StreamReaderILb0ELb0EEE.exit

bb.gb:                                            ; preds = %_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i
  %i.ari = landingpad { ptr, i32 }
          catch ptr null
  %i.arj = extractvalue { ptr, i32 } %i.ari, 0
  call void @__clang_call_terminate(ptr %i.arj) #27
  unreachable

bb.gc:                                            ; preds = %bb.fz, %.loopexit.split-lp.i, %.loopexit334.i, %bb.ff
  %.pn.pn.i = phi { ptr, i32 } [ %i.aln, %bb.ff ], [ %i.arc, %bb.fz ], [ %lpad.loopexit.i, %.loopexit334.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %_ZN6aiFaceD2Ev.exit276.i, %bb.ei
  %.pn99.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.gc ], [ %.pn99.i, %_ZN6aiFaceD2Ev.exit276.i ], [ %i.ael, %bb.ei ]
  call void @_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #23
  br label %bb.ge

bb.ge:                                            ; preds = %.loopexit97, %.loopexit.split-lp98, %bb.gd
  %.pn99.pn.pn.pn.i = phi { ptr, i32 } [ %.pn99.pn.pn.i, %bb.gd ], [ %lpad.loopexit99, %.loopexit97 ], [ %lpad.loopexit.split-lp100, %.loopexit.split-lp98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.ee
  %.pn99.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn99.pn.pn.pn.i, %bb.ge ], [ %i.ady, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ed
  %.pn99.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn.i, %bb.gf ], [ %i.adx, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp341.i.loopexit, %.loopexit.split-lp341.i.loopexit.split-lp, %.loopexit, %.loopexit.split-lp, %common.resume.i62, %bb.gg, %.loopexit340.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit63.i.i, %bb.dh, %bb.dd, %common.resume.i191.i, %common.resume.i181.i, %common.resume.i163.i, %bb.cc, %common.resume.i137.i, %common.resume.i117.i, %common.resume.i.i, %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp346.loopexit.split-lp.loopexit.i, %.loopexit.split-lp346.loopexit.i, %.loopexit345.i, %bb.y
  %.pn106.pn.pn.i = phi { ptr, i32 } [ %i.um, %bb.dh ], [ %.pn99.pn.pn.pn.pn.pn.i, %bb.gg ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.pl, %bb.cc ], [ %i.fd, %bb.y ], [ %common.resume.op.i.i, %common.resume.i.i ], [ %common.resume.op.i119.i, %common.resume.i117.i ], [ %common.resume.op.i139.i, %common.resume.i137.i ], [ %common.resume.op.i165.i, %common.resume.i163.i ], [ %common.resume.op.i183.i, %common.resume.i181.i ], [ %common.resume.op.i193.i, %common.resume.i191.i ], [ %i.ue, %bb.dd ], [ %lpad.phi.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit63.i.i ], [ %lpad.loopexit.split-lp358.i, %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit347.i, %.loopexit345.i ], [ %lpad.loopexit352.i, %.loopexit.split-lp346.loopexit.i ], [ %lpad.loopexit357.i, %.loopexit.split-lp346.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit342.i, %.loopexit340.i ], [ %common.resume.op.i64, %common.resume.i62 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit94, %.loopexit.split-lp341.i.loopexit ], [ %lpad.loopexit.split-lp95, %.loopexit.split-lp341.i.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN6Assimp7SIBMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %common.resume

_ZN6AssimpL9ReadShapeEPNS_3SIBEPNS_12StreamReaderILb0ELb0EEE.exit: ; preds = %_ZSt8_DestroyIPN6Assimp8TempMeshES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN6Assimp7SIBMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %_ZN6AssimpL12CheckVersionEPNS_12StreamReaderILb0ELb0EEE.exit

bb.gh:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %12, i8 0, i64 1028, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.w, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 8
  %i.ark = ptrtoint ptr %i.de to i64
  %i.arl = sub i64 %i.ark, %i.cq
  %i.arm = and i64 %i.arl, 4294967288
  %.not2445.i = icmp eq i64 %i.arm, 0
  br i1 %.not2445.i, label %._crit_edge.i20, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.gh, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit22.i
  %i.arn = phi ptr [ %i.ayx, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit22.i ], [ %i.cp, %bb.gh ]
  %i.aro = phi ptr [ %i.azo, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit22.i ], [ %i.de, %bb.gh ] ; 4 uses
  %i.arp = phi ptr [ %i.azc, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit22.i ], [ %i.co, %bb.gh ] ; 3 uses
  %.046.i = phi i32 [ %.1.i, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit22.i ], [ 0, %bb.gh ] ; 6 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 4 ; 3 uses
  %i.arr = icmp ugt ptr %i.arq, %i.aro
  br i1 %i.arr, label %bb.gi, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i68

bb.gi:                                            ; preds = %.lr.ph.i17
  %i.ars = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ars, ptr noundef nonnull @.str.13)
          to label %bb.gj unwind label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call void @__cxa_throw(ptr nonnull %i.ars, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

common.resume.i74:                                ; preds = %bb.gn, %bb.gk
  %.sink.i75 = phi ptr [ %i.arx, %bb.gn ], [ %i.ars, %bb.gk ]
  %common.resume.op.i76 = phi { ptr, i32 } [ %i.ary, %bb.gn ], [ %i.art, %bb.gk ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i75) #23
  br label %common.resume

bb.gk:                                            ; preds = %bb.gi
  %i.art = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i74

_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i68: ; preds = %.lr.ph.i17
  %i.aru = load i32, ptr %i.arp, align 1
  store ptr %i.arq, ptr %i.c, align 8
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arp, i64 8 ; 4 uses
  %i.arw = icmp ugt ptr %i.arv, %i.aro
  br i1 %i.arw, label %bb.gl, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69

bb.gl:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i68
  %i.arx = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.arx, ptr noundef nonnull @.str.13)
          to label %bb.gm unwind label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  call void @__cxa_throw(ptr nonnull %i.arx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.gn:                                            ; preds = %bb.gl
  %i.ary = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i74

_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i68
  %i.arz = load i32, ptr %i.arq, align 1          ; 3 uses
  store ptr %i.arv, ptr %i.c, align 8
  %i.asa = zext i32 %i.arz to i64
  %i.asb = ptrtoint ptr %i.aro to i64
  %i.asc = ptrtoint ptr %i.arv to i64             ; 2 uses
  %i.asd = sub i64 %i.asb, %i.asc
  %i.ase = and i64 %i.asd, 4294967295
  %i.asf = icmp samesign ult i64 %i.ase, %i.asa
  br i1 %i.asf, label %bb.go, label %_ZN6AssimpL9ReadChunkEPNS_12StreamReaderILb0ELb0EEE.exit77

bb.go:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69
  %i.asg = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.asg, ptr noundef nonnull @.str.12)
  %.pre165 = load ptr, ptr %i.c, align 8          ; 2 uses
  %.pre166 = load ptr, ptr %i.j, align 8
  %.pre167 = load ptr, ptr %i.b, align 8
  %.pre174 = ptrtoint ptr %.pre165 to i64
  br label %_ZN6AssimpL9ReadChunkEPNS_12StreamReaderILb0ELb0EEE.exit77

_ZN6AssimpL9ReadChunkEPNS_12StreamReaderILb0ELb0EEE.exit77: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69, %bb.go
  %.pre-phi175 = phi i64 [ %i.asc, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69 ], [ %.pre174, %bb.go ]
  %i.ash = phi ptr [ %i.aro, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69 ], [ %.pre167, %bb.go ]
  %i.asi = phi ptr [ %i.arn, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69 ], [ %.pre166, %bb.go ] ; 2 uses
  %i.asj = phi ptr [ %i.arv, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69 ], [ %.pre165, %bb.go ] ; 19 uses
  %.sroa.0.sroa.0.0.insert.insert.i70 = call i32 @llvm.bswap.i32(i32 %i.aru) ; 2 uses
  %i.ask = ptrtoint ptr %i.asi to i64             ; 2 uses
  %i.asl = sub i64 %.pre-phi175, %i.ask
  %i.asm = trunc i64 %i.asl to i32
  %i.asn = add i32 %i.arz, %i.asm                 ; 2 uses
  %i.aso = icmp eq i32 %i.asn, -1
  br i1 %i.aso, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_ZN6AssimpL9ReadChunkEPNS_12StreamReaderILb0ELb0EEE.exit77
  %i.asp = load ptr, ptr %i.k, align 8            ; 2 uses
  store ptr %i.asp, ptr %i.b, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit.i

bb.gq:                                            ; preds = %_ZN6AssimpL9ReadChunkEPNS_12StreamReaderILb0ELb0EEE.exit77
  %i.asq = zext i32 %i.asn to i64
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asi, i64 %i.asq ; 3 uses
  store ptr %i.asr, ptr %i.b, align 8
  %i.ass = load ptr, ptr %i.k, align 8
  %i.ast = icmp ugt ptr %i.asr, %i.ass
  br i1 %i.ast, label %bb.gr, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit.i

bb.gr:                                            ; preds = %bb.gq
  %i.asu = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.asu, ptr noundef nonnull @.str.16)
          to label %bb.gs unwind label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  call void @__cxa_throw(ptr nonnull %i.asu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.gt:                                            ; preds = %bb.gr
  %i.asv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.asu) #23
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit.i: ; preds = %bb.gq, %bb.gp
  %i.asw = phi ptr [ %i.asp, %bb.gp ], [ %i.asr, %bb.gq ] ; 17 uses
  %i.asx = ptrtoint ptr %i.ash to i64
  %i.asy = sub i64 %i.asx, %i.ask
  switch i32 %.sroa.0.sroa.0.0.insert.insert.i70, label %bb.ix [
    i32 1145654854, label %bb.iy
    i32 1346981446, label %bb.iy
    i32 1096304979, label %bb.gu
    i32 1229869897, label %bb.gv
    i32 1397576792, label %bb.gz
    i32 1397637453, label %bb.iw
  ]

bb.gu:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit.i
  call fastcc void @_ZN6AssimpL8ReadAxisER12aiMatrix4x4tIfEPNS_12StreamReaderILb0ELb0EEE(ptr noundef nonnull align 4 dereferenceable(64) %i.u, ptr noundef nonnull %1)
  br label %bb.iy

bb.gv:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit.i
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asj, i64 4 ; 2 uses
  %i.ata = icmp ugt ptr %i.asz, %i.asw
  br i1 %i.ata, label %bb.gw, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i33

bb.gw:                                            ; preds = %bb.gv
  %i.atb = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.atb, ptr noundef nonnull @.str.13)
          to label %bb.gx unwind label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  call void @__cxa_throw(ptr nonnull %i.atb, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.gy:                                            ; preds = %bb.gw
  %i.atc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.atb) #23
end_hunk_1
