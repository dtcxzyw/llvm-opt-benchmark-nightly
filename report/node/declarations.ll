Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/declarations?download=true
inline.NumInlined: 3068
inline.NumDeleted: 1691
begin_hunk_0_@_ZN2v88internal6torque12Declarations14TryLookupMacroERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS1_4TypeESaISE_EE:bb.a
_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit.thread: ; preds = %bb.u, %_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit
  %i.dd = load ptr, ptr %.sroa.044.050, align 8   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 368
  %i.df = load i8, ptr %i.de, align 8, !range !81, !noundef !82
  %i.dg = trunc nuw i8 %i.df to i1                ; 2 uses
  %spec.select48 = select i1 %i.dg, ptr %.01951, ptr %i.dd
  br label %_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit.thread47

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt12_Vector_baseIPKN2v88internal6torque4TypeESaIS5_EE11_M_allocateEm.exit.i.i.i, %.noexc.i.i
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIPN2v88internal6torque5MacroESaIS4_EED2Ev.exit, label %bb.w

_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit.thread47: ; preds = %_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit.thread, %_ZNK2v88internal6torque9Signature16GetExplicitTypesEv.exit, %_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit
  %.120 = phi ptr [ %.01951, %_ZNK2v88internal6torque9Signature16GetExplicitTypesEv.exit ], [ %spec.select48, %_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit.thread ], [ %.01951, %_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit ] ; 2 uses
  %cond1 = phi i1 [ true, %_ZNK2v88internal6torque9Signature16GetExplicitTypesEv.exit ], [ %i.dg, %_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit.thread ], [ true, %_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit ]
  %.not.i.i.i35 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit36, label %bb.v

bb.v:                                             ; preds = %_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit.thread47
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.cw) #25
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit36

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit36: ; preds = %_ZSteqIPKN2v88internal6torque4TypeESaIS5_EEbRKSt6vectorIT_T0_ESC_.exit.thread47, %bb.v
  br i1 %cond1, label %bb.o, label %._crit_edge.loopexit

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #25
  br label %_ZNSt6vectorIPN2v88internal6torque5MacroESaIS4_EED2Ev.exit

._crit_edge.loopexit:                             ; preds = %bb.o, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit36
  %spec.select.ph = phi ptr [ %.120, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit36 ], [ null, %bb.o ]
  %.pre = load ptr, ptr %4, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dn = phi ptr [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %spec.select = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %spec.select.ph, %._crit_edge.loopexit ]
  %.not.i.i.i38 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIPN2v88internal6torque5MacroESaIS4_EED2Ev.exit39, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #25
  br label %_ZNSt6vectorIPN2v88internal6torque5MacroESaIS4_EED2Ev.exit39

_ZNSt6vectorIPN2v88internal6torque5MacroESaIS4_EED2Ev.exit39: ; preds = %._crit_edge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret ptr %spec.select

_ZNSt6vectorIPN2v88internal6torque5MacroESaIS4_EED2Ev.exit: ; preds = %bb.w, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.pn23.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp82, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn23.pn
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, i8 } @_ZN2v88internal6torque12Declarations16TryLookupBuiltinERKNS1_13QualifiedNameE(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !139 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::vector", align 8       ; 8 uses
  %2 = alloca %"class.std::vector.98", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque12CurrentScopeEPNS3_5ScopeEE4top_E)
  %i.c = load ptr, ptr %i.b, align 8, !noalias !140
  %i.d = load ptr, ptr %i.c, align 8, !noalias !140
  call void @_ZN2v88internal6torque5Scope6LookupERKNS1_13QualifiedNameE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(216) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %0), !noalias !141
  invoke void @_ZN2v88internal6torque17FilterDeclarablesINS1_7BuiltinEEESt6vectorIPT_SaIS6_EES4_IPNS1_10DeclarableESaISA_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.98") align 8 %2, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !noalias !141 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal6torque12Declarations9TryLookupINS1_7BuiltinEEESt6vectorIPT_SaIS7_EERKNS1_13QualifiedNameE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !141
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #25
  br label %_ZN2v88internal6torque12Declarations9TryLookupINS1_7BuiltinEEESt6vectorIPT_SaIS7_EERKNS1_13QualifiedNameE.exit

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !noalias !141 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !141
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZNSt6vectorIPN2v88internal6torque7BuiltinESaIS4_EED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %_ZNSt6vectorIPN2v88internal6torque7BuiltinESaIS4_EED2Ev.exit ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN2v88internal6torque12Declarations9TryLookupINS1_7BuiltinEEESt6vectorIPT_SaIS7_EERKNS1_13QualifiedNameE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.r = load ptr, ptr %2, align 8                ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6torque12Declarations9TryLookupINS1_7BuiltinEEESt6vectorIPT_SaIS7_EERKNS1_13QualifiedNameE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.4, ptr %i.a, align 8
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ugt i64 %i.x, 8
  br i1 %i.y, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN2v88internal6torque11ReportErrorIJRA24_KcRPS3_RA2_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(24) @.str.45, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.46, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #24
          to label %.noexc4 unwind label %bb.h

.noexc4:                                          ; preds = %bb.g
  unreachable

