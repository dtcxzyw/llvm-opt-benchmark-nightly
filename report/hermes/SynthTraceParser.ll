inline.NumInlined: 2500
inline.NumDeleted: 1013
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !401
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !159  ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !175 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.k, label %.thread.i.i.i.i.i, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !216
  %i.l = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i, ptr noundef %1, i64 noundef %.sroa.speculated.i.i.i.i.i) #20
  %.fr.i.i.i.i.i = freeze i32 %i.l                ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.i.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.m = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i, %2
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.thread.i.i.i.i.i
  %i.n = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %2
  %i.o = select i1 %i.n, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i: ; preds = %bb.b, %.thread.i.i.i.i.i, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i ], [ %i.o, %bb.b ], [ 0, %.thread.i.i.i.i.i ]
  %i.p = icmp eq i32 %.1.i.i.i.i.i.i, -1          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = xor i64 %i.f, -1
  %i.s = add nsw i64 %.01116.i.i, %i.r
  %.112.i.i = select i1 %i.p, i64 %i.s, i64 %i.f  ; 2 uses
  %.1.i.i = select i1 %i.p, ptr %i.q, ptr %.017.i.i ; 2 uses
  %i.t = icmp sgt i64 %.112.i.i, 0
  br i1 %i.t, label %_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit, !llvm.loop !403

