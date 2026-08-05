inline.NumInlined: 20
inline.NumDeleted: 11
begin_hunk_0_@_ZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNS0_15safe_assert_argEiP13__va_list_tag:bb.a
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !23 ; 2 uses
  %i.cc = icmp eq i64 %.014.i.lcssa.i.i.i28, 2
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i27
  store i16 %i.cb, ptr %i.a, align 16
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit36

bb.u:                                             ; preds = %._crit_edge.i.i.i27, %._crit_edge.thread.i.i.i35
  %i.cd = phi i16 [ %i.bh, %._crit_edge.thread.i.i.i35 ], [ %i.cb, %._crit_edge.i.i.i27 ]
  %.0.i1813.i.i.i30 = phi i64 [ 1, %._crit_edge.thread.i.i.i35 ], [ %i.br, %._crit_edge.i.i.i27 ]
  %i.ce = lshr i16 %i.cd, 8
  %i.cf = trunc nuw i16 %i.ce to i8
  store i8 %i.cf, ptr %i.a, align 16, !tbaa !27
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit36

_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit36: ; preds = %bb.u, %bb.t
  %.0.i1812.i.i.i31 = phi i64 [ %i.br, %bb.t ], [ %.0.i1813.i.i.i30, %bb.u ]
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKcm(ptr noundef nonnull %i.a, i64 noundef %.0.i1812.i.i.i31)
          to label %bb.v unwind label %.loopexit.split-lp

bb.v:                                             ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit36
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKc(ptr noundef nonnull @.str.4)
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !30
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKc(ptr noundef %i.ch)
          to label %bb.x unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %.not23 = icmp eq i32 %1, 0
  br i1 %.not23, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKc(ptr noundef nonnull @.str.5)
          to label %bb.z unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.ci = sext i32 %1 to i64
  %i.cj = invoke noundef i64 @_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.ci)
          to label %bb.aa unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKcm(ptr noundef nonnull %i.a, i64 noundef %i.cj)
          to label %bb.ab unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKc(ptr noundef nonnull @.str.6)
          to label %bb.ac unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.ck = call fastcc noundef ptr @"_ZSt7find_ifIPKSt4pairIiPKcEZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNS7_15safe_assert_argEiP13__va_list_tagE3$_0ET_SF_SF_T0_"(ptr noundef nonnull @_ZN5folly6detail12_GLOBAL__N_16errorsE, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail12_GLOBAL__N_16errorsE, i64 2128), i32 %1) ; 2 uses
  %.not24 = icmp eq ptr %i.ck, getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail12_GLOBAL__N_16errorsE, i64 2128)
  br i1 %.not24, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !31
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.cn = phi ptr [ %i.cm, %bb.ad ], [ @.str.7, %bb.ac ]
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKc(ptr noundef %i.cn)
          to label %bb.af unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKc(ptr noundef nonnull @.str.8)
          to label %bb.ag unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af, %bb.x
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKc(ptr noundef nonnull @.str.9)
          to label %bb.ah unwind label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_ZN5folly6detail12_GLOBAL__N_111flushStderrEv()
          to label %bb.ai unwind label %.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  call void @abort() #18
  unreachable

.loopexit37:                                      ; preds = %bb.j, %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.b, %bb.c, %bb.e, %.loopexit, %bb.q, %bb.r, %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit36, %bb.v, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp, %.loopexit37
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit37 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.co = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.co) #18
  unreachable
}

