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
  %23 = alloca %"struct.Assimp::SIBObject", align 8 ; 10 uses
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
  %i.cf = getelementptr inbounds nuw i8, ptr %23, i64 1028 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %23, i64 4 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %23, i64 1096
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %23, i64 1104
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

common.resume:                                    ; preds = %bb.ju, %bb.jx, %bb.ka, %bb.kd, %bb.gx, %bb.hc, %common.resume.i.i30, %bb.jf, %bb.jk, %bb.jn, %bb.nh, %bb.nc, %common.resume.i55, %common.resume.i84, %common.resume.i74, %.body.i, %common.resume.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.dd, %bb.g ], [ %common.resume.op.i, %common.resume.i ], [ %.pn106.pn.pn.i, %.body.i ], [ %common.resume.op.i76, %common.resume.i74 ], [ %i.bko, %bb.nh ], [ %i.bac, %bb.jn ], [ %common.resume.op.i86, %common.resume.i84 ], [ %common.resume.op.i57, %common.resume.i55 ], [ %i.bkg, %bb.nc ], [ %i.asw, %bb.gx ], [ %i.atd, %bb.hc ], [ %common.resume.op.i.i32, %common.resume.i.i30 ], [ %i.azg, %bb.jf ], [ %i.azo, %bb.jk ], [ %i.baw, %bb.ju ], [ %i.bbc, %bb.jx ], [ %i.bbk, %bb.ka ], [ %i.bbx, %bb.kd ]
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
  switch i32 %.sroa.0.0.extract.trunc, label %bb.mz [
    i32 1212498244, label %bb.h
    i32 1397244240, label %bb.o
    i32 1196576851, label %_ZN6AssimpL12CheckVersionEPNS_12StreamReaderILb0ELb0EEE.exit
    i32 1413830736, label %_ZN6AssimpL12CheckVersionEPNS_12StreamReaderILb0ELb0EEE.exit
    i32 1229869908, label %bb.gl
    i32 1296127058, label %bb.jr
    i32 1279739988, label %bb.kk
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
  %i.ds = phi ptr [ %i.tu, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit206.i ], [ %i.cp, %bb.o ]
  %i.dt = phi ptr [ %i.ul, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit206.i ], [ %i.de, %bb.o ] ; 4 uses
  %i.du = phi ptr [ %i.tz, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit206.i ], [ %i.co, %bb.o ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 3 uses
  %i.dw = icmp ugt ptr %i.dv, %i.dt
  br i1 %i.dw, label %bb.p, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i61

bb.p:                                             ; preds = %.lr.ph.i
  %i.dx = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull @.str.13)
          to label %.invoke unwind label %bb.q

.invoke:                                          ; preds = %bb.r, %bb.p
  %i.dy = phi ptr [ %i.dx, %bb.p ], [ %i.ed, %bb.r ]
  invoke void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

common.resume.i62:                                ; preds = %bb.s, %bb.q
  %.sink.i63 = phi ptr [ %i.ed, %bb.s ], [ %i.dx, %bb.q ]
  %common.resume.op.i64 = phi { ptr, i32 } [ %i.ee, %bb.s ], [ %i.dz, %bb.q ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i63) #23
  br label %.body.i

bb.q:                                             ; preds = %bb.p
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i62

_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i61: ; preds = %.lr.ph.i
  %i.ea = load i32, ptr %i.du, align 1
  store ptr %i.dv, ptr %i.c, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.ec = icmp ugt ptr %i.eb, %i.dt
  br i1 %i.ec, label %bb.r, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i

bb.r:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i61
  %i.ed = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull @.str.13)
          to label %.invoke unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i62

_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i61
  %i.ef = load i32, ptr %i.dv, align 1            ; 5 uses
  store ptr %i.eb, ptr %i.c, align 8
  %i.eg = zext i32 %i.ef to i64
  %i.eh = ptrtoint ptr %i.dt to i64
  %i.ei = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = icmp samesign ult i64 %i.ek, %i.eg
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i
  %i.em = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc66 unwind label %.loopexit

.noexc66:                                         ; preds = %bb.t
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.em, ptr noundef nonnull @.str.12)
end_hunk_0
begin_hunk_1_@_ZN6AssimpL9ReadSceneEPNS_3SIBEPNS_12StreamReaderILb0ELb0EEE:bb.a
  %.058101.1.i.i.i = phi ptr [ %i.abc, %bb.ed ], [ %i.aag, %.lr.ph.preheader.1.i.i.i ] ; 2 uses
  %i.aam = load i32, ptr %.058101.1.i.i.i, align 4 ; 3 uses
  %i.aan = icmp eq i32 %.057102.1.i.i.i, %i.yg
  %i.aao = icmp eq i32 %i.aam, %i.yg
  %or.cond.1.i.i.i = select i1 %i.aan, i1 true, i1 %i.aao
  br i1 %or.cond.1.i.i.i, label %bb.dy, label %bb.ed

bb.dy:                                            ; preds = %.lr.ph.1.i.i.i
  %i.aap = invoke fastcc noundef nonnull align 4 dereferenceable(12) ptr @_ZN6AssimpL7GetEdgeEPNS_7SIBMeshEjj(ptr noundef nonnull %16, i32 noundef %.057102.1.i.i.i, i32 noundef %i.aam)
          to label %.noexc61.i.i unwind label %.loopexit.i221.i ; 4 uses

.noexc61.i.i:                                     ; preds = %bb.dy
  %i.aaq = load i32, ptr %i.aap, align 4          ; 4 uses
  %i.aar = icmp eq i32 %i.aaq, %.1.1.i.i.i        ; 2 uses
  br i1 %i.aar, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %.noexc61.i.i
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 4
  %i.aat = load i32, ptr %i.aas, align 4
  %i.aau = icmp eq i32 %i.aat, %.1.1.i.i.i
  br i1 %i.aau, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz, %.noexc61.i.i
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aaw = load i8, ptr %i.aav, align 4, !range !32, !noundef !33
  %i.aax = trunc nuw i8 %i.aaw to i1
  br i1 %i.aax, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.not.1.i.i.i = icmp eq i32 %i.aaq, %.051.1.i.i.i
  %.not64.1.i.i.i = icmp eq i32 %i.aaq, -1
  %i.aay = or i1 %.not.1.i.i.i, %.not64.1.i.i.i
  %or.cond69.1.i.i.i = or i1 %i.aar, %i.aay
  br i1 %or.cond69.1.i.i.i, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aap, i64 4
  %i.aba = load i32, ptr %i.aaz, align 4          ; 4 uses
  %.not65.1.i.i.i = icmp eq i32 %i.aba, %.051.1.i.i.i
  %.not66.1.i.i.i = icmp eq i32 %i.aba, %.1.1.i.i.i
  %or.cond70.1.i.i.i = or i1 %.not65.1.i.i.i, %.not66.1.i.i.i
  %.not67.1.i.i.i = icmp eq i32 %i.aba, -1
  %or.cond71.1.i.i.i = or i1 %.not67.1.i.i.i, %or.cond70.1.i.i.i
  %spec.select.1.i.i.i = select i1 %or.cond71.1.i.i.i, i32 %.053104.1.i.i.i, i32 %i.aba
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz, %.lr.ph.1.i.i.i
  %.255.1.i.i.i = phi i32 [ %.053104.1.i.i.i, %.lr.ph.1.i.i.i ], [ %.053104.1.i.i.i, %bb.ea ], [ %.053104.1.i.i.i, %bb.dz ], [ %i.aaq, %bb.eb ], [ %spec.select.1.i.i.i, %bb.ec ] ; 4 uses
  %i.abb = add nuw i32 %.056103.1.i.i.i, 1        ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.058101.1.i.i.i, i64 12
  %exitcond.1.not.i.i.i = icmp eq i32 %i.abb, %i.aaf
  br i1 %exitcond.1.not.i.i.i, label %._crit_edge.1.i.i.i, label %.lr.ph.1.i.i.i, !llvm.loop !34

._crit_edge.1.i.i.i:                              ; preds = %bb.ed
  %i.abd = icmp eq i32 %.255.1.i.i.i, -1
  %i.abe = icmp eq i32 %.255.1.i.i.i, %.1.i.i.i
  %or.cond72.1.i.i.i = or i1 %i.abd, %i.abe
  br i1 %or.cond72.1.i.i.i, label %._crit_edge.1.thread.i.i.i, label %.preheader.1.i.i.i