_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %i.a, %bb.a ], [ %.1.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i ] ; 3 uses
  %.not = icmp eq ptr %.0.lcssa.i.i, %i.c
  br i1 %.not, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit
  %i.u = load ptr, ptr %.0.lcssa.i.i, align 8, !tbaa !401
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !159  ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !216
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !175
  %i.x = icmp eq i64 %.sroa.22.0.copyload, %2
  br i1 %i.x, label %bb.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %2, 0
  br i1 %i.y, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread11, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.d
  %bcmp = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %1, i64 %2)
  %i.z = icmp eq i32 %bcmp, 0
  br i1 %i.z, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread11, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread11:     ; preds = %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.aa = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.ab = sub i64 %i.aa, %i.d
  %i.ac = ashr exact i64 %i.ab, 3
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.c, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11
  %.sroa.09.0 = phi i64 [ %i.ac, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11 ], [ undef, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit ], [ undef, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ undef, %bb.c ]
  %.sroa.2.0 = phi i8 [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11 ], [ 0, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

declare void @_ZN8facebook6hermes7tracing10SynthTraceC1ERKN6hermes2vm13RuntimeConfigESt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteISA_EESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(269), ptr noundef, i64, i8) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17BeginExecJSRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EERbEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #17 ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !176    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !146  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %5, align 8, !tbaa !176
  %i.k = load i64, ptr %i.e, align 8, !tbaa !147
  store i64 %i.k, ptr %i.c, align 8, !tbaa !147
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !146
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi ptr [ %i.c, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.m = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.e, ptr %2, align 8, !tbaa !176
  store i64 0, ptr %i.n, align 8, !tbaa !146
  store i8 0, ptr %i.e, align 8, !tbaa !147
  %i.p = load i8, ptr %4, align 1, !tbaa !104, !range !127, !noundef !128
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.q, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !91
  %i.t = icmp eq ptr %i.l, %i.c
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.v, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EEb.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.l, ptr %i.r, align 8, !tbaa !176
  %i.w = load i64, ptr %i.c, align 8, !tbaa !147
  store i64 %i.w, ptr %i.s, align 8, !tbaa !147
  br label %_ZN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EEb.exit

_ZN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EEb.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.m, ptr %i.x, align 8, !tbaa !146
  store ptr %i.c, ptr %5, align 8, !tbaa !176
  store i64 0, ptr %i.o, align 8, !tbaa !146
  store i8 0, ptr %i.c, align 8, !tbaa !147
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, ptr noundef nonnull align 1 dereferenceable(20) %3, i64 20, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i8 %i.p, ptr %i.z, align 4, !tbaa !404
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !408 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread: ; preds = %_ZN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EEb.exit
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !409
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !408
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EEb.exit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !411 ; 10 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #17 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = sub i64 %i.ag, %i.ah
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aw = add i64 %i.ag, -8
  %i.ax = sub i64 %i.aw, %i.ah
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.az
  %scevgep22 = getelementptr i8, ptr %i.af, i64 %i.az
  %bound0 = icmp ult ptr %i.aq, %scevgep22
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.af, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bd ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.af, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.be = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep23, align 8, !tbaa !409, !alias.scope !417, !noalias !412
  %wide.load24 = load <2 x i64>, ptr %i.be, align 8, !tbaa !409, !alias.scope !417, !noalias !412
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !420, !noalias !417
  store <2 x i64> %wide.load24, ptr %i.bf, align 8, !tbaa !409, !alias.scope !420, !noalias !417
  %i.bg = getelementptr i8, ptr %next.gep23, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !409, !alias.scope !417, !noalias !412
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !409, !alias.scope !417, !noalias !412
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader26

.lr.ph.i.i.i.i.i.preheader26:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader26, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader26 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader26 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !415, !noalias !412
  store i64 %i.bi, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !412, !noalias !415
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !415, !noalias !412
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !425

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread20, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread20: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !408
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bm, ptr %i.ac, align 8, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #19
  %.pre8.pre = load ptr, ptr %5, align 8, !tbaa !176 ; 2 uses
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !408
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bn, ptr %i.ac, align 8, !tbaa !198
  %i.bo = icmp eq ptr %.pre8.pre, %i.c
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !147
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %.pre8.pre, i64 noundef %i.bq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_15EndExecJSRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 10 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.e, ptr noundef nonnull align 1 dereferenceable(15) @.str.87, i64 15, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 15, ptr %i.f, align 8, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 47
  store i8 0, ptr %i.g, align 1, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !147
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace15EndExecJSRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !408  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.j, align 8, !tbaa !409
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15EndExecJSRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.o = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #17 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.b, ptr %i.z, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = sub i64 %i.o, %i.p
  %i.ab = add i64 %i.aa, -8                       ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ae = add i64 %i.o, -8
  %i.af = sub i64 %i.ae, %i.p
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ah
  %scevgep8 = getelementptr i8, ptr %i.n, i64 %i.ah
  %bound0 = icmp ult ptr %i.y, %scevgep8
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.y, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.n, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.al ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.n, i64 %i.al ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.am = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !409, !alias.scope !433, !noalias !428
  %wide.load10 = load <2 x i64>, ptr %i.am, align 8, !tbaa !409, !alias.scope !433, !noalias !428
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !436, !noalias !433
  store <2 x i64> %wide.load10, ptr %i.an, align 8, !tbaa !409, !alias.scope !436, !noalias !433
  %i.ao = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !409, !alias.scope !433, !noalias !428
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !409, !alias.scope !433, !noalias !428
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !438

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !431, !noalias !428
  store i64 %i.aq, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !428, !noalias !431
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !431, !noalias !428
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !439

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.y, ptr %i.a, align 8, !tbaa !411
  store ptr %i.at, ptr %i.i, align 8, !tbaa !408
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.au, ptr %i.k, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15EndExecJSRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15EndExecJSRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

declare { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace6decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_12MarkerRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKcEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.e = load ptr, ptr %2, align 8, !tbaa !216    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !91
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.h, ptr %i.b, align 8, !tbaa !175
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #16 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !176
  %i.k = load i64, ptr %i.b, align 8, !tbaa !175
  store i64 %i.k, ptr %i.f, align 8, !tbaa !147
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.e, align 1, !tbaa !147
  store i8 %i.m, ptr %i.l, align 1, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.n = load i64, ptr %i.b, align 8, !tbaa !175  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !146
  %i.p = load ptr, ptr %3, align 8, !tbaa !176
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace12MarkerRecordE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !91
  %i.u = load ptr, ptr %3, align 8, !tbaa !176    ; 2 uses
  %i.v = load i64, ptr %i.o, align 8, !tbaa !146  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.v, ptr %i.a, align 8, !tbaa !175
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !176
  %i.y = load i64, ptr %i.a, align 8, !tbaa !175
  store i64 %i.y, ptr %i.t, align 8, !tbaa !147
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.z = phi ptr [ %i.x, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  switch i64 %i.v, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !147
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !147
  br label %_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !175 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !146
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !408 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.d, ptr %i.ag, align 8, !tbaa !409
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit

bb.k:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !411 ; 10 uses
  %i.al = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #17 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store ptr %i.d, ptr %i.aw, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.ak, %i.ag
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ax = sub i64 %i.al, %i.am
  %i.ay = add i64 %i.ax, -8                       ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bb = add i64 %i.al, -8
  %i.bc = sub i64 %i.bb, %i.am
  %i.bd = and i64 %i.bc, -8
  %i.be = add i64 %i.bd, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.be
  %scevgep9 = getelementptr i8, ptr %i.ak, i64 %i.be
  %bound0 = icmp ult ptr %i.av, %scevgep9
  %bound1 = icmp ult ptr %i.ak, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ak, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bi ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.ak, i64 %i.bi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.bj = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !409, !alias.scope !445, !noalias !440
  %wide.load11 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !409, !alias.scope !445, !noalias !440
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !448, !noalias !445
  store <2 x i64> %wide.load11, ptr %i.bk, align 8, !tbaa !409, !alias.scope !448, !noalias !445
  %i.bl = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !409, !alias.scope !445, !noalias !440
  store <2 x ptr> splat (ptr null), ptr %i.bl, align 8, !tbaa !409, !alias.scope !445, !noalias !440
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !450

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.bn = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !443, !noalias !440
  store i64 %i.bn, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !440, !noalias !443
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !443, !noalias !440
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, %i.ag
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !451

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.av, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bg, %middle.block ], [ %i.bp, %.lr.ph.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.av, ptr %i.c, align 8, !tbaa !411
  store ptr %i.bq, ptr %i.af, align 8, !tbaa !408
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.br, ptr %i.ah, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  %i.bs = load ptr, ptr %3, align 8, !tbaa !176   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.f
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit
  %i.bu = load i64, ptr %i.f, align 8, !tbaa !147
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateObjectRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateObjectRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !452
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !408  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !409
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateObjectRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #17 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = sub i64 %i.m, %i.n
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ac = add i64 %i.m, -8
  %i.ad = sub i64 %i.ac, %i.n
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.af
  %scevgep6 = getelementptr i8, ptr %i.l, i64 %i.af
  %bound0 = icmp ult ptr %i.w, %scevgep6
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.w, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.l, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ak = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !409, !alias.scope !459, !noalias !454
  %wide.load8 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !409, !alias.scope !459, !noalias !454
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !462, !noalias !459
  store <2 x i64> %wide.load8, ptr %i.al, align 8, !tbaa !409, !alias.scope !462, !noalias !459
  %i.am = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !409, !alias.scope !459, !noalias !454
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !409, !alias.scope !459, !noalias !454
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !457, !noalias !454
  store i64 %i.ao, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !454, !noalias !457
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !457, !noalias !454
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !465

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !408
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.as, ptr %i.i, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateObjectRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateObjectRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31CreateObjectWithPrototypeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace31CreateObjectWithPrototypeRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !466
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !426
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !408  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !409
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreateObjectWithPrototypeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = sub i64 %i.n, %i.o
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.n, -8
  %i.ae = sub i64 %i.ad, %i.o
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ag
  %scevgep9 = getelementptr i8, ptr %i.m, i64 %i.ag
  %bound0 = icmp ult ptr %i.x, %scevgep9
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.m, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.m, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.al = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !409, !alias.scope !474, !noalias !469
  %wide.load11 = load <2 x i64>, ptr %i.al, align 8, !tbaa !409, !alias.scope !474, !noalias !469
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !477, !noalias !474
  store <2 x i64> %wide.load11, ptr %i.am, align 8, !tbaa !409, !alias.scope !477, !noalias !474
  %i.an = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !409, !alias.scope !474, !noalias !469
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !409, !alias.scope !474, !noalias !469
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !479

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !472, !noalias !469
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !469, !noalias !472
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !472, !noalias !469
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !480

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !411
  store ptr %i.as, ptr %i.h, align 8, !tbaa !408
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.at, ptr %i.j, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreateObjectWithPrototypeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreateObjectWithPrototypeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20QueueMicrotaskRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load i64, ptr %2, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20QueueMicrotaskRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !481
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !408  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !409
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20QueueMicrotaskRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #17 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = sub i64 %i.l, %i.m
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.l, -8
  %i.ac = sub i64 %i.ab, %i.m
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ae
  %scevgep6 = getelementptr i8, ptr %i.k, i64 %i.ae
  %bound0 = icmp ult ptr %i.v, %scevgep6
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.k, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ai ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.k, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !409, !alias.scope !488, !noalias !483
  %wide.load8 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !409, !alias.scope !488, !noalias !483
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !491, !noalias !488
  store <2 x i64> %wide.load8, ptr %i.ak, align 8, !tbaa !409, !alias.scope !491, !noalias !488
  %i.al = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !409, !alias.scope !488, !noalias !483
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !409, !alias.scope !488, !noalias !483
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !493

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !486, !noalias !483
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !483, !noalias !486
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !486, !noalias !483
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !494

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !411
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !408
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20QueueMicrotaskRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20QueueMicrotaskRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_21DrainMicrotasksRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERiEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load i32, ptr %2, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace21DrainMicrotasksRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.c, ptr %i.e, align 8, !tbaa !495
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !408  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !409
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_21DrainMicrotasksRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #17 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = sub i64 %i.l, %i.m
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.l, -8
  %i.ac = sub i64 %i.ab, %i.m
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ae
  %scevgep6 = getelementptr i8, ptr %i.k, i64 %i.ae
  %bound0 = icmp ult ptr %i.v, %scevgep6
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.k, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ai ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.k, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !409, !alias.scope !502, !noalias !497
  %wide.load8 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !409, !alias.scope !502, !noalias !497
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !505, !noalias !502
  store <2 x i64> %wide.load8, ptr %i.ak, align 8, !tbaa !409, !alias.scope !505, !noalias !502
  %i.al = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !409, !alias.scope !502, !noalias !497
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !409, !alias.scope !502, !noalias !497
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !507

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !500, !noalias !497
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !497, !noalias !500
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !500, !noalias !497
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !508

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !411
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !408
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_21DrainMicrotasksRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_21DrainMicrotasksRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateBigIntRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdRNS4_6MethodEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = load i32, ptr %3, align 4, !tbaa !228
  %i.f = load i64, ptr %4, align 8, !tbaa !175
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateBigIntRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.h, align 8, !tbaa !509
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.e, ptr %i.i, align 8, !tbaa !511
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.f, ptr %i.j, align 8, !tbaa !512
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !408  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.l, align 8, !tbaa !409
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.k, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.q = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #17 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = sub i64 %i.q, %i.r
  %i.ad = add i64 %i.ac, -8                       ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ag = add i64 %i.q, -8
  %i.ah = sub i64 %i.ag, %i.r
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.aj
  %scevgep8 = getelementptr i8, ptr %i.p, i64 %i.aj
  %bound0 = icmp ult ptr %i.aa, %scevgep8
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.aa, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.p, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.an ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.p, i64 %i.an ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.ao = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !409, !alias.scope !518, !noalias !513
  %wide.load10 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !409, !alias.scope !518, !noalias !513
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !521, !noalias !518
  store <2 x i64> %wide.load10, ptr %i.ap, align 8, !tbaa !409, !alias.scope !521, !noalias !518
  %i.aq = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !409, !alias.scope !518, !noalias !513
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !409, !alias.scope !518, !noalias !513
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !523

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.as = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !516, !noalias !513
  store i64 %i.as, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !513, !noalias !516
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !516, !noalias !513
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !524

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !411
  store ptr %i.av, ptr %i.k, align 8, !tbaa !408
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.aw, ptr %i.m, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20BigIntToStringRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddiEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = load double, ptr %3, align 8, !tbaa !227
  %i.f = fptoui double %i.e to i64
  %i.g = load i32, ptr %4, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20BigIntToStringRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.i, align 8, !tbaa !525
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.f, ptr %i.j, align 8, !tbaa !527
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.g, ptr %i.k, align 8, !tbaa !528
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !408  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.m, align 8, !tbaa !409
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.p, ptr %i.l, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20BigIntToStringRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.r = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #17 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  store ptr %i.b, ptr %i.ac, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = sub i64 %i.r, %i.s
  %i.ae = add i64 %i.ad, -8                       ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ah = add i64 %i.r, -8
  %i.ai = sub i64 %i.ah, %i.s
  %i.aj = and i64 %i.ai, -8
  %i.ak = add i64 %i.aj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.ak
  %scevgep8 = getelementptr i8, ptr %i.q, i64 %i.ak
  %bound0 = icmp ult ptr %i.ab, %scevgep8
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %i.q, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ao ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.q, i64 %i.ao ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.ap = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !409, !alias.scope !534, !noalias !529
  %wide.load10 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !409, !alias.scope !534, !noalias !529
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !537, !noalias !534
  store <2 x i64> %wide.load10, ptr %i.aq, align 8, !tbaa !409, !alias.scope !537, !noalias !534
  %i.ar = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !409, !alias.scope !534, !noalias !529
  store <2 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !409, !alias.scope !534, !noalias !529
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.at = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !532, !noalias !529
  store i64 %i.at, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !529, !noalias !532
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !532, !noalias !529
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !540

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.am, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.t) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !411
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !408
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ax, ptr %i.n, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20BigIntToStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20BigIntToStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPKcmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.d = load double, ptr %2, align 8, !tbaa !227
  %i.e = fptoui double %i.d to i64
  %i.f = load ptr, ptr %3, align 8, !tbaa !216    ; 3 uses
  %i.g = load i64, ptr %4, align 8, !tbaa !175    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateStringRecordE, i64 16), ptr %i.c, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.i, align 8, !tbaa !541
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !91
  %i.l = icmp eq ptr %i.f, null
  %i.m = icmp ne i64 %i.g, 0
  %or.cond.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.g, ptr %i.a, align 8, !tbaa !175
  %i.n = icmp ugt i64 %i.g, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !176
  %i.p = load i64, ptr %i.a, align 8, !tbaa !175
  store i64 %i.p, ptr %i.k, align 8, !tbaa !147
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.f, align 1, !tbaa !147
  store i8 %i.r, ptr %i.q, align 1, !tbaa !147
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit

_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.s, ptr %i.t, align 8, !tbaa !146
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !240
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.y, align 8, !tbaa !243
  store i16 0, ptr %i.x, align 8, !tbaa !245
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 0, ptr %i.z, align 8, !tbaa !544
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !408 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !409
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !411 ; 10 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #17 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = sub i64 %i.ag, %i.ah
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aw = add i64 %i.ag, -8
  %i.ax = sub i64 %i.aw, %i.ah
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.az
  %scevgep8 = getelementptr i8, ptr %i.af, i64 %i.az
  %bound0 = icmp ult ptr %i.aq, %scevgep8
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.af, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bd ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.af, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.be = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !409, !alias.scope !550, !noalias !545
  %wide.load10 = load <2 x i64>, ptr %i.be, align 8, !tbaa !409, !alias.scope !550, !noalias !545
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !553, !noalias !550
  store <2 x i64> %wide.load10, ptr %i.bf, align 8, !tbaa !409, !alias.scope !553, !noalias !550
  %i.bg = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !409, !alias.scope !550, !noalias !545
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !409, !alias.scope !550, !noalias !545
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !548, !noalias !545
  store i64 %i.bi, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !545, !noalias !548
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !548, !noalias !545
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !556

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !411
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !408
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bm, ptr %i.ac, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN8facebook6hermes7tracing12_GLOBAL__N_120jsonStringToU8StringB5cxx11ERKN6hermes6parser10JSONStringE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %.16.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.std::back_insert_iterator", align 8 ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %.16.val, align 8, !tbaa !216 ; 3 uses
  %.sroa.5.0..16.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..16.val.sroa_idx, align 8, !tbaa !175 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !146
  store i8 0, ptr %i.d, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %1, align 8
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8, !tbaa !216
  %.not = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_S9_PKcSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i
  %i.g = phi ptr [ %i.ak, %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i ], [ %.sroa.0.0.copyload, %bb.a ] ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !147
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !557

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.j, ptr %i.c, align 8, !tbaa !216
  %i.k = load i8, ptr %i.g, align 1, !tbaa !147
  %i.l = sext i8 %i.k to i32
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_.exit.i

_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.l, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.n = icmp ult i32 %.0.i.i, 65536
  br i1 %i.n, label %bb.d, label %bb.f, !prof !557

bb.d:                                             ; preds = %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_.exit.i
  %i.o = trunc i32 %.0.i.i to i8
  %i.p = load ptr, ptr %1, align 8, !tbaa !558    ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !146  ; 4 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !176  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.d
  %i.w = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.u, align 8, !tbaa !147
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %i.z = icmp ugt i64 %i.s, %i.y
  br i1 %i.z, label %bb.e, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.r, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !176
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit.i.i

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.aa = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r
  store i8 %i.o, ptr %i.ab, align 1, !tbaa !147
  store i64 %i.s, ptr %i.q, align 8, !tbaa !146
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !176
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.s
  store i8 0, ptr %i.ad, align 1, !tbaa !147
  br label %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i

bb.f:                                             ; preds = %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_.exit.i
  %i.ae = add i32 %.0.i.i, 196608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.af = lshr i32 %i.ae, 10
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %i.a, align 1, !tbaa !147
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ai = trunc i32 %.0.i.i to i8
  store i8 %i.ai, ptr %i.b, align 1, !tbaa !147
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i

_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i: ; preds = %bb.f, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit.i.i
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !216 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %i.f
  br i1 %i.al, label %.lr.ph.i, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_S9_PKcSB_.exit, !llvm.loop !560

_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_S9_PKcSB_.exit: ; preds = %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPKhmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.d = load double, ptr %2, align 8, !tbaa !227
  %i.e = fptoui double %i.d to i64
  %i.f = load ptr, ptr %3, align 8, !tbaa !216    ; 3 uses
  %i.g = load i64, ptr %4, align 8, !tbaa !175    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateStringRecordE, i64 16), ptr %i.c, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.i, align 8, !tbaa !541
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !91
  %i.l = icmp eq ptr %i.f, null
  %i.m = icmp ne i64 %i.g, 0
  %or.cond.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.g, ptr %i.a, align 8, !tbaa !175
  %i.n = icmp ugt i64 %i.g, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !176
  %i.p = load i64, ptr %i.a, align 8, !tbaa !175
  store i64 %i.p, ptr %i.k, align 8, !tbaa !147
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.f, align 1, !tbaa !147
  store i8 %i.r, ptr %i.q, align 1, !tbaa !147
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit

_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.s, ptr %i.t, align 8, !tbaa !146
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !240
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.y, align 8, !tbaa !243
  store i16 0, ptr %i.x, align 8, !tbaa !245
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 1, ptr %i.z, align 8, !tbaa !544
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !408 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !409
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !411 ; 10 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #17 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = sub i64 %i.ag, %i.ah
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aw = add i64 %i.ag, -8
  %i.ax = sub i64 %i.aw, %i.ah
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.az
  %scevgep8 = getelementptr i8, ptr %i.af, i64 %i.az
  %bound0 = icmp ult ptr %i.aq, %scevgep8
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.af, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bd ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.af, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.be = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !409, !alias.scope !566, !noalias !561
  %wide.load10 = load <2 x i64>, ptr %i.be, align 8, !tbaa !409, !alias.scope !566, !noalias !561
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !569, !noalias !566
  store <2 x i64> %wide.load10, ptr %i.bf, align 8, !tbaa !409, !alias.scope !569, !noalias !566
  %i.bg = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !409, !alias.scope !566, !noalias !561
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !409, !alias.scope !566, !noalias !561
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !571

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !564, !noalias !561
  store i64 %i.bi, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !561, !noalias !564
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !564, !noalias !561
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !572

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !411
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !408
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bm, ptr %i.ac, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPDsmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = load ptr, ptr %3, align 8, !tbaa !248    ; 3 uses
  %i.f = load i64, ptr %4, align 8, !tbaa !175    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateStringRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.h, align 8, !tbaa !541
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %i.k, align 8, !tbaa !146
  store i8 0, ptr %i.j, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !240
  %i.n = icmp eq ptr %i.e, null
  %i.o = icmp ne i64 %i.f, 0
  %or.cond.i.i = and i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %.idx.i.i = shl nuw nsw i64 %i.f, 1             ; 3 uses
  %i.p = icmp ugt i64 %i.f, 7
  br i1 %i.p, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.q, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #18
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.r = add nuw nsw i64 %.idx.i.i, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #17 ; 2 uses
  store ptr %i.s, ptr %i.l, align 8, !tbaa !247
  store i64 %i.f, ptr %i.m, align 8, !tbaa !147
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, %bb.c
  %.pre7.i.i.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i16, ptr %i.e, align 2, !tbaa !245
  store i16 %i.t, ptr %.pre7.i.i.i, align 2, !tbaa !245
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i.i, ptr align 2 %i.e, i64 %.idx.i.i, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit

_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.f, ptr %i.u, align 8, !tbaa !243
  %i.v = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i, i64 %.idx.i.i
  store i16 0, ptr %i.v, align 2, !tbaa !245
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 2, ptr %i.w, align 8, !tbaa !544
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !408  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  store ptr %i.b, ptr %i.y, align 8, !tbaa !409
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

bb.i:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !411 ; 10 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #17 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store ptr %i.b, ptr %i.ao, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ap = sub i64 %i.ad, %i.ae
  %i.aq = add i64 %i.ap, -8                       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.at = add i64 %i.ad, -8
  %i.au = sub i64 %i.at, %i.ae
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.aw
  %scevgep9 = getelementptr i8, ptr %i.ac, i64 %i.aw
  %bound0 = icmp ult ptr %i.an, %scevgep9
  %bound1 = icmp ult ptr %i.ac, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ac, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ba ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.ac, i64 %i.ba ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.bb = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !409, !alias.scope !578, !noalias !573
  %wide.load11 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !409, !alias.scope !578, !noalias !573
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !581, !noalias !578
  store <2 x i64> %wide.load11, ptr %i.bc, align 8, !tbaa !409, !alias.scope !581, !noalias !578
  %i.bd = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !409, !alias.scope !578, !noalias !573
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !409, !alias.scope !578, !noalias !573
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !583

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !576, !noalias !573
  store i64 %i.bf, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !573, !noalias !576
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !576, !noalias !573
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !584

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bi, ptr %i.x, align 8, !tbaa !408
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPKcmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.d = load double, ptr %2, align 8, !tbaa !227
  %i.e = fptoui double %i.d to i64
  %i.f = load ptr, ptr %3, align 8, !tbaa !216    ; 3 uses
  %i.g = load i64, ptr %4, align 8, !tbaa !175    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordE, i64 16), ptr %i.c, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.i, align 8, !tbaa !585
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !91
  %i.l = icmp eq ptr %i.f, null
  %i.m = icmp ne i64 %i.g, 0
  %or.cond.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.g, ptr %i.a, align 8, !tbaa !175
  %i.n = icmp ugt i64 %i.g, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !176
  %i.p = load i64, ptr %i.a, align 8, !tbaa !175
  store i64 %i.p, ptr %i.k, align 8, !tbaa !147
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.f, align 1, !tbaa !147
  store i8 %i.r, ptr %i.q, align 1, !tbaa !147
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit

_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.s, ptr %i.t, align 8, !tbaa !146
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !240
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.y, align 8, !tbaa !243
  store i16 0, ptr %i.x, align 8, !tbaa !245
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 0, ptr %i.z, align 8, !tbaa !587
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !408 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !409
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !411 ; 10 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #17 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = sub i64 %i.ag, %i.ah
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aw = add i64 %i.ag, -8
  %i.ax = sub i64 %i.aw, %i.ah
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.az
  %scevgep8 = getelementptr i8, ptr %i.af, i64 %i.az
  %bound0 = icmp ult ptr %i.aq, %scevgep8
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.af, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bd ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.af, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.be = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !409, !alias.scope !593, !noalias !588
  %wide.load10 = load <2 x i64>, ptr %i.be, align 8, !tbaa !409, !alias.scope !593, !noalias !588
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !596, !noalias !593
  store <2 x i64> %wide.load10, ptr %i.bf, align 8, !tbaa !409, !alias.scope !596, !noalias !593
  %i.bg = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !409, !alias.scope !593, !noalias !588
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !409, !alias.scope !593, !noalias !588
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !598

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !591, !noalias !588
  store i64 %i.bi, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !588, !noalias !591
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !591, !noalias !588
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !599

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !411
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !408
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bm, ptr %i.ac, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPKhmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.d = load double, ptr %2, align 8, !tbaa !227
  %i.e = fptoui double %i.d to i64
  %i.f = load ptr, ptr %3, align 8, !tbaa !216    ; 3 uses
  %i.g = load i64, ptr %4, align 8, !tbaa !175    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordE, i64 16), ptr %i.c, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.i, align 8, !tbaa !585
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !91
  %i.l = icmp eq ptr %i.f, null
  %i.m = icmp ne i64 %i.g, 0
  %or.cond.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.g, ptr %i.a, align 8, !tbaa !175
  %i.n = icmp ugt i64 %i.g, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !176
  %i.p = load i64, ptr %i.a, align 8, !tbaa !175
  store i64 %i.p, ptr %i.k, align 8, !tbaa !147
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.f, align 1, !tbaa !147
  store i8 %i.r, ptr %i.q, align 1, !tbaa !147
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit

_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.s, ptr %i.t, align 8, !tbaa !146
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !240
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.y, align 8, !tbaa !243
  store i16 0, ptr %i.x, align 8, !tbaa !245
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 1, ptr %i.z, align 8, !tbaa !587
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !408 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !409
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !411 ; 10 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #17 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = sub i64 %i.ag, %i.ah
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aw = add i64 %i.ag, -8
  %i.ax = sub i64 %i.aw, %i.ah
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.az
  %scevgep8 = getelementptr i8, ptr %i.af, i64 %i.az
  %bound0 = icmp ult ptr %i.aq, %scevgep8
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.af, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bd ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.af, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.be = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !409, !alias.scope !605, !noalias !600
  %wide.load10 = load <2 x i64>, ptr %i.be, align 8, !tbaa !409, !alias.scope !605, !noalias !600
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !608, !noalias !605
  store <2 x i64> %wide.load10, ptr %i.bf, align 8, !tbaa !409, !alias.scope !608, !noalias !605
  %i.bg = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !409, !alias.scope !605, !noalias !600
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !409, !alias.scope !605, !noalias !600
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !610

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !603, !noalias !600
  store i64 %i.bi, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !600, !noalias !603
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !603, !noalias !600
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !611

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !411
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !408
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bm, ptr %i.ac, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPDsmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = load ptr, ptr %3, align 8, !tbaa !248    ; 3 uses
  %i.f = load i64, ptr %4, align 8, !tbaa !175    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.h, align 8, !tbaa !585
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %i.k, align 8, !tbaa !146
  store i8 0, ptr %i.j, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !240
  %i.n = icmp eq ptr %i.e, null
  %i.o = icmp ne i64 %i.f, 0
  %or.cond.i.i = and i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %.idx.i.i = shl nuw nsw i64 %i.f, 1             ; 3 uses
  %i.p = icmp ugt i64 %i.f, 7
  br i1 %i.p, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.q, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #18
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.r = add nuw nsw i64 %.idx.i.i, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #17 ; 2 uses
  store ptr %i.s, ptr %i.l, align 8, !tbaa !247
  store i64 %i.f, ptr %i.m, align 8, !tbaa !147
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, %bb.c
  %.pre7.i.i.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i16, ptr %i.e, align 2, !tbaa !245
  store i16 %i.t, ptr %.pre7.i.i.i, align 2, !tbaa !245
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i.i, ptr align 2 %i.e, i64 %.idx.i.i, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit

_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.f, ptr %i.u, align 8, !tbaa !243
  %i.v = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i, i64 %.idx.i.i
  store i16 0, ptr %i.v, align 2, !tbaa !245
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 2, ptr %i.w, align 8, !tbaa !587
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !408  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  store ptr %i.b, ptr %i.y, align 8, !tbaa !409
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

