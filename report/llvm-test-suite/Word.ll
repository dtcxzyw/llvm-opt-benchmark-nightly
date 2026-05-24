inline.NumInlined: 775
inline.NumDeleted: 123
begin_hunk_0_@_ZN2PP4Word8set_typeEv:bb.a
  %i.ej = and i64 %i.dj, 4294967295               ; 2 uses
  %indvars.iv.next132146 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %.not70147 = icmp samesign ult i64 %indvars.iv.next132146, %i.ej
  br i1 %.not70147, label %.lr.ph149, label %.critedge75

bb.bu:                                            ; preds = %.lr.ph149
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv.next132148, 1 ; 2 uses
  %.not70 = icmp samesign ult i64 %indvars.iv.next132, %i.ej
  br i1 %.not70, label %.lr.ph149, label %.critedge75

.lr.ph149:                                        ; preds = %bb.bt, %bb.bu
  %indvars.iv.next132148 = phi i64 [ %indvars.iv.next132, %bb.bu ], [ %indvars.iv.next132146, %bb.bt ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next132148
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !25
  switch i8 %i.el, label %bb.bu [
    i8 101, label %bb.bv
    i8 69, label %bb.bv
    i8 100, label %bb.bv
    i8 68, label %bb.bv
  ]

bb.bv:                                            ; preds = %.lr.ph149, %.lr.ph149, %.lr.ph149, %.lr.ph149
  store i32 1, ptr %i.a, align 8, !tbaa !39
  br label %bb.bx

.critedge75:                                      ; preds = %bb.bs, %bb.bu, %bb.bt
  %i.em = phi i32 [ %i.ei, %bb.bt ], [ %i.ei, %bb.bu ], [ %i.dk, %bb.bs ]
  %.0 = add nsw i32 %i.em, -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.en = call noundef zeroext i1 @_ZN2PP4Word14check_before_eENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr nonnull align 8 poison, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %.0)
  %i.eo = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %.critedge75
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !25
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %.critedge75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  br i1 %i.en, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  store i32 1, ptr %i.a, align 8, !tbaa !39
  br label %bb.bx

bb.bx:                                            ; preds = %bb.a, %bb.a, %bb.b, %bb.b, %bb.bv, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.bw, %bb.br, %bb.bq, %bb.bo, %.critedge, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4WordC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !30
  store i8 0, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !30
  store i8 0, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !30
  store i8 0, ptr %i.g, align 8, !tbaa !25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.i, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.k, align 1, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !42
  %i.o = load i64, ptr %i.h, align 8, !tbaa !30
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.o, ptr noundef nonnull @.str, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.q, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %i.r, align 4, !tbaa !44
  %i.s = load i64, ptr %i.e, align 8, !tbaa !30
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull @.str, i64 noundef 0)
          to label %_ZN2PP4Word4initEv.exit unwind label %bb.c ; 0 uses

_ZN2PP4Word4initEv.exit:                          ; preds = %.noexc
  store i32 %2, ptr %i.m, align 8, !tbaa !41
  store i32 %3, ptr %i.n, align 4, !tbaa !42
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7 unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7: ; preds = %_ZN2PP4Word4initEv.exit
  store ptr %5, ptr %i.l, align 8, !tbaa !40
  invoke void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7
  ret void

bb.c:                                             ; preds = %_ZN2PP4Word4initEv.exit, %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.g
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.g, align 8, !tbaa !25
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !25
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.ad = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.af = load i64, ptr %i.a, align 8, !tbaa !25
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4WordC2EdiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !30
  store i8 0, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !30
  store i8 0, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !30
  store i8 0, ptr %i.g, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 15, ptr %i.n, align 8, !tbaa !48
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %1)
          to label %_ZNSolsEd.exit unwind label %bb.m ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !29, !alias.scope !63
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 0, ptr %i.q, align 8, !tbaa !30, !alias.scope !63
  store i8 0, ptr %i.p, align 8, !tbaa !25, !alias.scope !63
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64, !noalias !63 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.s, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSolsEd.exit
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %9 = load ptr, ptr %8, align 8, !noalias !63    ; 2 uses
  %10 = icmp ugt ptr %i.s, %9
  %.08.i.i.i = select i1 %10, ptr %i.s, ptr %9
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !66, !noalias !63 ; 2 uses
  %i.v = ptrtoint ptr %.08.i.i.i to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.u, i64 noundef %i.x)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %7, align 8, !tbaa !18, !alias.scope !63 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !25, !alias.scope !63
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #18
  br label %.body

