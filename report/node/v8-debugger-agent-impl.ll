Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/v8-debugger-agent-impl?download=true
inline.NumInlined: 6157
inline.NumDeleted: 3175
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12v8_inspector19V8DebuggerAgentImpl20isFunctionBlackboxedERKNS_8String16ERKN2v85debug8LocationES8_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ab = load <2 x i64>, ptr %i.aa, align 8
  store <2 x i64> %i.ab, ptr %5, align 16
  call void @_ZNK12v8_inspector8internal12V8DebuggerId8toStringEv(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  %i.ac = call ptr @_ZNKSt10_HashtableIN12v8_inspector8String16ES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %.not.i.i.not = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %4, align 8               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = shl i64 %i.ag, 1
  %i.ai = add i64 %i.ah, 2
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ai) #18
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i

.thread63:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.not.i.i.not, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread63, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ak = call ptr @_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %1) ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i32 @_ZNK2v85debug8Location13GetLineNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #19 ; 2 uses
  %i.ar = call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #19
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.k, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.av, %bb.k ] ; 2 uses
  %.sroa.012.016.i.i = phi ptr [ %.sroa.012.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.an, %bb.k ] ; 2 uses
  %i.ax = lshr i64 %.017.i.i, 1                   ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i.i, i64 %i.ax ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %.not.i43 = icmp eq i32 %i.az, %i.aq
  %i.ba = icmp slt i32 %i.az, %i.aq
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp slt i32 %i.bc, %i.ar
  %.0.i = select i1 %.not.i43, i1 %i.bd, i1 %i.ba ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = xor i64 %i.ax, -1
  %i.bg = add nsw i64 %.017.i.i, %i.bf
  %.sroa.012.1.i.i = select i1 %.0.i, ptr %i.be, ptr %.sroa.012.016.i.i ; 3 uses
  %.1.i.i = select i1 %.0.i, i64 %i.bg, i64 %i.ax ; 2 uses
  %i.bh = icmp sgt i64 %.1.i.i, 0
  br i1 %i.bh, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit.loopexit, !llvm.loop !26

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre = ptrtoint ptr %.sroa.012.1.i.i to i64
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit.loopexit, %bb.k
  %.pre-phi = phi i64 [ %.pre, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit.loopexit ], [ %i.at, %bb.k ] ; 2 uses
  %.sroa.012.0.lcssa.i.i = phi ptr [ %.sroa.012.1.i.i, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit.loopexit ], [ %i.an, %bb.k ] ; 2 uses
  %i.bi = load ptr, ptr %i.ao, align 8
  %i.bj = call noundef i32 @_ZNK2v85debug8Location13GetLineNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %3) #19 ; 2 uses
  %i.bk = call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %3) #19
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bl, %.pre-phi
  %i.bn = ashr exact i64 %i.bm, 3                 ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i35, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit42.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i35: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i35
  %.017.i.i36 = phi i64 [ %.1.i.i41, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i35 ], [ %i.bn, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %.sroa.012.016.i.i37 = phi ptr [ %.sroa.012.1.i.i40, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i35 ], [ %.sroa.012.0.lcssa.i.i, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %i.bp = lshr i64 %.017.i.i36, 1                 ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i.i37, i64 %i.bp ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %.not.i44 = icmp eq i32 %i.br, %i.bj
  %i.bs = icmp slt i32 %i.br, %i.bj
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = icmp slt i32 %i.bu, %i.bk
  %.0.i45 = select i1 %.not.i44, i1 %i.bv, i1 %i.bs ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bx = xor i64 %i.bp, -1
  %i.by = add nsw i64 %.017.i.i36, %i.bx
  %.sroa.012.1.i.i40 = select i1 %.0.i45, ptr %i.bw, ptr %.sroa.012.016.i.i37 ; 2 uses
  %.1.i.i41 = select i1 %.0.i45, i64 %i.by, i64 %i.bp ; 2 uses
  %i.bz = icmp sgt i64 %.1.i.i41, 0
  br i1 %i.bz, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i35, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit42, !llvm.loop !26

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit42: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i35
  %i.ca = icmp eq ptr %.sroa.012.0.lcssa.i.i, %.sroa.012.1.i.i40
  br i1 %i.ca, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit42.thread, label %bb.l

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit42.thread: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit42
  %i.cb = load ptr, ptr %i.am, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %.pre-phi, %i.cc
  %i.ce = and i64 %i.cd, 8
  %i.cf = icmp ne i64 %i.ce, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit42.thread, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit42, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i, %bb.d, %bb.f, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ true, %bb.f ], [ true, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i ], [ false, %bb.j ], [ false, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit42 ], [ %i.cf, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit42.thread ]
  ret i1 %.3
}

