Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/BVHLoader?download=true
inline.NumInlined: 1147
inline.NumDeleted: 488
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp9BVHLoader13ReadStructureEP7aiScene:bb.a
  %i.d = load ptr, ptr %2, align 8                ; 2 uses
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, 5207096034677049672
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = xor i64 %i.i, 89
  %i.k = or i64 %i.f, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread20, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void @_ZN6Assimp9BVHLoader14ThrowExceptionIJRA36_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(36) @.str.6) #26
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  unreachable

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread20, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread20: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void @_ZN6Assimp9BVHLoader13ReadHierarchyEP7aiScene(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1)
          to label %bb.d unwind label %bb.c

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN6Assimp9BVHLoader12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, 6
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10: ; preds = %bb.e
  %i.r = load ptr, ptr %3, align 8                ; 2 uses
  %i.s = load i32, ptr %i.r, align 1
  %i.t = xor i32 %i.s, 1230262093
  %i.u = getelementptr i8, ptr %i.r, i64 4
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i32
  %i.x = xor i32 %i.w, 20047
  %i.y = or i32 %i.t, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not22 = icmp eq i32 %i.aa, 0
  br i1 %.not22, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.thread21, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.thread: ; preds = %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10
  invoke void @_ZN6Assimp9BVHLoader14ThrowExceptionIJRA44_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(44) @.str.8) #26
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.thread
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.thread21, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.thread
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %3, align 8               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.thread21: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10
  invoke void @_ZN6Assimp9BVHLoader10ReadMotionEP7aiScene(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr poison)
          to label %bb.i unwind label %bb.h

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.thread21
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.an = load ptr, ptr %2, align 8               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ac, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.n, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.as = load ptr, ptr %2, align 8               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.j
  %i.av = load i64, ptr %i.at, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn7
}

