Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFindPackageCommand?download=true
inline.NumInlined: 7454
inline.NumDeleted: 2181
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_:bb.a
  %.sroa.013.0 = phi ptr [ %0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.sroa.0.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 18 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -32 ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -24 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !42   ; 7 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.o, i64 %i.m) ; 2 uses
  %i.p = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.q = load ptr, ptr %.sroa.0.0, align 8, !tbaa !40
  %i.r = load ptr, ptr %1, align 8, !tbaa !40
  %i.s = call i32 @memcmp(ptr noundef %i.r, ptr noundef %i.q, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.t = sub i64 %i.m, %i.o
  %spec.select7.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.t, i64 -2147483648)
  %.08.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.s, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.u = icmp slt i32 %.0.i.i.i, 0
  %i.v = load ptr, ptr %.sroa.013.0, align 8, !tbaa !40 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 16 ; 7 uses
  %i.x = icmp eq ptr %i.v, %i.w                   ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit
  %i.y = load ptr, ptr %.sroa.0.0, align 8, !tbaa !40 ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -16 ; 6 uses
  %i.aa = icmp eq ptr %i.y, %i.z                  ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1: ; preds = %bb.d
  br i1 %i.aa, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.d
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1
  %i.ab = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.ab)
  switch i64 %i.o, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !41
  store i8 %i.ac, ptr %i.v, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.y, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !42  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !42
  %i.af = load ptr, ptr %.sroa.013.0, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !41
  %.pre.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store ptr %i.y, ptr %.sroa.013.0, align 8, !tbaa !40
  store i64 %i.o, ptr %i.ah, align 8, !tbaa !42
  %i.ai = load i64, ptr %i.z, align 8, !tbaa !41
  store i64 %i.ai, ptr %i.w, align 8, !tbaa !41
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !41
  store ptr %i.y, ptr %.sroa.013.0, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store i64 %i.o, ptr %i.ak, align 8, !tbaa !42
  %i.al = load i64, ptr %i.z, align 8, !tbaa !41
  store i64 %i.al, ptr %i.w, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.v, ptr %.sroa.0.0, align 8, !tbaa !40
  store i64 %i.aj, ptr %i.z, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.z, ptr %.sroa.0.0, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.am = phi ptr [ %i.v, %bb.h ], [ %i.z, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.n, align 8, !tbaa !42
  store i8 0, ptr %i.am, align 1, !tbaa !41
  %.pre16 = load i64, ptr %i.l, align 8, !tbaa !42
  br label %bb.c, !llvm.loop !2392

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit
  %i.an = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %i.ao = icmp eq ptr %i.an, %i.a                 ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %bb.j
  br i1 %i.ao, label %bb.k, label %.thread.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2: ; preds = %bb.j
  br i1 %i.ao, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.ap = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.ap)
  %.not21.i5 = icmp eq ptr %1, %.sroa.013.0
  br i1 %.not21.i5, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10, label %bb.l, !prof !183

bb.l:                                             ; preds = %bb.k
  switch i64 %i.m, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !41
  store i8 %i.aq, ptr %i.v, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.an, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6: ; preds = %bb.n, %bb.m, %bb.l
  %i.ar = load i64, ptr %i.l, align 8, !tbaa !42  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !42
  %i.at = load ptr, ptr %.sroa.013.0, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !41
  %.pre.i7 = load ptr, ptr %1, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