declare noundef i32 @_ZNK12v8_inspector7V8Regex5matchERKNS_8String16EiPi(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN12v8_inspector19V8DebuggerAgentImpl15shouldBeSkippedERKNS_8String16Eii(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !guid !412 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.e = tail call ptr @_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1) ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.012.016.i.i = phi ptr [ %.sroa.012.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.p = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i.i, i64 %i.p ; 3 uses
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.r, %2
  %i.s = icmp slt i32 %i.r, %2
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp slt i32 %i.u, %3
  %.0.i = select i1 %.not.i, i1 %i.v, i1 %i.s     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = xor i64 %i.p, -1
  %i.y = add nsw i64 %.017.i.i, %i.x
  %.sroa.012.1.i.i = select i1 %.0.i, ptr %i.w, ptr %.sroa.012.016.i.i ; 2 uses
  %.1.i.i = select i1 %.0.i, i64 %i.y, i64 %i.p   ; 2 uses
  %i.z = icmp sgt i64 %.1.i.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit, !llvm.loop !26

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.c
  %.sroa.012.0.lcssa.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.012.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 4 uses
  %i.aa = icmp eq ptr %.sroa.012.0.lcssa.i.i, %i.j
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit
  %i.ab = load i32, ptr %.sroa.012.0.lcssa.i.i, align 4
  %i.ac = icmp eq i32 %2, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %3, %i.ae
  %i.ag = select i1 %i.ac, i1 %i.af, i1 false
  %i.ah = ptrtoint ptr %.sroa.012.0.lcssa.i.i to i64
  %i.ai = sub i64 %i.ah, %i.l
  %i.aj = and i64 %i.ai, 8
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = xor i1 %i.ak, %i.ag
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.al, %bb.d ], [ false, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_PFbRS4_SA_EET_SD_SD_RKT0_T1_.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK12v8_inspector19V8DebuggerAgentImpl12acceptsPauseEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(592) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 !guid !413 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ne i32 %i.b, 1                      ; 2 uses
  %brmerge = or i1 %1, %i.c
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %3 = load i8, ptr %2, align 8, !range !132
  %4 = trunc nuw i8 %3 to i1
  %.v = select i1 %brmerge, i1 %i.c, i1 %4
  %5 = xor i1 %.v, true
  ret i1 %5
}

declare noundef zeroext i1 @_ZNK12v8_inspector16V8DebuggerScript13setBreakpointERKNS_8String16EPN2v85debug8LocationEPi(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v85debug21SetFunctionBreakpointENS_5LocalINS_8FunctionEEENS1_INS_6StringEEEPi(ptr, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector19V8DebuggerAgentImpl15searchInContentERKNS_8String16ES3_St8optionalIbES5_PSt10unique_ptrISt6vectorIS6_INS_8protocol8Debugger11SearchMatchESt14default_deleteISA_EESaISD_EESB_ISF_EE(ptr dead_on_unwind noalias writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull align 8 dereferenceable(592) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, i16 %4, i16 %5, ptr nofree noundef captures(none) %6) unnamed_addr #0 align 2 !guid !421 {
bb.a:
  %7 = alloca %"class.v8::HandleScope", align 8   ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string.462", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string.462", align 8 ; 6 uses
  %10 = alloca %"class.std::vector.654", align 16 ; 9 uses
  %11 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 560
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  store ptr %i.b, ptr %7, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = tail call ptr @_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St10unique_ptrINS0_16V8DebuggerScriptESt14default_deleteIS5_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %2) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZNK12v8_inspector8String164utf8B5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.462") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %2) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 18), !noalias !422 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.r, ptr %8, align 8, !alias.scope !422
  %i.s = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.s, ptr %8, align 8, !alias.scope !422
  %i.z = load i64, ptr %i.t, align 8
  store i64 %i.z, ptr %i.r, align 8, !alias.scope !422
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !alias.scope !422
  store ptr %i.t, ptr %i.q, align 8
  store i64 0, ptr %i.ab, align 8
  store i8 0, ptr %i.t, align 8
  call void @_ZN8v8_crdtp16DispatchResponse11ServerErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull %8) #19
  %i.ad = load ptr, ptr %8, align 8               ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.af = load i64, ptr %i.r, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.ah = load ptr, ptr %9, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  call void @_ZNK12v8_inspector16V8DebuggerScript6sourceEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %11, ptr noundef nonnull align 8 dereferenceable(304) %i.ap, i64 noundef 0, i64 noundef 4294967295) #19
  %i.aq = and i16 %4, 257
  %.0.i = icmp eq i16 %i.aq, 257
  %i.ar = and i16 %5, 257
  %.0.i12 = icmp eq i16 %i.ar, 257
  call void @_ZN12v8_inspector23searchInTextByLinesImplEPNS_18V8InspectorSessionERKNS_8String16ES4_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.654") align 8 %10, ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %3, i1 noundef zeroext %.0.i, i1 noundef zeroext %.0.i12) #19
  %i.as = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17, !noalias !423 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.au = load <2 x ptr>, ptr %10, align 16, !noalias !423
  store <2 x ptr> %i.au, ptr %i.as, align 8, !noalias !423
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 16, !noalias !423
  store ptr %i.ax, ptr %i.av, align 8, !noalias !423
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !423
  %i.ay = load ptr, ptr %6, align 8               ; 6 uses
  store ptr %i.as, ptr %6, align 8
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.bb
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e, %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.az, %bb.e ] ; 2 uses
  %i.bc = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol8Debugger11SearchMatchEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol8Debugger11SearchMatchEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(64) %i.bc) #19, !inline_history !418
  br label %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol8Debugger11SearchMatchEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bb
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !419