._crit_edge.1.thread.i.i.i:                       ; preds = %._crit_edge.1.i.i.i, %.preheader.1.i.i.i
  %foldExtExtBinop = fmul <2 x float> %i.zv, %i.zv
  %i.abf = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.abg = extractelement <2 x float> %i.zv, i64 0 ; 2 uses
  %i.abh = call float @llvm.fmuladd.f32(float %i.abg, float %i.abg, float %i.abf)
  %i.abi = call noundef float @llvm.fmuladd.f32(float %i.zy, float %i.zy, float %i.abh) ; 2 uses
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.abi) ; 2 uses
  %i.abj = fcmp ule float %sqrt.i.i.i.i, f0x3089705F
  %i.abk = fcmp oeq float %i.abi, 0.000000e+00
  %or.cond100.i.i.i = or i1 %i.abk, %i.abj        ; 2 uses
  %i.abl = fdiv float 1.000000e+00, %sqrt.i.i.i.i ; 2 uses
  %i.abm = insertelement <2 x float> poison, float %i.abl, i64 0
  %i.abn = shufflevector <2 x float> %i.abm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abo = fmul <2 x float> %i.zv, %i.abn
  %i.abp = fmul float %i.zy, %i.abl
  %.sroa.074.2.i.i.i = select i1 %or.cond100.i.i.i, <2 x float> %i.zv, <2 x float> %i.abo
  %.sroa.15.2.i.i.i = select i1 %or.cond100.i.i.i, float %i.zy, float %i.abp
  %i.abq = zext i32 %i.yk to i64
  %i.abr = load ptr, ptr %i.bl, align 8
  %i.abs = getelementptr inbounds nuw [12 x i8], ptr %i.abr, i64 %i.abq ; 2 uses
  store <2 x float> %.sroa.074.2.i.i.i, ptr %i.abs, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  store float %.sroa.15.2.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %indvars.iv.next111.i.i = add nuw nsw i64 %indvars.iv110.i.i, 1 ; 2 uses
  %exitcond114.not.i.i = icmp eq i64 %indvars.iv.next111.i.i, %wide.trip.count113.i.i
  br i1 %exitcond114.not.i.i, label %._crit_edge91.i.i, label %bb.dq, !llvm.loop !35

.loopexit.i221.i:                                 ; preds = %bb.dy
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit63.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.ds
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit63.i.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit63.i.i: ; preds = %.loopexit.split-lp.i.i, %.loopexit.i221.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i221.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.wa, i64 noundef %i.vz) #24
  br label %.body.i

_ZN6AssimpL16CalculateNormalsEPNS_7SIBMeshE.exit.i: ; preds = %bb.o, %.loopexit147.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(64) %16, i64 64, i1 false)
  %i.abt = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %19)
          to label %bb.ee unwind label %bb.eh     ; 0 uses

bb.ee:                                            ; preds = %_ZN6AssimpL16CalculateNormalsEPNS_7SIBMeshE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %20, ptr noundef nonnull align 4 dereferenceable(64) %19, i64 64, i1 false)
  store float 0.000000e+00, ptr %i.bs, align 4
  store float 0.000000e+00, ptr %i.bt, align 4
  store float 0.000000e+00, ptr %i.bu, align 4
  %i.abu = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %20)
          to label %bb.ef unwind label %bb.ei     ; 11 uses

bb.ef:                                            ; preds = %bb.ee
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 4 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abu, i64 32
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  %i.aby = load float, ptr %i.abx, align 4
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abu, i64 36 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abu, i64 24 ; 2 uses
  %i.acb = load float, ptr %i.abz, align 4
  %i.acc = load float, ptr %i.aca, align 4
  store float %i.acc, ptr %i.abz, align 4
  store float %i.acb, ptr %i.aca, align 4
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abu, i64 48
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abu, i64 12
  %i.acf = load float, ptr %i.ace, align 4
  %i.acg = load <12 x float>, ptr %i.abv, align 4
  store float %i.aby, ptr %i.abw, align 4
  store float %i.acf, ptr %i.acd, align 4
  %i.ach = shufflevector <12 x float> %i.acg, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.ach, ptr %i.abv, align 4
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abu, i64 52 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abu, i64 28 ; 2 uses
  %i.ack = load float, ptr %i.aci, align 4
  %i.acl = load float, ptr %i.acj, align 4
  store float %i.acl, ptr %i.aci, align 4
  store float %i.ack, ptr %i.acj, align 4
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abu, i64 56 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abu, i64 44 ; 2 uses
  %i.aco = load float, ptr %i.acm, align 4
  %i.acp = load float, ptr %i.acn, align 4
  store float %i.acp, ptr %i.acm, align 4
  store float %i.aco, ptr %i.acn, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.acq = load ptr, ptr %i.s, align 8            ; 2 uses
  %i.acr = load ptr, ptr %0, align 8              ; 2 uses
  %i.acs = ptrtoint ptr %i.acq to i64
  %i.act = ptrtoint ptr %i.acr to i64
  %i.acu = sub i64 %i.acs, %i.act
  %i.acv = ashr exact i64 %i.acu, 3               ; 3 uses
  %i.acw = icmp ugt i64 %i.acv, 96076792050570581
  br i1 %i.acw, label %bb.eg, label %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.eg:                                            ; preds = %bb.ef
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #25
          to label %.noexc227.i unwind label %.loopexit.split-lp98

.noexc227.i:                                      ; preds = %bb.eg
  unreachable

_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.ef
  store i64 0, ptr %21, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.acq, %i.acr
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN6Assimp8TempMeshESaIS1_EEC2EmRKS2_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.acx = mul nuw nsw i64 %i.acv, 96             ; 3 uses
  %i.acy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acx) #26
          to label %.noexc228.i unwind label %.loopexit97 ; 5 uses

.noexc228.i:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  store ptr %i.acy, ptr %21, align 8
  %i.acz = getelementptr inbounds nuw [96 x i8], ptr %i.acy, i64 %i.acv
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.acy, i8 0, i64 %i.acx, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.acy, i64 %i.acx
  br label %_ZNSt12_Vector_baseIN6Assimp8TempMeshESaIS1_EEC2EmRKS2_.exit.thread.i.i

_ZNSt12_Vector_baseIN6Assimp8TempMeshESaIS1_EEC2EmRKS2_.exit.thread.i.i: ; preds = %.noexc228.i, %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.ada = phi ptr [ %i.acy, %.noexc228.i ], [ null, %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 9 uses
  %i.adb = phi ptr [ %i.acz, %.noexc228.i ], [ null, %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 2 uses
  %i.adc = phi ptr [ %scevgep.i.i.i.i.i.i, %.noexc228.i ], [ null, %_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 5 uses
  store ptr %i.adb, ptr %i.bw, align 8
  store ptr %i.adc, ptr %i.bv, align 8
  %i.add = load ptr, ptr %i.bd, align 8
  %i.ade = load ptr, ptr %i.bc, align 8           ; 2 uses
  %.not401.i = icmp eq ptr %i.add, %i.ade
  br i1 %.not401.i, label %._crit_edge390.i, label %.lr.ph389.i

.lr.ph389.i:                                      ; preds = %_ZNSt12_Vector_baseIN6Assimp8TempMeshESaIS1_EEC2EmRKS2_.exit.thread.i.i
  %i.adf = ptrtoint ptr %i.adc to i64
  %i.adg = ptrtoint ptr %i.ada to i64
  %i.adh = sub i64 %i.adf, %i.adg
  %i.adi = sdiv exact i64 %i.adh, 96
  br label %bb.ej

._crit_edge390.i:                                 ; preds = %_ZN6aiFaceD2Ev.exit.i, %_ZNSt12_Vector_baseIN6Assimp8TempMeshESaIS1_EEC2EmRKS2_.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %23, i8 0, i64 1028, i1 false)
  %i.adj = load i32, ptr %17, align 4
  %spec.select.i229.i = call i32 @llvm.umin.i32(i32 %i.adj, i32 1023) ; 4 uses
  store i32 %spec.select.i229.i, ptr %23, align 8
  %i.adk = zext nneg i32 %spec.select.i229.i to i64 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr nonnull align 4 %i.ba, i64 %i.adk, i1 false)
  %i.adl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.adk
  store i8 0, ptr %i.adl, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %16, i64 64, i1 false)
  %i.adm = load ptr, ptr %i.ci, align 8           ; 2 uses
  %i.adn = load ptr, ptr %i.ch, align 8
  %i.ado = ptrtoint ptr %i.adm to i64
  %i.adp = ptrtoint ptr %i.adn to i64
  %i.adq = sub i64 %i.ado, %i.adp
  %i.adr = ashr exact i64 %i.adq, 3               ; 3 uses
  store i64 %i.adr, ptr %i.cj, align 8
  %.not403.i = icmp eq ptr %i.adc, %i.ada
  br i1 %.not403.i, label %._crit_edge400.i, label %.lr.ph399.i

.lr.ph399.i:                                      ; preds = %._crit_edge390.i
  %i.ads = ptrtoint ptr %i.adc to i64
  %i.adt = ptrtoint ptr %i.ada to i64
  %i.adu = sub i64 %i.ads, %i.adt
  %i.adv = sdiv exact i64 %i.adu, 96
  br label %bb.fk

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

bb.eh:                                            ; preds = %_ZN6AssimpL16CalculateNormalsEPNS_7SIBMeshE.exit.i
  %i.adw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.ei:                                            ; preds = %bb.ee
  %i.adx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

.loopexit97:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %lpad.loopexit99 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

.loopexit.split-lp98:                             ; preds = %bb.eg
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.ej:                                            ; preds = %_ZN6aiFaceD2Ev.exit.i, %.lr.ph389.i
  %i.ady = phi ptr [ %i.ade, %.lr.ph389.i ], [ %i.akw, %_ZN6aiFaceD2Ev.exit.i ]
  %i.adz = phi i64 [ 0, %.lr.ph389.i ], [ %i.aku, %_ZN6aiFaceD2Ev.exit.i ] ; 2 uses
  %.088387.i = phi i32 [ 0, %.lr.ph389.i ], [ %i.akt, %_ZN6aiFaceD2Ev.exit.i ]
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.ady, i64 %i.adz
  %i.aeb = load i32, ptr %i.aea, align 4
  %i.aec = load ptr, ptr %i.ay, align 8
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %i.adz
  %i.aee = load i32, ptr %i.aed, align 4          ; 2 uses
  %i.aef = zext i32 %i.aeb to i64
  %i.aeg = load ptr, ptr %i.be, align 8
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %i.aef ; 2 uses
  %i.aei = zext i32 %i.aee to i64
  %.not.i = icmp ugt i64 %i.adi, %i.aei
  br i1 %.not.i, label %._crit_edge446.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aej = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aej, ptr noundef nonnull @.str.18)
          to label %._crit_edge446.i unwind label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.aek = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