.thread.i9:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store ptr %i.an, ptr %.sroa.013.0, align 8, !tbaa !40
  store i64 %i.m, ptr %i.av, align 8, !tbaa !42
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.aw, ptr %i.w, align 8, !tbaa !41
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2
  %i.ax = load i64, ptr %i.w, align 8, !tbaa !41
  store ptr %i.an, ptr %.sroa.013.0, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store i64 %i.m, ptr %i.ay, align 8, !tbaa !42
  %i.az = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.az, ptr %i.w, align 8, !tbaa !41
  %.not.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3
  store ptr %i.v, ptr %1, align 8, !tbaa !40
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3, %.thread.i9
  store ptr %i.a, ptr %1, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6, %bb.o, %bb.p
  %i.ba = phi ptr [ %i.v, %bb.o ], [ %i.a, %bb.p ], [ %i.an, %bb.k ], [ %.pre.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6 ]
  store i64 0, ptr %i.l, align 8, !tbaa !42
  store i8 0, ptr %i.ba, align 1, !tbaa !41
  %i.bb = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.a
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !41
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph83

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEET_SK_SK_T0_.exit
  %i.h = icmp eq i64 %i.cx, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph83, !llvm.loop !2393

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa79 = phi i64 [ %i.d, %.lr.ph ], [ %i.dr, %bb.b ] ; 2 uses
  %.lcssa77 = phi i64 [ %i.c, %.lr.ph ], [ %i.dq, %bb.b ]
  %storemerge34.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.i = add nsw i64 %.lcssa79, -2
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.o = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  store ptr %i.q, ptr %i.o, align 8, !tbaa !40
  store i64 0, ptr %i.s, align 8, !tbaa !42
  store i8 0, ptr %i.q, align 8, !tbaa !41
  store ptr %i.m, ptr %6, align 8, !tbaa !36
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  store i64 %i.w, ptr %i.k, align 8, !tbaa !41
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !42 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !40
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !42
  store i8 0, ptr %i.q, align 8, !tbaa !41
  store ptr %i.m, ptr %6, align 8, !tbaa !36
  %i.x = icmp eq ptr %i.p, %i.k
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.pre.i.i = add nuw nsw i64 %.pre.i.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ]
  %i.y = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %.pre-phi.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.p, ptr %6, align 8, !tbaa !40
  store i64 %i.w, ptr %i.m, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i, %bb.d
  %i.aa = phi i64 [ %i.y, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i ]
  store i64 %i.aa, ptr %i.n, align 8, !tbaa !42
  store ptr %i.k, ptr %5, align 8, !tbaa !40
  store i64 0, ptr %i.l, align 8, !tbaa !42
  store i8 0, ptr %i.k, align 8, !tbaa !41
  invoke fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_T0_SL_T1_T2_(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa79, ptr noundef align 8 %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.ab = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.m
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !41
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.af = add nsw i64 %.010.i.i.i, -1
  %i.ag = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.k
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !41
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_RT0_.exit.i.i, label %bb.c, !llvm.loop !2394

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.m
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i: ; preds = %bb.f
  %i.an = load i64, ptr %i.m, align 8, !tbaa !41
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i
  %i.ap = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.k
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !41
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_RT0_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %7 = icmp sgt i64 %.lcssa77, 32
  br i1 %7, label %.lr.ph.i9.i.preheader, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_T0_.exit

.lr.ph.i9.i.preheader:                            ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_RT0_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_RT0_.exit
  %.sroa.0.03.i.i = phi ptr [ %i.az, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_RT0_.exit ], [ %storemerge34.lcssa, %.lr.ph.i9.i.preheader ] ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.at, ptr %3, align 8, !tbaa !36
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 9 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i9.i
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !42 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.ba, ptr %3, align 8, !tbaa !40
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !41
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !41
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.bi = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.be, %bb.g ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  store i64 %i.bi, ptr %i.au, align 8, !tbaa !42
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !40
  store i64 0, ptr %i.bj, align 8, !tbaa !42
  store i8 0, ptr %i.bb, align 8, !tbaa !41
  %i.bk = load ptr, ptr %0, align 8, !tbaa !40    ; 5 uses
  %i.bl = icmp eq ptr %i.bk, %i.av
  br i1 %i.bl, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.bm = load i64, ptr %i.aw, align 8, !tbaa !42 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %.not21.i.i = icmp eq ptr %0, %i.az
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.i, !prof !183

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bm, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !41
  store i8 %i.bo, ptr %i.bb, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 1 %i.bk, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bp = load i64, ptr %i.aw, align 8, !tbaa !42 ; 2 uses
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bp
  store i8 0, ptr %i.bq, align 1, !tbaa !41
  %.pre.i.i16 = load ptr, ptr %0, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  store ptr %i.bk, ptr %i.az, align 8, !tbaa !40
  %i.br = load i64, ptr %i.aw, align 8, !tbaa !42
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !42
  %i.bs = load i64, ptr %i.av, align 8, !tbaa !41
  store i64 %i.bs, ptr %i.bb, align 8, !tbaa !41
  store ptr %i.av, ptr %0, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.h
  %i.bt = phi ptr [ %.pre.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.av, %bb.l ], [ %i.bk, %bb.h ]
  store i64 0, ptr %i.aw, align 8, !tbaa !42
  store i8 0, ptr %i.bt, align 1, !tbaa !41
  %i.bu = ptrtoint ptr %i.az to i64
  %i.bv = sub i64 %i.bu, %i.a                     ; 2 uses
  %i.bw = ashr exact i64 %i.bv, 5
  store ptr %i.ax, ptr %4, align 8, !tbaa !36
  %i.bx = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.at
  br i1 %i.by, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bz = load i64, ptr %i.au, align 8, !tbaa !42 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.cb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.bx, ptr %4, align 8, !tbaa !40
  %i.cc = load i64, ptr %i.at, align 8, !tbaa !41
  store i64 %i.cc, ptr %i.ax, align 8, !tbaa !41
  %.pre5.i = load i64, ptr %i.au, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %bb.m
  %i.cd = phi i64 [ %i.bz, %bb.m ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  store i64 %i.cd, ptr %i.ay, align 8, !tbaa !42
  store ptr %i.at, ptr %3, align 8, !tbaa !40
  store i64 0, ptr %i.au, align 8, !tbaa !42
  store i8 0, ptr %i.at, align 8, !tbaa !41
  invoke fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_T0_SL_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bw, ptr noundef align 8 %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.ce = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ax
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.cg = load i64, ptr %i.ax, align 8, !tbaa !41
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ci = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.at
  br i1 %i.cj, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_RT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ck = load i64, ptr %i.at, align 8, !tbaa !41
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #32
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_RT0_.exit

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ax
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %bb.o
  %i.cp = load i64, ptr %i.ax, align 8, !tbaa !41
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  %i.cr = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.at
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i
  %i.ct = load i64, ptr %i.at, align 8, !tbaa !41
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %common.resume

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_RT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cv = icmp sgt i64 %i.bv, 32
  br i1 %i.cv, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_T0_.exit, !llvm.loop !2395

.lr.ph83:                                         ; preds = %.lr.ph, %bb.b
  %storemerge3482 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.03581 = phi i64 [ %i.cx, %bb.b ], [ %2, %.lr.ph ]
  %i.cw = phi i64 [ %i.dr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cx = add nsw i64 %.03581, -1                 ; 3 uses
  %i.cy = lshr i64 %i.cw, 1
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cy ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %storemerge3482, i64 -32 ; 4 uses
  %i.db = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.cz)
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph83
  %i.dd = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_SK_T0_.exit.i, label %.sink.split.i.i

bb.q:                                             ; preds = %.lr.ph83
  %i.df = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_SK_T0_.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.q, %bb.p
  %.sink30.i.i = phi ptr [ %i.f, %bb.p ], [ %i.cz, %bb.q ] ; 2 uses
  %i.dh = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sink30.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
  %i.di = icmp sgt i32 %i.dh, 0
  %.26.i.i = select i1 %i.di, ptr %i.da, ptr %.sink30.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_SK_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_SK_T0_.exit.i: ; preds = %.sink.split.i.i, %bb.q, %bb.p
  %.sink.i.i = phi ptr [ %i.cz, %bb.p ], [ %i.f, %bb.q ], [ %.26.i.i, %.sink.split.i.i ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_SK_T0_.exit.i
  %.sroa.010.0.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_SK_T0_.exit.i ], [ %i.dl, %bb.u ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3482, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_SK_T0_.exit.i ], [ %.sroa.0.1.i.i, %bb.u ]
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.r ], [ %i.dl, %bb.s ] ; 8 uses
  %i.dj = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.dk = icmp sgt i32 %i.dj, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 32 ; 2 uses
  br i1 %i.dk, label %bb.s, label %.preheader.i.i, !llvm.loop !2396

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.s ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.dm = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i)
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.preheader.i.i, label %bb.t, !llvm.loop !2397