_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i.i.i.i.i.i, %bb.e
  %i.bh = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.az, %bb.e ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt6vectorIS_IN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EES5_IS9_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #18
  br label %_ZNSt10unique_ptrISt6vectorIS_IN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EES5_IS9_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIS_IN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EES5_IS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i.i.i.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 24) #18
  %.pre = load ptr, ptr %10, align 16             ; 3 uses
  %.pre23 = load ptr, ptr %i.at, align 8          ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre23
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrISt6vectorIS_IN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EES5_IS9_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.br, %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt10unique_ptrISt6vectorIS_IN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EESaIS7_EES5_IS9_EED2Ev.exit ] ; 2 uses
  %i.bn = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol8Debugger11SearchMatchEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol8Debugger11SearchMatchEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bn) #19, !inline_history !420
  br label %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol8Debugger11SearchMatchEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, %.pre23
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !419

_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 16
  br label %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS4_EEEvT_S9_.exit.i

end_hunk_0
begin_hunk_1_@_ZN12v8_inspector19V8DebuggerAgentImpl15getWasmBytecodeERKNS_8String16EPNS_8protocol6BinaryE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector19V8DebuggerAgentImpl16pushBreakDetailsERKNS_8String16ESt10unique_ptrINS_8protocol15DictionaryValueESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 !guid !541 {
bb.a:
  %3 = alloca %"struct.std::pair.743", align 8    ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.b, ptr %3, align 8, !alias.scope !542
  %i.c = load ptr, ptr %1, align 8, !noalias !542 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !542 ; 7 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.e, 1         ; 3 uses
  %i.f = icmp ugt i64 %i.e, 7
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.e, 4611686018427387903
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.e, 4611686018427387903
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i, !prof !133

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.d
  %i.i = add nuw nsw i64 %.idx.i.i.i.i, 2
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #17 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !alias.scope !542
  store i64 %i.e, ptr %i.b, align 8, !alias.scope !542
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZSt9make_pairIRKN12v8_inspector8String16ESt10unique_ptrINS0_8protocol15DictionaryValueESt14default_deleteIS6_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.l = load i16, ptr %i.c, align 2
  store i16 %i.l, ptr %i.k, align 2
  br label %_ZSt9make_pairIRKN12v8_inspector8String16ESt10unique_ptrINS0_8protocol15DictionaryValueESt14default_deleteIS6_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.k, ptr align 2 %i.c, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZSt9make_pairIRKN12v8_inspector8String16ESt10unique_ptrINS0_8protocol15DictionaryValueESt14default_deleteIS6_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit

_ZSt9make_pairIRKN12v8_inspector8String16ESt10unique_ptrINS0_8protocol15DictionaryValueESt14default_deleteIS6_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.f, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.e, ptr %i.m, align 8, !alias.scope !542
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i
  store i16 0, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !noalias !542
  store i64 %i.q, ptr %i.o, align 8, !alias.scope !542
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.s = load i64, ptr %2, align 8, !noalias !542
  store i64 %i.s, ptr %i.r, align 8, !alias.scope !542
  store ptr null, ptr %2, align 8, !noalias !542
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE9push_backEOS9_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt9make_pairIRKN12v8_inspector8String16ESt10unique_ptrINS0_8protocol15DictionaryValueESt14default_deleteIS6_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.u, align 8
  %i.y = load ptr, ptr %3, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.b
  br i1 %i.z, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr %i.m, align 8             ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  call void @llvm.assume(i1 %i.ab)
  %i.ac = shl nuw nsw i64 %i.aa, 1
  %i.ad = add nuw nsw i64 %i.ac, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE9push_backEOS9_.exit.thread

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.y, ptr %i.u, align 8
  %i.ae = load i64, ptr %i.b, align 8
  store i64 %i.ae, ptr %i.x, align 8
  %.pre = load i64, ptr %i.m, align 8
  br label %_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE9push_backEOS9_.exit.thread

_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE9push_backEOS9_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.af = phi i64 [ %i.aa, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.af, ptr %i.ag, align 8
  store ptr %i.b, ptr %3, align 8
  store i64 0, ptr %i.m, align 8
  store i16 0, ptr %i.b, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ai = load i64, ptr %i.o, align 8
  store i64 %i.ai, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ak = load i64, ptr %i.r, align 8
  store i64 %i.ak, ptr %i.aj, align 8
  store ptr null, ptr %i.r, align 8
  %i.al = load ptr, ptr %i.t, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store ptr %i.am, ptr %i.t, align 8
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE9push_backEOS9_.exit: ; preds = %_ZSt9make_pairIRKN12v8_inspector8String16ESt10unique_ptrINS0_8protocol15DictionaryValueESt14default_deleteIS6_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit
  call void @_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %.pr = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not.i.i2 = icmp eq ptr %.pr, null
  br i1 %.not.i.i2, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE9push_backEOS9_.exit
  %i.an = load ptr, ptr %.pr, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(96) %.pr) #19, !inline_history !10
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE9push_backEOS9_.exit.thread, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i, %_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE9push_backEOS9_.exit
  %i.aq = load ptr, ptr %3, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.b
  br i1 %i.ar, label %_ZNSt4pairIN12v8_inspector8String16ESt10unique_ptrINS0_8protocol15DictionaryValueESt14default_deleteIS4_EEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i
  %i.as = load i64, ptr %i.b, align 8
  %i.at = shl i64 %i.as, 1
  %i.au = add i64 %i.at, 2
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #18
  br label %_ZNSt4pairIN12v8_inspector8String16ESt10unique_ptrINS0_8protocol15DictionaryValueESt14default_deleteIS4_EEED2Ev.exit

_ZNSt4pairIN12v8_inspector8String16ESt10unique_ptrINS0_8protocol15DictionaryValueESt14default_deleteIS4_EEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector19V8DebuggerAgentImpl15popBreakDetailsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(592) %0) local_unnamed_addr #0 align 2 !guid !544 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE8pop_backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -48 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i.i.i: ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h) #19, !inline_history !543
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 -32 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i
  %i.o = load i64, ptr %i.m, align 8
  %i.p = shl i64 %i.o, 1
  %i.q = add i64 %i.p, 2
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.q) #18
  br label %_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE8pop_backEv.exit