._crit_edge446.i:                                 ; preds = %bb.el, %bb.ej
  %.089.i = phi i32 [ %i.aee, %bb.ej ], [ 0, %bb.el ]
  %i.ael = zext i32 %.089.i to i64
  %i.aem = getelementptr inbounds nuw [96 x i8], ptr %i.ada, i64 %i.ael ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store i32 0, ptr %22, align 8
  store ptr null, ptr %i.bx, align 8
  %i.aen = load i32, ptr %i.aeh, align 4          ; 3 uses
  store i32 %i.aen, ptr %22, align 8
  %i.aeo = zext i32 %i.aen to i64
  %i.aep = shl nuw nsw i64 %i.aeo, 2
  %i.aeq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aep) #26
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %._crit_edge446.i
  store ptr %i.aeq, ptr %i.bx, align 8
  %.not402.i = icmp eq i32 %i.aen, 0
  br i1 %.not402.i, label %._crit_edge386.i, label %.lr.ph385.i

.lr.ph385.i:                                      ; preds = %bb.en
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeh, i64 4
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aem, i64 8 ; 5 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aem, i64 16 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aem, i64 24 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aem, i64 32 ; 4 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aem, i64 40 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aem, i64 48 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aem, i64 56 ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aem, i64 64 ; 2 uses
  br label %bb.eu

._crit_edge386.i:                                 ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i, %bb.en
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aem, i64 80 ; 3 uses
  %i.afb = load ptr, ptr %i.afa, align 8          ; 6 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aem, i64 88
  %i.afd = load ptr, ptr %i.afc, align 8
  %.not.i230.i = icmp eq ptr %i.afb, %i.afd
  br i1 %.not.i230.i, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge386.i
  store i32 0, ptr %i.afb, align 8
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 8 ; 3 uses
  store ptr null, ptr %i.afe, align 8
  %i.aff = icmp eq ptr %22, %i.afb
  br i1 %i.aff, label %_ZN6aiFaceC2ERKS_.exit.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.afg = load i32, ptr %22, align 8             ; 3 uses
  store i32 %i.afg, ptr %i.afb, align 8
  %.not.i.i.i231.i = icmp eq i32 %i.afg, 0
  br i1 %.not.i.i.i231.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.afh = zext i32 %i.afg to i64
  %i.afi = shl nuw nsw i64 %i.afh, 2              ; 2 uses
  %i.afj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afi) #26
          to label %.noexc232.i unwind label %bb.et ; 2 uses

.noexc232.i:                                      ; preds = %bb.eq
  store ptr %i.afj, ptr %i.afe, align 8
  %i.afk = load ptr, ptr %i.bx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.afj, ptr align 4 %i.afk, i64 %i.afi, i1 false)
  br label %_ZN6aiFaceC2ERKS_.exit.i.i

bb.er:                                            ; preds = %bb.ep
  store ptr null, ptr %i.afe, align 8
  br label %_ZN6aiFaceC2ERKS_.exit.i.i

_ZN6aiFaceC2ERKS_.exit.i.i:                       ; preds = %bb.er, %.noexc232.i, %bb.eo
  %i.afl = load ptr, ptr %i.afa, align 8
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  store ptr %i.afm, ptr %i.afa, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i

bb.es:                                            ; preds = %._crit_edge386.i
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aem, i64 72
  invoke void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.afn, ptr %i.afb, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i unwind label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.eq, %._crit_edge446.i
  %i.afo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.eu:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i, %.lr.ph385.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph385.i ], [ %indvars.iv.next.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i ] ; 2 uses
  %.090383.i = phi ptr [ %i.aer, %.lr.ph385.i ], [ %i.akn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i ] ; 4 uses
  %i.afp = load ptr, ptr %i.aes, align 8
  %i.afq = load ptr, ptr %i.aem, align 8
  %i.afr = ptrtoint ptr %i.afp to i64
  %i.afs = ptrtoint ptr %i.afq to i64
  %i.aft = sub i64 %i.afr, %i.afs
  %i.afu = sdiv exact i64 %i.aft, 12
  %i.afv = trunc i64 %i.afu to i32
  %i.afw = load ptr, ptr %i.bx, align 8
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %indvars.iv.i
  store i32 %i.afv, ptr %i.afx, align 4
  %i.afy = load i32, ptr %.090383.i, align 4
  %i.afz = zext i32 %i.afy to i64
  %i.aga = load ptr, ptr %i.aq, align 8
  %i.agb = getelementptr inbounds nuw [12 x i8], ptr %i.aga, i64 %i.afz ; 2 uses
  %.sroa.0318.0.copyload.i = load <2 x float>, ptr %i.agb, align 4 ; 4 uses
  %.sroa.9321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %.sroa.9321.0.copyload.i = load float, ptr %.sroa.9321.0..sroa_idx.i, align 4 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.090383.i, i64 4
  %i.agd = load i32, ptr %i.agc, align 4
  %i.age = zext i32 %i.agd to i64
  %i.agf = load ptr, ptr %i.bl, align 8
  %i.agg = getelementptr inbounds nuw [12 x i8], ptr %i.agf, i64 %i.age ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.agg, align 4 ; 4 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx.i, align 4 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.090383.i, i64 8
  %i.agi = load i32, ptr %i.agh, align 4
  %i.agj = zext i32 %i.agi to i64
  %i.agk = load ptr, ptr %i.bf, align 8
  %i.agl = getelementptr inbounds nuw [12 x i8], ptr %i.agk, i64 %i.agj
  %.sroa.0.0.copyload = load <3 x float>, ptr %i.agl, align 4 ; 2 uses
  %.sroa.0318.0.vec.extract.i = extractelement <2 x float> %.sroa.0318.0.copyload.i, i64 0
  %.sroa.0318.4.vec.extract.i = extractelement <2 x float> %.sroa.0318.0.copyload.i, i64 1
  %i.agm = load <8 x float>, ptr %19, align 4     ; 4 uses
  %i.agn = shufflevector <2 x float> %.sroa.0318.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ago = shufflevector <8 x float> %i.agm, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.agp = fmul <2 x float> %i.agn, %i.ago
  %i.agq = shufflevector <8 x float> %i.agm, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.agr = shufflevector <2 x float> %.sroa.0318.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ags = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agq, <2 x float> %i.agr, <2 x float> %i.agp)
  %i.agt = shufflevector <8 x float> %i.agm, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.agu = insertelement <2 x float> poison, float %.sroa.9321.0.copyload.i, i64 0
  %i.agv = shufflevector <2 x float> %i.agu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agt, <2 x float> %i.agv, <2 x float> %i.ags)
  %i.agx = shufflevector <8 x float> %i.agm, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.agy = fadd <2 x float> %i.agx, %i.agw        ; 2 uses
  %i.agz = load float, ptr %i.by, align 4
  %i.aha = load float, ptr %i.bz, align 4
  %i.ahb = fmul float %.sroa.0318.4.vec.extract.i, %i.aha
  %i.ahc = call float @llvm.fmuladd.f32(float %i.agz, float %.sroa.0318.0.vec.extract.i, float %i.ahb)
  %i.ahd = load float, ptr %i.ca, align 4
  %i.ahe = call float @llvm.fmuladd.f32(float %i.ahd, float %.sroa.9321.0.copyload.i, float %i.ahc)
  %i.ahf = load float, ptr %i.cb, align 4
  %i.ahg = fadd float %i.ahf, %i.ahe              ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1
  %i.ahh = load <8 x float>, ptr %20, align 4     ; 4 uses
  %i.ahi = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ahj = shufflevector <8 x float> %i.ahh, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ahk = fmul <2 x float> %i.ahi, %i.ahj
  %i.ahl = shufflevector <8 x float> %i.ahh, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ahm = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahl, <2 x float> %i.ahm, <2 x float> %i.ahk)
  %i.aho = shufflevector <8 x float> %i.ahh, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ahp = insertelement <2 x float> poison, float %.sroa.9.0.copyload.i, i64 0
  %i.ahq = shufflevector <2 x float> %i.ahp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aho, <2 x float> %i.ahq, <2 x float> %i.ahn)
  %i.ahs = shufflevector <8 x float> %i.ahh, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.aht = fadd <2 x float> %i.ahs, %i.ahr        ; 2 uses
  %i.ahu = load float, ptr %i.cc, align 4
  %i.ahv = load float, ptr %i.cd, align 4
  %i.ahw = fmul float %.sroa.0.4.vec.extract.i, %i.ahv
  %i.ahx = call float @llvm.fmuladd.f32(float %i.ahu, float %.sroa.0.0.vec.extract.i, float %i.ahw)
  %i.ahy = load float, ptr %i.ce, align 4
  %i.ahz = call float @llvm.fmuladd.f32(float %i.ahy, float %.sroa.9.0.copyload.i, float %i.ahx)
  %i.aia = load float, ptr %i.bs, align 4
  %i.aib = fadd float %i.aia, %i.ahz              ; 2 uses
  %i.aic = load ptr, ptr %i.aes, align 8          ; 6 uses
  %i.aid = load ptr, ptr %i.aet, align 8
  %.not.i238.i = icmp eq ptr %i.aic, %i.aid
  br i1 %.not.i238.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  store <2 x float> %i.agy, ptr %i.aic, align 4
  %.sroa.9321.0..sroa_idx322.i = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  store float %i.ahg, ptr %.sroa.9321.0..sroa_idx322.i, align 4
  %i.aie = load ptr, ptr %i.aes, align 8
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 12
  store ptr %i.aif, ptr %i.aes, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit.i

