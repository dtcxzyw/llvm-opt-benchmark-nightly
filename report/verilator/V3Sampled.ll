Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Sampled?download=true
inline.NumInlined: 577
inline.NumDeleted: 249
begin_hunk_0_@_ZN7AstNode2asI11AstVarScopeS_EEPT_PT0_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.24)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !135
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.25)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #25
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11AstVarScope4varpEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11AstVarScope6scopepEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  ret ptr %i.b
}

declare void @_ZNK8AstScope11nameDotlessB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK6AstVar4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !40
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.f, ptr %i.a, align 8, !tbaa !88
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !17
  %i.i = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.i, ptr %i.c, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !19
  store i8 %i.k, ptr %i.j, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !18
  %i.n = load ptr, ptr %0, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8VVarTypeC2ENS_2enE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1) unnamed_addr #4 comdat align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode6dtypepEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6AstVarC2EP8FileLine8VVarTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 68, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTV6AstVar, i64 16), ptr %0, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !40
  %i.e = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.g, ptr %i.b, align 8, !tbaa !88
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !17
  %i.j = load i64, ptr %i.b, align 8, !tbaa !88
  store i64 %i.j, ptr %i.d, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !19
  store i8 %i.l, ptr %i.k, align 1, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.m, ptr %i.n, align 8, !tbaa !18
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !40
  %i.s = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.t = load i64, ptr %i.f, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.t, ptr %i.a, align 8, !tbaa !88
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i13, label %._crit_edge.i.i12

.noexc.i13:                                       ; preds = %bb.d
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc14 unwind label %bb.m   ; 2 uses

.noexc14:                                         ; preds = %.noexc.i13
  store ptr %i.v, ptr %i.q, align 8, !tbaa !17
  %i.w = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.w, ptr %i.r, align 8, !tbaa !19
  br label %._crit_edge.i.i12

._crit_edge.i.i12:                                ; preds = %.noexc14, %bb.d
  %i.x = phi ptr [ %i.v, %.noexc14 ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i12
  %i.y = load i8, ptr %i.s, align 1, !tbaa !19
  store i8 %i.y, ptr %i.x, align 1, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i12
  %i.z = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !18
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.af, align 8, !tbaa !18
  store i8 0, ptr %i.ae, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 0, ptr %i.ag, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i8 0, ptr %5, align 4, !tbaa !235
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 0, ptr %i.ah, align 8, !tbaa !242
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr null, ptr %i.ai, align 8, !tbaa !243
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 4
  %i.al = and i64 %i.ak, -9223372036854775808
  store i64 %i.al, ptr %i.aj, align 4
  invoke void @_ZN6AstVar11combineTypeE8VVarType(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 %2)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.i, label %bb.o, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.am = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.510, i32 noundef 2275)
          to label %bb.j unwind label %bb.n       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.an = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.511, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.an) #25
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  unreachable

bb.m:                                             ; preds = %.noexc.i13
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.n:                                             ; preds = %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.j, %bb.i, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !17 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ae
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.at = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !17  ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.r, align 8, !tbaa !19
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.o:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !122
  %.not.i = icmp eq ptr %i.ba, %4
  br i1 %.not.i, label %_ZN7AstNode6dtypepEP12AstNodeDType.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %4, ptr %i.az, align 8, !tbaa !122
  %i.bb = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !88
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !88
  br label %_ZN7AstNode6dtypepEP12AstNodeDType.exit

_ZN7AstNode6dtypepEP12AstNodeDType.exit:          ; preds = %bb.p, %bb.o
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.d
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !19
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %magicptr = ptrtoint ptr %1 to i64
  switch i64 %magicptr, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ], !prof !244

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.514, i64 noundef 7) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.515, i64 noundef 15) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6VNUser7toNodepEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6VNUser2toIP7AstNodeEENSt9enable_ifIXsr3std10is_pointerIT_EE5valueES4_E4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode8typeNameEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load i16, ptr %i.a, align 8, !tbaa !135
  %i.b = zext i16 %.sroa.0.0.copyload.i to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI11AstVarScopeS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZeqRK6VNTypeNS_2enE(ptr noundef nonnull align 2 dereferenceable(2) %0, i16 noundef zeroext %1) #4 comdat {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !160
  %i.b = icmp eq i16 %i.a, %1
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i16 @_ZNK7AstNode4typeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 8, !tbaa !135
  ret i16 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6VNType5asciiEv(ptr noundef nonnull align 2 dereferenceable(2) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !160
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  ret ptr %i.d
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6VNTypeC2ENS_2enE(ptr noundef nonnull align 2 dereferenceable(2) %0, i16 noundef zeroext %1) unnamed_addr #4 comdat align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !160
  ret void
}

