Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/common?download=true
inline.NumInlined: 133
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7xgboost6common8EscapeU8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_:bb.a
  br i1 %i.q, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30: ; preds = %bb.f
  %i.r = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  br label %bb.y

bb.h:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.d, align 8, !tbaa !13
  %i.t = and i64 %i.s, -2
  %i.u = icmp eq i64 %i.t, 4611686018427387902
  br i1 %i.u, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit31

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit31: ; preds = %bb.h
  %i.v = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  br label %bb.y

bb.j:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.d, align 8, !tbaa !13
  %i.x = and i64 %i.w, -2
  %i.y = icmp eq i64 %i.x, 4611686018427387902
  br i1 %i.y, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit32

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit32: ; preds = %bb.j
  %i.z = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  br label %bb.y

bb.l:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !13
  %i.ab = and i64 %i.aa, -2
  %i.ac = icmp eq i64 %i.ab, 4611686018427387902
  br i1 %i.ac, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33: ; preds = %bb.l
  %i.ad = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  br label %bb.y

bb.n:                                             ; preds = %bb.b
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !13
  %i.af = and i64 %i.ae, -2
  %i.ag = icmp eq i64 %i.af, 4611686018427387902
  br i1 %i.ag, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34: ; preds = %bb.n
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  br label %bb.y

bb.p:                                             ; preds = %bb.b
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !13
  %i.aj = and i64 %i.ai, -2
  %i.ak = icmp eq i64 %i.aj, 4611686018427387902
  br i1 %i.ak, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit35

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit35: ; preds = %bb.p
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  br label %bb.y

bb.r:                                             ; preds = %bb.b
  %i.am = load i64, ptr %i.d, align 8, !tbaa !13
  %i.an = and i64 %i.am, -2
  %i.ao = icmp eq i64 %i.an, 4611686018427387902
  br i1 %i.ao, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36: ; preds = %bb.r
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  br label %bb.y

bb.t:                                             ; preds = %bb.b
  %i.aq = icmp ult i8 %i.h, 32
  br i1 %i.aq, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.8, i32 noundef %i.i) #12 ; 0 uses
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #12 ; 2 uses
  %i.at = load i64, ptr %i.d, align 8, !tbaa !13
  %i.au = sub i64 4611686018427387903, %i.at
  %i.av = icmp ult i64 %i.au, %i.as
  br i1 %i.av, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37: ; preds = %bb.u
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.a, i64 noundef %i.as) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !13  ; 4 uses
  %i.ay = add i64 %i.ax, 1                        ; 3 uses
  %i.az = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.e
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.w
  %i.bb = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.bb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bd = phi i64 [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.be = icmp ugt i64 %i.ay, %i.bd
  br i1 %i.be, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.x
  %i.bf = phi ptr [ %.pre.i.i, %bb.x ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  store i8 %i.h, ptr %i.bg, align 1, !tbaa !15
  store i64 %i.ay, ptr %i.d, align 8, !tbaa !13
  %i.bh = load ptr, ptr %1, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ay
  store i8 0, ptr %i.bi, align 1, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30
  %i.bj = add nuw i64 %.038, 1                    ; 2 uses
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !13
  %i.bl = icmp ult i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.b, label %._crit_edge, !llvm.loop !16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost6common12HumanMemUnitB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.critedge:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 26 uses
  %i.a = uitofp i64 %1 to double                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %exp2 = call double @exp2(double 3.000000e+01)  ; 0 uses
  %i.b = icmp ult i64 %1, 1073741824
  br i1 %i.b, label %.critedge.1, label %bb.b

.critedge.1:                                      ; preds = %.critedge
  %exp2.1 = call double @exp2(double 2.000000e+01) ; 0 uses
  %i.c = icmp samesign ult i64 %1, 1048576
  br i1 %i.c, label %.critedge.2, label %bb.b

.critedge.2:                                      ; preds = %.critedge.1
  %exp2.2 = call double @exp2(double 1.000000e+01) ; 0 uses
  %i.d = icmp samesign ult i64 %1, 1024
  br i1 %i.d, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.critedge.2
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, double noundef %i.a)
          to label %_ZNSolsEd.exit36 unwind label %bb.i

bb.b:                                             ; preds = %.critedge.2, %.critedge.1, %.critedge
  %.sroa.752.0.copyload.lcssa = phi ptr [ @.str.9, %.critedge ], [ @.str.10, %.critedge.1 ], [ @.str.11, %.critedge.2 ] ; 2 uses
  %exp2.lcssa = phi double [ f0x41D0000000000000, %.critedge ], [ f0x4130000000000000, %.critedge.1 ], [ 1.024000e+03, %.critedge.2 ]
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = fdiv double %i.a, %exp2.lcssa
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, double noundef %i.h)
          to label %.lr.ph.i unwind label %.loopexit.split-lp ; 2 uses

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = load i8, ptr %.sroa.752.0.copyload.lcssa, align 1, !tbaa !15
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef signext %i.j)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %.010.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.sroa.752.0.copyload.lcssa, i64 1
  %i.l = load i8, ptr %.010.i.ptr.1, align 1, !tbaa !15
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef signext %i.l)
          to label %.noexc.1 unwind label %.loopexit ; 0 uses