bb.ew:                                            ; preds = %bb.eu
  %i.aig = load ptr, ptr %i.aem, align 8          ; 5 uses
  %i.aih = ptrtoint ptr %i.aic to i64
  %i.aii = ptrtoint ptr %i.aig to i64
  %i.aij = sub i64 %i.aih, %i.aii                 ; 4 uses
  %i.aik = icmp eq i64 %i.aij, 9223372036854775800
  br i1 %i.aik, label %.invoke595.i, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke595.i:                                     ; preds = %bb.fc, %bb.ez, %bb.ew
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
          to label %.cont596.i unwind label %.loopexit.split-lp336.i

.cont596.i:                                       ; preds = %.invoke595.i
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ew
  %i.ail = sdiv exact i64 %i.aij, 12              ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ail, i64 1)
  %i.aim = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ail ; 2 uses
  %i.ain = icmp ult i64 %i.aim, %i.ail
  %i.aio = call i64 @llvm.umin.i64(i64 %i.aim, i64 768614336404564650)
  %i.aip = select i1 %i.ain, i64 768614336404564650, i64 %i.aio ; 3 uses
  %.not.i.i.i239.i = icmp ne i64 %i.aip, 0
  call void @llvm.assume(i1 %.not.i.i.i239.i)
  %i.aiq = mul nuw nsw i64 %i.aip, 12
  %i.air = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aiq) #26
          to label %.noexc243.i unwind label %.loopexit335.i ; 5 uses

.noexc243.i:                                      ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 %i.aij ; 2 uses
  store <2 x float> %i.agy, ptr %i.ais, align 4
  %.sroa.9321.0..sroa_idx324.i = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  store float %i.ahg, ptr %.sroa.9321.0..sroa_idx324.i, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aig, %i.aic
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc243.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aiu, %.lr.ph.i.i.i.i.i.i ], [ %i.air, %.noexc243.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ait, %.lr.ph.i.i.i.i.i.i ], [ %i.aig, %.noexc243.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !36
  %i.ait = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i240.i = icmp eq ptr %i.ait, %i.aic
  br i1 %.not.i.i.i.i.i240.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc243.i
  %.0.lcssa.i.i.i.i.i241.i = phi ptr [ %i.air, %.noexc243.i ], [ %i.aiu, %.lr.ph.i.i.i.i.i.i ]
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i241.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %i.aig, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aig, i64 noundef %i.aij) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ex, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.air, ptr %i.aem, align 8
  store ptr %i.aiv, ptr %i.aes, align 8
  %i.aiw = getelementptr inbounds nuw [12 x i8], ptr %i.air, i64 %i.aip
  store ptr %i.aiw, ptr %i.aet, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ev
  %i.aix = load ptr, ptr %i.aev, align 8          ; 6 uses
  %i.aiy = load ptr, ptr %i.aew, align 8
  %.not.i244.i = icmp eq ptr %i.aix, %i.aiy
  br i1 %.not.i244.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit.i
  store <2 x float> %i.aht, ptr %i.aix, align 4
  %.sroa.9.0..sroa_idx314.i = getelementptr inbounds nuw i8, ptr %i.aix, i64 8
  store float %i.aib, ptr %.sroa.9.0..sroa_idx314.i, align 4
  %i.aiz = load ptr, ptr %i.aev, align 8
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 12
  store ptr %i.aja, ptr %i.aev, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i

bb.ez:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit.i
  %i.ajb = load ptr, ptr %i.aeu, align 8          ; 5 uses
  %i.ajc = ptrtoint ptr %i.aix to i64
  %i.ajd = ptrtoint ptr %i.ajb to i64
  %i.aje = sub i64 %i.ajc, %i.ajd                 ; 4 uses
  %i.ajf = icmp eq i64 %i.aje, 9223372036854775800
  br i1 %i.ajf, label %.invoke595.i, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i245.i

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i245.i: ; preds = %bb.ez
  %i.ajg = sdiv exact i64 %i.aje, 12              ; 3 uses
  %.sroa.speculated.i.i.i246.i = call i64 @llvm.umax.i64(i64 %i.ajg, i64 1)
  %i.ajh = add nsw i64 %.sroa.speculated.i.i.i246.i, %i.ajg ; 2 uses
  %i.aji = icmp ult i64 %i.ajh, %i.ajg
  %i.ajj = call i64 @llvm.umin.i64(i64 %i.ajh, i64 768614336404564650)
  %i.ajk = select i1 %i.aji, i64 768614336404564650, i64 %i.ajj ; 3 uses
  %.not.i.i.i247.i = icmp ne i64 %i.ajk, 0
  call void @llvm.assume(i1 %.not.i.i.i247.i)
  %i.ajl = mul nuw nsw i64 %i.ajk, 12
  %i.ajm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajl) #26
          to label %.noexc258.i unwind label %.loopexit335.i ; 5 uses

.noexc258.i:                                      ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i245.i
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.aje ; 2 uses
  store <2 x float> %i.aht, ptr %i.ajn, align 4
  %.sroa.9.0..sroa_idx316.i = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  store float %i.aib, ptr %.sroa.9.0..sroa_idx316.i, align 4
  %.not10.i.i.i.i.i248.i = icmp eq ptr %i.ajb, %i.aix
  br i1 %.not10.i.i.i.i.i248.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i, label %.lr.ph.i.i.i.i.i249.i

.lr.ph.i.i.i.i.i249.i:                            ; preds = %.noexc258.i, %.lr.ph.i.i.i.i.i249.i
  %.012.i.i.i.i.i250.i = phi ptr [ %i.ajp, %.lr.ph.i.i.i.i.i249.i ], [ %i.ajm, %.noexc258.i ] ; 2 uses
  %.0911.i.i.i.i.i251.i = phi ptr [ %i.ajo, %.lr.ph.i.i.i.i.i249.i ], [ %i.ajb, %.noexc258.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i250.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i251.i, i64 12, i1 false), !alias.scope !40
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i251.i, i64 12 ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i250.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i252.i = icmp eq ptr %i.ajo, %i.aix
  br i1 %.not.i.i.i.i.i252.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i, label %.lr.ph.i.i.i.i.i249.i, !llvm.loop !15

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i: ; preds = %.lr.ph.i.i.i.i.i249.i, %.noexc258.i
  %.0.lcssa.i.i.i.i.i254.i = phi ptr [ %i.ajm, %.noexc258.i ], [ %i.ajp, %.lr.ph.i.i.i.i.i249.i ]
  %i.ajq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i254.i, i64 12
  %.not.i23.i.i255.i = icmp eq ptr %i.ajb, null
  br i1 %.not.i23.i.i255.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ajb, i64 noundef %i.aje) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i: ; preds = %bb.fa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i
  store ptr %i.ajm, ptr %i.aeu, align 8
  store ptr %i.ajq, ptr %i.aev, align 8
  %i.ajr = getelementptr inbounds nuw [12 x i8], ptr %i.ajm, i64 %i.ajk
  store ptr %i.ajr, ptr %i.aew, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i, %bb.ey
  %i.ajs = load ptr, ptr %i.aey, align 8          ; 5 uses
  %i.ajt = load ptr, ptr %i.aez, align 8
  %.not.i260.i = icmp eq ptr %i.ajs, %i.ajt
  br i1 %.not.i260.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i
  store <3 x float> %.sroa.0.0.copyload, ptr %i.ajs, align 4
  %i.aju = load ptr, ptr %i.aey, align 8
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 12
  store ptr %i.ajv, ptr %i.aey, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i

bb.fc:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i
  %i.ajw = load ptr, ptr %i.aex, align 8          ; 5 uses
  %i.ajx = ptrtoint ptr %i.ajs to i64
  %i.ajy = ptrtoint ptr %i.ajw to i64
  %i.ajz = sub i64 %i.ajx, %i.ajy                 ; 4 uses
  %i.aka = icmp eq i64 %i.ajz, 9223372036854775800
  br i1 %i.aka, label %.invoke595.i, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i: ; preds = %bb.fc
  %i.akb = sdiv exact i64 %i.ajz, 12              ; 3 uses
  %.sroa.speculated.i.i.i262.i = call i64 @llvm.umax.i64(i64 %i.akb, i64 1)
  %i.akc = add nsw i64 %.sroa.speculated.i.i.i262.i, %i.akb ; 2 uses
  %i.akd = icmp ult i64 %i.akc, %i.akb
  %i.ake = call i64 @llvm.umin.i64(i64 %i.akc, i64 768614336404564650)
  %i.akf = select i1 %i.akd, i64 768614336404564650, i64 %i.ake ; 3 uses
  %.not.i.i.i263.i = icmp ne i64 %i.akf, 0
  call void @llvm.assume(i1 %.not.i.i.i263.i)
  %i.akg = mul nuw nsw i64 %i.akf, 12
  %i.akh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akg) #26
          to label %.noexc274.i unwind label %.loopexit335.i ; 5 uses