bb.e:                                             ; preds = %_ZNSolsEd.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.af = load ptr, ptr %0, align 8, !tbaa !18    ; 6 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  %i.ah = load ptr, ptr %7, align 8, !tbaa !18    ; 6 uses
  %i.ai = icmp eq ptr %i.ah, %i.p                 ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ai, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !30  ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %.not21.i = icmp eq ptr %7, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !38

bb.g:                                             ; preds = %bb.f
  switch i64 %i.aj, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !25
  store i8 %i.al, ptr %i.af, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ah, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.am = load i64, ptr %i.q, align 8, !tbaa !30  ; 2 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !30
  %i.an = load ptr, ptr %0, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 0, ptr %i.ao, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ah, ptr %0, align 8, !tbaa !18
  %i.ap = load <2 x i64>, ptr %i.q, align 8, !tbaa !25
  store <2 x i64> %i.ap, ptr %i.b, align 8, !tbaa !25
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !25
  store ptr %i.ah, ptr %0, align 8, !tbaa !18
  %i.ar = load <2 x i64>, ptr %i.q, align 8, !tbaa !25
  store <2 x i64> %i.ar, ptr %i.b, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.af, ptr %7, align 8, !tbaa !18
  store i64 %i.aq, ptr %i.p, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %7, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.as = phi ptr [ %i.af, %bb.j ], [ %i.p, %bb.k ], [ %i.ah, %bb.f ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.q, align 8, !tbaa !30
  store i8 0, ptr %i.as, align 1, !tbaa !25
  %i.at = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.p
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.av = load i64, ptr %i.p, align 8, !tbaa !25
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.ax, align 4, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.az, align 1, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !42
  %i.bd = load i64, ptr %i.h, align 8, !tbaa !30
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.bd, ptr noundef nonnull @.str, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 0 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.bf, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %i.bg, align 4, !tbaa !44
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !30
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.bh, ptr noundef nonnull @.str, i64 noundef 0)
          to label %_ZN2PP4Word4initEv.exit unwind label %bb.m ; 0 uses

_ZN2PP4Word4initEv.exit:                          ; preds = %.noexc
  store i32 3, ptr %i.ay, align 8, !tbaa !39
  store i32 %2, ptr %i.bb, align 8, !tbaa !41
  store i32 %3, ptr %i.bc, align 4, !tbaa !42
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZN2PP4Word4initEv.exit
  store ptr %5, ptr %i.ba, align 8, !tbaa !40
  %i.bj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bj, ptr %6, align 8, !tbaa !23
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bl = getelementptr i8, ptr %i.bj, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %6, i64 %i.bm
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !23
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bo, ptr %i.i, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bp, align 8, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !25
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #18
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bp, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bw) #17
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bx, ptr %6, align 8, !tbaa !23
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %6, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cd) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.l:                                             ; preds = %bb.a
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %_ZN2PP4Word4initEv.exit, %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.m ], [ %i.z, %.body ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.ce, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cg = load ptr, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.g
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.o
  %i.ci = load i64, ptr %i.g, align 8, !tbaa !25
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.d
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !25
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.co = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.a
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !25
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4WordC2EiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !30
  store i8 0, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !30
  store i8 0, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !30
  store i8 0, ptr %i.g, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %1)
          to label %bb.c unwind label %bb.n       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !29, !alias.scope !73
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 0, ptr %i.l, align 8, !tbaa !30, !alias.scope !73
  store i8 0, ptr %i.k, align 8, !tbaa !25, !alias.scope !73
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64, !noalias !73 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.n, null
  br i1 %.not5.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %9 = load ptr, ptr %8, align 8, !noalias !73    ; 2 uses
  %10 = icmp ugt ptr %i.n, %9
  %.08.i.i.i = select i1 %10, ptr %i.n, ptr %9
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66, !noalias !73 ; 2 uses
  %i.q = ptrtoint ptr %.08.i.i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.p, i64 noundef %i.s)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %7, align 8, !tbaa !18, !alias.scope !73 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.k, align 8, !tbaa !25, !alias.scope !73
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #18
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !18    ; 6 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  %i.ac = load ptr, ptr %7, align 8, !tbaa !18    ; 6 uses
  %i.ad = icmp eq ptr %i.ac, %i.k                 ; 2 uses
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ad, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ad, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !30  ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %.not21.i = icmp eq ptr %7, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !38