.thread:                                          ; preds = %bb.f
  %i.aa = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2v88internal6torque7BuiltinESaIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #25
  br label %_ZNSt6vectorIPN2v88internal6torque7BuiltinESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal6torque7BuiltinESaIS4_EED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume

bb.j:                                             ; preds = %_ZN2v88internal6torque12Declarations9TryLookupINS1_7BuiltinEEESt6vectorIPT_SaIS7_EERKNS1_13QualifiedNameE.exit
  %.not.i.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIPN2v88internal6torque7BuiltinESaIS4_EED2Ev.exit6, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = ptrtoint ptr %i.r to i64
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.thread
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.w, %.thread ]
  %.sroa.0.012 = phi ptr [ undef, %._crit_edge ], [ %i.aa, %.thread ]
  %.sroa.2.010 = phi i8 [ 0, %._crit_edge ], [ 1, %.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.al) #25
  br label %_ZNSt6vectorIPN2v88internal6torque7BuiltinESaIS4_EED2Ev.exit6

_ZNSt6vectorIPN2v88internal6torque7BuiltinESaIS4_EED2Ev.exit6: ; preds = %bb.j, %bb.k
  %.sroa.0.013 = phi ptr [ undef, %bb.j ], [ %.sroa.0.012, %bb.k ]
  %.sroa.2.011 = phi i8 [ 0, %bb.j ], [ %.sroa.2.010, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.013, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.2.011, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque12Declarations13LookupGenericERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.103") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !148 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %3 = alloca %"class.std::vector.103", align 8   ; 7 uses
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  %5 = alloca %"struct.v8::internal::torque::QualifiedName", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.b, ptr %6, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #24
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !83

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26 ; 2 uses
  store ptr %i.j, ptr %6, align 8
  store i64 %i.e, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.e, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.p = load ptr, ptr %6, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = load i64, ptr %i.m, align 8              ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = load i64, ptr %i.b, align 8
  store i64 %i.u, ptr %i.o, align 8
  %.pre.i = load i64, ptr %i.m, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.v = phi ptr [ %i.o, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.w = phi i64 [ %i.r, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  store ptr %i.b, ptr %6, align 8
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 24, i1 false)
  store ptr %i.y, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.v, %i.o
  br i1 %i.z, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aa = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.ab, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.v, ptr %i.x, align 8
  %i.ac = load i64, ptr %i.o, align 8
  store i64 %i.ac, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.w, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque12CurrentScopeEPNS3_5ScopeEE4top_E)
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !150
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !150
  invoke void @_ZN2v88internal6torque5Scope6LookupERKNS1_13QualifiedNameE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(216) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.ah = load ptr, ptr %4, align 8, !alias.scope !149
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !149
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %_ZN2v88internal6torque12Declarations6LookupERKNS1_13QualifiedNameE.exit

bb.i:                                             ; preds = %.noexc
  invoke void @_ZN2v88internal6torque11ReportErrorIJRA14_KcRKNS1_13QualifiedNameERA2_S3_EEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(14) @.str, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 1 dereferenceable(2) @.str.14) #24
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %4, align 8, !alias.scope !149 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.t

_ZN2v88internal6torque12Declarations6LookupERKNS1_13QualifiedNameE.exit: ; preds = %.noexc
  invoke void @_ZN2v88internal6torque17FilterDeclarablesINS1_15GenericCallableEEESt6vectorIPT_SaIS6_EES4_IPNS1_10DeclarableESaISA_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.103") align 8 %3, ptr noundef nonnull align 8 %4)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %_ZN2v88internal6torque12Declarations6LookupERKNS1_13QualifiedNameE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.5, ptr %i.a, align 8, !noalias !151
  %i.an = load ptr, ptr %3, align 8, !noalias !151 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !151 ; 2 uses
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.m, label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2v88internal6torque11ReportErrorIJRA13_KcRPS3_RA8_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(13) @.str.43, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %1) #24
          to label %.noexc9 unwind label %bb.r, !noalias !151

.noexc9:                                          ; preds = %bb.m
  unreachable

_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit: ; preds = %bb.l
  store ptr %i.an, ptr %0, align 8, !alias.scope !151
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.ar, align 8, !alias.scope !151
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !noalias !151
  store ptr %i.au, ptr %i.as, align 8, !alias.scope !151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPN2v88internal6torque10DeclarableESaIS4_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #25
  br label %_ZNSt6vectorIPN2v88internal6torque10DeclarableESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal6torque10DeclarableESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit, %bb.n
  %i.bb = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.y
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZNSt6vectorIPN2v88internal6torque10DeclarableESaIS4_EED2Ev.exit
  %i.bd = load i64, ptr %i.y, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIPN2v88internal6torque10DeclarableESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  %i.bf = load ptr, ptr %5, align 8               ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.bi = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.bn, %i.bh
  br i1 %.not.i.i.i.i12, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bo = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal6torque13QualifiedNameD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #25
  br label %_ZN2v88internal6torque13QualifiedNameD2Ev.exit