.noexc274.i:                                      ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 %i.ajz
  store <3 x float> %.sroa.0.0.copyload, ptr %i.aki, align 4
  %.not10.i.i.i.i.i264.i = icmp eq ptr %i.ajw, %i.ajs
  br i1 %.not10.i.i.i.i.i264.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i, label %.lr.ph.i.i.i.i.i265.i

.lr.ph.i.i.i.i.i265.i:                            ; preds = %.noexc274.i, %.lr.ph.i.i.i.i.i265.i
  %.012.i.i.i.i.i266.i = phi ptr [ %i.akk, %.lr.ph.i.i.i.i.i265.i ], [ %i.akh, %.noexc274.i ] ; 2 uses
  %.0911.i.i.i.i.i267.i = phi ptr [ %i.akj, %.lr.ph.i.i.i.i.i265.i ], [ %i.ajw, %.noexc274.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i266.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i267.i, i64 12, i1 false), !alias.scope !44
  %i.akj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i267.i, i64 12 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i266.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i268.i = icmp eq ptr %i.akj, %i.ajs
  br i1 %.not.i.i.i.i.i268.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i, label %.lr.ph.i.i.i.i.i265.i, !llvm.loop !15

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i: ; preds = %.lr.ph.i.i.i.i.i265.i, %.noexc274.i
  %.0.lcssa.i.i.i.i.i270.i = phi ptr [ %i.akh, %.noexc274.i ], [ %i.akk, %.lr.ph.i.i.i.i.i265.i ]
  %i.akl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i270.i, i64 12
  %.not.i23.i.i271.i = icmp eq ptr %i.ajw, null
  br i1 %.not.i23.i.i271.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ajw, i64 noundef %i.ajz) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i: ; preds = %bb.fd, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i
  store ptr %i.akh, ptr %i.aex, align 8
  store ptr %i.akl, ptr %i.aey, align 8
  %i.akm = getelementptr inbounds nuw [12 x i8], ptr %i.akh, i64 %i.akf
  store ptr %i.akm, ptr %i.aez, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i, %bb.fb
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.090383.i, i64 12
  %i.ako = load i32, ptr %22, align 8
  %i.akp = zext i32 %i.ako to i64
  %i.akq = icmp samesign ult i64 %indvars.iv.next.i, %i.akp
  br i1 %i.akq, label %bb.eu, label %._crit_edge386.i, !llvm.loop !48

.loopexit335.i:                                   ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i245.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit337.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

.loopexit.split-lp336.i:                          ; preds = %.invoke595.i
  %lpad.loopexit.split-lp338.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i: ; preds = %bb.es, %_ZN6aiFaceC2ERKS_.exit.i.i
  %i.akr = load ptr, ptr %i.bx, align 8           ; 2 uses
  %i.aks = icmp eq ptr %i.akr, null
  br i1 %i.aks, label %_ZN6aiFaceD2Ev.exit.i, label %bb.fe

bb.fe:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.akr) #24
  br label %_ZN6aiFaceD2Ev.exit.i

_ZN6aiFaceD2Ev.exit.i:                            ; preds = %bb.fe, %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.akt = add i32 %.088387.i, 1                  ; 2 uses
  %i.aku = zext i32 %i.akt to i64                 ; 2 uses
  %i.akv = load ptr, ptr %i.bd, align 8
  %i.akw = load ptr, ptr %i.bc, align 8           ; 2 uses
  %i.akx = ptrtoint ptr %i.akv to i64
  %i.aky = ptrtoint ptr %i.akw to i64
  %i.akz = sub i64 %i.akx, %i.aky
  %i.ala = ashr exact i64 %i.akz, 2
  %i.alb = icmp ugt i64 %i.ala, %i.aku
  br i1 %i.alb, label %bb.ej, label %._crit_edge390.i, !llvm.loop !49

bb.ff:                                            ; preds = %.loopexit335.i, %.loopexit.split-lp336.i, %bb.et
  %.pn99.i = phi { ptr, i32 } [ %i.afo, %bb.et ], [ %lpad.loopexit337.i, %.loopexit335.i ], [ %lpad.loopexit.split-lp338.i, %.loopexit.split-lp336.i ]
  %i.alc = load ptr, ptr %i.bx, align 8           ; 2 uses
  %i.ald = icmp eq ptr %i.alc, null
  br i1 %i.ald, label %_ZN6aiFaceD2Ev.exit276.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZdaPv(ptr noundef nonnull %i.alc) #24
  br label %_ZN6aiFaceD2Ev.exit276.i

_ZN6aiFaceD2Ev.exit276.i:                         ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.gh

._crit_edge400.loopexit.i:                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i
  %.pre437.i = load ptr, ptr %i.ch, align 8
  %.pre439.i = ptrtoint ptr %i.are to i64
  %.pre440.i = ptrtoint ptr %.pre437.i to i64
  %.pre442.i = sub i64 %.pre439.i, %.pre440.i
  %.pre444.i = ashr exact i64 %.pre442.i, 3
  br label %._crit_edge400.i

._crit_edge400.i:                                 ; preds = %._crit_edge400.loopexit.i, %._crit_edge390.i
  %.pre-phi445.i = phi i64 [ %.pre444.i, %._crit_edge400.loopexit.i ], [ %i.adr, %._crit_edge390.i ]
  %i.ale = sub nsw i64 %.pre-phi445.i, %i.adr
  store i64 %i.ale, ptr %i.cl, align 8
  %i.alf = load ptr, ptr %i.ae, align 8           ; 5 uses
  %i.alg = load ptr, ptr %i.cm, align 8
  %.not.i277.i = icmp eq ptr %i.alf, %i.alg
  br i1 %.not.i277.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %._crit_edge400.i
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alf, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.alh, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i229.i, ptr %i.alf, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.alh, ptr nonnull align 4 %i.cg, i64 %i.adk, i1 false)
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.adk
  store i8 0, ptr %i.ali, align 1
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alf, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.alj, ptr noundef nonnull align 4 dereferenceable(84) %i.cf, i64 84, i1 false)
  %i.alk = load ptr, ptr %i.ae, align 8
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 1112
  store ptr %i.all, ptr %i.ae, align 8
  br label %_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i

bb.fi:                                            ; preds = %._crit_edge400.i
  invoke void @_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr %i.alf, ptr noundef nonnull align 8 dereferenceable(1112) %23)
          to label %_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.alm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.fk:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i, %.lr.ph399.i
  %i.aln = phi ptr [ %i.adm, %.lr.ph399.i ], [ %i.are, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i ]
  %.076397.i = phi i64 [ 0, %.lr.ph399.i ], [ %i.arf, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i ] ; 4 uses
  %i.alo = getelementptr inbounds nuw [96 x i8], ptr %i.ada, i64 %.076397.i ; 7 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 72 ; 4 uses
  %i.alq = load ptr, ptr %i.alp, align 8
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alo, i64 80 ; 2 uses
  %i.als = load ptr, ptr %i.alr, align 8
  %i.alt = icmp eq ptr %i.alq, %i.als
  br i1 %i.alt, label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.alu = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #26
          to label %bb.fm unwind label %.loopexit334.i ; 19 uses

bb.fm:                                            ; preds = %bb.fl
  store i32 0, ptr %i.alu, align 8
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 4 ; 3 uses
  store i32 0, ptr %i.alv, align 4
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alu, i64 8 ; 3 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alu, i64 16 ; 3 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alu, i64 224
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alu, i64 1272
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alu, i64 1312
  store ptr null, ptr %i.ama, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.alx, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.aly, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.alz, i8 0, i64 36, i1 false)
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alu, i64 236
  store i32 %spec.select.i229.i, ptr %i.amb, align 4
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alu, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.amc, ptr nonnull align 4 %i.ba, i64 %i.adk, i1 false)
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.adk
  store i8 0, ptr %i.amd, align 1
  %i.ame = load ptr, ptr %i.alr, align 8
  %i.amf = load ptr, ptr %i.alp, align 8
  %i.amg = ptrtoint ptr %i.ame to i64
  %i.amh = ptrtoint ptr %i.amf to i64
  %i.ami = sub i64 %i.amg, %i.amh
  %i.amj = ashr exact i64 %i.ami, 4               ; 3 uses
  %i.amk = trunc i64 %i.amj to i32                ; 2 uses
  store i32 %i.amk, ptr %i.alw, align 8
  %i.aml = and i64 %i.amj, 4294967295             ; 5 uses
  %i.amm = shl nuw nsw i64 %i.aml, 4
  %i.amn = or disjoint i64 %i.amm, 8
  %i.amo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.amn) #26
          to label %bb.fn unwind label %.loopexit334.i ; 2 uses