bb.h:                                             ; preds = %bb.g
  switch i64 %i.ae, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !25
  store i8 %i.ag, ptr %i.aa, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ac, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !30  ; 2 uses
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !30
  %i.ai = load ptr, ptr %0, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !18
  %i.ak = load <2 x i64>, ptr %i.l, align 8, !tbaa !25
  store <2 x i64> %i.ak, ptr %i.b, align 8, !tbaa !25
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !25
  store ptr %i.ac, ptr %0, align 8, !tbaa !18
  %i.am = load <2 x i64>, ptr %i.l, align 8, !tbaa !25
  store <2 x i64> %i.am, ptr %i.b, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aa, ptr %7, align 8, !tbaa !18
  store i64 %i.al, ptr %i.k, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %7, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.an = phi ptr [ %i.aa, %bb.k ], [ %i.k, %bb.l ], [ %i.ac, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.l, align 8, !tbaa !30
  store i8 0, ptr %i.an, align 1, !tbaa !25
  %i.ao = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.k
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aq = load i64, ptr %i.k, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.as, align 4, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.at, align 8, !tbaa !39
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.au, align 1, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 0, ptr %i.ax, align 4, !tbaa !42
  %i.ay = load i64, ptr %i.h, align 8, !tbaa !30
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.ay, ptr noundef nonnull @.str, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 0 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.ba, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %i.bb, align 4, !tbaa !44
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !30
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.bc, ptr noundef nonnull @.str, i64 noundef 0)
          to label %_ZN2PP4Word4initEv.exit unwind label %bb.n ; 0 uses