declare void @_ZN6Assimp19SkeletonMeshBuilderC1EP7aiSceneP6aiNodeb(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp9BVHLoader15CreateAnimationEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, ptr nofree noundef captures(none) initializes((48, 52), (56, 64)) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::map", align 8          ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #27 ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1020) %i.f, i8 0, i64 1020, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1032
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1040
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1048 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1056 ; 4 uses
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1064
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1072
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1080
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  store ptr null, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %i.o, align 8
  store i32 6, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.p, ptr noundef nonnull align 1 dereferenceable(6) @.str.39, i64 6, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 0, ptr %i.q, align 2
  %.phi.trans.insert344 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre345 = load ptr, ptr %.phi.trans.insert344, align 8
  %.phi.trans.insert342 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre343 = load ptr, ptr %.phi.trans.insert342, align 8
  %.phi.trans.insert340 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.pre341 = load i32, ptr %.phi.trans.insert340, align 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre = load float, ptr %.phi.trans.insert, align 8
  %i.r = fpext float %.pre to double
  %i.s = fdiv double 1.000000e+00, %i.r
  store double %i.s, ptr %i.h, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 5 uses
  %i.u = add i32 %.pre341, -1
  %i.v = uitofp i32 %i.u to double
  store double %i.v, ptr %i.g, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = ptrtoint ptr %.pre343 to i64
  %i.y = ptrtoint ptr %.pre345 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 56                 ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.i, align 8
  %i.ac = shl nsw i64 %i.aa, 3
  %i.ad = and i64 %i.ac, 34359738360
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #27
  store ptr %i.ae, ptr %i.j, align 8
  %i.af = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.preheader259, label %.lr.ph

.preheader259.loopexit:                           ; preds = %.lr.ph
  %i.ag = icmp eq i32 %i.aq, 0
  br label %.preheader259

.preheader259:                                    ; preds = %.preheader259.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not384 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ag, %.preheader259.loopexit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  br i1 %.not384, label %._crit_edge383, label %.lr.ph382

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.ao = load ptr, ptr %i.j, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  store ptr null, ptr %i.ap, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.i, align 8             ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %.lr.ph, label %.preheader259.loopexit, !llvm.loop !10

._crit_edge383:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %.preheader259
  ret void

.lr.ph382:                                        ; preds = %.preheader259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %indvars.iv337381 = phi i64 [ %indvars.iv.next338, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ 0, %.preheader259 ] ; 3 uses
  %i.at = load ptr, ptr %i.w, align 8
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.at, i64 %indvars.iv337381 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 3 uses
  store ptr %i.ah, ptr %2, align 8
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.ax, ptr %i.a, align 8
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i127, label %._crit_edge.i.i126

.noexc.i127:                                      ; preds = %.lr.ph382
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.az, ptr %2, align 8
  %i.ba = load i64, ptr %i.a, align 8
  store i64 %i.ba, ptr %i.ah, align 8
  br label %._crit_edge.i.i126

._crit_edge.i.i126:                               ; preds = %.noexc.i127, %.lr.ph382
  %i.bb = phi ptr [ %i.az, %.noexc.i127 ], [ %i.ah, %.lr.ph382 ] ; 2 uses
  switch i64 %i.ax, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i126
  %i.bc = load i8, ptr %i.aw, align 1
  store i8 %i.bc, ptr %i.bb, align 1
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i126
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr nonnull align 1 %i.aw, i64 %i.ax, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i126
  %i.bd = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.bd, ptr %i.ai, align 8
  %i.be = load ptr, ptr %2, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 0, ptr %i.bf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bg = invoke noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #27
          to label %bb.d unwind label %bb.f       ; 12 uses

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1048 ; 2 uses
  store ptr null, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1056 ; 2 uses
  store i32 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1064 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.bg, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = load ptr, ptr %i.j, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv337381
  store ptr %i.bg, ptr %i.bl, align 8
  %i.bm = load i64, ptr %i.ai, align 8            ; 4 uses
  %i.bn = icmp ugt i64 %i.bm, 1023
  br i1 %i.bn, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit130, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = trunc nuw nsw i64 %i.bm to i32
  store i32 %i.bo, ptr %i.bg, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bq = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr align 1 %i.bq, i64 %i.bm, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bm
  store i8 0, ptr %i.br, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit130

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit130: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 0, ptr %i.aj, align 8
  store ptr null, ptr %i.ak, align 8
  store ptr %i.aj, ptr %i.al, align 8
  store ptr %i.aj, ptr %i.am, align 8
  store i64 0, ptr %i.an, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 6 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not323 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not323, label %._crit_edge.thread, label %.lr.ph297

._crit_edge:                                      ; preds = %bb.m
  %i.bw = icmp eq i64 %i.dg, 24
  br i1 %i.bw, label %bb.o, label %._crit_edge.thread

bb.f:                                             ; preds = %bb.c
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.lr.ph297:                                        ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit130, %bb.m
  %i.by = phi ptr [ %i.dd, %bb.m ], [ %i.bv, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit130 ]
  %i.bz = phi i64 [ %i.db, %bb.m ], [ 0, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit130 ]
  %.0100296 = phi i32 [ %i.da, %bb.m ], [ 0, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit130 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %i.cb = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph297
  %i.cc = load i32, ptr %i.ca, align 4            ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.g ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.g ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = icmp slt i32 %i.ce, %i.cc               ; 3 uses
  %.19.i.i.i.i = select i1 %i.cf, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cf, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i, label %bb.g, !llvm.loop !11

_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i: ; preds = %bb.g
  %i.cg = icmp eq ptr %.19.i.i.i.i, %i.aj
  br i1 %i.cg, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cf, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ch = load i32, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.ci = icmp slt i32 %i.cc, %i.ch
  br i1 %i.ci, label %.critedge.i, label %bb.m

.critedge.i:                                      ; preds = %bb.h, %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i, %.lr.ph297
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i ], [ %i.aj, %.lr.ph297 ]
  %i.cj = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc131 unwind label %bb.n  ; 6 uses

.noexc131:                                        ; preds = %.critedge.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 3 uses
  %i.cl = load i32, ptr %i.ca, align 4
  store i32 %i.cl, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 36
  store i32 0, ptr %i.cm, align 4
  %i.cn = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.ck)
          to label %bb.i unwind label %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.i:                                             ; preds = %.noexc131
  %i.co = extractvalue { ptr, ptr } %i.cn, 0      ; 2 uses
  %i.cp = extractvalue { ptr, ptr } %i.cn, 1      ; 4 uses
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i4.i = icmp ne ptr %i.co, null
  %i.cq = icmp eq ptr %i.cp, %i.aj
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.cq
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cs = load i32, ptr %i.ck, align 4
  %i.ct = load i32, ptr %i.cr, align 4
  %i.cu = icmp slt i32 %i.cs, %i.ct
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k, %bb.j
  %i.cv = phi i1 [ %i.cu, %bb.k ], [ true, %bb.j ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cv, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %i.aj) #24
  %i.cw = load i64, ptr %i.an, align 8
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr %i.an, align 8
  br label %bb.m