_ZNSt6vectorISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEESaIS9_EE8pop_backEv.exit: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector19V8DebuggerAgentImpl28schedulePauseOnNextStatementERKNS_8String16ESt10unique_ptrINS_8protocol15DictionaryValueESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 !guid !545 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.83", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger22isPausedInContextGroupEi(ptr noundef nonnull align 8 dereferenceable(817) %i.b, i32 noundef %i.f) #19
  br i1 %i.g, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load i32, ptr %4, align 8
  %6 = icmp ne i32 %5, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.i = load i8, ptr %i.h, align 8, !range !132
  %i.j = trunc nuw i8 %i.i to i1
  %.v.i = select i1 %6, i1 true, i1 %i.j
  br i1 %.v.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.l = load i8, ptr %i.k, align 1, !range !132, !noundef !134
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8
  tail call void @_ZN12v8_inspector10V8Debugger18setPauseOnNextCallEbi(ptr noundef nonnull align 8 dereferenceable(817) %i.s, i1 noundef zeroext true, i32 noundef %i.v) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = load i64, ptr %2, align 8
  store i64 %i.w, ptr %3, align 8
  store ptr null, ptr %2, align 8
  call void @_ZN12v8_inspector19V8DebuggerAgentImpl16pushBreakDetailsERKNS_8String16ESt10unique_ptrINS_8protocol15DictionaryValueESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %3)
  %i.x = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i: ; preds = %bb.f
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(96) %i.x) #19, !inline_history !7
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i, %bb.f, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector19V8DebuggerAgentImpl26cancelPauseOnNextStatementEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(592) %0) local_unnamed_addr #0 align 2 !guid !546 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger22isPausedInContextGroupEi(ptr noundef nonnull align 8 dereferenceable(817) %i.b, i32 noundef %i.f) #19
  br i1 %i.g, label %_ZN12v8_inspector19V8DebuggerAgentImpl15popBreakDetailsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %2 = load i32, ptr %1, align 8
  %3 = icmp ne i32 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.i = load i8, ptr %i.h, align 8, !range !132
  %i.j = trunc nuw i8 %i.i to i1
  %.v.i = select i1 %3, i1 true, i1 %i.j
  br i1 %.v.i, label %_ZN12v8_inspector19V8DebuggerAgentImpl15popBreakDetailsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.l = load i8, ptr %i.k, align 1, !range !132, !noundef !134
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN12v8_inspector19V8DebuggerAgentImpl15popBreakDetailsEv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.t, 48
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8
  tail call void @_ZN12v8_inspector10V8Debugger18setPauseOnNextCallEbi(ptr noundef nonnull align 8 dereferenceable(817) %i.v, i1 noundef zeroext false, i32 noundef %i.y) #19
  %.pre = load ptr, ptr %i.n, align 8
  %.pre1 = load ptr, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi ptr [ %.pre1, %bb.e ], [ %i.p, %bb.d ] ; 4 uses
  %i.aa = phi ptr [ %.pre, %bb.e ], [ %i.q, %bb.d ]
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %_ZN12v8_inspector19V8DebuggerAgentImpl15popBreakDetailsEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -48 ; 2 uses
  store ptr %i.ac, ptr %i.o, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(96) %i.ae) #19, !inline_history !30
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i.i.i.i, %bb.g
  %i.ai = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.z, i64 -32 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN12v8_inspector19V8DebuggerAgentImpl15popBreakDetailsEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i.i
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = shl i64 %i.al, 1
  %i.an = add i64 %i.am, 2
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.an) #18
  br label %_ZN12v8_inspector19V8DebuggerAgentImpl15popBreakDetailsEv.exit