_ZN2PP4Word4initEv.exit:                          ; preds = %.noexc
  store i32 3, ptr %i.at, align 8, !tbaa !39
  store i32 %2, ptr %i.aw, align 8, !tbaa !41
  store i32 %3, ptr %i.ax, align 4, !tbaa !42
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZN2PP4Word4initEv.exit
  store ptr %5, ptr %i.av, align 8, !tbaa !40
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %6, align 8, !tbaa !23
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %6, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !23
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bj, ptr %i.i, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bk, align 8, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #18
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bk, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #17
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bs, ptr %6, align 8, !tbaa !23
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %6, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !26
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.by) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.m:                                             ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %_ZN2PP4Word4initEv.exit, %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.n ], [ %i.u, %.body ]
end_hunk_0
begin_hunk_1_@_ZN2PP4WordaSERKS0_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.i = load i8, ptr %i.h, align 1, !tbaa !20, !range !21, !noundef !22
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 37
  store i8 %i.i, ptr %i.j, align 1, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load <2 x i32>, ptr %i.k, align 8, !tbaa !4
  store <2 x i32> %i.m, ptr %i.l, align 8, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.q, ptr %i.r, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load <2 x i32>, ptr %i.s, align 8, !tbaa !4
  store <2 x i32> %i.u, ptr %i.t, align 8, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @_ZN2PP4WordC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4WordC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !30
  store i8 0, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.e, align 8, !tbaa !30
  store i8 0, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.h, align 8, !tbaa !30
  store i8 0, ptr %i.g, align 8, !tbaa !25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load i8, ptr %i.i, align 4, !tbaa !8, !range !21, !noundef !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.j, ptr %i.k, align 4, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.m, ptr %i.n, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20, !range !21, !noundef !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %i.p, ptr %i.q, align 1, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load <2 x i32>, ptr %i.r, align 8, !tbaa !4
  store <2 x i32> %i.t, ptr %i.s, align 8, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit13 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.w, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load <2 x i32>, ptr %i.y, align 8, !tbaa !4
  store <2 x i32> %i.aa, ptr %i.z, align 8, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit14 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit13
  ret void

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.g
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.af = load i64, ptr %i.g, align 8, !tbaa !25
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.d
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !25
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.al = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.a
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.an = load i64, ptr %i.a, align 8, !tbaa !25
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2PP4WordD2Ev(ptr noundef nonnull readonly align 8 captures(address) dead_on_return(128) dereferenceable(128) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !25
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !25
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.p = load i64, ptr %i.n, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word9set_valueEd(ptr noundef nonnull align 8 dereferenceable(128) %0, double noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 15, ptr %i.f, align 8, !tbaa !48
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %1)
          to label %_ZNSolsEd.exit unwind label %bb.l ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !29, !alias.scope !80
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.i, align 8, !tbaa !30, !alias.scope !80
  store i8 0, ptr %i.h, align 8, !tbaa !25, !alias.scope !80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64, !noalias !80 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.k, null
  br i1 %.not5.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %4, align 8, !noalias !80    ; 2 uses
  %6 = icmp ugt ptr %i.k, %5
  %.08.i.i.i = select i1 %6, ptr %i.k, ptr %5
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66, !noalias !80 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !18, !alias.scope !80 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.h, align 8, !tbaa !25, !alias.scope !80
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #18
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEd.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = load ptr, ptr %3, align 8, !tbaa !18    ; 6 uses
  %i.ab = icmp eq ptr %i.aa, %i.h                 ; 2 uses
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ab, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !30  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %.not21.i = icmp eq ptr %3, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.f, !prof !38

bb.f:                                             ; preds = %bb.e
  switch i64 %i.ac, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !25
  store i8 %i.ae, ptr %i.x, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.af = load i64, ptr %i.i, align 8, !tbaa !30  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !30
  %i.ah = load ptr, ptr %0, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %0, align 8, !tbaa !18
  %i.ak = load <2 x i64>, ptr %i.i, align 8, !tbaa !25
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !tbaa !25
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.al = load i64, ptr %i.y, align 8, !tbaa !25
  store ptr %i.aa, ptr %0, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load <2 x i64>, ptr %i.i, align 8, !tbaa !25
  store <2 x i64> %i.an, ptr %i.am, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.x, ptr %3, align 8, !tbaa !18
  store i64 %i.al, ptr %i.h, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %3, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.ao = phi ptr [ %i.x, %bb.i ], [ %i.h, %bb.j ], [ %i.aa, %bb.e ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.i, align 8, !tbaa !30
  store i8 0, ptr %i.ao, align 1, !tbaa !25
  %i.ap = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.h
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !25
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  invoke void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !23
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !23
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.az, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !25
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #18
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.az, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #17
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bh, ptr %2, align 8, !tbaa !23
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bj = getelementptr i8, ptr %i.bh, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.bk
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bn) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.l:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.m

bb.m:                                             ; preds = %.body, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.l ], [ %i.r, %.body ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word9set_valueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word9set_valueEPKc(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull %1, i64 noundef %i.c) ; 0 uses
  tail call void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word9set_valueEb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  br i1 %1, label %.critedge, label %bb.b

end_hunk_1
begin_hunk_2_@_ZN2PP4Word9get_floatEv:bb.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN2PP4Word10get_doubleEv(ptr noundef nonnull align 8 captures(none) dereferenceable(128) initializes((36, 37)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.a, align 4, !tbaa !8
  %i.b = tail call noundef double @_ZNK2PP4Word17convertFromStringERKdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret double %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word16get_print_stringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !18
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp ne i32 %i.d, 1702195828
  %i.f = zext i1 %i.e to i32
  %bcmp.i.fr = freeze i32 %i.f
  %i.g = icmp ne i32 %bcmp.i.fr, 0
  %spec.select = and i1 %i.g, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !30
  store i8 0, ptr %i.h, align 8, !tbaa !25
  br i1 %spec.select, label %bb.b, label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.k = load i32, ptr %i.j, align 1
  %i.l = xor i32 %i.k, 1936482662
  %i.m = getelementptr i8, ptr %i.j, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = xor i32 %i.o, 101
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %bcmp.i19.fr = freeze i32 %i.s
  %i.t = icmp ne i32 %bcmp.i19.fr, 0
  %spec.select72 = and i1 %i.t, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.v, align 8, !tbaa !30
  store i8 0, ptr %i.u, align 8, !tbaa !25
  br i1 %spec.select72, label %bb.b, label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.x, align 8, !tbaa !30
  store i8 0, ptr %i.w, align 8, !tbaa !25
  br i1 %2, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70
  %i.y = phi ptr [ %i.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ %i.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70 ], [ %i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread ] ; 4 uses
  %i.z = phi ptr [ %i.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ %i.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70 ], [ %i.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !39
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.57, i64 noundef 1)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge unwind label %bb.d ; 0 uses

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge: ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8, !tbaa !30
  %.pre73 = load i64, ptr %i.y, align 8, !tbaa !30
  %i.ae = sub i64 4611686018427387903, %.pre73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.d:                                             ; preds = %.invoke, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.c
  %i.af = phi ptr [ %i.as, %bb.f ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ], [ %i.z, %.invoke ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ], [ %i.z, %bb.c ]
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge, %bb.b
  %i.ah = phi i64 [ %i.ae, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ 4611686018427387903, %bb.b ]
  %i.ai = phi i64 [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %i.b, %bb.b ] ; 2 uses
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ak = load ptr, ptr %1, align 8, !tbaa !18
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ak, i64 noundef %i.ai)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.am = load i32, ptr %i.aa, align 8, !tbaa !39
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !30
  %i.ap = icmp eq i64 %i.ao, 4611686018427387903
  br i1 %i.ap, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.invoke:                                          ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #20
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.57, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.d ; 0 uses

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70
  %i.ar = phi ptr [ %i.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ %i.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70 ], [ %i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread ]
  %i.as = phi ptr [ %i.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ %i.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70 ], [ %i.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread ] ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.at = phi ptr [ %i.ar, %bb.f ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 4 uses
  %i.au = phi ptr [ %i.as, %bb.f ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !43
  %i.ax = icmp slt i32 %i.aw, 2
  br i1 %i.ax, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !29
  %i.az = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.au
  br i1 %i.ba, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !30 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.bd, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  store ptr %i.az, ptr %0, align 8, !tbaa !18
  %i.be = load i64, ptr %i.au, align 8, !tbaa !25
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !25
  %.pre74 = load i64, ptr %i.at, align 8, !tbaa !30
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %bb.h
  %i.bf = phi i64 [ %i.bb, %bb.h ], [ %.pre74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !30
  store i64 0, ptr %i.at, align 8, !tbaa !30
  store i8 0, ptr %i.au, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.j unwind label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bi = load i32, ptr %i.av, align 8, !tbaa !43
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 noundef %i.bi)
          to label %._crit_edge.i.i27 unwind label %bb.aa ; 0 uses

._crit_edge.i.i27:                                ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.bl, align 8, !tbaa !30
  store i8 0, ptr %i.bk, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bm, ptr %7, align 8, !tbaa !29, !alias.scope !139
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !30, !alias.scope !139
  store i8 0, ptr %i.bm, align 8, !tbaa !25, !alias.scope !139
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !64, !noalias !139 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bp, null
  br i1 %.not5.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i27
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %9 = load ptr, ptr %8, align 8, !noalias !139   ; 2 uses
  %10 = icmp ugt ptr %i.bp, %9
  %.08.i.i.i = select i1 %10, ptr %i.bp, ptr %9
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !66, !noalias !139 ; 2 uses
  %i.bs = ptrtoint ptr %.08.i.i.i to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.br, i64 noundef %i.bu)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %7, align 8, !tbaa !18, !alias.scope !139 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bm
  br i1 %i.by, label %.body, label %.body.sink.split

bb.m:                                             ; preds = %._crit_edge.i.i27
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.m, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.ca = load i64, ptr %i.bn, align 8, !tbaa !30, !noalias !140
  %i.cb = icmp eq i64 %i.ca, 4611686018427387903
  br i1 %i.cb, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31

bb.n:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #20
          to label %.noexc32 unwind label %bb.ab

.noexc32:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %.noexc33 unwind label %bb.ab  ; 6 uses

.noexc33:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.cd, ptr %6, align 8, !tbaa !29, !alias.scope !140
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.o:                                             ; preds = %.noexc33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !30 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc33
  store ptr %i.ce, ptr %6, align 8, !tbaa !18, !alias.scope !140
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !25
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !25, !alias.scope !140
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %i.cm = phi i64 [ %i.ci, %bb.o ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !30, !alias.scope !140
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !18
  store i64 0, ptr %i.cn, align 8, !tbaa !30
  store i8 0, ptr %i.cf, align 8, !tbaa !25
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.cp = load i64, ptr %i.at, align 8, !tbaa !30, !noalias !143 ; 2 uses
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !30, !noalias !143
  %i.cr = sub i64 4611686018427387903, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.cp
  br i1 %i.cs, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i34

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #20
          to label %.noexc38 unwind label %bb.ac

.noexc38:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i34: ; preds = %bb.p
  %i.ct = load ptr, ptr %3, align 8, !tbaa !18, !noalias !143
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.ct, i64 noundef %i.cp)
          to label %.noexc39 unwind label %bb.ac  ; 6 uses

.noexc39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i34
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.cv, ptr %5, align 8, !tbaa !29, !alias.scope !143
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !18 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 5 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

bb.r:                                             ; preds = %.noexc39
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !30 ; 3 uses
  %i.db = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.db)
  %i.dc = add nuw nsw i64 %i.da, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cv, ptr noundef nonnull align 8 dereferenceable(1) %i.cx, i64 %i.dc, i1 false)
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %.noexc39
  store ptr %i.cw, ptr %5, align 8, !tbaa !18, !alias.scope !143
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !25
  store i64 %i.dd, ptr %i.cv, align 8, !tbaa !25, !alias.scope !143
  %.phi.trans.insert.i36 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.pre.i37 = load i64, ptr %.phi.trans.insert.i36, align 8, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.r
  %i.de = phi i64 [ %i.da, %bb.r ], [ %.pre.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !30, !alias.scope !143
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !18
  store i64 0, ptr %i.df, align 8, !tbaa !30
  store i8 0, ptr %i.cx, align 8, !tbaa !25
  %i.dh = load ptr, ptr %0, align 8, !tbaa !18    ; 6 uses
  %i.di = icmp eq ptr %i.dh, %i.bk
  %i.dj = load ptr, ptr %5, align 8, !tbaa !18    ; 6 uses
  %i.dk = icmp eq ptr %i.dj, %i.cv                ; 2 uses
  br i1 %i.di, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i41: ; preds = %bb.s
  br i1 %i.dk, label %bb.t, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.s
  br i1 %i.dk, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i41
  %i.dl = load i64, ptr %i.dg, align 8, !tbaa !30 ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.dm)
  %.not21.i = icmp eq ptr %5, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.u, !prof !38

bb.u:                                             ; preds = %bb.t
  switch i64 %i.dl, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !25
  store i8 %i.dn, ptr %i.dh, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.dj, i64 %i.dl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.do = load i64, ptr %i.dg, align 8, !tbaa !30 ; 2 uses
  store i64 %i.do, ptr %i.bl, align 8, !tbaa !30
  %i.dp = load ptr, ptr %0, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1, !tbaa !25
  %.pre.i40 = load ptr, ptr %5, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i41
  store ptr %i.dj, ptr %0, align 8, !tbaa !18
  %i.dr = load <2 x i64>, ptr %i.dg, align 8, !tbaa !25
  store <2 x i64> %i.dr, ptr %i.bl, align 8, !tbaa !25
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ds = load i64, ptr %i.bk, align 8, !tbaa !25
  store ptr %i.dj, ptr %0, align 8, !tbaa !18
  %i.dt = load <2 x i64>, ptr %i.dg, align 8, !tbaa !25
  store <2 x i64> %i.dt, ptr %i.bl, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.dh, null
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dh, ptr %5, align 8, !tbaa !18
  store i64 %i.ds, ptr %i.cv, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cv, ptr %5, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.x, %bb.y
  %i.du = phi ptr [ %i.dh, %bb.x ], [ %i.cv, %bb.y ], [ %i.dj, %bb.t ], [ %.pre.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.dg, align 8, !tbaa !30
  store i8 0, ptr %i.du, align 1, !tbaa !25
  %i.dv = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.cv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dx = load i64, ptr %i.cv, align 8, !tbaa !25
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #18
end_hunk_2