bb.fn:                                            ; preds = %bb.fm
  store i64 %i.aml, ptr %i.amo, align 16
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 8 ; 4 uses
  %i.amq = icmp eq i64 %i.aml, 0
  br i1 %i.amq, label %.loopexit333.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.amr = getelementptr inbounds nuw [16 x i8], ptr %i.amp, i64 %i.aml
  %i.ams = add nuw nsw i64 %i.aml, 1152921504606846975
  %i.amt = and i64 %i.ams, 1152921504606846975
  %xtraiter = and i64 %i.amj, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.fo, %.prol.preheader
  %i.amu = phi ptr [ %i.amw, %.prol.preheader ], [ %i.amp, %bb.fo ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.fo ]
  store i32 0, ptr %i.amu, align 8
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 8
  store ptr null, ptr %i.amv, align 8
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amu, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !50

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.fo
  %.unr = phi ptr [ %i.amp, %bb.fo ], [ %i.amw, %.prol.preheader ]
  %i.amx = icmp samesign ult i64 %i.amt, 7
  br i1 %i.amx, label %.loopexit333.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.amy = phi ptr [ %i.ano, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.amy, align 8
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  store ptr null, ptr %i.amz, align 8
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amy, i64 16
  store i32 0, ptr %i.ana, align 8
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amy, i64 24
  store ptr null, ptr %i.anb, align 8
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amy, i64 32
  store i32 0, ptr %i.anc, align 8
  %i.and = getelementptr inbounds nuw i8, ptr %i.amy, i64 40
  store ptr null, ptr %i.and, align 8
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amy, i64 48
  store i32 0, ptr %i.ane, align 8
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amy, i64 56
  store ptr null, ptr %i.anf, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amy, i64 64
  store i32 0, ptr %i.ang, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amy, i64 72
  store ptr null, ptr %i.anh, align 8
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amy, i64 80
  store i32 0, ptr %i.ani, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amy, i64 88
  store ptr null, ptr %i.anj, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amy, i64 96
  store i32 0, ptr %i.ank, align 8
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amy, i64 104
  store ptr null, ptr %i.anl, align 8
  %i.anm = getelementptr inbounds nuw i8, ptr %i.amy, i64 112
  store i32 0, ptr %i.anm, align 8
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amy, i64 120
  store ptr null, ptr %i.ann, align 8
  %i.ano = getelementptr inbounds nuw i8, ptr %i.amy, i64 128 ; 2 uses
  %i.anp = icmp eq ptr %i.ano, %i.amr
  br i1 %i.anp, label %.loopexit333.i, label %.new

.loopexit333.i:                                   ; preds = %.prol.loopexit, %.new, %bb.fn
  %i.anq = getelementptr inbounds nuw i8, ptr %i.alu, i64 208 ; 3 uses
  store ptr %i.amp, ptr %i.anq, align 8
  %i.anr = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  %i.ans = load ptr, ptr %i.anr, align 8
  %i.ant = load ptr, ptr %i.alo, align 8
  %i.anu = ptrtoint ptr %i.ans to i64
  %i.anv = ptrtoint ptr %i.ant to i64
  %i.anw = sub i64 %i.anu, %i.anv
  %i.anx = sdiv exact i64 %i.anw, 12              ; 2 uses
  %i.any = trunc i64 %i.anx to i32                ; 2 uses
  store i32 %i.any, ptr %i.alv, align 4
  %i.anz = and i64 %i.anx, 4294967295
  %i.aoa = mul nuw nsw i64 %i.anz, 12             ; 9 uses
  %i.aob = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aoa) #26
          to label %bb.fp unwind label %.loopexit334.i ; 2 uses

bb.fp:                                            ; preds = %.loopexit333.i
  %i.aoc = icmp eq i32 %i.any, 0                  ; 3 uses
  br i1 %i.aoc, label %.loopexit332.i, label %.loopexit332.loopexit.i

.loopexit332.loopexit.i:                          ; preds = %bb.fp
  %i.aod = add nsw i64 %i.aoa, -12
  %i.aoe = urem i64 %i.aod, 12
  %i.aof = sub nsw i64 %i.aoa, %i.aoe
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aob, i8 0, i64 %i.aof, i1 false)
  br label %.loopexit332.i

.loopexit332.i:                                   ; preds = %.loopexit332.loopexit.i, %bb.fp
  store ptr %i.aob, ptr %i.alx, align 8
  %i.aog = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aoa) #26
          to label %bb.fq unwind label %.loopexit334.i ; 2 uses

bb.fq:                                            ; preds = %.loopexit332.i
  br i1 %i.aoc, label %.loopexit331.i, label %.loopexit331.loopexit.i

.loopexit331.loopexit.i:                          ; preds = %bb.fq
  %i.aoh = add nsw i64 %i.aoa, -12
  %i.aoi = urem i64 %i.aoh, 12
  %i.aoj = sub nsw i64 %i.aoa, %i.aoi
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aog, i8 0, i64 %i.aoj, i1 false)
  br label %.loopexit331.i

.loopexit331.i:                                   ; preds = %.loopexit331.loopexit.i, %bb.fq
  %i.aok = getelementptr inbounds nuw i8, ptr %i.alu, i64 24 ; 2 uses
  store ptr %i.aog, ptr %i.aok, align 8
  %i.aol = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aoa) #26
          to label %bb.fr unwind label %.loopexit334.i ; 3 uses

bb.fr:                                            ; preds = %.loopexit331.i
  br i1 %i.aoc, label %.loopexit.thread.i, label %.lr.ph393.i

.loopexit.thread.i:                               ; preds = %bb.fr
  %i.aom = getelementptr inbounds nuw i8, ptr %i.alu, i64 112
  store ptr %i.aol, ptr %i.aom, align 8
  %i.aon = getelementptr inbounds nuw i8, ptr %i.alu, i64 176
  store i32 2, ptr %i.aon, align 8
  %i.aoo = trunc i64 %.076397.i to i32
  %i.aop = getelementptr inbounds nuw i8, ptr %i.alu, i64 232
  store i32 %i.aoo, ptr %i.aop, align 8
  br label %.preheader.i

.lr.ph393.i:                                      ; preds = %bb.fr
  %i.aoq = add nsw i64 %i.aoa, -12
  %i.aor = urem i64 %i.aoq, 12
  %i.aos = sub nsw i64 %i.aoa, %i.aor
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aol, i8 0, i64 %i.aos, i1 false)
  %i.aot = getelementptr inbounds nuw i8, ptr %i.alu, i64 112 ; 2 uses
  store ptr %i.aol, ptr %i.aot, align 8
  %i.aou = getelementptr inbounds nuw i8, ptr %i.alu, i64 176
  store i32 2, ptr %i.aou, align 8
  %i.aov = trunc i64 %.076397.i to i32
  %i.aow = getelementptr inbounds nuw i8, ptr %i.alu, i64 232
  store i32 %i.aov, ptr %i.aow, align 8
  %i.aox = getelementptr inbounds nuw i8, ptr %i.alo, i64 24
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.alo, i64 48
  br label %bb.fs

.preheader.loopexit.i:                            ; preds = %bb.fs
  %.pre436.i = load i32, ptr %i.alw, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.loopexit.thread.i
  %i.aoz = phi i32 [ %.pre436.i, %.preheader.loopexit.i ], [ %i.amk, %.loopexit.thread.i ]
  %.not405.i = icmp eq i32 %i.aoz, 0
  br i1 %.not405.i, label %._crit_edge396.i, label %.lr.ph395.i.preheader

.lr.ph395.i.preheader:                            ; preds = %.preheader.i
  %i.apa = load ptr, ptr %i.alp, align 8
  %i.apb = load ptr, ptr %i.anq, align 8
  %i.apc = icmp eq ptr %i.apa, %i.apb
  br i1 %i.apc, label %._crit_edge396.i, label %.lr.ph395.i

.loopexit334.i:                                   ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.loopexit331.i, %.loopexit332.i, %.loopexit333.i, %bb.fm, %bb.fl
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

.loopexit.split-lp.i:                             ; preds = %bb.fv
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.fs:                                            ; preds = %bb.fs, %.lr.ph393.i
  %indvars.iv427.i = phi i64 [ 0, %.lr.ph393.i ], [ %indvars.iv.next428.i, %bb.fs ] ; 7 uses
  %i.apd = load ptr, ptr %i.alo, align 8
  %i.ape = getelementptr inbounds nuw [12 x i8], ptr %i.apd, i64 %indvars.iv427.i
  %i.apf = load ptr, ptr %i.alx, align 8
  %i.apg = getelementptr inbounds nuw [12 x i8], ptr %i.apf, i64 %indvars.iv427.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.apg, ptr noundef nonnull align 4 dereferenceable(12) %i.ape, i64 12, i1 false)
  %i.aph = load ptr, ptr %i.aox, align 8
  %i.api = getelementptr inbounds nuw [12 x i8], ptr %i.aph, i64 %indvars.iv427.i
  %i.apj = load ptr, ptr %i.aok, align 8
  %i.apk = getelementptr inbounds nuw [12 x i8], ptr %i.apj, i64 %indvars.iv427.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.apk, ptr noundef nonnull align 4 dereferenceable(12) %i.api, i64 12, i1 false)
  %i.apl = load ptr, ptr %i.aoy, align 8
  %i.apm = getelementptr inbounds nuw [12 x i8], ptr %i.apl, i64 %indvars.iv427.i
  %i.apn = load ptr, ptr %i.aot, align 8
  %i.apo = getelementptr inbounds nuw [12 x i8], ptr %i.apn, i64 %indvars.iv427.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.apo, ptr noundef nonnull align 4 dereferenceable(12) %i.apm, i64 12, i1 false)
  %indvars.iv.next428.i = add nuw nsw i64 %indvars.iv427.i, 1 ; 2 uses
  %i.app = load i32, ptr %i.alv, align 4
  %i.apq = zext i32 %i.app to i64
  %i.apr = icmp samesign ult i64 %indvars.iv.next428.i, %i.apq
  br i1 %i.apr, label %bb.fs, label %.preheader.loopexit.i, !llvm.loop !52