bb.i:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !411 ; 10 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #17 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store ptr %i.b, ptr %i.ao, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ap = sub i64 %i.ad, %i.ae
  %i.aq = add i64 %i.ap, -8                       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.at = add i64 %i.ad, -8
  %i.au = sub i64 %i.at, %i.ae
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.aw
  %scevgep9 = getelementptr i8, ptr %i.ac, i64 %i.aw
  %bound0 = icmp ult ptr %i.an, %scevgep9
  %bound1 = icmp ult ptr %i.ac, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ac, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ba ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.ac, i64 %i.ba ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.bb = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !409, !alias.scope !617, !noalias !612
  %wide.load11 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !409, !alias.scope !617, !noalias !612
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !620, !noalias !617
  store <2 x i64> %wide.load11, ptr %i.bc, align 8, !tbaa !409, !alias.scope !620, !noalias !617
  %i.bd = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !409, !alias.scope !617, !noalias !612
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !409, !alias.scope !617, !noalias !612
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !615, !noalias !612
  store i64 %i.bf, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !612, !noalias !615
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !615, !noalias !612
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !623

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bi, ptr %i.x, align 8, !tbaa !408
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31CreatePropNameIDWithValueRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace31CreatePropNameIDWithValueRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !624
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !426
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !408  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !409
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreatePropNameIDWithValueRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = sub i64 %i.n, %i.o
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.n, -8
  %i.ae = sub i64 %i.ad, %i.o
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ag
  %scevgep9 = getelementptr i8, ptr %i.m, i64 %i.ag
  %bound0 = icmp ult ptr %i.x, %scevgep9
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.m, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.m, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.al = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !409, !alias.scope !631, !noalias !626
  %wide.load11 = load <2 x i64>, ptr %i.al, align 8, !tbaa !409, !alias.scope !631, !noalias !626
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !634, !noalias !631
  store <2 x i64> %wide.load11, ptr %i.am, align 8, !tbaa !409, !alias.scope !634, !noalias !631
  %i.an = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !409, !alias.scope !631, !noalias !626
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !409, !alias.scope !631, !noalias !626
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !636

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !629, !noalias !626
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !626, !noalias !629
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !629, !noalias !626
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !637

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !411
  store ptr %i.as, ptr %i.h, align 8, !tbaa !408
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.at, ptr %i.j, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreatePropNameIDWithValueRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreatePropNameIDWithValueRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreateHostObjectRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !452
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22CreateHostObjectRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !408  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !409
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreateHostObjectRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #17 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = sub i64 %i.m, %i.n
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ac = add i64 %i.m, -8
  %i.ad = sub i64 %i.ac, %i.n
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.af
  %scevgep6 = getelementptr i8, ptr %i.l, i64 %i.af
  %bound0 = icmp ult ptr %i.w, %scevgep6
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.w, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.l, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.ak = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !409, !alias.scope !643, !noalias !638
  %wide.load8 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !409, !alias.scope !643, !noalias !638
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !646, !noalias !643
  store <2 x i64> %wide.load8, ptr %i.al, align 8, !tbaa !409, !alias.scope !646, !noalias !643
  %i.am = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !409, !alias.scope !643, !noalias !638
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !409, !alias.scope !643, !noalias !638
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !648

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !641, !noalias !638
  store i64 %i.ao, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !638, !noalias !641
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !641, !noalias !638
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !649

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !408
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.as, ptr %i.i, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreateHostObjectRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreateHostObjectRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_24CreateHostFunctionRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddRjEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = load double, ptr %3, align 8, !tbaa !227
  %i.f = fptoui double %i.e to i64
  %i.g = load i32, ptr %4, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !175
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.i, align 8, !tbaa !452
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace24CreateHostFunctionRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = trunc i64 %i.f to i32
  store i32 %i.k, ptr %i.j, align 8, !tbaa !650
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.g, ptr %i.l, align 4, !tbaa !652
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !408  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.n, align 8, !tbaa !409
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.q, ptr %i.m, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_24CreateHostFunctionRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.s = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #17 ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, %i.n
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = sub i64 %i.s, %i.t
  %i.af = add i64 %i.ae, -8                       ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ai = add i64 %i.s, -8
  %i.aj = sub i64 %i.ai, %i.t
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.al
  %scevgep8 = getelementptr i8, ptr %i.r, i64 %i.al
  %bound0 = icmp ult ptr %i.ac, %scevgep8
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.r, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.ap ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.r, i64 %i.ap ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.aq = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !409, !alias.scope !658, !noalias !653
  %wide.load10 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !409, !alias.scope !658, !noalias !653
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !661, !noalias !658
  store <2 x i64> %wide.load10, ptr %i.ar, align 8, !tbaa !409, !alias.scope !661, !noalias !658
  %i.as = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !409, !alias.scope !658, !noalias !653
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !409, !alias.scope !658, !noalias !653
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !663

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.au = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !656, !noalias !653
  store i64 %i.au, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !653, !noalias !656
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !656, !noalias !653
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !664

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ac, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.u) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !408
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_24CreateHostFunctionRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_24CreateHostFunctionRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17GetPropertyRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17GetPropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !665
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !426
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !408  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !409
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17GetPropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = sub i64 %i.n, %i.o
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.n, -8
  %i.ae = sub i64 %i.ad, %i.o
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ag
  %scevgep9 = getelementptr i8, ptr %i.m, i64 %i.ag
  %bound0 = icmp ult ptr %i.x, %scevgep9
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.m, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.m, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.al = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !409, !alias.scope !672, !noalias !667
  %wide.load11 = load <2 x i64>, ptr %i.al, align 8, !tbaa !409, !alias.scope !672, !noalias !667
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !675, !noalias !672
  store <2 x i64> %wide.load11, ptr %i.am, align 8, !tbaa !409, !alias.scope !675, !noalias !672
  %i.an = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !409, !alias.scope !672, !noalias !667
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !409, !alias.scope !672, !noalias !667
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !677

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !670, !noalias !667
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !667, !noalias !670
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !670, !noalias !667
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !678

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !411
  store ptr %i.as, ptr %i.h, align 8, !tbaa !408
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.at, ptr %i.j, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17GetPropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17GetPropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17SetPropertyRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueESB_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17 ; 8 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.f, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17SetPropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.g, align 8, !tbaa !679
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !426
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !147
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !408  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.j, align 8, !tbaa !409
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17SetPropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.o = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #17 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.b, ptr %i.z, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = sub i64 %i.o, %i.p
  %i.ab = add i64 %i.aa, -8                       ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ae = add i64 %i.o, -8
  %i.af = sub i64 %i.ae, %i.p
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ah
  %scevgep10 = getelementptr i8, ptr %i.n, i64 %i.ah
  %bound0 = icmp ult ptr %i.y, %scevgep10
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.y, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.n, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.al ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.n, i64 %i.al ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.am = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !409, !alias.scope !686, !noalias !681
  %wide.load12 = load <2 x i64>, ptr %i.am, align 8, !tbaa !409, !alias.scope !686, !noalias !681
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !689, !noalias !686
  store <2 x i64> %wide.load12, ptr %i.an, align 8, !tbaa !409, !alias.scope !689, !noalias !686
  %i.ao = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !409, !alias.scope !686, !noalias !681
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !409, !alias.scope !686, !noalias !681
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !691

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.preheader14:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !684, !noalias !681
  store i64 %i.aq, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !681, !noalias !684
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !684, !noalias !681
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !692

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.y, ptr %i.a, align 8, !tbaa !411
  store ptr %i.at, ptr %i.i, align 8, !tbaa !408
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.au, ptr %i.k, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17SetPropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17SetPropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17HasPropertyRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17HasPropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !693
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !426
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !408  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !409
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17HasPropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = sub i64 %i.n, %i.o
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.n, -8
  %i.ae = sub i64 %i.ad, %i.o
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ag
  %scevgep9 = getelementptr i8, ptr %i.m, i64 %i.ag
  %bound0 = icmp ult ptr %i.x, %scevgep9
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.m, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.m, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.al = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !409, !alias.scope !700, !noalias !695
  %wide.load11 = load <2 x i64>, ptr %i.al, align 8, !tbaa !409, !alias.scope !700, !noalias !695
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !703, !noalias !700
  store <2 x i64> %wide.load11, ptr %i.am, align 8, !tbaa !409, !alias.scope !703, !noalias !700
  %i.an = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !409, !alias.scope !700, !noalias !695
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !409, !alias.scope !700, !noalias !695
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !705

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !698, !noalias !695
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !695, !noalias !698
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !698, !noalias !695
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !706

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !411
  store ptr %i.as, ptr %i.h, align 8, !tbaa !408
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.at, ptr %i.j, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17HasPropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17HasPropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20DeletePropertyRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20DeletePropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !707
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !426
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !408  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !409
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20DeletePropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = sub i64 %i.n, %i.o
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.n, -8
  %i.ae = sub i64 %i.ad, %i.o
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ag
  %scevgep9 = getelementptr i8, ptr %i.m, i64 %i.ag
  %bound0 = icmp ult ptr %i.x, %scevgep9
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.m, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.m, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.al = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !409, !alias.scope !714, !noalias !709
  %wide.load11 = load <2 x i64>, ptr %i.al, align 8, !tbaa !409, !alias.scope !714, !noalias !709
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !717, !noalias !714
  store <2 x i64> %wide.load11, ptr %i.am, align 8, !tbaa !409, !alias.scope !717, !noalias !714
  %i.an = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !409, !alias.scope !714, !noalias !709
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !409, !alias.scope !714, !noalias !709
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !719

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !712, !noalias !709
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !709, !noalias !712
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !712, !noalias !709
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !720

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !411
  store ptr %i.as, ptr %i.h, align 8, !tbaa !408
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.at, ptr %i.j, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20DeletePropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20DeletePropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22GetPropertyNamesRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22GetPropertyNamesRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !721
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !408  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !409
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22GetPropertyNamesRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #17 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = sub i64 %i.m, %i.n
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ac = add i64 %i.m, -8
  %i.ad = sub i64 %i.ac, %i.n
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.af
  %scevgep6 = getelementptr i8, ptr %i.l, i64 %i.af
  %bound0 = icmp ult ptr %i.w, %scevgep6
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.w, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.l, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.ak = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !409, !alias.scope !728, !noalias !723
  %wide.load8 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !409, !alias.scope !728, !noalias !723
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !731, !noalias !728
  store <2 x i64> %wide.load8, ptr %i.al, align 8, !tbaa !409, !alias.scope !731, !noalias !728
  %i.am = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !409, !alias.scope !728, !noalias !723
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !409, !alias.scope !728, !noalias !723
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !733

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !726, !noalias !723
  store i64 %i.ao, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !723, !noalias !726
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !726, !noalias !723
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !734

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !408
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.as, ptr %i.i, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22GetPropertyNamesRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22GetPropertyNamesRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17CreateArrayRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = load i64, ptr %3, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17CreateArrayRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.g, align 8, !tbaa !735
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.e, ptr %i.h, align 8, !tbaa !737
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !408  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.j, align 8, !tbaa !409
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17CreateArrayRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.o = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #17 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.b, ptr %i.z, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = sub i64 %i.o, %i.p
  %i.ab = add i64 %i.aa, -8                       ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ae = add i64 %i.o, -8
  %i.af = sub i64 %i.ae, %i.p
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ah
  %scevgep7 = getelementptr i8, ptr %i.n, i64 %i.ah
  %bound0 = icmp ult ptr %i.y, %scevgep7
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.y, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.n, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.al ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.n, i64 %i.al ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.am = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !409, !alias.scope !743, !noalias !738
  %wide.load9 = load <2 x i64>, ptr %i.am, align 8, !tbaa !409, !alias.scope !743, !noalias !738
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !746, !noalias !743
  store <2 x i64> %wide.load9, ptr %i.an, align 8, !tbaa !409, !alias.scope !746, !noalias !743
  %i.ao = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !409, !alias.scope !743, !noalias !738
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !409, !alias.scope !743, !noalias !738
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !748

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !741, !noalias !738
  store i64 %i.aq, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !738, !noalias !741
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !741, !noalias !738
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !749

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.y, ptr %i.a, align 8, !tbaa !411
  store ptr %i.at, ptr %i.i, align 8, !tbaa !408
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.au, ptr %i.k, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17CreateArrayRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17CreateArrayRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_15ArrayReadRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = load double, ptr %3, align 8, !tbaa !227
  %i.f = fptoui double %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace15ArrayReadRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.h, align 8, !tbaa !750
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.f, ptr %i.i, align 8, !tbaa !752
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !408  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.k, align 8, !tbaa !409
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15ArrayReadRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.p = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #17 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = sub i64 %i.p, %i.q
  %i.ac = add i64 %i.ab, -8                       ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.af = add i64 %i.p, -8
  %i.ag = sub i64 %i.af, %i.q
  %i.ah = and i64 %i.ag, -8
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.ai
  %scevgep7 = getelementptr i8, ptr %i.o, i64 %i.ai
  %bound0 = icmp ult ptr %i.z, %scevgep7
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.z, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.o, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.am ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.o, i64 %i.am ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.an = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !409, !alias.scope !758, !noalias !753
  %wide.load9 = load <2 x i64>, ptr %i.an, align 8, !tbaa !409, !alias.scope !758, !noalias !753
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !761, !noalias !758
  store <2 x i64> %wide.load9, ptr %i.ao, align 8, !tbaa !409, !alias.scope !761, !noalias !758
  %i.ap = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !409, !alias.scope !758, !noalias !753
  store <2 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !409, !alias.scope !758, !noalias !753
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !763

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.ar = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !756, !noalias !753
  store i64 %i.ar, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !753, !noalias !756
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !756, !noalias !753
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !764

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ak, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.z, ptr %i.a, align 8, !tbaa !411
  store ptr %i.au, ptr %i.j, align 8, !tbaa !408
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.av, ptr %i.l, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15ArrayReadRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15ArrayReadRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_16ArrayWriteRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17 ; 8 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = load double, ptr %3, align 8, !tbaa !227
  %i.f = fptoui double %i.e to i64
  %.sroa.0.0.copyload = load i32, ptr %4, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.g, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace16ArrayWriteRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.h, align 8, !tbaa !765
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.f, ptr %i.i, align 8, !tbaa !767
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %.sroa.0.0.copyload, ptr %i.j, align 8, !tbaa !426
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.21.0.copyload, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !147
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !408  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.l, align 8, !tbaa !409
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.k, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_16ArrayWriteRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.q = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #17 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = sub i64 %i.q, %i.r
  %i.ad = add i64 %i.ac, -8                       ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ag = add i64 %i.q, -8
  %i.ah = sub i64 %i.ag, %i.r
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.aj
  %scevgep10 = getelementptr i8, ptr %i.p, i64 %i.aj
  %bound0 = icmp ult ptr %i.aa, %scevgep10
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.aa, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.p, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.an ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.p, i64 %i.an ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.ao = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !409, !alias.scope !773, !noalias !768
  %wide.load12 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !409, !alias.scope !773, !noalias !768
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !776, !noalias !773
  store <2 x i64> %wide.load12, ptr %i.ap, align 8, !tbaa !409, !alias.scope !776, !noalias !773
  %i.aq = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !409, !alias.scope !773, !noalias !768
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !409, !alias.scope !773, !noalias !768
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !778

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.preheader14:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.as = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !771, !noalias !768
  store i64 %i.as, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !768, !noalias !771
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !771, !noalias !768
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !779

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !411
  store ptr %i.av, ptr %i.k, align 8, !tbaa !408
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.aw, ptr %i.m, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_16ArrayWriteRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_16ArrayWriteRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20CallFromNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueESt6vectorISB_SaISB_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 11 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !780
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !426
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !785  ; 3 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !294    ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.thread, label %bb.b

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.thread: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr null, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !297
  br label %_ZN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.n, 9223372036854775792
  br i1 %i.q, label %bb.c, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i, !prof !209

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i: ; preds = %bb.b
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #17 ; 3 uses
  store ptr %i.r, ptr %i.h, align 8, !tbaa !294
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.s, ptr %i.t, align 8, !tbaa !297
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !786
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.j
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !787

