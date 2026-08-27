Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnnoptimize?download=true
inline.NumInlined: 1639
inline.NumDeleted: 315
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNSt6vectorIiSaIiEEaSERKS1_:bb.a
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
  %.034 = phi i64 [ 0, %.lr.ph36 ], [ %i.cd, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %i.k = zext i32 %indvars.iv to i64
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.034
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = icmp eq i64 %i.r, 7
  br i1 %i.s, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  %i.u = load i32, ptr %i.t, align 1
  %i.v = xor i32 %i.u, 1886351940
  %i.w = getelementptr i8, ptr %i.t, i64 3
  %i.x = load i32, ptr %i.w, align 1
  %i.y = xor i32 %i.x, 1953853296
  %i.z = or i32 %i.v, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not27 = icmp eq i32 %i.ab, 0
  br i1 %.not27, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !465
  %i.ae = fcmp une float %i.ad, 1.000000e+00
  br i1 %i.ae, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !84
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !85
  %i.ai = trunc i64 %.034 to i32                  ; 2 uses
  %.02431 = add i32 %i.ai, -1                     ; 3 uses
  %i.aj = icmp sgt i32 %.02431, -1
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.k, %bb.c ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv41
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load i64, ptr %i.am, align 8, !tbaa !61
  %i.ao = icmp eq i64 %i.an, 9
  br i1 %i.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 1
  %i.as = xor i64 %i.ar, 7310315702952289134
  %i.at = getelementptr i8, ptr %i.aq, i64 8
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i64
  %i.aw = xor i64 %i.av, 100
  %i.ax = or i64 %i.as, %i.aw
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !97
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !84 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %.not = icmp eq i64 %i.bh, 4
  br i1 %.not, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !85
  %i.bj = icmp eq i32 %i.bi, %i.ah
  br i1 %i.bj, label %.thread.loopexit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, -1
  %i.bk = icmp sgt i64 %indvars.iv41, 0
  br i1 %i.bk, label %.lr.ph, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, !llvm.loop !1017

._crit_edge:                                      ; preds = %bb.c
  %1 = icmp eq i32 %i.ai, 0
  br i1 %1, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %._crit_edge..thread_crit_edge

._crit_edge..thread_crit_edge:                    ; preds = %._crit_edge
  %.phi.trans.insert = sext i32 %.02431 to i64
  %.phi.trans.insert44 = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert44, align 8, !tbaa !54
  br label %.thread

.thread.loopexit:                                 ; preds = %bb.d
  %2 = trunc nuw nsw i64 %indvars.iv41 to i32
  br label %.thread

.thread:                                          ; preds = %._crit_edge..thread_crit_edge, %.thread.loopexit
  %3 = phi ptr [ %.pre, %._crit_edge..thread_crit_edge ], [ %i.al, %.thread.loopexit ] ; 2 uses
  %.02429 = phi i32 [ %.02431, %._crit_edge..thread_crit_edge ], [ %2, %.thread.loopexit ]
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !56
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !56
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.192, ptr noundef %i.bn, ptr noundef %i.bp) #26 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !84
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !85 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !84
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !85
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.bx = sext i32 %i.bt to i64
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw [112 x i8], ptr %i.by, i64 %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store i32 %.02429, ptr %i.ca, align 8, !tbaa !135
  %i.cb = load i64, ptr %i.q, align 8, !tbaa !61
  %i.cc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef %i.cb, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25, %._crit_edge, %.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cd = add nuw i64 %.034, 1                    ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %i.cd, %i.i
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
  %.066 = phi i64 [ 0, %.lr.ph68 ], [ %i.de, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %i.k = zext i32 %indvars.iv to i64
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.066
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = icmp eq i64 %i.r, 7
  br i1 %i.s, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  %i.u = load i32, ptr %i.t, align 1
  %i.v = xor i32 %i.u, 1819242320
  %i.w = getelementptr i8, ptr %i.t, i64 3
  %i.x = load i32, ptr %i.w, align 1
  %i.y = xor i32 %i.x, 1735289196
  %i.z = or i32 %i.v, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not53 = icmp eq i32 %i.ab, 0
  br i1 %.not53, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 228
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !629
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !631
  %.not41 = icmp eq i32 %i.af, 0
  br i1 %.not41, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 236
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !630
  %.not42 = icmp eq i32 %i.ah, 0
  br i1 %.not42, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !632
  %.not43 = icmp eq i32 %i.aj, 0
  br i1 %.not43, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 212
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !625
  %.not44 = icmp eq i32 %i.al, 1
  br i1 %.not44, label %bb.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %i.an = load i32, ptr %i.am, align 8, !tbaa !626
  %.not45 = icmp eq i32 %i.an, 1
  br i1 %.not45, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 220
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !627
  %.not46 = icmp eq i32 %i.ap, 1
  br i1 %.not46, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !628
  %.not47 = icmp eq i32 %i.ar, 1
  br i1 %.not47, label %bb.j, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 244
  %i.at = load i32, ptr %i.as, align 4, !tbaa !633
  %.not48 = icmp eq i32 %i.at, 0
  br i1 %.not48, label %bb.k, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !84
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !85
  %i.ax = trunc i64 %.066 to i32                  ; 3 uses
  %.03956 = add i32 %i.ax, -1                     ; 2 uses
  %i.ay = icmp sgt i32 %.03956, -1
  br i1 %i.ay, label %.lr.ph59, label %._crit_edge

.lr.ph59:                                         ; preds = %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.k, %bb.k ] ; 5 uses
  %.039.in57 = phi i32 [ %i.ce, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.ax, %bb.k ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv73
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !61
  %i.bd = icmp eq i64 %i.bc, 9
  br i1 %i.bd, label %.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

.split:                                           ; preds = %.lr.ph59
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !56 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 %i.bg, 7310315702952289134
  %i.bi = getelementptr i8, ptr %i.bf, i64 8
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i64
  %i.bl = xor i64 %i.bk, 100
  %i.bm = or i64 %i.bh, %i.bl
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split, %.lr.ph59
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !97 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !84 ; 3 uses
  %.not71 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not71, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.03855 = phi i64 [ %i.cb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.03855
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !85
  %i.ca = icmp eq i32 %i.bz, %i.aw
  br i1 %i.ca, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.cb = add nuw i64 %.03855, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.bx
  br i1 %exitcond.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1019

bb.l:                                             ; preds = %.lr.ph
  %i.cc = and i64 %.03855, 4294967295
  %.not49 = icmp eq i64 %i.cc, 4294967295
  br i1 %.not49, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %._crit_edge.loopexit.split.loop.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, %.split, %bb.l
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  %i.cd = icmp sgt i64 %indvars.iv73, 0
  %i.ce = trunc nuw nsw i64 %indvars.iv73 to i32
  br i1 %i.cd, label %.lr.ph59, label %._crit_edge, !llvm.loop !1020

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.l
  %i.cf = trunc nuw nsw i64 %indvars.iv73 to i32
  %i.cg = shl i64 %.03855, 32
  %i.ch = ashr exact i64 %i.cg, 30
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge.loopexit.split.loop.exit, %bb.k
  %.039.in.lcssa = phi i32 [ %i.ax, %bb.k ], [ %.039.in57, %._crit_edge.loopexit.split.loop.exit ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %.039.lcssa = phi i32 [ %.03956, %bb.k ], [ %i.cf, %._crit_edge.loopexit.split.loop.exit ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.3 = phi i64 [ -4, %bb.k ], [ %i.ch, %._crit_edge.loopexit.split.loop.exit ], [ -4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %i.ci = icmp eq i32 %.039.in.lcssa, 0
  br i1 %i.ci, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cj = sext i32 %.039.lcssa to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !54 ; 2 uses
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !56
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.193, ptr noundef %i.co, ptr noundef %i.cq) #26 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !84
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !85 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 136
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !84
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.3
  store i32 %i.cu, ptr %i.cx, align 4, !tbaa !85
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.cz = sext i32 %i.cu to i64
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !53
  %i.db = getelementptr inbounds nuw [112 x i8], ptr %i.da, i64 %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store i32 %.039.lcssa, ptr %i.dc, align 8, !tbaa !135
  %i.dd = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull @.str.8) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50, %bb.i, %bb.h, %bb.g, %bb.f, %bb.j, %._crit_edge, %bb.m, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.de = add nuw i64 %.066, 1                    ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond77.not = icmp eq i64 %i.de, %i.i
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
  %.065 = phi i64 [ 0, %.lr.ph67 ], [ %i.ed, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %i.k = zext i32 %indvars.iv to i64
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.065
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.u = load i32, ptr %i.t, align 1
  %i.v = icmp ne i32 %i.u, 1886351182
  %i.w = zext i1 %i.v to i32
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1005 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1005
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.195, ptr noundef %i.ae) #26 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !84 ; 7 uses
  %.not71 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not71, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.c
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2                 ; 3 uses
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 5 uses
  %xtraiter = and i64 %i.an, 3                    ; 3 uses
  %i.aq = icmp ult i64 %i.an, 4
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph64.new

.lr.ph64.new:                                     ; preds = %.lr.ph64
  %unroll_iter = and i64 %i.an, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph64.new
  %.04863 = phi i64 [ 0, %.lr.ph64.new ], [ %i.bo, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph64.new ], [ %niter.next.3, %bb.d ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.04863
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !85
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [112 x i8], ptr %i.ap, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i32 -1, ptr %i.av, align 8, !tbaa !135
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.04863
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !85
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [112 x i8], ptr %i.ap, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store i32 -1, ptr %i.bb, align 8, !tbaa !135
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.04863
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !85
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [112 x i8], ptr %i.ap, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i32 -1, ptr %i.bh, align 8, !tbaa !135
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.04863
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !85
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [112 x i8], ptr %i.ap, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i32 -1, ptr %i.bn, align 8, !tbaa !135
  %i.bo = add nuw i64 %.04863, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1022

bb.e:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49
  %i.bp = load i32, ptr %i.y, align 4, !tbaa !85
  %i.bq = trunc i64 %.065 to i32                  ; 2 uses
  %.04658 = add i32 %i.bq, -1
  %i.br = icmp sgt i32 %.04658, -1
  br i1 %i.br, label %.lr.ph61, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.lr.ph61:                                         ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.k, %bb.e ] ; 6 uses
  %.046.in59 = phi i32 [ %i.cw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.bq, %bb.e ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv75
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !54 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !61
  %i.bw = icmp eq i64 %i.bv, 9
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph61
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !56 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 1
  %i.ca = xor i64 %i.bz, 7310315702952289134
  %i.cb = getelementptr i8, ptr %i.by, i64 8
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i64
  %i.ce = xor i64 %i.cd, 100
  %i.cf = or i64 %i.ca, %i.ce
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50: ; preds = %.lr.ph61, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 136
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 144
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !97 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !84 ; 3 uses
  %.not70 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not70, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.04357 = phi i64 [ %i.cu, %bb.f ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.04357
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !85
  %i.ct = icmp eq i32 %i.cs, %i.bp
  br i1 %i.ct, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cu = add nuw i64 %.04357, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.cq
  br i1 %exitcond.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1023

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread50, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, -1
  %i.cv = icmp sgt i64 %indvars.iv75, 0
  %i.cw = trunc nuw nsw i64 %indvars.iv75 to i32
  br i1 %i.cv, label %.lr.ph61, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, !llvm.loop !1024

.loopexit:                                        ; preds = %.lr.ph
  %i.cx = icmp eq i32 %.046.in59, 0
  %i.cy = and i64 %.04357, 4294967295
  %i.cz = icmp eq i64 %i.cy, 4294967295
  %or.cond = or i1 %i.cx, %i.cz
  br i1 %or.cond, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.da = trunc nuw nsw i64 %indvars.iv75 to i32
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv75
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !54 ; 2 uses
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !56
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !56
  %i.di = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dd, ptr noundef nonnull @.str.196, ptr noundef %i.df, ptr noundef %i.dh) #26 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !84
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !85 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 136
  %sext = shl i64 %.04357, 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !84
  %i.do = ashr exact i64 %sext, 30
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do
  store i32 %i.dl, ptr %i.dp, align 4, !tbaa !85
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.dr = sext i32 %i.dl to i64
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !53
  %i.dt = getelementptr inbounds nuw [112 x i8], ptr %i.ds, i64 %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  store i32 %i.da, ptr %i.du, align 8, !tbaa !135
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split.loopexit.unr-lcssa, %.lr.ph64
  %.04863.epil.init = phi i64 [ 0, %.lr.ph64 ], [ %i.bo, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.04863.epil = phi i64 [ %.04863.epil.init, %.epil.preheader ], [ %i.ea, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.04863.epil
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !85
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [112 x i8], ptr %i.ap, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store i32 -1, ptr %i.dz, align 8, !tbaa !135
  %i.ea = add nuw i64 %.04863.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split, label %bb.h, !llvm.loop !1025

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split.loopexit.unr-lcssa, %bb.h, %bb.c, %bb.g
  %i.eb = load i64, ptr %i.q, align 8, !tbaa !61
  %i.ec = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef %i.eb, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.sink.split, %bb.e, %bb.b, %.loopexit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ed = add nuw i64 %.065, 1                    ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond81.not = icmp eq i64 %i.ed, %i.i
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
  %.073 = phi i64 [ 0, %.lr.ph75 ], [ %i.ec, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %i.k = zext i32 %indvars.iv to i64
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.073
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = icmp eq i64 %i.r, 5
  br i1 %i.s, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  %i.u = load i32, ptr %i.t, align 1
  %i.v = xor i32 %i.u, 1768714323
  %i.w = getelementptr i8, ptr %i.t, i64 4
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = xor i32 %i.y, 116
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %.not52 = icmp eq i32 %i.ac, 0
  br i1 %.not52, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 136 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !84 ; 5 uses
  %.not78 = icmp eq ptr %i.af, %i.ag
  br i1 %.not78, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 2 uses
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53 ; 3 uses
  %i.an = icmp eq i64 %i.aj, 4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ak, -2
  br label %bb.c

._crit_edge.unr-lcssa:                            ; preds = %bb.c
  %i.ao = and i64 %i.aj, 4
  %lcmp.mod.not = icmp eq i64 %i.ao, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.04356.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bq, %._crit_edge.unr-lcssa ] ; 2 uses
  %.04455.epil.init = phi i32 [ -1, %.lr.ph ], [ %.145.1, %._crit_edge.unr-lcssa ]
  %.04654.epil.init = phi i32 [ 0, %.lr.ph ], [ %.147.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod107 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.04356.epil.init
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !85
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %i.am, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1027
  %.not48.epil = icmp ne i32 %i.au, -1            ; 2 uses
  %i.av = trunc i64 %.04356.epil.init to i32
  %i.aw = zext i1 %.not48.epil to i32
  %.147.epil = add nuw nsw i32 %.04654.epil.init, %i.aw
  %.145.epil = select i1 %.not48.epil, i32 %i.av, i32 %.04455.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.147.lcssa = phi i32 [ %.147.1, %._crit_edge.unr-lcssa ], [ %.147.epil, %.epil.preheader ]
  %.145.lcssa = phi i32 [ %.145.1, %._crit_edge.unr-lcssa ], [ %.145.epil, %.epil.preheader ]
  %i.ax = icmp samesign ugt i32 %.147.lcssa, 1
  %i.ay = sext i32 %.145.lcssa to i64
  br i1 %i.ax, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %._crit_edge.thread

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.04356 = phi i64 [ 0, %.lr.ph.new ], [ %i.bq, %bb.c ] ; 4 uses
  %.04455 = phi i32 [ -1, %.lr.ph.new ], [ %.145.1, %bb.c ]
  %.04654 = phi i32 [ 0, %.lr.ph.new ], [ %.147.1, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.04356
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !85
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [112 x i8], ptr %i.am, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !1027
  %.not48 = icmp ne i32 %i.be, -1                 ; 2 uses
  %i.bf = trunc i64 %.04356 to i32
  %i.bg = zext i1 %.not48 to i32
  %.147 = add nuw nsw i32 %.04654, %i.bg
  %.145 = select i1 %.not48, i32 %i.bf, i32 %.04455
  %i.bh = or disjoint i64 %.04356, 1              ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !85
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [112 x i8], ptr %i.am, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !1027
  %.not48.1 = icmp ne i32 %i.bn, -1               ; 2 uses
  %i.bo = trunc i64 %i.bh to i32
  %i.bp = zext i1 %.not48.1 to i32
  %.147.1 = add nuw nsw i32 %.147, %i.bp          ; 3 uses
  %.145.1 = select i1 %.not48.1, i32 %i.bo, i32 %.145 ; 3 uses
  %i.bq = add nuw i64 %.04356, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !1028

._crit_edge.thread:                               ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49, %._crit_edge
  %.044.lcssa93 = phi i64 [ %i.ay, %._crit_edge ], [ -1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49 ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !84
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !85
  %i.bu = trunc i64 %.073 to i32                  ; 3 uses
  %.04160 = add i32 %i.bu, -1                     ; 2 uses
  %i.bv = icmp sgt i32 %.04160, -1
  br i1 %i.bv, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %._crit_edge.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.k, %._crit_edge.thread ] ; 5 uses
  %.041.in61 = phi i32 [ %i.db, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.bu, %._crit_edge.thread ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv83
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !54 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !61
  %i.ca = icmp eq i64 %i.bz, 9
  br i1 %i.ca, label %.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

.split:                                           ; preds = %.lr.ph64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !56 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 1
  %i.ce = xor i64 %i.cd, 7310315702952289134
  %i.cf = getelementptr i8, ptr %i.cc, i64 8
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i64
  %i.ci = xor i64 %i.ch, 100
  %i.cj = or i64 %i.ce, %i.ci
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split, %.lr.ph64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 144
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !97 ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !84 ; 3 uses
  %.not79 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not79, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 2
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.04058 = phi i64 [ %i.cy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 0, %.lr.ph59.preheader ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.04058
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !85
  %i.cx = icmp eq i32 %i.cw, %i.bt
  br i1 %i.cx, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph59
  %i.cy = add nuw i64 %.04058, 1                  ; 2 uses
  %exitcond82.not = icmp eq i64 %i.cy, %i.cu
  br i1 %exitcond82.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph59, !llvm.loop !1029

bb.d:                                             ; preds = %.lr.ph59
  %i.cz = and i64 %.04058, 4294967295
  %.not = icmp eq i64 %i.cz, 4294967295
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %._crit_edge65.loopexit.split.loop.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, %.split, %bb.d
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, -1
  %i.da = icmp sgt i64 %indvars.iv83, 0
  %i.db = trunc nuw nsw i64 %indvars.iv83 to i32
  br i1 %i.da, label %.lr.ph64, label %._crit_edge65, !llvm.loop !1030

._crit_edge65.loopexit.split.loop.exit:           ; preds = %bb.d
  %i.dc = trunc nuw nsw i64 %indvars.iv83 to i32
  %i.dd = shl i64 %.04058, 32
  %i.de = ashr exact i64 %i.dd, 30
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge65.loopexit.split.loop.exit, %._crit_edge.thread
  %.041.in.lcssa = phi i32 [ %i.bu, %._crit_edge.thread ], [ %.041.in61, %._crit_edge65.loopexit.split.loop.exit ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %.041.lcssa = phi i32 [ %.04160, %._crit_edge.thread ], [ %i.dc, %._crit_edge65.loopexit.split.loop.exit ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.3 = phi i64 [ -4, %._crit_edge.thread ], [ %i.de, %._crit_edge65.loopexit.split.loop.exit ], [ -4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %i.df = icmp eq i32 %.041.in.lcssa, 0
  br i1 %i.df, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge65
  %i.dg = sext i32 %.041.lcssa to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !54 ; 2 uses
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !56
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !56
  %i.do = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.197, ptr noundef %i.dl, ptr noundef %i.dn) #26 ; 0 uses
  %i.dp = load ptr, ptr %i.ad, align 8, !tbaa !84
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.044.lcssa93
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !85 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !84
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.3
  store i32 %i.dr, ptr %i.du, align 4, !tbaa !85
  %i.dv = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.dw = sext i32 %i.dr to i64
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !53
  %i.dy = getelementptr inbounds nuw [112 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store i32 %.041.lcssa, ptr %i.dz, align 8, !tbaa !135
  %i.ea = load i64, ptr %i.q, align 8, !tbaa !61
  %i.eb = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef %i.ea, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %._crit_edge, %._crit_edge65, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ec = add nuw i64 %.073, 1                    ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond87.not = icmp eq i64 %i.ec, %i.i
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