._crit_edge396.i:                                 ; preds = %_ZN6aiFaceaSERKS_.exit.i, %.lr.ph395.i.preheader, %.preheader.i
  %i.aps = load ptr, ptr %i.ci, align 8           ; 3 uses
  %i.apt = load ptr, ptr %i.ck, align 8
  %.not.i280.i = icmp eq ptr %i.aps, %i.apt
  br i1 %.not.i280.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %._crit_edge396.i
  store ptr %i.alu, ptr %i.aps, align 8
  %i.apu = load ptr, ptr %i.ci, align 8
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 8 ; 2 uses
  store ptr %i.apv, ptr %i.ci, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i

bb.fu:                                            ; preds = %._crit_edge396.i
  %i.apw = load ptr, ptr %i.ch, align 8           ; 4 uses
  %i.apx = ptrtoint ptr %i.aps to i64
  %i.apy = ptrtoint ptr %i.apw to i64
  %i.apz = sub i64 %i.apx, %i.apy                 ; 6 uses
  %i.aqa = icmp eq i64 %i.apz, 9223372036854775800
  br i1 %i.aqa, label %bb.fv, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
          to label %.noexc283.i unwind label %.loopexit.split-lp.i

.noexc283.i:                                      ; preds = %bb.fv
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fu
  %i.aqb = ashr exact i64 %i.apz, 3               ; 3 uses
  %.sroa.speculated.i.i.i281.i = call i64 @llvm.umax.i64(i64 %i.aqb, i64 1)
  %i.aqc = add nsw i64 %.sroa.speculated.i.i.i281.i, %i.aqb ; 2 uses
  %i.aqd = icmp ult i64 %i.aqc, %i.aqb
  %i.aqe = call i64 @llvm.umin.i64(i64 %i.aqc, i64 1152921504606846975)
  %i.aqf = select i1 %i.aqd, i64 1152921504606846975, i64 %i.aqe ; 3 uses
  %.not.i.i.i282.i = icmp ne i64 %i.aqf, 0
  call void @llvm.assume(i1 %.not.i.i.i282.i)
  %i.aqg = shl nuw nsw i64 %i.aqf, 3
  %i.aqh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqg) #26
          to label %.noexc284.i unwind label %.loopexit334.i ; 4 uses

.noexc284.i:                                      ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aqi = getelementptr inbounds i8, ptr %i.aqh, i64 %i.apz ; 2 uses
  store ptr %i.alu, ptr %i.aqi, align 8
  %i.aqj = icmp sgt i64 %i.apz, 0
  br i1 %i.aqj, label %bb.fw, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.fw:                                            ; preds = %.noexc284.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aqh, ptr align 8 %i.apw, i64 %i.apz, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.fw, %.noexc284.i
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.apw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.apw, i64 noundef %i.apz) #24
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.fx, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.aqh, ptr %i.ch, align 8
  store ptr %i.aqk, ptr %i.ci, align 8
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.aqh, i64 %i.aqf
  store ptr %i.aql, ptr %i.ck, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i

.lr.ph395.i:                                      ; preds = %.lr.ph395.i.preheader, %_ZN6aiFaceaSERKS_.exit.i
  %indvars.iv430.i = phi i64 [ %indvars.iv.next431.i, %_ZN6aiFaceaSERKS_.exit.i ], [ 0, %.lr.ph395.i.preheader ] ; 3 uses
  %i.aqm = load ptr, ptr %i.alp, align 8          ; 2 uses
  %i.aqn = getelementptr inbounds nuw [16 x i8], ptr %i.aqm, i64 %indvars.iv430.i ; 2 uses
  %i.aqo = load ptr, ptr %i.anq, align 8          ; 2 uses
  %i.aqp = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %indvars.iv430.i ; 2 uses
  %i.aqq = icmp eq ptr %i.aqm, %i.aqo
  br i1 %i.aqq, label %_ZN6aiFaceaSERKS_.exit.i, label %bb.fy

bb.fy:                                            ; preds = %.lr.ph395.i
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8 ; 3 uses
  %i.aqs = load ptr, ptr %i.aqr, align 8          ; 2 uses
  %i.aqt = icmp eq ptr %i.aqs, null
  br i1 %i.aqt, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @_ZdaPv(ptr noundef nonnull %i.aqs) #24
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.aqu = load i32, ptr %i.aqn, align 8          ; 3 uses
  store i32 %i.aqu, ptr %i.aqp, align 8
  %.not.i285.i = icmp eq i32 %i.aqu, 0
  br i1 %.not.i285.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aqv = zext i32 %i.aqu to i64
  %i.aqw = shl nuw nsw i64 %i.aqv, 2              ; 2 uses
  %i.aqx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aqw) #26
          to label %.noexc286.i unwind label %bb.gd ; 2 uses

.noexc286.i:                                      ; preds = %bb.gb
  store ptr %i.aqx, ptr %i.aqr, align 8
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8
  %i.aqz = load ptr, ptr %i.aqy, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aqx, ptr align 4 %i.aqz, i64 %i.aqw, i1 false)
  br label %_ZN6aiFaceaSERKS_.exit.i

bb.gc:                                            ; preds = %bb.ga
  store ptr null, ptr %i.aqr, align 8
  br label %_ZN6aiFaceaSERKS_.exit.i

_ZN6aiFaceaSERKS_.exit.i:                         ; preds = %bb.gc, %.noexc286.i, %.lr.ph395.i
  %indvars.iv.next431.i = add nuw nsw i64 %indvars.iv430.i, 1 ; 2 uses
  %i.ara = load i32, ptr %i.alw, align 8
  %i.arb = zext i32 %i.ara to i64
  %i.arc = icmp samesign ult i64 %indvars.iv.next431.i, %i.arb
  br i1 %i.arc, label %.lr.ph395.i, label %._crit_edge396.i, !llvm.loop !53

bb.gd:                                            ; preds = %bb.gb
  %i.ard = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ft, %bb.fk
  %i.are = phi ptr [ %i.apv, %bb.ft ], [ %i.aqk, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aln, %bb.fk ] ; 2 uses
  %i.arf = add nuw i64 %.076397.i, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.arf, %i.adv
  br i1 %exitcond.not, label %._crit_edge400.loopexit.i, label %bb.fk, !llvm.loop !55

_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i: ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp8TempMeshEEEvT_S5_(ptr noundef %i.ada, ptr noundef %i.adc)
          to label %_ZSt8_DestroyIPN6Assimp8TempMeshES1_EvT_S3_RSaIT0_E.exit.i.i unwind label %bb.gf

_ZSt8_DestroyIPN6Assimp8TempMeshES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i
  %.not.i.i.i287.i = icmp eq ptr %i.ada, null
  br i1 %.not.i.i.i287.i, label %_ZN6AssimpL9ReadShapeEPNS_3SIBEPNS_12StreamReaderILb0ELb0EEE.exit, label %bb.ge

bb.ge:                                            ; preds = %_ZSt8_DestroyIPN6Assimp8TempMeshES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.arg = ptrtoint ptr %i.adb to i64
  %i.arh = ptrtoint ptr %i.ada to i64
  %i.ari = sub i64 %i.arg, %i.arh
  call void @_ZdlPvm(ptr noundef nonnull %i.ada, i64 noundef %i.ari) #24
  br label %_ZN6AssimpL9ReadShapeEPNS_3SIBEPNS_12StreamReaderILb0ELb0EEE.exit

bb.gf:                                            ; preds = %_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i
  %i.arj = landingpad { ptr, i32 }
          catch ptr null
  %i.ark = extractvalue { ptr, i32 } %i.arj, 0
  call void @__clang_call_terminate(ptr %i.ark) #27
  unreachable

bb.gg:                                            ; preds = %bb.gd, %.loopexit.split-lp.i, %.loopexit334.i, %bb.fj
  %.pn.pn.i = phi { ptr, i32 } [ %i.alm, %bb.fj ], [ %i.ard, %bb.gd ], [ %lpad.loopexit.i, %.loopexit334.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %_ZN6aiFaceD2Ev.exit276.i, %bb.em
  %.pn99.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.gg ], [ %.pn99.i, %_ZN6aiFaceD2Ev.exit276.i ], [ %i.aek, %bb.em ]
  call void @_ZNSt6vectorIN6Assimp8TempMeshESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #23
  br label %bb.gi