_ZN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.thread
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.w, align 8, !tbaa !785
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !408  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  store ptr %i.b, ptr %i.y, align 8, !tbaa !409
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20CallFromNativeRecordEEEERS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !411 ; 10 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #17 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store ptr %i.b, ptr %i.ao, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ap = sub i64 %i.ad, %i.ae
  %i.aq = add i64 %i.ap, -8                       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.at = add i64 %i.ad, -8
  %i.au = sub i64 %i.at, %i.ae
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.aw
  %scevgep17 = getelementptr i8, ptr %i.ac, i64 %i.aw
  %bound0 = icmp ult ptr %i.an, %scevgep17
  %bound1 = icmp ult ptr %i.ac, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ac, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ba ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.ac, i64 %i.ba ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.bb = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 8, !tbaa !409, !alias.scope !793, !noalias !788
  %wide.load19 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !409, !alias.scope !793, !noalias !788
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !796, !noalias !793
  store <2 x i64> %wide.load19, ptr %i.bc, align 8, !tbaa !409, !alias.scope !796, !noalias !793
  %i.bd = getelementptr i8, ptr %next.gep18, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep18, align 8, !tbaa !409, !alias.scope !793, !noalias !788
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !409, !alias.scope !793, !noalias !788
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !798

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader21

.lr.ph.i.i.i.i.i.preheader21:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader21 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader21 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !791, !noalias !788
  store i64 %i.bf, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !788, !noalias !791
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !791, !noalias !788
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !799

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bi, ptr %i.x, align 8, !tbaa !408
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20CallFromNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20CallFromNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_"(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !212  ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not12.i = icmp eq i64 %i.d, 0
  br i1 %.not12.i, label %"_ZSt9transformIPKPKN6hermes6parser9JSONValueESt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaISD_EEEZZNSB_12_GLOBAL__N_18getTraceEPNS1_9JSONArrayESt8optionalImEENK3$_0clESJ_EUlS4_E_ET0_T_SP_SO_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i, %.lr.ph.i
  %i.j = phi ptr [ null, %.lr.ph.i ], [ %i.az, %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i ] ; 7 uses
  %.013.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.ba, %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %.013.i, align 8, !tbaa !62 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !64
  %.not.i.i = icmp eq i32 %i.l, 2
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.100) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !159
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !162  ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !91
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.q, ptr %i.a, align 8, !tbaa !175
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !176
  %i.t = load i64, ptr %i.a, align 8, !tbaa !175
  store i64 %i.t, ptr %i.f, align 8, !tbaa !147
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %i.s, %bb.g ], [ %i.f, %bb.f ] ; 2 uses
  switch i64 %i.q, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !147
  store i8 %i.v, ptr %i.u, align 1, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  store i64 %i.w, ptr %i.g, align 8, !tbaa !146
  %i.x = load ptr, ptr %2, align 8, !tbaa !176
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.z = call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace6decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #16 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !176   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.f
  br i1 %i.ab, label %"_ZZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_ENKUlPKNS4_9JSONValueEE_clESC_.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !147
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #19
  br label %"_ZZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_ENKUlPKNS4_9JSONValueEE_clESC_.exit.i"

"_ZZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_ENKUlPKNS4_9JSONValueEE_clESC_.exit.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.ae = extractvalue { i32, i64 } %i.z, 0       ; 2 uses
  %i.af = extractvalue { i32, i64 } %i.z, 1       ; 2 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !297
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.ag
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %"_ZZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_ENKUlPKNS4_9JSONValueEE_clESC_.exit.i"
  store i32 %i.ae, ptr %i.j, align 8, !tbaa !426
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.af, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !147
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !785
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i