declare void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152), i16, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8VVarTypeC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store i8 0, ptr %0, align 1, !tbaa !159
  ret void
}

declare void @_ZN6AstVar11combineTypeE8VVarType(ptr noundef nonnull align 8 dereferenceable(280), i8) local_unnamed_addr #3

declare void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN8FileLine15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.a, align 8, !tbaa !19
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.a, align 8, !tbaa !19
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.c
}

declare void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32)) #3

declare void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

declare void @_ZN7AstNode7setOp3pEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL17dumpTreeJsonLevelv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"class.std::allocator", align 1    ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load i32, ptr @_ZZL17dumpTreeJsonLevelvE7s_level, align 4, !tbaa !41 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.l, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.516, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i32 @_ZNK9V3Options9dumpLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = invoke noundef i32 @_ZNK9V3Options12dumpSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !19
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!33 = !{!"bool", !7, i64 0}
!34 = !{!"_ZTS14SampledVisitor", !30, i64 0, !31, i64 32, !32, i64 40, !33, i64 48}
!35 = !{!34, !32, i64 40}
!36 = !{!34, !33, i64 48}
!37 = !{ptr @_ZN9VNVisitorD2Ev}
!38 = !{!25, !24, i64 0}
!39 = !{!25, !24, i64 16}
!40 = !{!14, !13, i64 0}
!41 = !{!8, !8, i64 0}
!42 = !{!"p1 _ZTS12V3OptionsImp", !12, i64 0}
!43 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!44 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !43, i64 0}
!45 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!46 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!47 = !{!"_ZTSSt18_Rb_tree_node_base", !45, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!48 = !{!"_ZTSSt15_Rb_tree_header", !47, i64 0, !15, i64 32}
!49 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !44, i64 0, !48, i64 8}
!50 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !49, i64 0}
!51 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !50, i64 0}
!52 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !55, i64 0}
!57 = !{!"_ZTSSt4lessI12VFileLibNameE"}
!58 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessI12VFileLibNameEE", !57, i64 0}
!59 = !{!"_ZTSNSt8_Rb_treeI12VFileLibNameS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE13_Rb_tree_implIS4_Lb1EEE", !58, i64 0, !48, i64 8}
!60 = !{!"_ZTSSt8_Rb_treeI12VFileLibNameS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE", !59, i64 0}
!61 = !{!"_ZTSSt3setI12VFileLibNameSt4lessIS0_ESaIS0_EE", !60, i64 0}
!62 = !{!"p1 _ZTS12VFileLibName", !12, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseI12VFileLibNameSaIS0_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseI12VFileLibNameSaIS0_EE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseI12VFileLibNameSaIS0_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorI12VFileLibNameSaIS0_EE", !65, i64 0}
!67 = !{!"_ZTSSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!68 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !67, i64 0}
!69 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_jESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !68, i64 0, !48, i64 8}
!70 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_jESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE", !69, i64 0}
!71 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS6_ESaISt4pairIS6_jEEE", !70, i64 0}
!72 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_S5_ESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !68, i64 0, !48, i64 8}
!73 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_S5_ESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE", !72, i64 0}
!74 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS6_ESaISt4pairIS6_S5_EEE", !73, i64 0}
!75 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_25V3HierarchicalBlockOptionESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !68, i64 0, !48, i64 8}
!76 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_25V3HierarchicalBlockOptionESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE", !75, i64 0}
!77 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25V3HierarchicalBlockOptionSt4lessIS6_ESaISt4pairIS6_S7_EEE", !76, i64 0}
!78 = !{!"_ZTSN11VOptionBool2enE", !7, i64 0}
!79 = !{!"_ZTS11VOptionBool", !78, i64 0}
!80 = !{!"_ZTSN10VTimescale2enE", !7, i64 0}
!81 = !{!"_ZTS10VTimescale", !80, i64 0}
!82 = !{!"_ZTSN10V3LangCode2enE", !7, i64 0}
!83 = !{!"_ZTS10V3LangCode", !82, i64 0}
!84 = !{!"_ZTS9V3Options", !42, i64 0, !51, i64 8, !56, i64 56, !56, i64 80, !56, i64 104, !51, i64 128, !51, i64 176, !51, i64 224, !51, i64 272, !61, i64 320, !66, i64 368, !61, i64 392, !51, i64 440, !56, i64 488, !71, i64 512, !71, i64 560, !74, i64 608, !77, i64 656, !51, i64 704, !33, i64 752, !33, i64 753, !33, i64 754, !33, i64 755, !33, i64 756, !33, i64 757, !33, i64 758, !33, i64 759, !33, i64 760, !33, i64 761, !33, i64 762, !33, i64 763, !33, i64 764, !33, i64 765, !33, i64 766, !33, i64 767, !33, i64 768, !33, i64 769, !33, i64 770, !33, i64 771, !33, i64 772, !33, i64 773, !33, i64 774, !33, i64 775, !33, i64 776, !33, i64 777, !33, i64 778, !33, i64 779, !33, i64 780, !33, i64 781, !33, i64 782, !33, i64 783, !8, i64 784, !33, i64 788, !33, i64 789, !33, i64 790, !33, i64 791, !33, i64 792, !33, i64 793, !33, i64 794, !33, i64 795, !33, i64 796, !33, i64 797, !33, i64 798, !33, i64 799, !33, i64 800, !33, i64 801, !33, i64 802, !33, i64 803, !33, i64 804, !33, i64 805, !33, i64 806, !33, i64 807, !33, i64 808, !33, i64 809, !33, i64 810, !33, i64 811, !33, i64 812, !33, i64 813, !33, i64 814, !33, i64 815, !33, i64 816, !33, i64 817, !33, i64 818, !33, i64 819, !33, i64 820, !33, i64 821, !33, i64 822, !33, i64 823, !33, i64 824, !33, i64 825, !33, i64 826, !33, i64 827, !79, i64 828, !33, i64 829, !33, i64 830, !33, i64 831, !33, i64 832, !33, i64 833, !33, i64 834, !33, i64 835, !33, i64 836, !33, i64 837, !79, i64 838, !33, i64 839, !33, i64 840, !33, i64 841, !33, i64 842, !33, i64 843, !33, i64 844, !33, i64 845, !33, i64 846, !33, i64 847, !33, i64 848, !33, i64 849, !33, i64 850, !33, i64 851, !33, i64 852, !8, i64 856, !8, i64 860, !8, i64 864, !8, i64 868, !8, i64 872, !8, i64 876, !8, i64 880, !8, i64 884, !8, i64 888, !8, i64 892, !8, i64 896, !8, i64 900, !8, i64 904, !8, i64 908, !8, i64 912, !33, i64 916, !33, i64 917, !8, i64 920, !79, i64 924, !8, i64 928, !8, i64 932, !8, i64 936, !8, i64 940, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !8, i64 964, !8, i64 968, !8, i64 972, !79, i64 976, !33, i64 977, !8, i64 980, !8, i64 984, !81, i64 988, !81, i64 989, !81, i64 990, !81, i64 991, !8, i64 992, !8, i64 996, !8, i64 1000, !8, i64 1004, !8, i64 1008, !8, i64 1012, !8, i64 1016, !8, i64 1020, !8, i64 1024, !8, i64 1028, !8, i64 1032, !16, i64 1040, !16, i64 1072, !16, i64 1104, !66, i64 1136, !16, i64 1160, !16, i64 1192, !16, i64 1224, !16, i64 1256, !16, i64 1288, !16, i64 1320, !16, i64 1352, !16, i64 1384, !16, i64 1416, !16, i64 1448, !16, i64 1480, !16, i64 1512, !16, i64 1544, !16, i64 1576, !16, i64 1608, !16, i64 1640, !83, i64 1672, !33, i64 1673, !33, i64 1674, !33, i64 1675, !33, i64 1676, !33, i64 1677, !33, i64 1678, !33, i64 1679, !33, i64 1680, !33, i64 1681, !33, i64 1682, !33, i64 1683, !33, i64 1684, !33, i64 1685, !33, i64 1686, !33, i64 1687, !33, i64 1688, !33, i64 1689, !33, i64 1690, !33, i64 1691, !33, i64 1692, !33, i64 1693, !33, i64 1694, !33, i64 1695, !79, i64 1696, !33, i64 1697, !33, i64 1698, !33, i64 1699, !33, i64 1700, !33, i64 1701, !33, i64 1702, !33, i64 1703, !33, i64 1704, !33, i64 1705, !33, i64 1706, !33, i64 1707, !33, i64 1708, !33, i64 1709, !33, i64 1710, !8, i64 1712, !33, i64 1716, !33, i64 1717, !33, i64 1718, !33, i64 1719, !33, i64 1720, !33, i64 1721, !33, i64 1722}
!85 = !{!84, !33, i64 1722}
!86 = !{i8 0, i8 2}
!87 = !{}
!88 = !{!15, !15, i64 0}
!89 = !{!33, !33, i64 0}
!90 = !{!"p1 _ZTS7AstNode", !12, i64 0}
!91 = !{!"_ZTSN6VNType2enE", !7, i64 0}
!92 = !{!"_ZTS6VNType", !91, i64 0}
!93 = !{!"_ZTSN7AstNodeUt_E", !33, i64 0, !33, i64 0, !33, i64 0, !7, i64 0}
!94 = !{!"p1 _ZTS12AstNodeDType", !12, i64 0}
!95 = !{!"p1 _ZTS8FileLine", !12, i64 0}
!96 = !{!"_ZTS6VNUser", !7, i64 0}
!97 = !{!"_ZTS7AstNode", !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !24, i64 56, !92, i64 64, !93, i64 66, !7, i64 67, !8, i64 68, !94, i64 72, !90, i64 80, !95, i64 88, !90, i64 96, !96, i64 104, !8, i64 112, !8, i64 116, !96, i64 120, !96, i64 128, !8, i64 136, !8, i64 140, !96, i64 144}
!98 = !{!97, !90, i64 24}
!99 = !{!25, !24, i64 8}
!100 = !{!90, !90, i64 0}
!101 = !{!97, !8, i64 112}
!102 = !{!"_ZTSN7VAccess2enE", !7, i64 0}
!103 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!104 = !{!"_ZTS11AstNodeExpr", !97, i64 0}
!105 = !{!"p1 _ZTS6AstVar", !12, i64 0}
!106 = !{!"p1 _ZTS11AstVarScope", !12, i64 0}
!107 = !{!"p1 _ZTS13AstNodeModule", !12, i64 0}
!108 = !{!"_ZTS7VAccess", !102, i64 0}
!109 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!110 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !109, i64 0}
!111 = !{!"_ZTSSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0, !110, i64 8}
!112 = !{!"_ZTSSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !111, i64 0}
!113 = !{!"_ZTS16VSelfPointerText", !112, i64 0}
!114 = !{!"_ZTS13AstNodeVarRef", !104, i64 0, !105, i64 152, !106, i64 160, !107, i64 168, !108, i64 176, !113, i64 184}
!115 = !{!114, !106, i64 160}
!116 = !{!97, !95, i64 88}
!117 = !{!"_ZTS11AstVarScope", !97, i64 0, !33, i64 152, !33, i64 152, !32, i64 160, !105, i64 168}
!118 = !{!117, !105, i64 168}
!119 = !{!110, !109, i64 0}
!120 = !{!12, !12, i64 0}
!121 = !{!114, !105, i64 152}
!122 = !{!97, !94, i64 72}
!123 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!124 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!125 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!126 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !15, i64 8}
!127 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!128 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!129 = !{!"_ZTSSt6locale", !128, i64 0}
!130 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !123, i64 24, !124, i64 28, !124, i64 32, !125, i64 40, !126, i64 48, !7, i64 64, !8, i64 192, !127, i64 200, !129, i64 208}
!131 = !{!130, !123, i64 24}
!132 = !{!123, !123, i64 0}
!133 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !129, i64 56}
!134 = !{!"branch_weights", i32 1, i32 1048575}
!135 = !{!91, !91, i64 0}
!136 = !{!13, !13, i64 0}
!137 = !{!117, !32, i64 160}
!138 = !{!"_ZTSN11V3ErrorCode2enE", !7, i64 0}
!139 = !{!"_ZTS11V3ErrorCode", !138, i64 0}
!140 = !{!"any p3 pointer", !23, i64 0}
!141 = !{!"p3 _ZTS8FileLine", !140, i64 0}
!142 = !{!"p2 _ZTS8FileLine", !23, i64 0}
!143 = !{!"_ZTSSt15_Deque_iteratorIPK8FileLineRS2_PS2_E", !142, i64 0, !142, i64 8, !142, i64 16, !141, i64 24}
!144 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE16_Deque_impl_dataE", !141, i64 0, !15, i64 8, !143, i64 16, !143, i64 48}
!145 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE11_Deque_implE", !144, i64 0}
!146 = !{!"_ZTSSt11_Deque_baseIPK8FileLineSaIS2_EE", !145, i64 0}
!147 = !{!"_ZTSSt5dequeIPK8FileLineSaIS2_EE", !146, i64 0}
!148 = !{!"_ZTS13VErrorMessage", !139, i64 0, !16, i64 8, !95, i64 40, !147, i64 48}
!149 = !{!48, !46, i64 8}
!150 = !{!144, !141, i64 0}
!151 = !{!144, !141, i64 40}
!152 = !{!144, !141, i64 72}
!153 = !{!142, !142, i64 0}
!154 = !{!"llvm.loop.mustprogress"}
!155 = !{!144, !15, i64 8}
!156 = !{!143, !141, i64 24}
!157 = !{!"_ZTSN8VVarType2enE", !7, i64 0}
!158 = !{!"_ZTS8VVarType", !157, i64 0}
!159 = !{!158, !157, i64 0}
!160 = !{!92, !91, i64 0}
!161 = distinct !{null}
!162 = !{!32, !32, i64 0}
!163 = !{!102, !102, i64 0}
!164 = distinct !{!164, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!165 = distinct !{!165, !164, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!166 = distinct !{!166, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!167 = distinct !{!167, !166, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!168 = !{!165}
!169 = !{!167}
!170 = !{!167, !165}
!171 = !{!133, !13, i64 40}
!172 = !{!133, !13, i64 32}
!173 = distinct !{!173, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!174 = distinct !{!174, !173, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!175 = distinct !{!175, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!176 = distinct !{!176, !175, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!177 = distinct !{!177, i1 true, !"_ZNK6AstVar4nameB5cxx11Ev"}
!178 = distinct !{!178, !177, !"_ZNK6AstVar4nameB5cxx11Ev: argument 0"}
!179 = distinct !{!179, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!180 = distinct !{!180, !179, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!181 = !{!174}
!182 = !{!176}
!183 = !{!178}
!184 = !{!180}
!185 = !{!"p1 _ZTS7AstCell", !12, i64 0}
!186 = !{!"_ZTS8AstScope", !97, i64 0, !16, i64 152, !32, i64 184, !185, i64 192, !107, i64 200}
!187 = !{!186, !107, i64 200}
!188 = !{!"_ZTSSt12_Base_bitsetILm3EE", !7, i64 0}
!189 = !{!"_ZTSSt6bitsetILm146EE", !188, i64 0}
!190 = !{!"_ZTS12VErrorBitSet", !189, i64 0}
!191 = !{!"_ZTSSo"}
!192 = !{!"_ZTSSt13_Ios_Openmode", !7, i64 0}
!193 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !133, i64 0, !192, i64 64, !16, i64 72}
!194 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !191, i64 0, !193, i64 8}
!195 = !{!"_ZTSSt22__recursive_mutex_base", !7, i64 0}
!196 = !{!"_ZTSSt15recursive_mutex", !195, i64 0}
!197 = !{!"_ZTS10V3MutexImpISt15recursive_mutexE", !196, i64 0}
!198 = !{!"_ZTS14V3ErrorGuarded", !33, i64 0, !33, i64 1, !148, i64 8, !33, i64 136, !51, i64 144, !12, i64 192, !33, i64 200, !8, i64 204, !8, i64 208, !190, i64 216, !190, i64 240, !190, i64 264, !8, i64 288, !8, i64 292, !33, i64 296, !194, i64 304, !197, i64 680}
!199 = !{!198, !33, i64 0}
!200 = !{!198, !33, i64 1}
!201 = !{!198, !33, i64 136}
!202 = !{!48, !45, i64 0}
!203 = !{!48, !46, i64 16}
!204 = !{!48, !46, i64 24}
!205 = !{!48, !15, i64 32}
!206 = !{!198, !12, i64 192}
!207 = !{!198, !33, i64 200}
!208 = !{!198, !8, i64 204}
!209 = !{!198, !8, i64 208}
!210 = !{!198, !8, i64 288}
!211 = !{!198, !8, i64 292}
!212 = !{!198, !33, i64 296}
!213 = !{!"short", !7, i64 0}
!214 = !{!"p1 _ZTS23__pthread_internal_list", !12, i64 0}
!215 = !{!"_ZTS23__pthread_internal_list", !214, i64 0, !214, i64 8}
!216 = !{!"_ZTS17__pthread_mutex_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !213, i64 20, !213, i64 22, !215, i64 24}
!217 = !{!216, !8, i64 16}
!218 = distinct !{!218, i1 true, !"_ZNSt5dequeIPK8FileLineSaIS2_EE5beginEv"}
!219 = distinct !{!219, !218, !"_ZNSt5dequeIPK8FileLineSaIS2_EE5beginEv: argument 0"}
!220 = !{!139, !138, i64 0}
!221 = !{!138, !138, i64 0}
!222 = !{!148, !95, i64 40}
!223 = !{!219}
!224 = !{!23, !23, i64 0}
!225 = distinct !{!225, !154}
!226 = !{!143, !142, i64 8}
!227 = !{!143, !142, i64 16}
!228 = !{!144, !142, i64 16}
!229 = !{!144, !142, i64 48}
!230 = distinct !{!230, !154}
!231 = !{!47, !46, i64 24}
!232 = !{!47, !46, i64 16}
!233 = !{!"_ZTSN9VRandAttr2enE", !7, i64 0}
!234 = !{!"_ZTS9VRandAttr", !233, i64 0}
!235 = !{!234, !233, i64 0}
!236 = !{!"_ZTSN10VDirection2enE", !7, i64 0}
!237 = !{!"_ZTS10VDirection", !236, i64 0}
!238 = !{!"_ZTSN9VLifetime2enE", !7, i64 0}
!239 = !{!"_ZTS9VLifetime", !238, i64 0}
!240 = !{!"p1 _ZTS8AstIface", !12, i64 0}
!241 = !{!"_ZTS6AstVar", !97, i64 0, !16, i64 152, !16, i64 184, !16, i64 216, !158, i64 248, !237, i64 249, !237, i64 250, !239, i64 251, !234, i64 252, !8, i64 256, !33, i64 260, !33, i64 260, !33, i64 260, !33, i64 260, !33, i64 260, !33, i64 260, !33, i64 260, !33, i64 260, !33, i64 261, !33, i64 261, !33, i64 261, !33, i64 261, !33, i64 261, !33, i64 261, !33, i64 261, !33, i64 261, !33, i64 262, !33, i64 262, !33, i64 262, !33, i64 262, !33, i64 262, !33, i64 262, !33, i64 262, !33, i64 262, !33, i64 263, !33, i64 263, !33, i64 263, !33, i64 263, !33, i64 263, !33, i64 263, !33, i64 263, !33, i64 263, !33, i64 264, !33, i64 264, !33, i64 264, !33, i64 264, !33, i64 264, !33, i64 264, !33, i64 264, !33, i64 264, !33, i64 265, !33, i64 265, !33, i64 265, !33, i64 265, !33, i64 265, !33, i64 265, !33, i64 265, !33, i64 265, !33, i64 266, !33, i64 266, !33, i64 266, !33, i64 266, !33, i64 266, !33, i64 266, !33, i64 266, !33, i64 266, !33, i64 267, !33, i64 267, !33, i64 267, !33, i64 267, !33, i64 267, !33, i64 267, !33, i64 267, !240, i64 272}
!242 = !{!241, !8, i64 256}
!243 = !{!241, !240, i64 272}
!244 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
end_hunk_1