bb.gi:                                            ; preds = %.loopexit97, %.loopexit.split-lp98, %bb.gh
  %.pn99.pn.pn.pn.i = phi { ptr, i32 } [ %.pn99.pn.pn.i, %bb.gh ], [ %lpad.loopexit99, %.loopexit97 ], [ %lpad.loopexit.split-lp100, %.loopexit.split-lp98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.ei
  %.pn99.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn99.pn.pn.pn.i, %bb.gi ], [ %i.adx, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.eh
  %.pn99.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn.i, %bb.gj ], [ %i.adw, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp341.i.loopexit, %.loopexit.split-lp341.i.loopexit.split-lp, %.loopexit, %.loopexit.split-lp, %common.resume.i62, %bb.gk, %.loopexit340.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit63.i.i, %bb.dh, %bb.dd, %common.resume.i191.i, %common.resume.i181.i, %common.resume.i163.i, %bb.cc, %common.resume.i137.i, %common.resume.i117.i, %common.resume.i.i, %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp346.loopexit.split-lp.loopexit.i, %.loopexit.split-lp346.loopexit.i, %.loopexit345.i, %bb.y
  %.pn106.pn.pn.i = phi { ptr, i32 } [ %i.uk, %bb.dh ], [ %.pn99.pn.pn.pn.pn.pn.i, %bb.gk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.pk, %bb.cc ], [ %i.fc, %bb.y ], [ %common.resume.op.i.i, %common.resume.i.i ], [ %common.resume.op.i119.i, %common.resume.i117.i ], [ %common.resume.op.i139.i, %common.resume.i137.i ], [ %common.resume.op.i165.i, %common.resume.i163.i ], [ %common.resume.op.i183.i, %common.resume.i181.i ], [ %common.resume.op.i193.i, %common.resume.i191.i ], [ %i.uc, %bb.dd ], [ %lpad.phi.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit63.i.i ], [ %lpad.loopexit.split-lp358.i, %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit347.i, %.loopexit345.i ], [ %lpad.loopexit352.i, %.loopexit.split-lp346.loopexit.i ], [ %lpad.loopexit357.i, %.loopexit.split-lp346.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit342.i, %.loopexit340.i ], [ %common.resume.op.i64, %common.resume.i62 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit94, %.loopexit.split-lp341.i.loopexit ], [ %lpad.loopexit.split-lp95, %.loopexit.split-lp341.i.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN6Assimp7SIBMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %common.resume

_ZN6AssimpL9ReadShapeEPNS_3SIBEPNS_12StreamReaderILb0ELb0EEE.exit: ; preds = %_ZSt8_DestroyIPN6Assimp8TempMeshES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN6Assimp7SIBMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %_ZN6AssimpL12CheckVersionEPNS_12StreamReaderILb0ELb0EEE.exit

bb.gl:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %12, i8 0, i64 1028, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.w, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 8
  %i.arl = ptrtoint ptr %i.de to i64
  %i.arm = sub i64 %i.arl, %i.cq
  %i.arn = and i64 %i.arm, 4294967288
  %.not2445.i = icmp eq i64 %i.arn, 0
  br i1 %.not2445.i, label %._crit_edge.i20, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.gl, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit22.i
  %i.aro = phi ptr [ %i.ayy, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit22.i ], [ %i.cp, %bb.gl ]
  %i.arp = phi ptr [ %i.azp, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit22.i ], [ %i.de, %bb.gl ] ; 4 uses
  %i.arq = phi ptr [ %i.azd, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit22.i ], [ %i.co, %bb.gl ] ; 3 uses
  %.046.i = phi i32 [ %.1.i, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit22.i ], [ 0, %bb.gl ] ; 6 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 4 ; 3 uses
  %i.ars = icmp ugt ptr %i.arr, %i.arp
  br i1 %i.ars, label %bb.gm, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i68

bb.gm:                                            ; preds = %.lr.ph.i17
  %i.art = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.art, ptr noundef nonnull @.str.13)
          to label %bb.gn unwind label %bb.go

bb.gn:                                            ; preds = %bb.gm
  call void @__cxa_throw(ptr nonnull %i.art, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

common.resume.i74:                                ; preds = %bb.gr, %bb.go
  %.sink.i75 = phi ptr [ %i.ary, %bb.gr ], [ %i.art, %bb.go ]
  %common.resume.op.i76 = phi { ptr, i32 } [ %i.arz, %bb.gr ], [ %i.aru, %bb.go ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i75) #23
  br label %common.resume

bb.go:                                            ; preds = %bb.gm
  %i.aru = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i74

_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i68: ; preds = %.lr.ph.i17
  %i.arv = load i32, ptr %i.arq, align 1
  store ptr %i.arr, ptr %i.c, align 8
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arq, i64 8 ; 4 uses
  %i.arx = icmp ugt ptr %i.arw, %i.arp
  br i1 %i.arx, label %bb.gp, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69

bb.gp:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i68
  %i.ary = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ary, ptr noundef nonnull @.str.13)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  call void @__cxa_throw(ptr nonnull %i.ary, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.gr:                                            ; preds = %bb.gp
  %i.arz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i74

_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i68
  %i.asa = load i32, ptr %i.arr, align 1          ; 3 uses
  store ptr %i.arw, ptr %i.c, align 8
  %i.asb = zext i32 %i.asa to i64
  %i.asc = ptrtoint ptr %i.arp to i64
  %i.asd = ptrtoint ptr %i.arw to i64             ; 2 uses
  %i.ase = sub i64 %i.asc, %i.asd
  %i.asf = and i64 %i.ase, 4294967295
  %i.asg = icmp samesign ult i64 %i.asf, %i.asb
  br i1 %i.asg, label %bb.gs, label %_ZN6AssimpL9ReadChunkEPNS_12StreamReaderILb0ELb0EEE.exit77

bb.gs:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69
  %i.ash = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ash, ptr noundef nonnull @.str.12)
  %.pre165 = load ptr, ptr %i.c, align 8          ; 2 uses
  %.pre166 = load ptr, ptr %i.j, align 8
  %.pre167 = load ptr, ptr %i.b, align 8
  %.pre173 = ptrtoint ptr %.pre165 to i64
  br label %_ZN6AssimpL9ReadChunkEPNS_12StreamReaderILb0ELb0EEE.exit77

_ZN6AssimpL9ReadChunkEPNS_12StreamReaderILb0ELb0EEE.exit77: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69, %bb.gs
  %.pre-phi174 = phi i64 [ %i.asd, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69 ], [ %.pre173, %bb.gs ]
  %i.asi = phi ptr [ %i.arp, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69 ], [ %.pre167, %bb.gs ]
  %i.asj = phi ptr [ %i.aro, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69 ], [ %.pre166, %bb.gs ] ; 2 uses
  %i.ask = phi ptr [ %i.arw, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit3.i69 ], [ %.pre165, %bb.gs ] ; 19 uses
  %.sroa.0.sroa.0.0.insert.insert.i70 = call i32 @llvm.bswap.i32(i32 %i.arv) ; 2 uses
  %i.asl = ptrtoint ptr %i.asj to i64             ; 2 uses
  %i.asm = sub i64 %.pre-phi174, %i.asl
  %i.asn = trunc i64 %i.asm to i32
  %i.aso = add i32 %i.asa, %i.asn                 ; 2 uses
  %i.asp = icmp eq i32 %i.aso, -1
  br i1 %i.asp, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %_ZN6AssimpL9ReadChunkEPNS_12StreamReaderILb0ELb0EEE.exit77
  %i.asq = load ptr, ptr %i.k, align 8            ; 2 uses
  store ptr %i.asq, ptr %i.b, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit.i

bb.gu:                                            ; preds = %_ZN6AssimpL9ReadChunkEPNS_12StreamReaderILb0ELb0EEE.exit77
  %i.asr = zext i32 %i.aso to i64
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asj, i64 %i.asr ; 3 uses
  store ptr %i.ass, ptr %i.b, align 8
  %i.ast = load ptr, ptr %i.k, align 8
  %i.asu = icmp ugt ptr %i.ass, %i.ast
  br i1 %i.asu, label %bb.gv, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit.i

bb.gv:                                            ; preds = %bb.gu
  %i.asv = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.asv, ptr noundef nonnull @.str.16)
          to label %bb.gw unwind label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  call void @__cxa_throw(ptr nonnull %i.asv, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.gx:                                            ; preds = %bb.gv
  %i.asw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.asv) #23
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit.i: ; preds = %bb.gu, %bb.gt
  %i.asx = phi ptr [ %i.asq, %bb.gt ], [ %i.ass, %bb.gu ] ; 17 uses
  %i.asy = ptrtoint ptr %i.asi to i64
  %i.asz = sub i64 %i.asy, %i.asl
  switch i32 %.sroa.0.sroa.0.0.insert.insert.i70, label %bb.jb [
    i32 1145654854, label %bb.jc
    i32 1346981446, label %bb.jc
    i32 1096304979, label %bb.gy
    i32 1229869897, label %bb.gz
    i32 1397576792, label %bb.hd
    i32 1397637453, label %bb.ja
  ]

bb.gy:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit.i
  call fastcc void @_ZN6AssimpL8ReadAxisER12aiMatrix4x4tIfEPNS_12StreamReaderILb0ELb0EEE(ptr noundef nonnull align 4 dereferenceable(64) %i.u, ptr noundef nonnull %1)
  br label %bb.jc

bb.gz:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit.i
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ask, i64 4 ; 2 uses
  %i.atb = icmp ugt ptr %i.ata, %i.asx
  br i1 %i.atb, label %bb.ha, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetU4Ev.exit.i33

bb.ha:                                            ; preds = %bb.gz
  %i.atc = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.atc, ptr noundef nonnull @.str.13)
          to label %bb.hb unwind label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  call void @__cxa_throw(ptr nonnull %i.atc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.hc:                                            ; preds = %bb.ha
  %i.atd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.atc) #23
end_hunk_1