.noexc.1:                                         ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !28, !alias.scope !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !13, !alias.scope !29
  store i8 0, ptr %i.n, align 8, !tbaa !15, !alias.scope !29
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33, !noalias !29 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !noalias !29 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc.1
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34, !noalias !29 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit47 unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !29 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !15, !alias.scope !29
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #13
  br label %.body45

bb.e:                                             ; preds = %.noexc.1
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit47 unwind label %bb.d

.loopexit:                                        ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body45

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body45

_ZNSolsEd.exit36:                                 ; preds = %bb.a
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit36
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !28, !alias.scope !37
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !13, !alias.scope !37
  store i8 0, ptr %i.ah, align 8, !tbaa !15, !alias.scope !37
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33, !noalias !37 ; 3 uses
  %.not.i.not.i.i38 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !noalias !37 ; 2 uses
  %i.an = icmp ugt ptr %i.ak, %i.am
  %.08.i.i.i39 = select i1 %i.an, ptr %i.ak, ptr %i.am ; 2 uses
  %.not5.i.i40 = icmp eq ptr %.08.i.i.i39, null
  %.not.i.i41 = select i1 %.not.i.not.i.i38, i1 true, i1 %.not5.i.i40
  br i1 %.not.i.i41, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34, !noalias !37 ; 2 uses
  %i.aq = ptrtoint ptr %.08.i.i.i39 to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ap, i64 noundef %i.as)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit47 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !37 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ah
  br i1 %i.aw, label %.body45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42: ; preds = %bb.g
  %i.ax = load i64, ptr %i.ah, align 8, !tbaa !15, !alias.scope !37
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #13
  br label %.body45

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit47 unwind label %bb.g

bb.i:                                             ; preds = %_ZNSolsEd.exit36, %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body45

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit47: ; preds = %bb.e, %bb.c, %bb.h, %bb.f
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !39
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !39
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit47
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !15
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #13
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bp) #12
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bq, ptr %2, align 8, !tbaa !39
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %2, i64 %i.bt
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !39
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bv, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bw) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

.body45:                                          ; preds = %bb.g, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.loopexit.split-lp, %.loopexit, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42
  %.pn31 = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42 ], [ %i.ba, %bb.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %i.au, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn31
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

declare double @exp2(double) local_unnamed_addr

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { noreturn }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !11, i64 8, !4, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !9, i64 0}
!15 = !{!4, !4, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!19 = distinct !{!19, !18, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!20 = distinct !{!20, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!21 = distinct !{!21, !20, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!22 = distinct !{!22, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!23 = distinct !{!23, !22, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!24 = distinct !{!24, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!25 = distinct !{!25, !24, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!26 = !{!19}
!27 = !{!21}
!28 = !{!10, !9, i64 0}
!29 = !{!21, !19}
!30 = !{!"p1 _ZTSNSt6locale5_ImplE", !8, i64 0}
!31 = !{!"_ZTSSt6locale", !30, i64 0}
!32 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !31, i64 56}
!33 = !{!32, !9, i64 40}
!34 = !{!32, !9, i64 32}
!35 = !{!23}
!36 = !{!25}
!37 = !{!25, !23}
!38 = !{!"vtable pointer", !3, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"_ZTSSi", !11, i64 8}
!41 = !{!40, !11, i64 8}
end_hunk_0