_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.noexc131
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 40) #25
  br label %.body

bb.l:                                             ; preds = %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 40) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread.i.i, %bb.h
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %i.cj, %.thread.i.i ], [ %i.co, %bb.l ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 36
  store i32 %.0100296, ptr %i.cz, align 4
  %i.da = add i32 %.0100296, 1                    ; 2 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = load ptr, ptr %i.bt, align 8
  %i.dd = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = ashr exact i64 %i.dg, 2
  %i.di = icmp ugt i64 %i.dh, %i.db
  br i1 %i.di, label %.lr.ph297, label %._crit_edge, !llvm.loop !12

bb.n:                                             ; preds = %.critedge.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %._crit_edge
  %i.dk = load i32, ptr %i.t, align 4             ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bg, i64 1028
  store i32 %i.dk, ptr %i.dl, align 4
  %i.dm = zext i32 %i.dk to i64                   ; 2 uses
  %i.dn = mul nuw nsw i64 %i.dm, 24
  %i.do = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dn) #27
          to label %bb.p unwind label %bb.s       ; 4 uses

bb.p:                                             ; preds = %bb.o
  %i.dp = icmp eq i32 %i.dk, 0
  br i1 %i.dp, label %.loopexit257, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %i.dm
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %i.dr = phi ptr [ %i.do, %bb.q ], [ %i.dt, %bb.r ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dq
  br i1 %i.du, label %.loopexit257, label %bb.r

.loopexit257:                                     ; preds = %bb.r, %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bg, i64 1032
  store ptr %i.do, ptr %i.dv, align 8
  %i.dw = load i32, ptr %i.t, align 4             ; 4 uses
  %4 = load ptr, ptr %i.ak, align 8               ; 4 uses
  %.not10.i.i.i = icmp eq ptr %4, null
  %5 = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 3 uses
  %wide.trip.count = zext i32 %i.dw to i64        ; 3 uses
  %exitcond.not377 = icmp eq i32 %i.dw, 0
  br i1 %exitcond.not377, label %.loopexit256, label %.lr.ph380

bb.s:                                             ; preds = %._crit_edge322, %.loopexit256, %bb.o
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph380:                                        ; preds = %.loopexit257, %bb.w
  %.099379 = phi ptr [ %i.go, %bb.w ], [ %i.do, %.loopexit257 ] ; 5 uses
  %indvars.iv331378 = phi i64 [ %indvars.iv.next332, %bb.w ], [ 0, %.loopexit257 ] ; 5 uses
  %i.dy = trunc nuw i64 %indvars.iv331378 to i32
  %i.dz = uitofp i32 %i.dy to double
  store double %i.dz, ptr %.099379, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.099379, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.099379, i64 12
  %i.ec = getelementptr inbounds nuw i8, ptr %.099379, i64 8
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.thread.split, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph380, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %4, %.lr.ph380 ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.aj, %.lr.ph380 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = icmp slt i32 %i.ee, 0                   ; 3 uses
  %.19.i.i.i = select i1 %i.ef, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ef, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.eg = icmp eq ptr %.19.i.i.i, %i.aj
  br i1 %i.eg, label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.thread.split, label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit

_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ef, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.eh = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.thread.split, label %.lr.ph.i.i.i.preheader.1

_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.thread.split: ; preds = %.lr.ph380, %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit, %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.1, %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.1, %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.2, %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.2
  %i.ej = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA34_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 1 dereferenceable(34) @.str.40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.thread.split
  invoke void @__cxa_throw(ptr nonnull %i.ej, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ao unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.thread.split
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ej) #24
  br label %.body

.lr.ph.i.i.i.preheader.1:                         ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = load ptr, ptr %i.bt, align 8
  %i.ep = load ptr, ptr %i.bs, align 8
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2
  %i.eu = mul i64 %i.et, %indvars.iv331378
  %i.ev = sext i32 %i.en to i64
  %i.ew = load ptr, ptr %5, align 8
  %i.ex = getelementptr [4 x i8], ptr %i.ew, i64 %i.eu
  %i.ey = getelementptr [4 x i8], ptr %i.ex, i64 %i.ev
  %i.ez = load float, ptr %i.ey, align 4
  store float %i.ez, ptr %i.ec, align 8
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.preheader.1
  %.012.i.i.i.1 = phi ptr [ %.1.i.i.i.1, %.lr.ph.i.i.i.1 ], [ %4, %.lr.ph.i.i.i.preheader.1 ] ; 4 uses
  %.0811.i.i.i.1 = phi ptr [ %.19.i.i.i.1, %.lr.ph.i.i.i.1 ], [ %i.aj, %.lr.ph.i.i.i.preheader.1 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.1, i64 32
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = icmp slt i32 %i.fb, 1                   ; 3 uses
  %.19.i.i.i.1 = select i1 %i.fc, ptr %.0811.i.i.i.1, ptr %.012.i.i.i.1 ; 3 uses
  %.1.in.v.i.i.i.1 = select i1 %i.fc, i64 24, i64 16
  %.1.in.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.1, i64 %.1.in.v.i.i.i.1
  %.1.i.i.i.1 = load ptr, ptr %.1.in.i.i.i.1, align 8 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %.1.i.i.i.1, null
  br i1 %.not.i.i.i.1, label %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.1, label %.lr.ph.i.i.i.1, !llvm.loop !11

_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.1
  %i.fd = icmp eq ptr %.19.i.i.i.1, %i.aj
  br i1 %i.fd, label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.thread.split, label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.1

_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.1: ; preds = %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.1
  %.19.i.i.i.sroa.sel.v.1.sroa.sel.v.sroa.sel.v = select i1 %i.fc, ptr %.0811.i.i.i.1, ptr %.012.i.i.i.1
  %.19.i.i.i.sroa.sel.v.1.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.1.sroa.sel.v.sroa.sel.v, i64 32
  %i.fe = load i32, ptr %.19.i.i.i.sroa.sel.v.1.sroa.sel.v.sroa.sel, align 4
  %i.ff = icmp sgt i32 %i.fe, 1
  br i1 %i.ff, label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.thread.split, label %.lr.ph.i.i.i.preheader.2

.lr.ph.i.i.i.preheader.2:                         ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.1
  %i.fg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.1, i64 36
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = load ptr, ptr %i.bt, align 8
  %i.fj = load ptr, ptr %i.bs, align 8
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 2
  %i.fo = mul i64 %i.fn, %indvars.iv331378
  %i.fp = sext i32 %i.fh to i64
  %i.fq = load ptr, ptr %5, align 8
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %i.fo
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %i.fp
  %i.ft = load float, ptr %i.fs, align 4
  store float %i.ft, ptr %i.eb, align 4
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.preheader.2
  %.012.i.i.i.2 = phi ptr [ %.1.i.i.i.2, %.lr.ph.i.i.i.2 ], [ %4, %.lr.ph.i.i.i.preheader.2 ] ; 4 uses
  %.0811.i.i.i.2 = phi ptr [ %.19.i.i.i.2, %.lr.ph.i.i.i.2 ], [ %i.aj, %.lr.ph.i.i.i.preheader.2 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.2, i64 32
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = icmp slt i32 %i.fv, 2                   ; 3 uses
  %.19.i.i.i.2 = select i1 %i.fw, ptr %.0811.i.i.i.2, ptr %.012.i.i.i.2 ; 3 uses
  %.1.in.v.i.i.i.2 = select i1 %i.fw, i64 24, i64 16
  %.1.in.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.2, i64 %.1.in.v.i.i.i.2
  %.1.i.i.i.2 = load ptr, ptr %.1.in.i.i.i.2, align 8 ; 2 uses
  %.not.i.i.i.2 = icmp eq ptr %.1.i.i.i.2, null
  br i1 %.not.i.i.i.2, label %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.2, label %.lr.ph.i.i.i.2, !llvm.loop !11

_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.2: ; preds = %.lr.ph.i.i.i.2
  %i.fx = icmp eq ptr %.19.i.i.i.2, %i.aj
  br i1 %i.fx, label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.thread.split, label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.2

_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.2: ; preds = %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.2
  %.19.i.i.i.sroa.sel.v.2.sroa.sel.v.sroa.sel.v = select i1 %i.fw, ptr %.0811.i.i.i.2, ptr %.012.i.i.i.2
  %.19.i.i.i.sroa.sel.v.2.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.2.sroa.sel.v.sroa.sel.v, i64 32
  %i.fy = load i32, ptr %.19.i.i.i.sroa.sel.v.2.sroa.sel.v.sroa.sel, align 4
  %i.fz = icmp sgt i32 %i.fy, 2
  br i1 %i.fz, label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.thread.split, label %bb.w

bb.w:                                             ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.2
  %i.ga = getelementptr inbounds nuw i8, ptr %.19.i.i.i.2, i64 36
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = load ptr, ptr %i.bt, align 8
  %i.gd = load ptr, ptr %i.bs, align 8
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 2
  %i.gi = mul i64 %i.gh, %indvars.iv331378
  %i.gj = sext i32 %i.gb to i64
  %i.gk = load ptr, ptr %5, align 8
  %i.gl = getelementptr [4 x i8], ptr %i.gk, i64 %i.gi
  %i.gm = getelementptr [4 x i8], ptr %i.gl, i64 %i.gj
  %i.gn = load float, ptr %i.gm, align 4
  store float %i.gn, ptr %i.ea, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %.099379, i64 24
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331378, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit256, label %.lr.ph380, !llvm.loop !13

._crit_edge.thread:                               ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit130, %._crit_edge
  %i.gp = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1040
  %i.gr = load float, ptr %i.gq, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 1056
  %i.gt = load float, ptr %i.gs, align 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 1072
  %i.gv = load float, ptr %i.gu, align 4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bg, i64 1028
  store i32 1, ptr %i.gw, align 4
  %i.gx = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #27
          to label %.preheader258.preheader unwind label %bb.x ; 6 uses

.preheader258.preheader:                          ; preds = %._crit_edge.thread
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 20
  store i32 1, ptr %i.gy, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bg, i64 1032
  store ptr %i.gx, ptr %i.gz, align 8
  store double 0.000000e+00, ptr %i.gx, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store float %i.gr, ptr %i.ha, align 8
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store float %i.gt, ptr %.sroa.5246.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store float %i.gv, ptr %.sroa.6.0..sroa_idx, align 8
  %.pr = load i32, ptr %i.t, align 4              ; 2 uses
  %.pre347 = zext i32 %.pr to i64
  br label %.loopexit256

bb.x:                                             ; preds = %._crit_edge.thread
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit256:                                     ; preds = %bb.w, %.loopexit257, %.preheader258.preheader
  %.pre-phi = phi i64 [ %.pre347, %.preheader258.preheader ], [ %wide.trip.count, %.loopexit257 ], [ %wide.trip.count, %bb.w ] ; 4 uses
  %i.hc = phi i32 [ %.pr, %.preheader258.preheader ], [ %i.dw, %.loopexit257 ], [ %i.dw, %bb.w ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bg, i64 1040
  store i32 %i.hc, ptr %i.hd, align 8
  %i.he = shl nuw nsw i64 %.pre-phi, 5
  %i.hf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.he) #27
          to label %bb.y unwind label %bb.s       ; 5 uses

bb.y:                                             ; preds = %.loopexit256
  %i.hg = icmp eq i32 %i.hc, 0
  br i1 %i.hg, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.hf, i64 %.pre-phi
  %i.hi = add nuw nsw i64 %.pre-phi, 576460752303423487
  %i.hj = and i64 %i.hi, 576460752303423487
  %xtraiter = and i64 %.pre-phi, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.z, %.prol.preheader
  %i.hk = phi ptr [ %i.hn, %.prol.preheader ], [ %i.hf, %bb.z ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.z ]
  store double 0.000000e+00, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  store i32 1, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.z
  %.unr = phi ptr [ %i.hf, %bb.z ], [ %i.hn, %.prol.preheader ]
  %i.ho = icmp samesign ult i64 %i.hj, 7
  br i1 %i.ho, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.hp = phi ptr [ %i.in, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  store i32 1, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  store double 0.000000e+00, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  store i32 1, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  store double 0.000000e+00, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 88
  store i32 1, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 96
  store double 0.000000e+00, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 120
  store i32 1, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hp, i64 128
  store double 0.000000e+00, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.hp, i64 152
  store i32 1, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hp, i64 160
  store double 0.000000e+00, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hp, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hp, i64 184
  store i32 1, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hp, i64 192
  store double 0.000000e+00, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hp, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hp, i64 216
  store i32 1, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hp, i64 224
  store double 0.000000e+00, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.hp, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.hp, i64 248
  store i32 1, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.hp, i64 256 ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.hh
  br i1 %i.io, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.y
  store ptr %i.hf, ptr %i.bh, align 8
  %i.ip = load i32, ptr %i.t, align 4
  %.not324 = icmp eq i32 %i.ip, 0
  br i1 %.not324, label %._crit_edge322, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.iq = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit
  %indvars.iv334 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next335, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ] ; 5 uses
  %.097320 = phi ptr [ %i.hf, %.preheader.lr.ph ], [ %i.qx, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ] ; 3 uses
  %i.ir = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.is = load ptr, ptr %i.bs, align 8            ; 3 uses
  %.not325 = icmp eq ptr %i.ir, %i.is
  br i1 %.not325, label %._crit_edge310, label %.lr.ph309

.lr.ph309:                                        ; preds = %.preheader
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.ir to i64
  %i.iv = sub i64 %i.iu, %i.it
  %i.iw = ashr exact i64 %i.iv, 2                 ; 4 uses
  %i.ix = mul i64 %i.iw, %indvars.iv334
  %i.iy = mul i64 %i.iw, %indvars.iv334
  %i.iz = mul i64 %i.iw, %indvars.iv334
  br label %bb.ag

._crit_edge322:                                   ; preds = %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit, %.loopexit
  store i32 1, ptr %i.bi, align 8
  %i.ja = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #27
          to label %.preheader255.preheader unwind label %bb.s ; 5 uses

.preheader255.preheader:                          ; preds = %._crit_edge322
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 20
  store i32 1, ptr %i.jb, align 4
  store ptr %i.ja, ptr %i.bj, align 8
  store double 0.000000e+00, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store float 1.000000e+00, ptr %i.jd, align 8
  %i.je = load ptr, ptr %i.ak, align 8
  invoke void @_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.je)
          to label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit unwind label %bb.al

._crit_edge310.loopexit:                          ; preds = %bb.ak
  %i.jf = extractelement <2 x float> %i.qq, i64 0
  %i.jg = extractelement <2 x float> %i.qq, i64 1
  br label %._crit_edge310

._crit_edge310:                                   ; preds = %._crit_edge310.loopexit, %.preheader
  %.sroa.74.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.jg, %._crit_edge310.loopexit ] ; 4 uses
  %.sroa.44.0.lcssa = phi float [ 1.000000e+00, %.preheader ], [ %i.jf, %._crit_edge310.loopexit ] ; 6 uses
  %.sroa.0173.0.lcssa = phi float [ 1.000000e+00, %.preheader ], [ %.sroa.0173.1, %._crit_edge310.loopexit ] ; 6 uses
  %i.jh = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.qo, %._crit_edge310.loopexit ] ; 7 uses
  %i.ji = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.qr, %._crit_edge310.loopexit ] ; 7 uses
  %i.jj = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader ], [ %i.qp, %._crit_edge310.loopexit ] ; 5 uses
  %i.jk = trunc nuw i64 %indvars.iv334 to i32
  %i.jl = uitofp i32 %i.jk to double
  store double %i.jl, ptr %.097320, align 8
  %i.jm = fadd float %.sroa.44.0.lcssa, %.sroa.0173.0.lcssa
  %i.jn = extractelement <2 x float> %i.jj, i64 1 ; 5 uses
  %i.jo = fadd float %i.jn, %i.jm                 ; 2 uses
  %i.jp = fcmp ogt float %i.jo, 0.000000e+00
  br i1 %i.jp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge310
  %i.jq = fadd float %i.jo, 1.000000e+00
  %i.jr = call noundef float @sqrtf(float noundef %i.jq) #24
  %i.js = fmul float %i.jr, 2.000000e+00
  %i.jt = extractelement <2 x float> %i.jj, i64 0
  %i.ju = fsub float %.sroa.74.0.lcssa, %i.jt
  %i.jv = insertelement <4 x float> poison, float %i.js, i64 0 ; 2 uses
  %i.jw = insertelement <4 x float> %i.jv, float %i.ju, i64 1
  %i.jx = shufflevector <2 x float> %i.ji, <2 x float> %i.jh, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.jy = shufflevector <2 x float> %i.jh, <2 x float> %i.ji, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.jz = fsub <4 x float> %i.jx, %i.jy
  %i.ka = shufflevector <4 x float> %i.jw, <4 x float> %i.jz, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.kb = shufflevector <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x float> %i.jv, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %i.kc = fmul <4 x float> %i.ka, %i.kb
  %i.kd = fdiv <4 x float> %i.ka, %i.kb
  %i.ke = shufflevector <4 x float> %i.kc, <4 x float> %i.kd, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.ab:                                            ; preds = %._crit_edge310
  %i.kf = fcmp ogt float %.sroa.0173.0.lcssa, %.sroa.44.0.lcssa
  %i.kg = fcmp ogt float %.sroa.0173.0.lcssa, %i.jn
  %or.cond.i = and i1 %i.kf, %i.kg
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.kh = fadd float %.sroa.0173.0.lcssa, 1.000000e+00
  %i.ki = fsub float %i.kh, %.sroa.44.0.lcssa
  %i.kj = fadd <2 x float> %i.jh, %i.ji
  %i.kk = insertelement <2 x float> poison, float %.sroa.74.0.lcssa, i64 0
  %i.kl = insertelement <2 x float> %i.kk, float %i.ki, i64 1
  %i.km = fsub <2 x float> %i.kl, %i.jj           ; 2 uses
  %i.kn = extractelement <2 x float> %i.km, i64 1
  %i.ko = call noundef float @sqrtf(float noundef %i.kn) #24
  %i.kp = fmul float %i.ko, 2.000000e+00
  %i.kq = shufflevector <2 x float> %i.km, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.kr = insertelement <4 x float> %i.kq, float %i.kp, i64 1 ; 2 uses
  %i.ks = shufflevector <2 x float> %i.kj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kt = shufflevector <4 x float> %i.kr, <4 x float> %i.ks, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ku = shufflevector <4 x float> %i.kr, <4 x float> <float poison, float 2.500000e-01, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1> ; 2 uses
  %i.kv = fdiv <4 x float> %i.kt, %i.ku
  %i.kw = fmul <4 x float> %i.kt, %i.ku
  %i.kx = shufflevector <4 x float> %i.kv, <4 x float> %i.kw, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ky = fcmp ogt float %.sroa.44.0.lcssa, %i.jn
  br i1 %i.ky, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.kz = fadd float %.sroa.44.0.lcssa, 1.000000e+00
  %i.la = fsub float %i.kz, %.sroa.0173.0.lcssa
  %i.lb = fsub float %i.la, %i.jn
  %i.lc = call noundef float @sqrtf(float noundef %i.lb) #24
  %i.ld = fmul float %i.lc, 2.000000e+00
  %i.le = extractelement <2 x float> %i.jj, i64 0
  %i.lf = fadd float %.sroa.74.0.lcssa, %i.le
  %i.lg = fsub <2 x float> %i.ji, %i.jh
  %i.lh = fadd <2 x float> %i.ji, %i.jh
  %i.li = shufflevector <2 x float> %i.lg, <2 x float> %i.lh, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
end_hunk_0