_ZN2v88internal6torque13QualifiedNameD2Ev.exit:   ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.o
  %i.bu = load ptr, ptr %6, align 8               ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.b
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZN2v88internal6torque13QualifiedNameD2Ev.exit
  %i.bw = load i64, ptr %i.b, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal6torque13QualifiedNameD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.p:                                             ; preds = %bb.h
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %_ZN2v88internal6torque12Declarations6LookupERKNS1_13QualifiedNameE.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit15

bb.r:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit15, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #25
  br label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit15

_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit15: ; preds = %bb.s, %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %i.ca, %bb.r ], [ %i.ca, %bb.s ] ; 2 uses
  %i.ch = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i16, label %.body, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit15, %bb.k
  %.sink47 = phi ptr [ %i.am, %bb.k ], [ %i.ch, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit15 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.al, %bb.k ], [ %.pn, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit15 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %.sink47 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %.sink47, i64 noundef %i.cm) #25
  br label %.body

.body:                                            ; preds = %bb.t, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit15, %bb.p, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.by, %bb.p ], [ %.pn, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit15 ], [ %.pn.pn.ph, %bb.t ]
  call void @_ZN2v88internal6torque13QualifiedNameD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #23
  %i.cn = load ptr, ptr %6, align 8               ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.b
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.body
  %i.cp = load i64, ptr %i.b, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque17FilterDeclarablesINS1_15GenericCallableEEESt6vectorIPT_SaIS6_EES4_IPNS1_10DeclarableESaISA_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.103") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !guid !152 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE9push_backERKS4_.exit, %bb.a
  %.lcssa19 = phi ptr [ null, %bb.a ], [ %i.ae, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE9push_backERKS4_.exit ]
  store ptr %.lcssa19, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE9push_backERKS4_.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE9push_backERKS4_.exit ] ; 6 uses
  %.sroa.09.022 = phi ptr [ %i.a, %.lr.ph ], [ %i.af, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE9push_backERKS4_.exit ] ; 11 uses
  %i.i = load ptr, ptr %.sroa.09.022, align 8     ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE9push_backERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 7
  br i1 %i.l, label %_ZN2v88internal6torque15GenericCallable11DynamicCastEPNS1_10DeclarableE.exit, label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE9push_backERKS4_.exit

_ZN2v88internal6torque15GenericCallable11DynamicCastEPNS1_10DeclarableE.exit: ; preds = %bb.c
  %i.m = load ptr, ptr %i.f, align 8
  %.not.i5 = icmp eq ptr %i.g, %i.m
  br i1 %.not.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6torque15GenericCallable11DynamicCastEPNS1_10DeclarableE.exit
  store ptr %i.i, ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.e, align 8
  br label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE9push_backERKS4_.exit

bb.e:                                             ; preds = %_ZN2v88internal6torque15GenericCallable11DynamicCastEPNS1_10DeclarableE.exit
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = sub i64 %i.o, %i.p                       ; 7 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.h, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #26
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %i.i, ptr %i.z, align 8
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.g:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.h, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.g, %.noexc6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.q) #25
  br label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ab, ptr %i.e, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ac, ptr %i.f, align 8
  br label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE9push_backERKS4_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i7 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.q) #25
  br label %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.c, %bb.b, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.d
  %i.ad = phi ptr [ %i.g, %bb.c ], [ %i.g, %bb.b ], [ %i.ab, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.n, %bb.d ]
  %i.ae = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.b ], [ %i.y, %_ZNSt6vectorIPN2v88internal6torque15GenericCallableESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 8 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN2v88internal6torque12Declarations19LookupUniqueGenericERKNS1_13QualifiedNameE(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !157 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.std::vector.103", align 8   ; 9 uses
  %2 = alloca %"class.std::vector", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque12CurrentScopeEPNS3_5ScopeEE4top_E)
  %i.c = load ptr, ptr %i.b, align 8, !noalias !159
  %i.d = load ptr, ptr %i.c, align 8, !noalias !159
  call void @_ZN2v88internal6torque5Scope6LookupERKNS1_13QualifiedNameE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(216) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.e = load ptr, ptr %2, align 8, !alias.scope !158
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !158
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN2v88internal6torque12Declarations6LookupERKNS1_13QualifiedNameE.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2v88internal6torque11ReportErrorIJRA14_KcRKNS1_13QualifiedNameERA2_S3_EEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(14) @.str, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(2) @.str.14) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !alias.scope !158 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !158
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZNSt6vectorIPN2v88internal6torque10DeclarableESaIS4_EED2Ev.exit11
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIPN2v88internal6torque10DeclarableESaIS4_EED2Ev.exit11 ], [ %i.i, %bb.e ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN2v88internal6torque12Declarations6LookupERKNS1_13QualifiedNameE.exit: ; preds = %bb.a
  invoke void @_ZN2v88internal6torque17FilterDeclarablesINS1_15GenericCallableEEESt6vectorIPT_SaIS6_EES4_IPNS1_10DeclarableESaISA_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.103") align 8 %1, ptr noundef nonnull align 8 %2)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZN2v88internal6torque12Declarations6LookupERKNS1_13QualifiedNameE.exit
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.p, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.5, ptr %i.a, align 8
end_hunk_0