_ZN12v8_inspector19V8DebuggerAgentImpl15popBreakDetailsEv.exit: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.f, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector19V8DebuggerAgentImpl5pauseEv(ptr dead_on_unwind noalias writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull align 8 dereferenceable(592) %1) unnamed_addr #0 align 2 !guid !547 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.462", align 8 ; 6 uses
  %3 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %4 = alloca %"class.std::unique_ptr.83", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = call noalias noundef nonnull dereferenceable(30) ptr @_Znwm(i64 noundef 30) #17 ; 3 uses
  store ptr %i.e, ptr %2, align 8
  store i64 29, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.e, ptr noundef nonnull align 16 dereferenceable(29) @_ZN12v8_inspectorL19kDebuggerNotEnabledE, i64 29, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 29, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 29
  store i8 0, ptr %i.g, align 1
  call void @_ZN8v8_crdtp16DispatchResponse11ServerErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull %2) #19
  %i.h = load ptr, ptr %2, align 8                ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.j = load i64, ptr %i.d, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger24isInInstrumentationPauseEv(ptr noundef nonnull align 8 dereferenceable(817) %i.m) #19
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN12v8_inspector10V8Debugger32requestPauseAfterInstrumentationEv(ptr noundef nonnull align 8 dereferenceable(817) %i.o) #19
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger22isPausedInContextGroupEi(ptr noundef nonnull align 8 dereferenceable(817) %i.o, i32 noundef %i.s) #19
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = tail call noundef zeroext i1 @_ZN12v8_inspector10V8Debugger15canBreakProgramEv(ptr noundef nonnull align 8 dereferenceable(817) %i.u) #19
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.l, align 8
  %i.x = load ptr, ptr %i.p, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8
  tail call void @_ZN12v8_inspector10V8Debugger17interruptAndBreakEi(ptr noundef nonnull align 8 dereferenceable(817) %i.w, i32 noundef %i.z) #19
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.aa = load ptr, ptr @_ZN12v8_inspector8protocol8Debugger6Paused10ReasonEnum5OtherE, align 8
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.aa) #19
  store ptr null, ptr %4, align 8
  call void @_ZN12v8_inspector19V8DebuggerAgentImpl16pushBreakDetailsERKNS_8String16ESt10unique_ptrINS_8protocol15DictionaryValueESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(592) %1, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %4)
  %i.ab = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i: ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %i.ab) #19, !inline_history !7
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i
  %i.af = load ptr, ptr %3, align 8               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = shl i64 %i.ai, 1
  %i.ak = add i64 %i.aj, 2
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ak) #18
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.al = load ptr, ptr %i.l, align 8
  %i.am = load ptr, ptr %i.p, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 8
  call void @_ZN12v8_inspector10V8Debugger18setPauseOnNextCallEbi(ptr noundef nonnull align 8 dereferenceable(817) %i.al, i1 noundef zeroext true, i32 noundef %i.ao) #19
  br label %bb.i

