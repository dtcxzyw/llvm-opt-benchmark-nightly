Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnnoptimize?download=true
inline.NumInlined: 1639
inline.NumDeleted: 315
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN11NetOptimize21fuse_binaryop_eltwiseEv:bb.a
bb.al:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit131
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !48
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.088179
  store ptr %i.da, ptr %i.hl, align 8, !tbaa !54
  %i.hm = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(220) %i.t) #24
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %bb.c, %bb.d, %._crit_edge175, %bb.al, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hp = add nuw i64 %.088179, 1                 ; 2 uses
  %exitcond187.not = icmp eq i64 %i.hp, %i.i
  br i1 %exitcond187.not, label %._crit_edge182, label %bb.b, !llvm.loop !1014

bb.am:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.aa
  %.pn100 = phi { ptr, i32 } [ %i.fx, %bb.aa ], [ %.pn, %_ZN4ncnn3MatD2Ev.exit ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn100
}

declare noundef ptr @_ZN4ncnn16create_layer_cpuEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = load ptr, ptr %1, align 8, !tbaa !84     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1015
  %i.i = load ptr, ptr %0, align 8, !tbaa !84     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !1016

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !1006

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.r, ptr %i.o, align 4, !tbaa !85
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !84     ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !1015
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97   ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp sgt i64 %i.f, 4
  br i1 %i.y, label %bb.k, label %bb.l, !prof !1006

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.z = icmp eq i64 %i.f, 4
  br i1 %i.z, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.aa, ptr %i.i, align 4, !tbaa !85
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.ab = icmp sgt i64 %i.x, 4
  br i1 %i.ab, label %bb.o, label %bb.p, !prof !1006

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !84
  %.pre25 = load ptr, ptr %i.u, align 8, !tbaa !97 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !84
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !97
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.ad, ptr %i.i, align 4, !tbaa !85
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.x, %bb.p ], [ 4, %bb.q ]
  %i.ae = phi ptr [ %.pre25, %bb.o ], [ %i.v, %bb.p ], [ %i.v, %bb.q ] ; 2 uses
  %i.af = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre-phi32 ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %.pre-phi34, %i.ah              ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 4
  br i1 %i.aj, label %bb.r, label %bb.s, !prof !1006

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.ag, i64 %i.ai, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ak = icmp eq i64 %i.ai, 4
  br i1 %i.ak, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.al = load i32, ptr %i.ag, align 4, !tbaa !85
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !85
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !97
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize17eliminate_dropoutEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not38 = icmp eq ptr %i.d, %i.e
  br i1 %.not38, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge37:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph36, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv = phi i32 [ -1, %.lr.ph36 ], [ %indvars.iv.next, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.034.a = phi i64 [ 0, %.lr.ph36 ], [ %i.cf, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %1 = zext i32 %indvars.iv to i64
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.034.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !61
  %i.r = icmp eq i64 %i.q, 7
  br i1 %i.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1886351940
  %i.v = getelementptr i8, ptr %i.s, i64 3
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1953853296
  %i.y = or i32 %i.u, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not27 = icmp eq i32 %i.aa, 0
  br i1 %.not27, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !465
  %i.ad = fcmp une float %i.ac, 1.000000e+00
  br i1 %i.ad, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !85
  %i.ah = trunc i64 %.034.a to i32                ; 2 uses
  %.02431 = add i32 %i.ah, -1                     ; 3 uses
  %i.ai = icmp sgt i32 %.02431, -1
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %1, %bb.c ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv41
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load i64, ptr %i.al, align 8, !tbaa !61
  %i.an = icmp eq i64 %i.am, 9
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = xor i64 %i.aq, 7310315702952289134
  %i.as = getelementptr i8, ptr %i.ap, i64 8
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.au, 100
  %i.aw = or i64 %i.ar, %i.av
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !97
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !84 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.not = icmp eq i64 %i.bg, 4
  br i1 %.not, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !85
  %i.bi = icmp eq i32 %i.bh, %i.ag
  br i1 %i.bi, label %.thread.loopexit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, -1
  %i.bj = icmp sgt i64 %indvars.iv41, 0
  br i1 %i.bj, label %.lr.ph, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, !llvm.loop !1017

._crit_edge:                                      ; preds = %bb.c
  %i.bk = icmp eq i32 %i.ah, 0
  br i1 %i.bk, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %._crit_edge..thread_crit_edge

._crit_edge..thread_crit_edge:                    ; preds = %._crit_edge
  %.phi.trans.insert = sext i32 %.02431 to i64
  %.phi.trans.insert44 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert44, align 8, !tbaa !54
  br label %.thread

.thread.loopexit:                                 ; preds = %bb.d
  %i.bl = trunc nuw nsw i64 %indvars.iv41 to i32
  br label %.thread

.thread:                                          ; preds = %._crit_edge..thread_crit_edge, %.thread.loopexit
  %i.bm = phi ptr [ %.pre, %._crit_edge..thread_crit_edge ], [ %i.ak, %.thread.loopexit ] ; 2 uses
  %.02429 = phi i32 [ %.02431, %._crit_edge..thread_crit_edge ], [ %i.bl, %.thread.loopexit ]
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !56
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.192, ptr noundef %i.bp, ptr noundef %i.br) #26 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !84
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !85 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !84
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !85
  %i.by = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.bz = sext i32 %i.bv to i64
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !53
  %i.cb = getelementptr inbounds nuw [112 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store i32 %.02429, ptr %i.cc, align 8, !tbaa !135
  %i.cd = load i64, ptr %i.p, align 8, !tbaa !61
  %i.ce = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.cd, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25, %._crit_edge, %.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cf = add nuw i64 %.034.a, 1                  ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %i.cf, %i.i
  br i1 %exitcond.not, label %._crit_edge37, label %bb.b, !llvm.loop !1018
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize20eliminate_pooling1x1Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not70 = icmp eq ptr %i.d, %i.e
  br i1 %.not70, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge69:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph68, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv = phi i32 [ -1, %.lr.ph68 ], [ %indvars.iv.next, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.066.a = phi i64 [ 0, %.lr.ph68 ], [ %i.dd, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %1 = zext i32 %indvars.iv to i64
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.066.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !61
  %i.r = icmp eq i64 %i.q, 7
  br i1 %i.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1819242320
  %i.v = getelementptr i8, ptr %i.s, i64 3
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1735289196
  %i.y = or i32 %i.u, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not53 = icmp eq i32 %i.aa, 0
  br i1 %.not53, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 228
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !629
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 232
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !631
  %.not41 = icmp eq i32 %i.ae, 0
  br i1 %.not41, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 236
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !630
  %.not42 = icmp eq i32 %i.ag, 0
  br i1 %.not42, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !632
  %.not43 = icmp eq i32 %i.ai, 0
  br i1 %.not43, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 212
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !625
  %.not44 = icmp eq i32 %i.ak, 1
  br i1 %.not44, label %bb.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.am = load i32, ptr %i.al, align 8, !tbaa !626
  %.not45 = icmp eq i32 %i.am, 1
  br i1 %.not45, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 220
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !627
  %.not46 = icmp eq i32 %i.ao, 1
  br i1 %.not46, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !628
  %.not47 = icmp eq i32 %i.aq, 1
  br i1 %.not47, label %bb.j, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 244
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !633
  %.not48 = icmp eq i32 %i.as, 0
  br i1 %.not48, label %bb.k, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !84
  %i.av = load i32, ptr %i.au, align 4, !tbaa !85
  %i.aw = trunc i64 %.066.a to i32                ; 3 uses
  %.03956 = add i32 %i.aw, -1                     ; 2 uses
  %i.ax = icmp sgt i32 %.03956, -1
  br i1 %i.ax, label %.lr.ph59, label %._crit_edge

.lr.ph59:                                         ; preds = %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %1, %bb.k ] ; 5 uses
  %.039.in57 = phi i32 [ %i.cd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.aw, %bb.k ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv73
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !54 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !61
  %i.bc = icmp eq i64 %i.bb, 9
  br i1 %i.bc, label %.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

.split:                                           ; preds = %.lr.ph59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 1
  %i.bg = xor i64 %i.bf, 7310315702952289134
  %i.bh = getelementptr i8, ptr %i.be, i64 8
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = xor i64 %i.bj, 100
  %i.bl = or i64 %i.bg, %i.bk
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split, %.lr.ph59
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !97 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !84 ; 3 uses
  %.not71 = icmp eq ptr %i.br, %i.bs
  br i1 %.not71, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.03855 = phi i64 [ %i.ca, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03855
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !85
  %i.bz = icmp eq i32 %i.by, %i.av
  br i1 %i.bz, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.ca = add nuw i64 %.03855, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.bw
  br i1 %exitcond.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1019

bb.l:                                             ; preds = %.lr.ph
  %i.cb = and i64 %.03855, 4294967295
  %.not49 = icmp eq i64 %i.cb, 4294967295
  br i1 %.not49, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %._crit_edge.loopexit.split.loop.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, %.split, %bb.l
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  %i.cc = icmp sgt i64 %indvars.iv73, 0
  %i.cd = trunc nuw nsw i64 %indvars.iv73 to i32
  br i1 %i.cc, label %.lr.ph59, label %._crit_edge, !llvm.loop !1020

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.l
  %i.ce = trunc nuw nsw i64 %indvars.iv73 to i32
  %i.cf = shl i64 %.03855, 32
  %i.cg = ashr exact i64 %i.cf, 30
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge.loopexit.split.loop.exit, %bb.k
  %.039.in.lcssa = phi i32 [ %i.aw, %bb.k ], [ %.039.in57, %._crit_edge.loopexit.split.loop.exit ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %.039.lcssa = phi i32 [ %.03956, %bb.k ], [ %i.ce, %._crit_edge.loopexit.split.loop.exit ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.3 = phi i64 [ -4, %bb.k ], [ %i.cg, %._crit_edge.loopexit.split.loop.exit ], [ -4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %i.ch = icmp eq i32 %.039.in.lcssa, 0
  br i1 %i.ch, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ci = sext i32 %.039.lcssa to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !54 ; 2 uses
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !56
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !56
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cl, ptr noundef nonnull @.str.193, ptr noundef %i.cn, ptr noundef %i.cp) #26 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !84
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !85 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 136
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !84
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.3
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !85
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.cy = sext i32 %i.ct to i64
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !53
  %i.da = getelementptr inbounds nuw [112 x i8], ptr %i.cz, i64 %i.cy
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store i32 %.039.lcssa, ptr %i.db, align 8, !tbaa !135
  %i.dc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull @.str.8) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50, %bb.i, %bb.h, %bb.g, %bb.f, %bb.j, %._crit_edge, %bb.m, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dd = add nuw i64 %.066.a, 1                  ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond77.not = icmp eq i64 %i.dd, %i.i
  br i1 %exitcond77.not, label %._crit_edge69, label %bb.b, !llvm.loop !1021
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize14eliminate_noopEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not69 = icmp eq ptr %i.d, %i.e
  br i1 %.not69, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.b

._crit_edge68:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph67, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv = phi i32 [ -1, %.lr.ph67 ], [ %indvars.iv.next, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.065.a = phi i64 [ 0, %.lr.ph67 ], [ %i.ec, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %1 = zext i32 %indvars.iv to i64
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.065.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !61
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.t = load i32, ptr %i.s, align 1
  %i.u = icmp ne i32 %i.t, 1886351182
  %i.v = zext i1 %i.u to i32
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1005 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1005
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !56
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.195, ptr noundef %i.ad) #26 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !97 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !84 ; 7 uses
  %.not71 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not71, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.c
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2                 ; 3 uses
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53 ; 5 uses
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.ap = icmp ult i64 %i.am, 4
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph64.new

.lr.ph64.new:                                     ; preds = %.lr.ph64
  %unroll_iter = and i64 %i.am, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph64.new
  %.04863 = phi i64 [ 0, %.lr.ph64.new ], [ %i.bn, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph64.new ], [ %niter.next.3, %bb.d ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.04863
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !85
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [112 x i8], ptr %i.ao, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i32 -1, ptr %i.au, align 8, !tbaa !135
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.04863
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !85
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [112 x i8], ptr %i.ao, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i32 -1, ptr %i.ba, align 8, !tbaa !135
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.04863
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !85
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [112 x i8], ptr %i.ao, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i32 -1, ptr %i.bg, align 8, !tbaa !135
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.04863
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !85
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [112 x i8], ptr %i.ao, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i32 -1, ptr %i.bm, align 8, !tbaa !135
  %i.bn = add nuw i64 %.04863, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1022

bb.e:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49
  %i.bo = load i32, ptr %i.x, align 4, !tbaa !85
  %i.bp = trunc i64 %.065.a to i32                ; 2 uses
  %.04658 = add i32 %i.bp, -1
  %i.bq = icmp sgt i32 %.04658, -1
  br i1 %i.bq, label %.lr.ph61, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.lr.ph61:                                         ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %1, %bb.e ] ; 6 uses
  %.046.in59 = phi i32 [ %i.cv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.bp, %bb.e ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv75
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !54 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !61
  %i.bv = icmp eq i64 %i.bu, 9
  br i1 %i.bv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph61
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !56 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 1
  %i.bz = xor i64 %i.by, 7310315702952289134
  %i.ca = getelementptr i8, ptr %i.bx, i64 8
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i64
  %i.cd = xor i64 %i.cc, 100
  %i.ce = or i64 %i.bz, %i.cd
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50: ; preds = %.lr.ph61, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !97 ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !84 ; 3 uses
  %.not70 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not70, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.04357 = phi i64 [ %i.ct, %bb.f ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.04357
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !85
  %i.cs = icmp eq i32 %i.cr, %i.bo
  br i1 %i.cs, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ct = add nuw i64 %.04357, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ct, %i.cp
  br i1 %exitcond.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1023

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, -1
  %i.cu = icmp sgt i64 %indvars.iv75, 0
  %i.cv = trunc nuw nsw i64 %indvars.iv75 to i32
  br i1 %i.cu, label %.lr.ph61, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, !llvm.loop !1024

.loopexit:                                        ; preds = %.lr.ph
  %i.cw = icmp eq i32 %.046.in59, 0
  %i.cx = and i64 %.04357, 4294967295
  %i.cy = icmp eq i64 %i.cx, 4294967295
  %or.cond = or i1 %i.cw, %i.cy
  br i1 %or.cond, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.cz = trunc nuw nsw i64 %indvars.iv75 to i32
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv75
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !54 ; 2 uses
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !56
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !56
  %i.dh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.196, ptr noundef %i.de, ptr noundef %i.dg) #26 ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !84
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !85 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 136
  %sext = shl i64 %.04357, 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !84
  %i.dn = ashr exact i64 %sext, 30
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  store i32 %i.dk, ptr %i.do, align 4, !tbaa !85
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.dq = sext i32 %i.dk to i64
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !53
  %i.ds = getelementptr inbounds nuw [112 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  store i32 %i.cz, ptr %i.dt, align 8, !tbaa !135
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split.loopexit.unr-lcssa, %.lr.ph64
  %.04863.epil.init = phi i64 [ 0, %.lr.ph64 ], [ %i.bn, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.04863.epil = phi i64 [ %.04863.epil.init, %.epil.preheader ], [ %i.dz, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.04863.epil
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !85
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [112 x i8], ptr %i.ao, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i32 -1, ptr %i.dy, align 8, !tbaa !135
  %i.dz = add nuw i64 %.04863.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split, label %bb.h, !llvm.loop !1025

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split.loopexit.unr-lcssa, %bb.h, %bb.c, %bb.g
  %i.ea = load i64, ptr %i.p, align 8, !tbaa !61
  %i.eb = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.ea, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split, %bb.e, %bb.b, %.loopexit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ec = add nuw i64 %.065.a, 1                  ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond81.not = icmp eq i64 %i.ec, %i.i
  br i1 %exitcond81.not, label %._crit_edge68, label %bb.b, !llvm.loop !1026
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize15eliminate_splitEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not77 = icmp eq ptr %i.d, %i.e
  br i1 %.not77, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.b

._crit_edge76:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph75, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv = phi i32 [ -1, %.lr.ph75 ], [ %indvars.iv.next, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.073.a = phi i64 [ 0, %.lr.ph75 ], [ %i.eb, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %1 = zext i32 %indvars.iv to i64
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.073.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !61
  %i.r = icmp eq i64 %i.q, 5
  br i1 %i.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1768714323
  %i.v = getelementptr i8, ptr %i.s, i64 4
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = xor i32 %i.x, 116
  %i.z = or i32 %i.u, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not52 = icmp eq i32 %i.ab, 0
  br i1 %.not52, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !84 ; 5 uses
  %.not78 = icmp eq ptr %i.ae, %i.af
  br i1 %.not78, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 2                 ; 2 uses
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !53 ; 3 uses
  %i.am = icmp eq i64 %i.ai, 4
  br i1 %i.am, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aj, -2
  br label %bb.c

._crit_edge.unr-lcssa:                            ; preds = %bb.c
  %i.an = and i64 %i.ai, 4
  %lcmp.mod.not = icmp eq i64 %i.an, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.04356.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bp, %._crit_edge.unr-lcssa ] ; 2 uses
  %.04455.epil.init = phi i32 [ -1, %.lr.ph ], [ %.145.1, %._crit_edge.unr-lcssa ]
  %.04654.epil.init = phi i32 [ 0, %.lr.ph ], [ %.147.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod107 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.04356.epil.init
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !85
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [112 x i8], ptr %i.al, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1027
  %.not48.epil = icmp ne i32 %i.at, -1            ; 2 uses
  %i.au = trunc i64 %.04356.epil.init to i32
  %i.av = zext i1 %.not48.epil to i32
  %.147.epil = add nuw nsw i32 %.04654.epil.init, %i.av
  %.145.epil = select i1 %.not48.epil, i32 %i.au, i32 %.04455.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.147.lcssa = phi i32 [ %.147.1, %._crit_edge.unr-lcssa ], [ %.147.epil, %.epil.preheader ]
  %.145.lcssa = phi i32 [ %.145.1, %._crit_edge.unr-lcssa ], [ %.145.epil, %.epil.preheader ]
  %i.aw = icmp samesign ugt i32 %.147.lcssa, 1
  %i.ax = sext i32 %.145.lcssa to i64
  br i1 %i.aw, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %._crit_edge.thread

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.04356 = phi i64 [ 0, %.lr.ph.new ], [ %i.bp, %bb.c ] ; 4 uses
  %.04455 = phi i32 [ -1, %.lr.ph.new ], [ %.145.1, %bb.c ]
  %.04654 = phi i32 [ 0, %.lr.ph.new ], [ %.147.1, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.04356
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !85
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [112 x i8], ptr %i.al, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 36
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !1027
  %.not48 = icmp ne i32 %i.bd, -1                 ; 2 uses
  %i.be = trunc i64 %.04356 to i32
  %i.bf = zext i1 %.not48 to i32
  %.147 = add nuw nsw i32 %.04654, %i.bf
  %.145 = select i1 %.not48, i32 %i.be, i32 %.04455
  %i.bg = or disjoint i64 %.04356, 1              ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !85
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [112 x i8], ptr %i.al, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !1027
  %.not48.1 = icmp ne i32 %i.bm, -1               ; 2 uses
  %i.bn = trunc i64 %i.bg to i32
  %i.bo = zext i1 %.not48.1 to i32
  %.147.1 = add nuw nsw i32 %.147, %i.bo          ; 3 uses
  %.145.1 = select i1 %.not48.1, i32 %i.bn, i32 %.145 ; 3 uses
  %i.bp = add nuw i64 %.04356, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !1028

._crit_edge.thread:                               ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49, %._crit_edge
  %.044.lcssa93 = phi i64 [ %i.ax, %._crit_edge ], [ -1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !84
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !85
  %i.bt = trunc i64 %.073.a to i32                ; 3 uses
  %.04160 = add i32 %i.bt, -1                     ; 2 uses
  %i.bu = icmp sgt i32 %.04160, -1
  br i1 %i.bu, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %._crit_edge.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %1, %._crit_edge.thread ] ; 5 uses
  %.041.in61 = phi i32 [ %i.da, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.bt, %._crit_edge.thread ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv83
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !54 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !61
  %i.bz = icmp eq i64 %i.by, 9
  br i1 %i.bz, label %.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

.split:                                           ; preds = %.lr.ph64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !56 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 1
  %i.cd = xor i64 %i.cc, 7310315702952289134
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i64
  %i.ch = xor i64 %i.cg, 100
  %i.ci = or i64 %i.cd, %i.ch
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split, %.lr.ph64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 144
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !97 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !84 ; 3 uses
  %.not79 = icmp eq ptr %i.co, %i.cp
  br i1 %.not79, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 2
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.04058 = phi i64 [ %i.cx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 0, %.lr.ph59.preheader ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.04058
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !85
  %i.cw = icmp eq i32 %i.cv, %i.bs
  br i1 %i.cw, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph59
  %i.cx = add nuw i64 %.04058, 1                  ; 2 uses
  %exitcond82.not = icmp eq i64 %i.cx, %i.ct
  br i1 %exitcond82.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph59, !llvm.loop !1029

bb.d:                                             ; preds = %.lr.ph59
  %i.cy = and i64 %.04058, 4294967295
  %.not = icmp eq i64 %i.cy, 4294967295
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %._crit_edge65.loopexit.split.loop.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, %.split, %bb.d
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, -1
  %i.cz = icmp sgt i64 %indvars.iv83, 0
  %i.da = trunc nuw nsw i64 %indvars.iv83 to i32
  br i1 %i.cz, label %.lr.ph64, label %._crit_edge65, !llvm.loop !1030

._crit_edge65.loopexit.split.loop.exit:           ; preds = %bb.d
  %i.db = trunc nuw nsw i64 %indvars.iv83 to i32
  %i.dc = shl i64 %.04058, 32
  %i.dd = ashr exact i64 %i.dc, 30
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge65.loopexit.split.loop.exit, %._crit_edge.thread
  %.041.in.lcssa = phi i32 [ %i.bt, %._crit_edge.thread ], [ %.041.in61, %._crit_edge65.loopexit.split.loop.exit ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %.041.lcssa = phi i32 [ %.04160, %._crit_edge.thread ], [ %i.db, %._crit_edge65.loopexit.split.loop.exit ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.3 = phi i64 [ -4, %._crit_edge.thread ], [ %i.dd, %._crit_edge65.loopexit.split.loop.exit ], [ -4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %i.de = icmp eq i32 %.041.in.lcssa, 0
  br i1 %i.de, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge65
  %i.df = sext i32 %.041.lcssa to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !54 ; 2 uses
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !56
  %i.dl = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !56
  %i.dn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.di, ptr noundef nonnull @.str.197, ptr noundef %i.dk, ptr noundef %i.dm) #26 ; 0 uses
  %i.do = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.044.lcssa93
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !85 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 136
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !84
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.3
  store i32 %i.dq, ptr %i.dt, align 4, !tbaa !85
  %i.du = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.dv = sext i32 %i.dq to i64
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !53
  %i.dx = getelementptr inbounds nuw [112 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i32 %.041.lcssa, ptr %i.dy, align 8, !tbaa !135
  %i.dz = load i64, ptr %i.p, align 8, !tbaa !61
  %i.ea = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.dz, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %._crit_edge, %._crit_edge65, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.eb = add nuw i64 %.073.a, 1                  ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond87.not = icmp eq i64 %i.eb, %i.i
  br i1 %exitcond87.not, label %._crit_edge76, label %bb.b, !llvm.loop !1031
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize29eliminate_orphaned_memorydataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %.not38 = icmp eq ptr %i.d, %i.e
  br i1 %.not38, label %._crit_edge, label %.lr.ph37

._crit_edge:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

.lr.ph37:                                         ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.02536 = phi i64 [ %i.bu, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.a ] ; 4 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.02536
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61
  %i.p = icmp eq i64 %i.o, 10
  br i1 %i.p, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph37
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 7008860452498007373
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i64
  %i.x = xor i64 %i.w, 24948
  %i.y = or i64 %i.t, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !85
  %.02333 = add nuw i64 %.02536, 1                ; 2 uses
  %i.ae = icmp ult i64 %.02333, %i.i
  br i1 %i.ae, label %.lr.ph35, label %.critedge

.lr.ph35:                                         ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29, %.critedge28
  %.02334 = phi i64 [ %.023, %.critedge28 ], [ %.02333, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.02334
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !54 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !61
  %i.aj = icmp eq i64 %i.ai, 9
  br i1 %i.aj, label %.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

.split:                                           ; preds = %.lr.ph35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %i.am = load i64, ptr %i.al, align 1
  %i.an = xor i64 %i.am, 7310315702952289134
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = xor i64 %i.aq, 100
  %i.as = or i64 %i.an, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.critedge28, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split, %.lr.ph35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !97 ; 2 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !84 ; 3 uses
  %.not31.not = icmp eq ptr %i.ay, %i.az
  br i1 %.not31.not, label %.critedge28, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  br label %.lr.ph

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.be = add nuw i64 %.032, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.bd
  br i1 %exitcond.not, label %.critedge28, label %.lr.ph, !llvm.loop !1032

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.032 = phi i64 [ %i.be, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.032
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !85
  %i.bh = icmp eq i32 %i.bg, %i.ad
  br i1 %i.bh, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

.critedge28:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, %.split
  %.023 = add nuw i64 %.02334, 1                  ; 2 uses
  %exitcond39.not = icmp eq i64 %.023, %i.i
  br i1 %exitcond39.not, label %.critedge, label %.lr.ph35, !llvm.loop !1033

.critedge:                                        ; preds = %.critedge28, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !56
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.198, ptr noundef %i.bk) #26 ; 0 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.02536
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !61
  %i.bt = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 noundef 0, i64 noundef %i.bs, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %.lr.ph, %.lr.ph37, %.critedge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bu = add nuw i64 %.02536, 1                  ; 2 uses
  %exitcond41.not = icmp eq i64 %i.bu, %i.i
  br i1 %exitcond41.not, label %._crit_edge, label %.lr.ph37, !llvm.loop !1034
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize38eliminate_reshape_after_global_poolingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not47 = icmp eq ptr %i.d, %i.e
  br i1 %.not47, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge46:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph45, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.02943 = phi i64 [ 0, %.lr.ph45 ], [ %i.ck, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.02943
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !61
  %i.q = icmp eq i64 %i.p, 7
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1819242320
  %i.v = getelementptr i8, ptr %i.s, i64 3
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1735289196
  %i.y = or i32 %i.u, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not37 = icmp eq i32 %i.aa, 0
  br i1 %.not37, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 244
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !633
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !85
  %.039 = add nuw i64 %.02943, 1                  ; 3 uses
  %i.ah = icmp ult i64 %.039, %i.i
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread
  %.040 = phi i64 [ %.0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread ], [ %.039, %bb.c ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.040
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !61
end_hunk_0