bb.k:                                             ; preds = %"_ZZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_ENKUlPKNS4_9JSONValueEE_clESC_.exit.i"
  %i.ai = load ptr, ptr %0, align 8, !tbaa !294   ; 5 uses
  %i.aj = ptrtoint ptr %i.j to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775792
  br i1 %i.am, label %bb.l, label %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.k
  %i.an = ashr exact i64 %i.al, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ao, i64 576460752303423487)
  %i.ar = select i1 %i.ap, i64 576460752303423487, i64 %i.aq ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #17 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al ; 2 uses
  store i32 %i.ae, ptr %i.au, align 8, !tbaa !426
  %.sroa.58.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.af, ptr %.sroa.58.0..sroa_idx9.i, align 8, !tbaa !147
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.j
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.at, %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !786, !alias.scope !800
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !804

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.al) #19
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i
  store ptr %i.at, ptr %0, align 8, !tbaa !294
  store ptr %i.ax, ptr %i.h, align 8, !tbaa !785
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ar
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !297
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i: ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, %bb.j
  %i.az = phi ptr [ %i.ax, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i ], [ %i.ah, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, %i.e
  br i1 %.not.i, label %"_ZSt9transformIPKPKN6hermes6parser9JSONValueESt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaISD_EEEZZNSB_12_GLOBAL__N_18getTraceEPNS1_9JSONArrayESt8optionalImEENK3$_0clESJ_EUlS4_E_ET0_T_SP_SO_T1_.exit", label %bb.b, !llvm.loop !805

"_ZSt9transformIPKPKN6hermes6parser9JSONValueESt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaISD_EEEZZNSB_12_GLOBAL__N_18getTraceEPNS1_9JSONArrayESt8optionalImEENK3$_0clESJ_EUlS4_E_ET0_T_SP_SO_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_25ConstructFromNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueESt6vectorISB_SaISB_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 11 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !780
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !426
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !785  ; 3 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !294    ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i.thread, label %bb.b

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i.thread: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr null, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !297
  br label %_ZN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.n, 9223372036854775792
  br i1 %i.q, label %bb.c, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i, !prof !209

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i: ; preds = %bb.b
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #17 ; 3 uses
  store ptr %i.r, ptr %i.h, align 8, !tbaa !294
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.s, ptr %i.t, align 8, !tbaa !297
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !786
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !787

_ZN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i.thread
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.w, align 8, !tbaa !785
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !408  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  store ptr %i.b, ptr %i.y, align 8, !tbaa !409
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_25ConstructFromNativeRecordEEEERS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !411 ; 10 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #17 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store ptr %i.b, ptr %i.ao, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ap = sub i64 %i.ad, %i.ae
  %i.aq = add i64 %i.ap, -8                       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.at = add i64 %i.ad, -8
  %i.au = sub i64 %i.at, %i.ae
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.aw
  %scevgep17 = getelementptr i8, ptr %i.ac, i64 %i.aw
  %bound0 = icmp ult ptr %i.an, %scevgep17
  %bound1 = icmp ult ptr %i.ac, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ac, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ba ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.ac, i64 %i.ba ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.bb = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 8, !tbaa !409, !alias.scope !811, !noalias !806
  %wide.load19 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !409, !alias.scope !811, !noalias !806
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !814, !noalias !811
  store <2 x i64> %wide.load19, ptr %i.bc, align 8, !tbaa !409, !alias.scope !814, !noalias !811
  %i.bd = getelementptr i8, ptr %next.gep18, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep18, align 8, !tbaa !409, !alias.scope !811, !noalias !806
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !409, !alias.scope !811, !noalias !806
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !816

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader21

.lr.ph.i.i.i.i.i.preheader21:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader21 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader21 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !809, !noalias !806
  store i64 %i.bf, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !806, !noalias !809
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !809, !noalias !806
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !817

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bi, ptr %i.x, align 8, !tbaa !408
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_25ConstructFromNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_25ConstructFromNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22ReturnFromNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !147
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22ReturnFromNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !408  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.f, align 8, !tbaa !409
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22ReturnFromNativeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #17 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.b, ptr %i.v, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = sub i64 %i.k, %i.l
  %i.x = add i64 %i.w, -8                         ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.k, -8
  %i.ab = sub i64 %i.aa, %i.l
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ad
  %scevgep8 = getelementptr i8, ptr %i.j, i64 %i.ad
  %bound0 = icmp ult ptr %i.u, %scevgep8
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.j, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ah ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.j, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.ai = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !409, !alias.scope !823, !noalias !818
  %wide.load10 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !409, !alias.scope !823, !noalias !818
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !826, !noalias !823
  store <2 x i64> %wide.load10, ptr %i.aj, align 8, !tbaa !409, !alias.scope !826, !noalias !823
  %i.ak = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !409, !alias.scope !823, !noalias !818
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !409, !alias.scope !823, !noalias !818
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !828

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.am = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !821, !noalias !818
  store i64 %i.am, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !818, !noalias !821
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !821, !noalias !818
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !829

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !408
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22ReturnFromNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22ReturnFromNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20ReturnToNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !147
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20ReturnToNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !408  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.f, align 8, !tbaa !409
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20ReturnToNativeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #17 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.b, ptr %i.v, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = sub i64 %i.k, %i.l
  %i.x = add i64 %i.w, -8                         ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.k, -8
  %i.ab = sub i64 %i.aa, %i.l
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ad
  %scevgep8 = getelementptr i8, ptr %i.j, i64 %i.ad
  %bound0 = icmp ult ptr %i.u, %scevgep8
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.j, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ah ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.j, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.ai = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !409, !alias.scope !835, !noalias !830
  %wide.load10 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !409, !alias.scope !835, !noalias !830
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !838, !noalias !835
  store <2 x i64> %wide.load10, ptr %i.aj, align 8, !tbaa !409, !alias.scope !838, !noalias !835
  %i.ak = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !409, !alias.scope !835, !noalias !830
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !409, !alias.scope !835, !noalias !830
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !840

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.am = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !833, !noalias !830
  store i64 %i.am, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !830, !noalias !833
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !833, !noalias !830
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !841

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !408
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20ReturnToNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20ReturnToNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CallToNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueESt6vectorISB_SaISB_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 11 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !780
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !426
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !785  ; 3 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !294    ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.thread, label %bb.b

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.thread: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr null, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !297
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.n, 9223372036854775792
  br i1 %i.q, label %bb.c, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i, !prof !209

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i: ; preds = %bb.b
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #17 ; 3 uses
  store ptr %i.r, ptr %i.h, align 8, !tbaa !294
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.s, ptr %i.t, align 8, !tbaa !297
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !786
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.j
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !787

_ZN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.thread
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.w, align 8, !tbaa !785
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !408  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  store ptr %i.b, ptr %i.y, align 8, !tbaa !409
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CallToNativeRecordEEEERS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !411 ; 10 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #17 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store ptr %i.b, ptr %i.ao, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ap = sub i64 %i.ad, %i.ae
  %i.aq = add i64 %i.ap, -8                       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.at = add i64 %i.ad, -8
  %i.au = sub i64 %i.at, %i.ae
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.aw
  %scevgep17 = getelementptr i8, ptr %i.ac, i64 %i.aw
  %bound0 = icmp ult ptr %i.an, %scevgep17
  %bound1 = icmp ult ptr %i.ac, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ac, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ba ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.ac, i64 %i.ba ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.bb = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 8, !tbaa !409, !alias.scope !847, !noalias !842
  %wide.load19 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !409, !alias.scope !847, !noalias !842
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !850, !noalias !847
  store <2 x i64> %wide.load19, ptr %i.bc, align 8, !tbaa !409, !alias.scope !850, !noalias !847
  %i.bd = getelementptr i8, ptr %next.gep18, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep18, align 8, !tbaa !409, !alias.scope !847, !noalias !842
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !409, !alias.scope !847, !noalias !842
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !852

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader21

.lr.ph.i.i.i.i.i.preheader21:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader21 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader21 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !845, !noalias !842
  store i64 %i.bf, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !842, !noalias !845
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !845, !noalias !842
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !853

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bi, ptr %i.x, align 8, !tbaa !408
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CallToNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CallToNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_23GetPropertyNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddPKcEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 10 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.e = load double, ptr %2, align 8, !tbaa !227
  %i.f = fptoui double %i.e to i64
  %i.g = load double, ptr %3, align 8, !tbaa !227
  %i.h = fptoui double %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.i = load ptr, ptr %4, align 8, !tbaa !216    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !91
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.l, ptr %i.b, align 8, !tbaa !175
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #16 ; 2 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !176
  %i.o = load i64, ptr %i.b, align 8, !tbaa !175
  store i64 %i.o, ptr %i.j, align 8, !tbaa !147
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.i, align 1, !tbaa !147
  store i8 %i.q, ptr %i.p, align 1, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.r = load i64, ptr %i.b, align 8, !tbaa !175  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !146
  %i.t = load ptr, ptr %5, align 8, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.v, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.f, ptr %i.w, align 8, !tbaa !854
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %i.x, align 8, !tbaa !856
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !91
  %i.aa = load ptr, ptr %5, align 8, !tbaa !176   ; 2 uses
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !146 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !175
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !176
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !175
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !147
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.af = phi ptr [ %i.ad, %bb.g ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  switch i64 %i.ab, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !147
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !147
  br label %_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !175 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !146
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !176
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !408 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.d, ptr %i.am, align 8, !tbaa !409
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit

bb.k:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !411 ; 10 uses
  %i.ar = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #17 ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  store ptr %i.d, ptr %i.bc, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.aq, %i.am
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.bd = sub i64 %i.ar, %i.as
  %i.be = add i64 %i.bd, -8                       ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bh = add i64 %i.ar, -8
  %i.bi = sub i64 %i.bh, %i.as
  %i.bj = and i64 %i.bi, -8
  %i.bk = add i64 %i.bj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.bk
  %scevgep11 = getelementptr i8, ptr %i.aq, i64 %i.bk
  %bound0 = icmp ult ptr %i.bb, %scevgep11
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 4611686018427387900     ; 3 uses
  %i.bl = shl i64 %n.vec, 3                       ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.bl  ; 2 uses
  %i.bn = getelementptr i8, ptr %i.aq, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bo ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.aq, i64 %i.bo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.bp = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !409, !alias.scope !862, !noalias !857
  %wide.load13 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !409, !alias.scope !862, !noalias !857
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !865, !noalias !862
  store <2 x i64> %wide.load13, ptr %i.bq, align 8, !tbaa !409, !alias.scope !865, !noalias !862
  %i.br = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !409, !alias.scope !862, !noalias !857
  store <2 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !409, !alias.scope !862, !noalias !857
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !867

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !860, !noalias !857
  store i64 %i.bt, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !857, !noalias !860
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !860, !noalias !857
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !868

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bb, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bm, %middle.block ], [ %i.bv, %.lr.ph.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.at) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.bb, ptr %i.c, align 8, !tbaa !411
  store ptr %i.bw, ptr %i.al, align 8, !tbaa !408
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bx, ptr %i.an, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  %i.by = load ptr, ptr %5, align 8, !tbaa !176   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.j
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit
  %i.ca = load i64, ptr %i.j, align 8, !tbaa !147
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_29GetPropertyNativeReturnRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !147
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace29GetPropertyNativeReturnRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !408  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.f, align 8, !tbaa !409
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29GetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #17 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.b, ptr %i.v, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = sub i64 %i.k, %i.l
  %i.x = add i64 %i.w, -8                         ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.k, -8
  %i.ab = sub i64 %i.aa, %i.l
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ad
  %scevgep8 = getelementptr i8, ptr %i.j, i64 %i.ad
  %bound0 = icmp ult ptr %i.u, %scevgep8
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.j, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ah ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.j, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.ai = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !409, !alias.scope !874, !noalias !869
  %wide.load10 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !409, !alias.scope !874, !noalias !869
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !877, !noalias !874
  store <2 x i64> %wide.load10, ptr %i.aj, align 8, !tbaa !409, !alias.scope !877, !noalias !874
  %i.ak = getelementptr i8, ptr %next.gep9, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !409, !alias.scope !874, !noalias !869
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !409, !alias.scope !874, !noalias !869
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !879

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.am = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !872, !noalias !869
  store i64 %i.am, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !869, !noalias !872
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !872, !noalias !869
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !880

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !408
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29GetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29GetPropertyNativeReturnRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_23SetPropertyNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddPKcNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17 ; 11 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.e = load double, ptr %2, align 8, !tbaa !227
  %i.f = fptoui double %i.e to i64
  %i.g = load double, ptr %3, align 8, !tbaa !227
  %i.h = fptoui double %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.i = load ptr, ptr %4, align 8, !tbaa !216    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !91
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.l, ptr %i.b, align 8, !tbaa !175
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #16 ; 2 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !176
  %i.o = load i64, ptr %i.b, align 8, !tbaa !175
  store i64 %i.o, ptr %i.j, align 8, !tbaa !147
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.i, align 1, !tbaa !147
  store i8 %i.q, ptr %i.p, align 1, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.r = load i64, ptr %i.b, align 8, !tbaa !175  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !146
  %i.t = load ptr, ptr %7, align 8, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.v, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.f, ptr %i.w, align 8, !tbaa !854
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %i.x, align 8, !tbaa !856
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !91
  %i.aa = load ptr, ptr %7, align 8, !tbaa !176   ; 2 uses
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !146 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !175
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !176
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !175
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !147
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.af = phi ptr [ %i.ad, %bb.g ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  switch i64 %i.ab, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !147
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !147
  br label %_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit

_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !175 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !146
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !176
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !786
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !408 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit
  store ptr %i.d, ptr %i.an, align 8, !tbaa !409
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit

bb.k:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !411 ; 10 uses
  %i.as = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ba, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #17 ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au
  store ptr %i.d, ptr %i.bd, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.ar, %i.an
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.be = sub i64 %i.as, %i.at
  %i.bf = add i64 %i.be, -8                       ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bi = add i64 %i.as, -8
  %i.bj = sub i64 %i.bi, %i.at
  %i.bk = and i64 %i.bj, -8
  %i.bl = add i64 %i.bk, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bc, i64 %i.bl
  %scevgep12 = getelementptr i8, ptr %i.ar, i64 %i.bl
  %bound0 = icmp ult ptr %i.bc, %scevgep12
  %bound1 = icmp ult ptr %i.ar, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bc, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.ar, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bp ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.ar, i64 %i.bp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.bq = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 8, !tbaa !409, !alias.scope !886, !noalias !881
  %wide.load14 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !409, !alias.scope !886, !noalias !881
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !889, !noalias !886
  store <2 x i64> %wide.load14, ptr %i.br, align 8, !tbaa !409, !alias.scope !889, !noalias !886
  %i.bs = getelementptr i8, ptr %next.gep13, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep13, align 8, !tbaa !409, !alias.scope !886, !noalias !881
  store <2 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !409, !alias.scope !886, !noalias !881
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !891

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader16

.lr.ph.i.i.i.i.i.preheader16:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bc, %vector.memcheck ], [ %i.bc, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader16 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader16 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.bu = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !884, !noalias !881
  store i64 %i.bu, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !881, !noalias !884
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !884, !noalias !881
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !892

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bn, %middle.block ], [ %i.bw, %.lr.ph.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.au) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.bc, ptr %i.c, align 8, !tbaa !411
  store ptr %i.bx, ptr %i.am, align 8, !tbaa !408
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.by, ptr %i.ao, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  %i.bz = load ptr, ptr %7, align 8, !tbaa !176   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.j
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit
  %i.cb = load i64, ptr %i.j, align 8, !tbaa !147
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_29SetPropertyNativeReturnRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace29SetPropertyNativeReturnRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !408  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.e, align 8, !tbaa !409
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29SetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.j = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #17 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store ptr %i.b, ptr %i.u, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, %i.e
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = sub i64 %i.j, %i.k
  %i.w = add i64 %i.v, -8                         ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.z = add i64 %i.j, -8
  %i.aa = sub i64 %i.z, %i.k
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ac
  %scevgep5 = getelementptr i8, ptr %i.i, i64 %i.ac
  %bound0 = icmp ult ptr %i.t, %scevgep5
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.t, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.i, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ag ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.i, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.ah = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !409, !alias.scope !898, !noalias !893
  %wide.load7 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !409, !alias.scope !898, !noalias !893
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !901, !noalias !898
  store <2 x i64> %wide.load7, ptr %i.ai, align 8, !tbaa !409, !alias.scope !901, !noalias !898
  %i.aj = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !409, !alias.scope !898, !noalias !893
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !409, !alias.scope !898, !noalias !893
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !903

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !896, !noalias !893
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !893, !noalias !896
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !896, !noalias !893
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !904

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !408
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29SetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29SetPropertyNativeReturnRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_28GetNativePropertyNamesRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetNativePropertyNamesRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !905
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !408  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !409
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_28GetNativePropertyNamesRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #17 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = sub i64 %i.m, %i.n
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ac = add i64 %i.m, -8
  %i.ad = sub i64 %i.ac, %i.n
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.af
  %scevgep6 = getelementptr i8, ptr %i.l, i64 %i.af
  %bound0 = icmp ult ptr %i.w, %scevgep6
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.w, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.l, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.ak = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !409, !alias.scope !912, !noalias !907
  %wide.load8 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !409, !alias.scope !912, !noalias !907
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !915, !noalias !912
  store <2 x i64> %wide.load8, ptr %i.al, align 8, !tbaa !409, !alias.scope !915, !noalias !912
  %i.am = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !409, !alias.scope !912, !noalias !907
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !409, !alias.scope !912, !noalias !907
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !917

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !910, !noalias !907
  store i64 %i.ao, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !907, !noalias !910
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !910, !noalias !907
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !918

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !408
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.as, ptr %i.i, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_28GetNativePropertyNamesRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_28GetNativePropertyNamesRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_34GetNativePropertyNamesReturnRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEESt6vectorINS2_10TraceValueESaISC_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 8 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !785  ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !294    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.thread, label %bb.b

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.thread: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr null, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.l, align 8, !tbaa !297
  br label %_ZN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt6vectorINS2_10TraceValueESaISA_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.m, label %bb.c, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i, !prof !209

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #17 ; 3 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !294
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.o, ptr %i.p, align 8, !tbaa !297
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !786
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt6vectorINS2_10TraceValueESaISA_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !787

_ZN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt6vectorINS2_10TraceValueESaISA_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.thread
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.thread ], [ %i.r, %.lr.ph.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !785
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !408  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt6vectorINS2_10TraceValueESaISA_EE.exit
  store ptr %i.b, ptr %i.u, align 8, !tbaa !409
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.x, ptr %i.t, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_34GetNativePropertyNamesReturnRecordEEEERS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt6vectorINS2_10TraceValueESaISA_EE.exit
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.z = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #17 ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.al = sub i64 %i.z, %i.aa
  %i.am = add i64 %i.al, -8                       ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ap = add i64 %i.z, -8
  %i.aq = sub i64 %i.ap, %i.aa
  %i.ar = and i64 %i.aq, -8
  %i.as = add i64 %i.ar, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.as
  %scevgep14 = getelementptr i8, ptr %i.y, i64 %i.as
  %bound0 = icmp ult ptr %i.aj, %scevgep14
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.aj, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.y, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.aw ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.y, i64 %i.aw ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.ax = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !409, !alias.scope !924, !noalias !919
  %wide.load16 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !409, !alias.scope !924, !noalias !919
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !927, !noalias !924
  store <2 x i64> %wide.load16, ptr %i.ay, align 8, !tbaa !409, !alias.scope !927, !noalias !924
  %i.az = getelementptr i8, ptr %next.gep15, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !409, !alias.scope !924, !noalias !919
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !409, !alias.scope !924, !noalias !919
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !929

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader18

.lr.ph.i.i.i.i.i.preheader18:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader18, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !922, !noalias !919
  store i64 %i.bb, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !919, !noalias !922
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !922, !noalias !919
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i3 = icmp eq ptr %i.bc, %i.u
  br i1 %.not.i.i.i.i.i3, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !930

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.au, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !411
  store ptr %i.be, ptr %i.t, align 8, !tbaa !408
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.bf, ptr %i.v, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_34GetNativePropertyNamesReturnRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_34GetNativePropertyNamesReturnRecordEEEERS8_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31SetExternalMemoryPressureRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = load i64, ptr %3, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace31SetExternalMemoryPressureRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.g, align 8, !tbaa !931
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.e, ptr %i.h, align 8, !tbaa !933
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !408  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.j, align 8, !tbaa !409
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31SetExternalMemoryPressureRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.o = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #17 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.b, ptr %i.z, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = sub i64 %i.o, %i.p
  %i.ab = add i64 %i.aa, -8                       ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ae = add i64 %i.o, -8
  %i.af = sub i64 %i.ae, %i.p
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ah
  %scevgep7 = getelementptr i8, ptr %i.n, i64 %i.ah
  %bound0 = icmp ult ptr %i.y, %scevgep7
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.y, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.n, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.al ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.n, i64 %i.al ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.am = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !409, !alias.scope !939, !noalias !934
  %wide.load9 = load <2 x i64>, ptr %i.am, align 8, !tbaa !409, !alias.scope !939, !noalias !934
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !942, !noalias !939
  store <2 x i64> %wide.load9, ptr %i.an, align 8, !tbaa !409, !alias.scope !942, !noalias !939
  %i.ao = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !409, !alias.scope !939, !noalias !934
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !409, !alias.scope !939, !noalias !934
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !944

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !937, !noalias !934
  store i64 %i.aq, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !934, !noalias !937
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !937, !noalias !934
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !945

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.y, ptr %i.a, align 8, !tbaa !411
  store ptr %i.at, ptr %i.i, align 8, !tbaa !408
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.au, ptr %i.k, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31SetExternalMemoryPressureRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31SetExternalMemoryPressureRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_10Utf8RecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 9 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !176    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !146  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %4, align 8, !tbaa !176
  %i.k = load i64, ptr %i.e, align 8, !tbaa !147
  store i64 %i.k, ptr %i.c, align 8, !tbaa !147
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !146
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi ptr [ %i.c, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.m = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %3, align 8, !tbaa !176
  store i64 0, ptr %i.n, align 8, !tbaa !146
  store i8 0, ptr %i.e, align 8, !tbaa !147
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.p, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace10Utf8RecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.q, align 8, !tbaa !426
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !147
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !91
  %i.t = icmp eq ptr %i.l, %i.c
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.v, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.l, ptr %i.r, align 8, !tbaa !176
  %i.w = load i64, ptr %i.c, align 8, !tbaa !147
  store i64 %i.w, ptr %i.s, align 8, !tbaa !147
  br label %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.m, ptr %i.x, align 8, !tbaa !146
  store ptr %i.c, ptr %4, align 8, !tbaa !176
  store i64 0, ptr %i.o, align 8, !tbaa !146
  store i8 0, ptr %i.c, align 8, !tbaa !147
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !408  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread: ; preds = %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.b, ptr %i.z, align 8, !tbaa !409
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !408
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !411 ; 10 uses
  %i.ae = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #17 ; 12 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store ptr %i.b, ptr %i.ap, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aq = sub i64 %i.ae, %i.af
  %i.ar = add i64 %i.aq, -8                       ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.au = add i64 %i.ae, -8
  %i.av = sub i64 %i.au, %i.af
  %i.aw = and i64 %i.av, -8
  %i.ax = add i64 %i.aw, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ao, i64 %i.ax
  %scevgep22 = getelementptr i8, ptr %i.ad, i64 %i.ax
  %bound0 = icmp ult ptr %i.ao, %scevgep22
  %bound1 = icmp ult ptr %i.ad, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.ao, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ad, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.bb ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ad, i64 %i.bb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.bc = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep23, align 8, !tbaa !409, !alias.scope !951, !noalias !946
  %wide.load24 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !409, !alias.scope !951, !noalias !946
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !954, !noalias !951
  store <2 x i64> %wide.load24, ptr %i.bd, align 8, !tbaa !409, !alias.scope !954, !noalias !951
  %i.be = getelementptr i8, ptr %next.gep23, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !409, !alias.scope !951, !noalias !946
  store <2 x ptr> splat (ptr null), ptr %i.be, align 8, !tbaa !409, !alias.scope !951, !noalias !946
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !956

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader26

.lr.ph.i.i.i.i.i.preheader26:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader26, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader26 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader26 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.bg = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !949, !noalias !946
  store i64 %i.bg, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !946, !noalias !949
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !949, !noalias !946
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !957

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.az, %middle.block ], [ %i.bi, %.lr.ph.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread20, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread20: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bj, ptr %i.y, align 8, !tbaa !408
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bk, ptr %i.aa, align 8, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #19
  %.pre8.pre = load ptr, ptr %4, align 8, !tbaa !176 ; 2 uses
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bj, ptr %i.y, align 8, !tbaa !408
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !198
  %i.bm = icmp eq ptr %.pre8.pre, %i.c
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !147
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %.pre8.pre, i64 noundef %i.bo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_11Utf16RecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string.142", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 9 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !247    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !243  ; 3 uses
  %i.i = icmp ult i64 %i.h, 8
  tail call void @llvm.assume(i1 %i.i)
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = add nuw nsw i64 %i.j, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %4, align 8, !tbaa !247
  %i.l = load i64, ptr %i.e, align 8, !tbaa !147
  store i64 %i.l, ptr %i.c, align 8, !tbaa !147
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !243
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i
  %i.m = phi ptr [ %i.c, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.n = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %3, align 8, !tbaa !247
  store i64 0, ptr %i.o, align 8, !tbaa !243
  store i16 0, ptr %i.e, align 8, !tbaa !245
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.q, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace11Utf16RecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !426
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !147
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !240
  %i.u = icmp eq ptr %i.m, %i.c
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  %i.v = icmp ult i64 %i.n, 8
  call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i64 %i.n, 1
  %i.x = add nuw nsw i64 %i.w, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.x, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  store ptr %i.m, ptr %i.s, align 8, !tbaa !247
  %i.y = load i64, ptr %i.c, align 8, !tbaa !147
  store i64 %i.y, ptr %i.t, align 8, !tbaa !147
  br label %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %i.z, align 8, !tbaa !243
  store ptr %i.c, ptr %4, align 8, !tbaa !247
  store i64 0, ptr %i.p, align 8, !tbaa !243
  store i16 0, ptr %i.c, align 8, !tbaa !245
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !408 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread: ; preds = %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !409
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !408
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !411 ; 10 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #17 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = sub i64 %i.ag, %i.ah
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aw = add i64 %i.ag, -8
  %i.ax = sub i64 %i.aw, %i.ah
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.az
  %scevgep22 = getelementptr i8, ptr %i.af, i64 %i.az
  %bound0 = icmp ult ptr %i.aq, %scevgep22
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.af, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bd ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.af, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %i.be = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep23, align 8, !tbaa !409, !alias.scope !963, !noalias !958
  %wide.load24 = load <2 x i64>, ptr %i.be, align 8, !tbaa !409, !alias.scope !963, !noalias !958
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !966, !noalias !963
  store <2 x i64> %wide.load24, ptr %i.bf, align 8, !tbaa !409, !alias.scope !966, !noalias !963
  %i.bg = getelementptr i8, ptr %next.gep23, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !409, !alias.scope !963, !noalias !958
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !409, !alias.scope !963, !noalias !958
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !968

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader26

.lr.ph.i.i.i.i.i.preheader26:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader26, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader26 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader26 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !961, !noalias !958
  store i64 %i.bi, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !958, !noalias !961
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !961, !noalias !958
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !969

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread20, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread20: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !408
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bm, ptr %i.ac, align 8, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #19
  %.pre8.pre = load ptr, ptr %4, align 8, !tbaa !247 ; 2 uses
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !408
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bn, ptr %i.ac, align 8, !tbaa !198
  %i.bo = icmp eq ptr %.pre8.pre, %i.c
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !147
  %i.bq = shl i64 %i.bp, 1
  %i.br = add i64 %i.bq, 2
  call void @_ZdlPvm(ptr noundef %.pre8.pre, i64 noundef %i.br) #19
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread20, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_19GetStringDataRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string.142", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 9 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !247    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !243  ; 3 uses
  %i.i = icmp ult i64 %i.h, 8
  tail call void @llvm.assume(i1 %i.i)
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = add nuw nsw i64 %i.j, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %4, align 8, !tbaa !247
  %i.l = load i64, ptr %i.e, align 8, !tbaa !147
  store i64 %i.l, ptr %i.c, align 8, !tbaa !147
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !243
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i
  %i.m = phi ptr [ %i.c, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.n = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %3, align 8, !tbaa !247
  store i64 0, ptr %i.o, align 8, !tbaa !243
  store i16 0, ptr %i.e, align 8, !tbaa !245
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.q, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !426
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !147
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !240
  %i.u = icmp eq ptr %i.m, %i.c
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  %i.v = icmp ult i64 %i.n, 8
  call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i64 %i.n, 1
  %i.x = add nuw nsw i64 %i.w, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.x, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  store ptr %i.m, ptr %i.s, align 8, !tbaa !247
  %i.y = load i64, ptr %i.c, align 8, !tbaa !147
  store i64 %i.y, ptr %i.t, align 8, !tbaa !147
  br label %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %i.z, align 8, !tbaa !243
  store ptr %i.c, ptr %4, align 8, !tbaa !247
  store i64 0, ptr %i.p, align 8, !tbaa !243
  store i16 0, ptr %i.c, align 8, !tbaa !245
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !408 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread: ; preds = %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !409
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !408
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !411 ; 10 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #17 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = sub i64 %i.ag, %i.ah
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aw = add i64 %i.ag, -8
  %i.ax = sub i64 %i.aw, %i.ah
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.az
  %scevgep22 = getelementptr i8, ptr %i.af, i64 %i.az
  %bound0 = icmp ult ptr %i.aq, %scevgep22
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.af, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bd ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.af, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.be = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep23, align 8, !tbaa !409, !alias.scope !975, !noalias !970
  %wide.load24 = load <2 x i64>, ptr %i.be, align 8, !tbaa !409, !alias.scope !975, !noalias !970
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !978, !noalias !975
  store <2 x i64> %wide.load24, ptr %i.bf, align 8, !tbaa !409, !alias.scope !978, !noalias !975
  %i.bg = getelementptr i8, ptr %next.gep23, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !409, !alias.scope !975, !noalias !970
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !409, !alias.scope !975, !noalias !970
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !980

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader26

.lr.ph.i.i.i.i.i.preheader26:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader26, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader26 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader26 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !973, !noalias !970
  store i64 %i.bi, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !970, !noalias !973
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !973, !noalias !970
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !981

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread20, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread20: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !408
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bm, ptr %i.ac, align 8, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #19
  %.pre8.pre = load ptr, ptr %4, align 8, !tbaa !247 ; 2 uses
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !411
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !408
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bn, ptr %i.ac, align 8, !tbaa !198
  %i.bo = icmp eq ptr %.pre8.pre, %i.c
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !147
  %i.bq = shl i64 %i.bp, 1
  %i.br = add i64 %i.bq, 2
  call void @_ZdlPvm(ptr noundef %.pre8.pre, i64 noundef %i.br) #19
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread20, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18SetPrototypeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !426
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18SetPrototypeRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !982
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !426
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !408  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !409
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18SetPrototypeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = sub i64 %i.n, %i.o
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.n, -8
  %i.ae = sub i64 %i.ad, %i.o
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ag
  %scevgep9 = getelementptr i8, ptr %i.m, i64 %i.ag
  %bound0 = icmp ult ptr %i.x, %scevgep9
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.m, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.m, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.al = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !409, !alias.scope !989, !noalias !984
  %wide.load11 = load <2 x i64>, ptr %i.al, align 8, !tbaa !409, !alias.scope !989, !noalias !984
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !992, !noalias !989
  store <2 x i64> %wide.load11, ptr %i.am, align 8, !tbaa !409, !alias.scope !992, !noalias !989
  %i.an = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !409, !alias.scope !989, !noalias !984
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !409, !alias.scope !989, !noalias !984
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !994

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !987, !noalias !984
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !984, !noalias !987
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !987, !noalias !984
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !995

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !411
  store ptr %i.as, ptr %i.h, align 8, !tbaa !408
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.at, ptr %i.j, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18SetPrototypeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18SetPrototypeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18GetPrototypeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18GetPrototypeRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !996
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !408  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !409
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18GetPrototypeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #17 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = sub i64 %i.m, %i.n
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ac = add i64 %i.m, -8
  %i.ad = sub i64 %i.ac, %i.n
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.af
  %scevgep6 = getelementptr i8, ptr %i.l, i64 %i.af
  %bound0 = icmp ult ptr %i.w, %scevgep6
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.w, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.l, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.ak = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !409, !alias.scope !1003, !noalias !998
  %wide.load8 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !409, !alias.scope !1003, !noalias !998
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !1006, !noalias !1003
  store <2 x i64> %wide.load8, ptr %i.al, align 8, !tbaa !409, !alias.scope !1006, !noalias !1003
  %i.am = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !409, !alias.scope !1003, !noalias !998
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !409, !alias.scope !1003, !noalias !998
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1008

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !1001, !noalias !998
  store i64 %i.ao, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !998, !noalias !1001
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !1001, !noalias !998
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1009

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !408
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.as, ptr %i.i, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18GetPrototypeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18GetPrototypeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_12GlobalRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !175
  %i.c = load double, ptr %2, align 8, !tbaa !227
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace12GlobalRecordE, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !1010
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !408  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !409
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !408
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12GlobalRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !411  ; 10 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #17 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !409
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = sub i64 %i.m, %i.n
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ac = add i64 %i.m, -8
  %i.ad = sub i64 %i.ac, %i.n
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.af
  %scevgep6 = getelementptr i8, ptr %i.l, i64 %i.af
  %bound0 = icmp ult ptr %i.w, %scevgep6
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.w, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.l, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.ak = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !409, !alias.scope !1017, !noalias !1012
  %wide.load8 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !409, !alias.scope !1017, !noalias !1012
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !1020, !noalias !1017
  store <2 x i64> %wide.load8, ptr %i.al, align 8, !tbaa !409, !alias.scope !1020, !noalias !1017
  %i.am = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !409, !alias.scope !1017, !noalias !1012
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !409, !alias.scope !1017, !noalias !1012
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1022

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !1015, !noalias !1012
  store i64 %i.ao, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !1012, !noalias !1015
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !1015, !noalias !1012
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1023

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !408
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.as, ptr %i.i, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12GlobalRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12GlobalRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %.not30.i = icmp samesign eq i64 %1, 0
  br i1 %.not30.i, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = add nsw i32 %2, 48
  %i.c = add nsw i32 %2, 87
  %i.d = sitofp i32 %2 to double
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.3 = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.p, %bb.e ]
  %.01731.i = phi ptr [ %0, %.lr.ph.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.e = load i8, ptr %.01731.i, align 1, !tbaa !147 ; 3 uses
  %i.f = or i8 %i.e, 32                           ; 3 uses
  %i.g = add i8 %i.e, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.g, 10
  %i.h = zext nneg i8 %i.e to i32
  %i.i = icmp sgt i32 %i.b, %i.h
  %or.cond24.i = select i1 %or.cond.i, i1 %i.i, i1 false
  br i1 %or.cond24.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i8 %i.f, 96
  %i.k = zext nneg i8 %i.f to i32
  %i.l = icmp sgt i32 %i.c, %i.k
  %or.cond38.i = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond38.i, label %bb.d, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i8 %i.f, -87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sink42.i = phi i8 [ %i.m, %bb.d ], [ %i.g, %bb.b ]
  %i.n = fmul double %.3, %i.d
  %i.o = uitofp nneg i8 %.sink42.i to double
  %i.p = fadd double %i.n, %i.o                   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01731.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.a
  br i1 %.not.i, label %bb.f, label %bb.b, !llvm.loop !1024

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp oge double %i.p, f0x4340000000000000
  %.not.i56 = icmp ne i32 %2, 0
  %or.cond72.not74 = and i1 %.not.i56, %i.r
  %i.s = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %2)
  %.not3.i = icmp samesign ult i32 %i.s, 2
  %or.cond73 = select i1 %or.cond72.not74, i1 %.not3.i, i1 false
  br i1 %or.cond73, label %.preheader, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit

.preheader:                                       ; preds = %bb.f
  %i.t = lshr i32 %2, 1
  %i.u = zext nneg i32 %i.t to i64                ; 7 uses
  %i.v = load i8, ptr %0, align 1, !tbaa !147     ; 3 uses
  %i.w = or i8 %i.v, 32
  %i.x = add i8 %i.v, -48
  %or.cond = icmp ult i8 %i.x, 10
  %i.y = and i8 %i.v, 15
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = sext i8 %i.w to i64
end_hunk_0