bb.t:                                             ; preds = %.preheader.i.i
  %i.do = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.do, label %bb.u, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEET_SK_SK_T0_.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i) #31
  br label %bb.r, !llvm.loop !2398

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEET_SK_SK_T0_.exit: ; preds = %bb.t
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge3482, i64 noundef %i.cx)
  %i.dp = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dq = sub i64 %i.dp, %i.a                     ; 2 uses
  %i.dr = ashr exact i64 %i.dq, 5                 ; 3 uses
  %i.ds = icmp sgt i64 %i.dr, 16
  br i1 %i.ds, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_T0_.exit, !llvm.loop !2393

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEET_SK_SK_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_SK_RT0_.exit, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_SK_RT0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_T0_SL_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.050 = phi i64 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.050, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g
  %i.i = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.j = icmp sgt i32 %i.i, 0
  %spec.select = select i1 %i.j, i64 %i.g, i64 %i.e ; 5 uses
  %i.k = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.l = getelementptr inbounds [32 x i8], ptr %0, i64 %.050 ; 8 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !40   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.lr.ph
  br i1 %i.r, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.lr.ph
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq i64 %spec.select, %.050
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !183

bb.c:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.p, align 1, !tbaa !41
  store i8 %i.v, ptr %i.m, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.w = load i64, ptr %i.s, align 8, !tbaa !42   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !42
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !41
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.l, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !41
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !41
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !41
  store ptr %i.p, ptr %i.l, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !41
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.m, ptr %i.k, align 8, !tbaa !40
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %i.k, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ah = phi ptr [ %i.m, %bb.f ], [ %i.q, %bb.g ], [ %i.p, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !42
  store i8 0, ptr %i.ah, align 1, !tbaa !41
  %i.aj = icmp slt i64 %spec.select, %i.b
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !2399

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 6 uses
  %i.ak = and i64 %2, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.am = add nsw i64 %2, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa, %i.an
  br i1 %i.ao, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ap = shl nsw i64 %.0.lcssa, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 3 uses
  %i.ar = getelementptr inbounds [32 x i8], ptr %0, i64 %i.aq ; 9 uses
  %i.as = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !40 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 4 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax                ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31: ; preds = %bb.i
  br i1 %i.ay, label %bb.j, label %.thread.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25: ; preds = %bb.i
  br i1 %i.ay, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !42 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not21.i28 = icmp eq i64 %i.aq, %.0.lcssa
  br i1 %.not21.i28, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, label %bb.k, !prof !183

bb.k:                                             ; preds = %bb.j
  switch i64 %i.ba, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !41
  store i8 %i.bc, ptr %i.at, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.aw, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !42 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !42
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !41
  %.pre.i30 = load ptr, ptr %i.ar, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

.thread.i32:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !tbaa !41
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !41
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25
  %i.bk = load i64, ptr %i.au, align 8, !tbaa !41
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !tbaa !41
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !41
  %.not.i27 = icmp eq ptr %i.at, null
  br i1 %.not.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !40
  store i64 %i.bk, ptr %i.ax, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26, %.thread.i32
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29, %bb.n, %bb.o
  %i.bo = phi ptr [ %i.at, %bb.n ], [ %i.ax, %bb.o ], [ %i.aw, %bb.j ], [ %.pre.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
end_hunk_0
begin_hunk_1_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt7greaterEEEEEvT_T0_:bb.a
  %.sroa.016.0 = phi ptr [ %0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.sroa.0.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 21 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.016.0, i64 -32 ; 6 uses
  %i.m = invoke noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = load ptr, ptr %.sroa.016.0, align 8, !tbaa !40 ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 16 ; 3 uses
  %i.q = icmp eq ptr %i.o, %i.p                   ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %.sroa.0.0, align 8, !tbaa !40 ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.016.0, i64 -16 ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s                   ; 2 uses
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1: ; preds = %bb.e
  br i1 %i.t, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.t, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1
  %i.u = getelementptr inbounds i8, ptr %.sroa.016.0, i64 -24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !42   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  switch i64 %i.v, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.r, align 1, !tbaa !41
  store i8 %i.x, ptr %i.o, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.r, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.y = load i64, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !42
  %i.aa = load ptr, ptr %.sroa.016.0, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !41
  %.pre.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 8
  store ptr %i.r, ptr %.sroa.016.0, align 8, !tbaa !40
  %i.ad = getelementptr inbounds i8, ptr %.sroa.016.0, i64 -24
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !tbaa !41
  store <2 x i64> %i.ae, ptr %i.ac, align 8, !tbaa !41
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.af = load i64, ptr %i.p, align 8, !tbaa !41
  store ptr %i.r, ptr %.sroa.016.0, align 8, !tbaa !40
  %i.ag = getelementptr inbounds i8, ptr %.sroa.016.0, i64 -24
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 8
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !tbaa !41
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.o, ptr %.sroa.0.0, align 8, !tbaa !40
  store i64 %i.af, ptr %i.s, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.s, ptr %.sroa.0.0, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.aj = phi ptr [ %i.o, %bb.i ], [ %i.s, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ak = getelementptr inbounds i8, ptr %.sroa.016.0, i64 -24
  store i64 0, ptr %i.ak, align 8, !tbaa !42
  store i8 0, ptr %i.aj, align 1, !tbaa !41
  br label %bb.c, !llvm.loop !2402

bb.k:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !41
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %i.al

bb.l:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.a                 ; 2 uses
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %bb.l
  br i1 %i.ar, label %bb.m, label %.thread.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2: ; preds = %bb.l
  br i1 %i.ar, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.as = load i64, ptr %i.l, align 8, !tbaa !42  ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %.not21.i5 = icmp eq ptr %1, %.sroa.016.0
  br i1 %.not21.i5, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10, label %bb.n, !prof !183

bb.n:                                             ; preds = %bb.m
  switch i64 %i.as, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !41
  store i8 %i.au, ptr %i.o, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6: ; preds = %bb.p, %bb.o, %bb.n
  %i.av = load i64, ptr %i.l, align 8, !tbaa !42  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !42
  %i.ax = load ptr, ptr %.sroa.016.0, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !41
  %.pre.i7 = load ptr, ptr %1, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

.thread.i9:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 8
  store ptr %i.aq, ptr %.sroa.016.0, align 8, !tbaa !40
  %i.ba = load <2 x i64>, ptr %i.l, align 8, !tbaa !41
  store <2 x i64> %i.ba, ptr %i.az, align 8, !tbaa !41
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2
  %i.bb = load i64, ptr %i.p, align 8, !tbaa !41
  store ptr %i.aq, ptr %.sroa.016.0, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 8
  %i.bd = load <2 x i64>, ptr %i.l, align 8, !tbaa !41
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !tbaa !41
  %.not.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i4, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3
  store ptr %i.o, ptr %1, align 8, !tbaa !40
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3, %.thread.i9
  store ptr %i.a, ptr %1, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6, %bb.q, %bb.r
  %i.be = phi ptr [ %i.o, %bb.q ], [ %i.a, %bb.r ], [ %i.aq, %bb.m ], [ %.pre.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6 ]
  store i64 0, ptr %i.l, align 8, !tbaa !42
  store i8 0, ptr %i.be, align 1, !tbaa !41
  %i.bf = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.a
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !41
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph83

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEET_SK_SK_T0_.exit
  %i.h = icmp eq i64 %i.cx, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph83, !llvm.loop !2403

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa79 = phi i64 [ %i.d, %.lr.ph ], [ %i.dr, %bb.b ] ; 2 uses
  %.lcssa77 = phi i64 [ %i.c, %.lr.ph ], [ %i.dq, %bb.b ]
  %storemerge34.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.i = add nsw i64 %.lcssa79, -2
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.o = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  store ptr %i.q, ptr %i.o, align 8, !tbaa !40
  store i64 0, ptr %i.s, align 8, !tbaa !42
  store i8 0, ptr %i.q, align 8, !tbaa !41
  store ptr %i.m, ptr %6, align 8, !tbaa !36
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  store i64 %i.w, ptr %i.k, align 8, !tbaa !41
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !42 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !40
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !42
  store i8 0, ptr %i.q, align 8, !tbaa !41
  store ptr %i.m, ptr %6, align 8, !tbaa !36
  %i.x = icmp eq ptr %i.p, %i.k
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.pre.i.i = add nuw nsw i64 %.pre.i.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ]
  %i.y = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %.pre-phi.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.p, ptr %6, align 8, !tbaa !40
  store i64 %i.w, ptr %i.m, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i, %bb.d
  %i.aa = phi i64 [ %i.y, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i ]
  store i64 %i.aa, ptr %i.n, align 8, !tbaa !42
  store ptr %i.k, ptr %5, align 8, !tbaa !40
  store i64 0, ptr %i.l, align 8, !tbaa !42
  store i8 0, ptr %i.k, align 8, !tbaa !41
  invoke fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_T0_SL_T1_T2_(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa79, ptr noundef align 8 %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.ab = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.m
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !41
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.af = add nsw i64 %.010.i.i.i, -1
  %i.ag = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.k
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !41
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_RT0_.exit.i.i, label %bb.c, !llvm.loop !2404

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.m
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i: ; preds = %bb.f
  %i.an = load i64, ptr %i.m, align 8, !tbaa !41
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i
  %i.ap = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.k
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !41
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_RT0_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %7 = icmp sgt i64 %.lcssa77, 32
  br i1 %7, label %.lr.ph.i9.i.preheader, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_T0_.exit

.lr.ph.i9.i.preheader:                            ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_RT0_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_RT0_.exit
  %.sroa.0.03.i.i = phi ptr [ %i.az, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_RT0_.exit ], [ %storemerge34.lcssa, %.lr.ph.i9.i.preheader ] ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.at, ptr %3, align 8, !tbaa !36
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 9 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i9.i
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !42 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.ba, ptr %3, align 8, !tbaa !40
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !41
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !41
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.bi = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.be, %bb.g ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  store i64 %i.bi, ptr %i.au, align 8, !tbaa !42
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !40
  store i64 0, ptr %i.bj, align 8, !tbaa !42
  store i8 0, ptr %i.bb, align 8, !tbaa !41
  %i.bk = load ptr, ptr %0, align 8, !tbaa !40    ; 5 uses
  %i.bl = icmp eq ptr %i.bk, %i.av
  br i1 %i.bl, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.bm = load i64, ptr %i.aw, align 8, !tbaa !42 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %.not21.i.i = icmp eq ptr %0, %i.az
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.i, !prof !183

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bm, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !41
  store i8 %i.bo, ptr %i.bb, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 1 %i.bk, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bp = load i64, ptr %i.aw, align 8, !tbaa !42 ; 2 uses
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bp
  store i8 0, ptr %i.bq, align 1, !tbaa !41
  %.pre.i.i16 = load ptr, ptr %0, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  store ptr %i.bk, ptr %i.az, align 8, !tbaa !40
  %i.br = load i64, ptr %i.aw, align 8, !tbaa !42
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !42
  %i.bs = load i64, ptr %i.av, align 8, !tbaa !41
  store i64 %i.bs, ptr %i.bb, align 8, !tbaa !41
  store ptr %i.av, ptr %0, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.h
  %i.bt = phi ptr [ %.pre.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.av, %bb.l ], [ %i.bk, %bb.h ]
  store i64 0, ptr %i.aw, align 8, !tbaa !42
  store i8 0, ptr %i.bt, align 1, !tbaa !41
  %i.bu = ptrtoint ptr %i.az to i64
  %i.bv = sub i64 %i.bu, %i.a                     ; 2 uses
  %i.bw = ashr exact i64 %i.bv, 5
  store ptr %i.ax, ptr %4, align 8, !tbaa !36
  %i.bx = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.at
  br i1 %i.by, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bz = load i64, ptr %i.au, align 8, !tbaa !42 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.cb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.bx, ptr %4, align 8, !tbaa !40
  %i.cc = load i64, ptr %i.at, align 8, !tbaa !41
  store i64 %i.cc, ptr %i.ax, align 8, !tbaa !41
  %.pre5.i = load i64, ptr %i.au, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %bb.m
  %i.cd = phi i64 [ %i.bz, %bb.m ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  store i64 %i.cd, ptr %i.ay, align 8, !tbaa !42
  store ptr %i.at, ptr %3, align 8, !tbaa !40
  store i64 0, ptr %i.au, align 8, !tbaa !42
  store i8 0, ptr %i.at, align 8, !tbaa !41
  invoke fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_T0_SL_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bw, ptr noundef align 8 %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.ce = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ax
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.cg = load i64, ptr %i.ax, align 8, !tbaa !41
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ci = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.at
  br i1 %i.cj, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_RT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ck = load i64, ptr %i.at, align 8, !tbaa !41
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #32
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_RT0_.exit

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ax
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %bb.o
  %i.cp = load i64, ptr %i.ax, align 8, !tbaa !41
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  %i.cr = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.at
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i
  %i.ct = load i64, ptr %i.at, align 8, !tbaa !41
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %common.resume

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_RT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cv = icmp sgt i64 %i.bv, 32
  br i1 %i.cv, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_T0_.exit, !llvm.loop !2405

.lr.ph83:                                         ; preds = %.lr.ph, %bb.b
  %storemerge3482 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.03581 = phi i64 [ %i.cx, %bb.b ], [ %2, %.lr.ph ]
  %i.cw = phi i64 [ %i.dr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cx = add nsw i64 %.03581, -1                 ; 3 uses
  %i.cy = lshr i64 %i.cw, 1
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cy ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %storemerge3482, i64 -32 ; 4 uses
  %i.db = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.cz)
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph83
  %i.dd = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_SK_T0_.exit.i, label %.sink.split.i.i

bb.q:                                             ; preds = %.lr.ph83
  %i.df = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_SK_T0_.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.q, %bb.p
  %.sink30.i.i = phi ptr [ %i.f, %bb.p ], [ %i.cz, %bb.q ] ; 2 uses
  %i.dh = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sink30.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
  %i.di = icmp slt i32 %i.dh, 0
  %.26.i.i = select i1 %i.di, ptr %i.da, ptr %.sink30.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_SK_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_SK_T0_.exit.i: ; preds = %.sink.split.i.i, %bb.q, %bb.p
  %.sink.i.i = phi ptr [ %i.cz, %bb.p ], [ %i.f, %bb.q ], [ %.26.i.i, %.sink.split.i.i ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_SK_T0_.exit.i
  %.sroa.010.0.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_SK_T0_.exit.i ], [ %i.dl, %bb.u ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3482, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_SK_T0_.exit.i ], [ %.sroa.0.1.i.i, %bb.u ]
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.r ], [ %i.dl, %bb.s ] ; 8 uses
  %i.dj = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.dk = icmp slt i32 %i.dj, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 32 ; 2 uses
  br i1 %i.dk, label %bb.s, label %.preheader.i.i, !llvm.loop !2406

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.s ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.dm = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i)
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %.preheader.i.i, label %bb.t, !llvm.loop !2407

bb.t:                                             ; preds = %.preheader.i.i
  %i.do = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.do, label %bb.u, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEET_SK_SK_T0_.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i) #31
  br label %bb.r, !llvm.loop !2408

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEET_SK_SK_T0_.exit: ; preds = %bb.t
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge3482, i64 noundef %i.cx)
  %i.dp = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dq = sub i64 %i.dp, %i.a                     ; 2 uses
  %i.dr = ashr exact i64 %i.dq, 5                 ; 3 uses
  %i.ds = icmp sgt i64 %i.dr, 16
  br i1 %i.ds, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_T0_.exit, !llvm.loop !2403

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEET_SK_SK_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_SK_RT0_.exit, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_SK_RT0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StrverscmpOpISt4lessEEEEEvT_T0_SL_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.050 = phi i64 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.050, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g
  %i.i = tail call noundef i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.j = icmp slt i32 %i.i, 0
  %spec.select = select i1 %i.j, i64 %i.g, i64 %i.e ; 5 uses
  %i.k = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.l = getelementptr inbounds [32 x i8], ptr %0, i64 %.050 ; 8 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !40   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.lr.ph
  br i1 %i.r, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.lr.ph
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq i64 %spec.select, %.050
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !183

bb.c:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.p, align 1, !tbaa !41
  store i8 %i.v, ptr %i.m, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.w = load i64, ptr %i.s, align 8, !tbaa !42   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !42
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !41
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.l, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !41
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !41
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !41
  store ptr %i.p, ptr %i.l, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !41
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.m, ptr %i.k, align 8, !tbaa !40
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %i.k, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ah = phi ptr [ %i.m, %bb.f ], [ %i.q, %bb.g ], [ %i.p, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !42
  store i8 0, ptr %i.ah, align 1, !tbaa !41
  %i.aj = icmp slt i64 %spec.select, %i.b
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !2409

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 6 uses
  %i.ak = and i64 %2, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.am = add nsw i64 %2, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa, %i.an
  br i1 %i.ao, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ap = shl nsw i64 %.0.lcssa, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 3 uses
  %i.ar = getelementptr inbounds [32 x i8], ptr %0, i64 %i.aq ; 9 uses
  %i.as = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !40 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 4 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax                ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31: ; preds = %bb.i
  br i1 %i.ay, label %bb.j, label %.thread.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25: ; preds = %bb.i
  br i1 %i.ay, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !42 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not21.i28 = icmp eq i64 %i.aq, %.0.lcssa
  br i1 %.not21.i28, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, label %bb.k, !prof !183

bb.k:                                             ; preds = %bb.j
  switch i64 %i.ba, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !41
  store i8 %i.bc, ptr %i.at, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.aw, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !42 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !42
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !41
  %.pre.i30 = load ptr, ptr %i.ar, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

.thread.i32:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !tbaa !41
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !41
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25
  %i.bk = load i64, ptr %i.au, align 8, !tbaa !41
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !tbaa !41
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !41
  %.not.i27 = icmp eq ptr %i.at, null
  br i1 %.not.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !40
  store i64 %i.bk, ptr %i.ax, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26, %.thread.i32
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29, %bb.n, %bb.o
  %i.bo = phi ptr [ %i.at, %bb.n ], [ %i.ax, %bb.o ], [ %i.aw, %bb.j ], [ %.pre.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
end_hunk_1