; Function Attrs: mustprogress nofree uwtable
define internal fastcc void @_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKc(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.020.i.i = phi i64 [ %i.a, %bb.a ], [ %.121.i.i, %bb.e ] ; 3 uses
  %.018.i.i = phi ptr [ %0, %bb.a ], [ %.119.i.i, %bb.e ] ; 3 uses
  %i.b = tail call noundef i64 @write(i32 noundef 2, ptr noundef %.018.i.i, i64 noundef %.020.i.i), !inline_history !33 ; 4 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__errno_location() #20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.e, label %_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKcm.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.018.i.i, i64 %i.b
  %i.h = sub i64 %.020.i.i, %i.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.121.i.i = phi i64 [ %.020.i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %.119.i.i = phi ptr [ %.018.i.i, %bb.c ], [ %i.g, %bb.d ]
  %i.i = icmp ne i64 %i.b, 0
  %i.j = icmp ne i64 %.121.i.i, 0
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKcm.exit, !llvm.loop !35

_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKcm.exit: ; preds = %bb.c, %bb.e
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nofree uwtable
define internal fastcc void @_ZN5folly6detail12_GLOBAL__N_111writeStderrEPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.020.i = phi i64 [ %1, %bb.a ], [ %.121.i, %bb.e ] ; 3 uses
  %.018.i = phi ptr [ %0, %bb.a ], [ %.119.i, %bb.e ] ; 3 uses
  %i.a = tail call noundef i64 @write(i32 noundef 2, ptr noundef %.018.i, i64 noundef %.020.i), !inline_history !33 ; 4 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !34
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.e, label %_ZN5folly15fileutil_detail8wrapFullIPFliPKvmEJEEElT_iPvmDpT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.018.i, i64 %i.a
  %i.g = sub i64 %.020.i, %i.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.121.i = phi i64 [ %.020.i, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.119.i = phi ptr [ %.018.i, %bb.c ], [ %i.f, %bb.d ]
  %i.h = icmp ne i64 %i.a, 0
  %i.i = icmp ne i64 %.121.i, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN5folly15fileutil_detail8wrapFullIPFliPKvmEJEEElT_iPvmDpT0_.exit, !llvm.loop !35

_ZN5folly15fileutil_detail8wrapFullIPFliPKvmEJEEElT_iPvmDpT0_.exit: ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm(ptr noundef nonnull align 1 dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #7 comdat {
bb.a:
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %._crit_edge.thread.i.i, label %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i, !prof !22

._crit_edge.thread.i.i:                           ; preds = %bb.a
  %i.a = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !23
  br label %bb.c

_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i: ; preds = %bb.a
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.c = sub nuw nsw i64 64, %i.b
  %i.d = mul nuw nsw i64 %i.c, 78
  %i.e = lshr i64 %i.d, 8                         ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = icmp uge i64 %1, %i.g
  %i.i = zext i1 %i.h to i64
  %i.j = add nuw nsw i64 %i.e, %i.i               ; 5 uses
  %i.k = icmp samesign ugt i64 %i.j, 2
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %1, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i ] ; 2 uses
  %.014.i2.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %i.j, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i ]
  %i.l = add i64 %.014.i2.i.i, -2                 ; 4 uses
  %i.m = udiv i64 %.0.i3.i.i, 100                 ; 2 uses
  %i.n = urem i64 %.0.i3.i.i, 100
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  store i16 %i.p, ptr %i.q, align 1
  %i.r = icmp ugt i64 %i.l, 2
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !25

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i
  %.014.i.lcssa.i.i = phi i64 [ %i.j, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i ], [ %i.l, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi i64 [ %1, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i ], [ %i.m, %.lr.ph.i.i ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !23   ; 2 uses
  %i.u = icmp eq i64 %.014.i.lcssa.i.i, 2
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  store i16 %i.t, ptr %0, align 1
  br label %_ZN5folly14to_ascii_lowerILm10ELm20EEEmRAT0__cm.exit

bb.c:                                             ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.v = phi i16 [ %i.a, %._crit_edge.thread.i.i ], [ %i.t, %._crit_edge.i.i ]
  %.0.i1813.i.i = phi i64 [ 1, %._crit_edge.thread.i.i ], [ %i.j, %._crit_edge.i.i ]
  %i.w = lshr i16 %i.v, 8
  %i.x = trunc nuw i16 %i.w to i8
  store i8 %i.x, ptr %0, align 1, !tbaa !27
  br label %_ZN5folly14to_ascii_lowerILm10ELm20EEEmRAT0__cm.exit

_ZN5folly14to_ascii_lowerILm10ELm20EEEmRAT0__cm.exit: ; preds = %bb.b, %bb.c
  %.0.i1812.i.i = phi i64 [ %i.j, %bb.b ], [ %.0.i1813.i.i, %bb.c ]
  ret i64 %.0.i1812.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef ptr @"_ZSt7find_ifIPKSt4pairIiPKcEZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNS7_15safe_assert_argEiP13__va_list_tagE3$_0ET_SF_SF_T0_"(ptr noundef %0, ptr noundef %1, i32 range(i32 1, 0) %2) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 6                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = and i64 %i.c, -64
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %.057.i.i = phi i64 [ %i.o, %bb.e ], [ %i.d, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02956.i.i = phi ptr [ %i.n, %bb.e ], [ %0, %.lr.ph.preheader.i.i ] ; 9 uses
  %.029.val39.i.i = load i32, ptr %.02956.i.i, align 8
  %i.g = icmp eq i32 %.029.val39.i.i, %2
  br i1 %i.g, label %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.02956.i.i, i64 16
  %.val37.i.i = load i32, ptr %i.h, align 8
  %i.i = icmp eq i32 %.val37.i.i, %2
  br i1 %i.i, label %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.02956.i.i, i64 32
  %.val35.i.i = load i32, ptr %i.j, align 8
  %i.k = icmp eq i32 %.val35.i.i, %2
  br i1 %i.k, label %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit17", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.02956.i.i, i64 48
  %.val33.i.i = load i32, ptr %i.l, align 8
  %i.m = icmp eq i32 %.val33.i.i, %2
  br i1 %i.m, label %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit19", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.02956.i.i, i64 64
  %i.o = add nsw i64 %.057.i.i, -1
  %i.p = icmp sgt i64 %.057.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !36

._crit_edge.loopexit.i.i:                         ; preds = %bb.e
  %.pre.i.i = ptrtoint ptr %scevgep.i.i to i64
  %.pre62.i.i = sub i64 %i.a, %.pre.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.pre-phi63.i.i = phi i64 [ %.pre62.i.i, %._crit_edge.loopexit.i.i ], [ %i.c, %bb.a ]
  %.029.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %0, %bb.a ] ; 5 uses
  %i.q = ashr exact i64 %.pre-phi63.i.i, 4
  switch i64 %i.q, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %.029.val.i.i = load i32, ptr %.029.lcssa.i.i, align 8
  %i.r = icmp eq i32 %.029.val.i.i, %2
  br i1 %i.r, label %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.1.i.i = phi ptr [ %i.s, %bb.g ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.val.i.i = load i32, ptr %.1.i.i, align 8
  %i.t = icmp eq i32 %.1.val.i.i, %2
  br i1 %i.t, label %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i
  %.2.i.i = phi ptr [ %i.u, %bb.i ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.2.val.i.i = load i32, ptr %.2.i.i, align 8
  %i.v = icmp eq i32 %.2.val.i.i, %2
  br i1 %i.v, label %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  br label %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit"

"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.02956.i.i, i64 16
  br label %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit"

"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit17": ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02956.i.i, i64 32
  br label %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit"

"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit19": ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.02956.i.i, i64 48
  br label %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit"

"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit": ; preds = %.lr.ph.i.i, %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit", %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit17", %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit19", %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %1, %bb.k ], [ %.2.i.i, %bb.j ], [ %.029.lcssa.i.i, %bb.f ], [ %i.y, %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit19" ], [ %i.w, %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit" ], [ %i.x, %"_ZSt9__find_ifIPKSt4pairIiPKcEN9__gnu_cxx5__ops10_Iter_predIZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNSA_15safe_assert_argEiP13__va_list_tagE3$_0EEET_SJ_SJ_T0_.exit.loopexit.split.loop.exit17" ], [ %.02956.i.i, %.lr.ph.i.i ]
  ret ptr %.028.i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly6detail12_GLOBAL__N_111flushStderrEv() unnamed_addr #9 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = tail call noundef i32 @fsync(i32 noundef 2), !inline_history !37
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %_ZN5folly15fileutil_detail9wrapNoIntIPFiiEJiEiEET1_T_DpT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !34
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %_ZN5folly15fileutil_detail9wrapNoIntIPFiiEJiEiEET1_T_DpT0_.exit, !llvm.loop !38

_ZN5folly15fileutil_detail9wrapNoIntIPFiiEJiEiEET1_T_DpT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

declare i32 @fsync(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress noinline noreturn nounwind optsize uwtable
define void @_ZN5folly6detail21safe_assert_terminateILb1EEEvPKNS0_15safe_assert_argEz(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = tail call ptr @__errno_location() #20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34
  call fastcc void @_ZN5folly6detail12_GLOBAL__N_123safe_assert_terminate_vEPKNS0_15safe_assert_argEiP13__va_list_tag(ptr noundef %0, i32 noundef %i.b, ptr noundef %1) #17
  unreachable
}

attributes #0 = { cold mustprogress noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold mustprogress noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
end_hunk_0