bb.i:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit, %bb.g, %bb.c
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger24isInInstrumentationPauseEv(ptr noundef nonnull align 8 dereferenceable(817)) local_unnamed_addr #2

declare void @_ZN12v8_inspector10V8Debugger32requestPauseAfterInstrumentationEv(ptr noundef nonnull align 8 dereferenceable(817)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN12v8_inspector10V8Debugger15canBreakProgramEv(ptr noundef nonnull align 8 dereferenceable(817)) local_unnamed_addr #2

declare void @_ZN12v8_inspector10V8Debugger17interruptAndBreakEi(ptr noundef nonnull align 8 dereferenceable(817), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector19V8DebuggerAgentImpl6resumeESt8optionalIbE(ptr dead_on_unwind noalias writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(592) %1, i16 %2) unnamed_addr #0 align 2 !guid !548 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.462", align 8 ; 6 uses
  %4 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger22isPausedInContextGroupEi(ptr noundef nonnull align 8 dereferenceable(817) %i.b, i32 noundef %i.f) #19
  br i1 %i.g, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.h, ptr %3, align 8
  %i.i = call noalias noundef nonnull dereferenceable(41) ptr @_Znwm(i64 noundef 41) #17 ; 3 uses
  store ptr %i.i, ptr %3, align 8
  store i64 40, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.i, ptr noundef nonnull align 16 dereferenceable(40) @_ZN12v8_inspectorL18kDebuggerNotPausedE, i64 40, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 40, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 0, ptr %i.k, align 1
  call void @_ZN8v8_crdtp16DispatchResponse11ServerErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull %3) #19
  %i.l = load ptr, ptr %3, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.n = load i64, ptr %i.h, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull @_ZN12v8_inspectorL21kBacktraceObjectGroupE) #19
  call void @_ZN12v8_inspector22V8InspectorSessionImpl18releaseObjectGroupERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(216) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %4) #19
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.t = load i64, ptr %i.r, align 8
  %i.u = shl i64 %i.t, 1
  %i.v = add i64 %i.u, 2
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.v) #18
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 410
  store i8 1, ptr %i.w, align 2
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i16 %2, 257
  %.0.i = icmp eq i16 %i.ab, 257
  call void @_ZN12v8_inspector10V8Debugger15continueProgramEib(ptr noundef nonnull align 8 dereferenceable(817) %i.x, i32 noundef %i.aa, i1 noundef zeroext %.0.i) #19
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZN12v8_inspector8String16D2Ev.exit
  ret void
}

declare void @_ZN12v8_inspector10V8Debugger15continueProgramEib(ptr noundef nonnull align 8 dereferenceable(817), i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

end_hunk_1
