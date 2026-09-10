Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/FunctionScheduler?download=true
inline.NumInlined: 1357
inline.NumDeleted: 654
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5folly6detail8function5call_INS_12_GLOBAL__N_122ConsistentDelayFunctorELb1ELb0ENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEJSD_SD_EEET2_DpT3_RNS1_4DataE:bb.a
  %i.d = add nsw i64 %i.c, 1
  %i.e = mul i64 %i.d, %i.b
  %i.f = add nsw i64 %i.e, %0
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i64 @_ZN5folly6detail8function13DispatchSmall4execINS_12_GLOBAL__N_122ConsistentDelayFunctorEEEmNS1_2OpEPNS1_4DataES8_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #16 align 2 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !61
  store i64 %i.a, ptr %2, align 8, !tbaa !61
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #34
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17FunctionScheduler30addFunctionGenericDistributionEONS_8FunctionIFvvEEEONS1_IFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_S9_(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %5) local_unnamed_addr #12 align 2 {
bb.a:
  tail call void @_ZN5folly17FunctionScheduler24addFunctionToHeapCheckedINS_8FunctionIFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEEEEEvONS2_IFvvEEEOT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_S7_b(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %5, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17FunctionScheduler36addFunctionGenericNextRunTimeFunctorEONS_8FunctionIFvvEEEONS1_IFNSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEESD_SD_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESO_NS9_IlSA_ILl1ELl1000000EEEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %5) local_unnamed_addr #12 align 2 {
bb.a:
  tail call void @_ZN5folly17FunctionScheduler24addFunctionToHeapCheckedINS_8FunctionIFNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEESB_SB_EEEEEvONS2_IFvvEEEOT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESQ_NS7_IlS8_ILl1ELl1000000EEEEb(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %5, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly17FunctionScheduler24addFunctionToHeapCheckedINS_8FunctionIFNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEESB_SB_EEEEEvONS2_IFvvEEEOT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESQ_NS7_IlS8_ILl1ELl1000000EEEEb(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %5, i1 noundef zeroext %6) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not115 = icmp eq ptr %i.d, null
  br i1 %.not115, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.13)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #33
  br label %bb.ak

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %.not116 = icmp eq ptr %i.h, null
  br i1 %.not116, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.14)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #33
  br label %bb.ak

bb.i:                                             ; preds = %bb.e
  %i.k = icmp slt i64 %5, 0
  br i1 %i.k, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.15)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #35
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #33
  br label %bb.ak

bb.m:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #33 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.o) #35
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !56     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35
  %.fr121 = freeze i64 %i.s                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60
  %i.v = icmp ult i64 %i.u, 256
  br i1 %i.v, label %.noexc.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !61
  invoke void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %i.q, i64 noundef %.fr121, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %.noexc39 unwind label %bb.t

.noexc39:                                         ; preds = %bb.o
  %i.w = load i64, ptr %i.b, align 8, !tbaa !61   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = lshr i64 %i.w, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1) ; 2 uses
  %i.y = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.z = or disjoint i64 %i.y, 1                  ; 2 uses
  %i.aa = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ab = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !60
  %i.ae = and i64 %i.ad, 255                      ; 2 uses
  %i.af = shl nuw i64 1, %i.ae                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.ae
  %i.ag = xor i64 %notmask.i, -1                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %i.aj = icmp eq i64 %.fr121, 0
  br i1 %i.aj, label %.noexc42.us, label %.noexc42

.noexc42.us:                                      ; preds = %.noexc39, %bb.p
  %.023.i120.us = phi i64 [ %i.bi, %bb.p ], [ %i.af, %.noexc39 ]
  %.025.i119.us = phi i64 [ %i.bj, %bb.p ], [ %i.w, %.noexc39 ] ; 2 uses
  %i.ak = and i64 %.025.i119.us, %i.ag
  %i.al = shl nsw i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 3 uses
  %i.an = load <16 x i8>, ptr %i.am, align 16     ; 2 uses
  %i.ao = icmp eq <16 x i8> %i.an, %i.ac
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = and i32 %i.aq, 4095
  %.not117.us = icmp eq i32 %i.ar, 0
  %i.as = extractelement <16 x i8> %i.an, i64 15
  br i1 %.not117.us, label %.loopexit.split.us.us, label %.noexc43.preheader.us

.noexc43.preheader.us:                            ; preds = %.noexc42.us
  %i.at = icmp ne ptr %i.am, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.at)
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !103
  br label %.noexc43.us.us

.noexc43.us.us:                                   ; preds = %.critedge.i.us.us, %.noexc43.preheader.us
  %.sroa.067.0.us.us = phi i32 [ %i.bf, %.critedge.i.us.us ], [ %i.aq, %.noexc43.preheader.us ] ; 4 uses
  %i.av = icmp ne i32 %.sroa.067.0.us.us, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.0.us.us, i1 true)
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.am, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !104
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.bc ; 2 uses
  %.sroa.0.0.copyload.i.i.us.us = load ptr, ptr %i.bd, align 8, !tbaa !105
  %.sroa.4.0..sroa_idx.i.i.us.us = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4.0.copyload.i.i.us.us = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.us.us, align 8, !tbaa !105
  %.not.i.i.i48.us.us = icmp eq ptr %.sroa.4.0.copyload.i.i.us.us, %.sroa.0.0.copyload.i.i.us.us
  br i1 %.not.i.i.i48.us.us, label %.noexc44.thread, label %.critedge.i.us.us, !prof !106

.critedge.i.us.us:                                ; preds = %.noexc43.us.us
  %i.be = add nsw i32 %.sroa.067.0.us.us, -1
  %i.bf = and i32 %i.be, %.sroa.067.0.us.us       ; 2 uses
  %i.bg = and i32 %i.bf, 4094
  %.not118.us.us = icmp eq i32 %i.bg, 0
  br i1 %.not118.us.us, label %.loopexit.split.us.us, label %.noexc43.us.us, !llvm.loop !6

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.noexc42.us
  %i.bh = icmp eq i8 %i.as, 0
  br i1 %i.bh, label %.noexc.thread, label %bb.p, !prof !101

bb.p:                                             ; preds = %.loopexit.split.us.us
  %i.bi = add i64 %.023.i120.us, -1               ; 2 uses
  %i.bj = add i64 %i.z, %.025.i119.us
  %.not.i.us = icmp eq i64 %i.bi, 0
  br i1 %.not.i.us, label %.noexc.thread, label %.noexc42.us, !llvm.loop !7

.noexc42:                                         ; preds = %.noexc39, %bb.q
  %.023.i120 = phi i64 [ %i.cm, %bb.q ], [ %i.af, %.noexc39 ]
  %.025.i119 = phi i64 [ %i.cn, %bb.q ], [ %i.w, %.noexc39 ] ; 2 uses
  %i.bk = and i64 %.025.i119, %i.ag
  %i.bl = shl nsw i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bl ; 3 uses
  %i.bn = load <16 x i8>, ptr %i.bm, align 16     ; 2 uses
  %i.bo = icmp eq <16 x i8> %i.bn, %i.ac
  %i.bp = bitcast <16 x i1> %i.bo to i16
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = and i32 %i.bq, 4095
  %.not117 = icmp eq i32 %i.br, 0
  %i.bs = extractelement <16 x i8> %i.bn, i64 15
  br i1 %.not117, label %.loopexit.split, label %.noexc43.preheader

.noexc43.preheader:                               ; preds = %.noexc42
  %i.bt = icmp ne ptr %i.bm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bt)
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !103
  br label %.noexc43

.noexc43:                                         ; preds = %.noexc43.preheader, %.critedge.i
  %.sroa.067.0 = phi i32 [ %i.by, %.critedge.i ], [ %i.bq, %.noexc43.preheader ] ; 4 uses
  %i.bv = icmp ne i32 %.sroa.067.0, 0
  call void @llvm.assume(i1 %i.bv)
  %i.bw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.0, i1 true)
  %i.bx = add nsw i32 %.sroa.067.0, -1
  %i.by = and i32 %i.bx, %.sroa.067.0             ; 2 uses
  %i.bz = shl nuw nsw i32 %i.bw, 2
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr i8, ptr %i.bm, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !104
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.ce ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cf, align 8, !tbaa !105 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !105
  %i.cg = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.ch = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %.not.i.i.i48 = icmp eq i64 %.fr121, %i.ci
  br i1 %.not.i.i.i48, label %.noexc44, label %.critedge.i, !prof !106

.noexc44:                                         ; preds = %.noexc43
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.q, ptr %.sroa.0.0.copyload.i.i, i64 %.fr121)
  %i.cj = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cj, label %.noexc44.thread, label %.critedge.i, !prof !107

.critedge.i:                                      ; preds = %.noexc43, %.noexc44
  %i.ck = and i32 %i.by, 4094
  %.not118 = icmp eq i32 %i.ck, 0
  br i1 %.not118, label %.loopexit.split, label %.noexc43, !llvm.loop !6

.loopexit.split:                                  ; preds = %.critedge.i, %.noexc42
  %i.cl = icmp eq i8 %i.bs, 0
  br i1 %i.cl, label %.noexc.thread, label %bb.q, !prof !101

bb.q:                                             ; preds = %.loopexit.split
  %i.cm = add i64 %.023.i120, -1                  ; 2 uses
  %i.cn = add i64 %i.z, %.025.i119
  %.not.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i, label %.noexc.thread, label %.noexc42, !llvm.loop !7

.noexc44.thread:                                  ; preds = %.noexc44, %.noexc43.us.us
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA38_cS6_A17_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(38) @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(17) @.str.17)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.r:                                             ; preds = %.noexc44.thread
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #35
          to label %bb.al unwind label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc44.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r
  %.015 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cs = load ptr, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !36
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br i1 %.015, label %bb.v, label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br i1 %.015, label %bb.v, label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn25110 = phi { ptr, i32 } [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.co) #33
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

.noexc.thread:                                    ; preds = %bb.q, %.loopexit.split, %bb.p, %.loopexit.split.us.us, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !108 ; 3 uses
  %.not = icmp eq ptr %i.cy, null
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111, label %bb.w

bb.w:                                             ; preds = %.noexc.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 168
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 176
  %i.db = load i64, ptr %i.da, align 8, !tbaa !35 ; 3 uses
  %i.dc = load i64, ptr %i.r, align 8, !tbaa !35
  %i.dd = icmp eq i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111

bb.x:                                             ; preds = %bb.w
  %i.de = icmp eq i64 %i.db, 0
  br i1 %i.de, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.x
  %i.df = load ptr, ptr %3, align 8, !tbaa !56
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !56
  %bcmp.i = call i32 @bcmp(ptr %i.dg, ptr %i.df, i64 %i.db)
  %i.dh = icmp eq i32 %bcmp.i, 0
  br i1 %i.dh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.di = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA38_cS6_A17_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(38) @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(17) @.str.17)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #35
          to label %bb.al unwind label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0 = phi i1 [ false, %bb.z ], [ true, %bb.y ]  ; 2 uses
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dl = load ptr, ptr %8, align 8, !tbaa !56    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.aa
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !36
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %.0, label %bb.ab, label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %.0, label %bb.ab, label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn114 = phi { ptr, i32 } [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ]
  call void @__cxa_free_exception(ptr %i.di) #33
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111: ; preds = %bb.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.noexc.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.dq = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #37
          to label %.noexc54 unwind label %bb.ai  ; 3 uses

.noexc54:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111
  invoke void @_ZN5folly17FunctionScheduler10RepeatFuncC2EONS_8FunctionIFvvEEEONS2_IFNSt6chrono10time_pointINS6_3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEESE_SE_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESP_NSA_IlSB_ILl1ELl1000000EEEEb(ptr noundef nonnull align 16 dereferenceable(241) %i.dq, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %5, i1 noundef zeroext %6)
          to label %bb.ad unwind label %bb.ac, !noalias !200

bb.ac:                                            ; preds = %.noexc54
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 256) #36, !noalias !200
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

bb.ad:                                            ; preds = %.noexc54
  store ptr %i.dq, ptr %9, align 8, !tbaa !109, !alias.scope !200
  invoke void @_ZN5folly17FunctionScheduler17addFunctionToHeapERKSt11unique_lockISt5mutexESt10unique_ptrINS0_10RepeatFuncESt14default_deleteIS7_EE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 %9)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load ptr, ptr %9, align 8, !tbaa !109   ; 10 uses
  %.not.i55 = icmp eq ptr %i.ds, null
  br i1 %.not.i55, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 208
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !56 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 224 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.af
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !36
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 168
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !56 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 184 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
end_hunk_0
begin_hunk_1_@_ZN5folly17FunctionScheduler10RepeatFuncC2EONS_8FunctionIFvvEEEONS2_IFNSt6chrono10time_pointINS6_3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEESE_SE_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESP_NSA_IlSB_ILl1ELl1000000EEEEb:bb.a
  %i.ba = icmp eq ptr %i.az, %i.t
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bb = load i64, ptr %i.t, align 8, !tbaa !36
  %i.bc = add i64 %i.bb, 1
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.n ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ay, %bb.o ]
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !70  ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i20, label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = tail call noundef i64 %i.bd(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef null) #33, !inline_history !5 ; 0 uses
  br label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit

_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !72  ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i21, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit
  %i.bg = tail call noundef i64 %i.bf(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef null) #33, !inline_history !222 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit, %bb.q
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #12 comdat align 2 {
bb.a:
  tail call void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() #14
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly17FunctionScheduler24addFunctionToHeapCheckedINS_8FunctionIFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEEEEEvONS2_IFvvEEEOT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_S7_b(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %5, i1 noundef zeroext %6) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not115 = icmp eq ptr %i.d, null
  br i1 %.not115, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.13)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #33
  br label %bb.ak

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %.not116 = icmp eq ptr %i.h, null
  br i1 %.not116, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.14)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #33
  br label %bb.ak

bb.i:                                             ; preds = %bb.e
  %i.k = icmp slt i64 %5, 0
  br i1 %i.k, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.15)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #35
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #33
  br label %bb.ak

bb.m:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #33 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.o) #35
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !56     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35
  %.fr121 = freeze i64 %i.s                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60
  %i.v = icmp ult i64 %i.u, 256
  br i1 %i.v, label %.noexc.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !61
  invoke void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %i.q, i64 noundef %.fr121, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %.noexc39 unwind label %bb.t

.noexc39:                                         ; preds = %bb.o
  %i.w = load i64, ptr %i.b, align 8, !tbaa !61   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = lshr i64 %i.w, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1) ; 2 uses
  %i.y = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.z = or disjoint i64 %i.y, 1                  ; 2 uses
  %i.aa = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ab = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !60
  %i.ae = and i64 %i.ad, 255                      ; 2 uses
  %i.af = shl nuw i64 1, %i.ae                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.ae
  %i.ag = xor i64 %notmask.i, -1                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %i.aj = icmp eq i64 %.fr121, 0
  br i1 %i.aj, label %.noexc42.us, label %.noexc42

.noexc42.us:                                      ; preds = %.noexc39, %bb.p
  %.023.i120.us = phi i64 [ %i.bi, %bb.p ], [ %i.af, %.noexc39 ]
  %.025.i119.us = phi i64 [ %i.bj, %bb.p ], [ %i.w, %.noexc39 ] ; 2 uses
  %i.ak = and i64 %.025.i119.us, %i.ag
  %i.al = shl nsw i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 3 uses
  %i.an = load <16 x i8>, ptr %i.am, align 16     ; 2 uses
  %i.ao = icmp eq <16 x i8> %i.an, %i.ac
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = and i32 %i.aq, 4095
  %.not117.us = icmp eq i32 %i.ar, 0
  %i.as = extractelement <16 x i8> %i.an, i64 15
  br i1 %.not117.us, label %.loopexit.split.us.us, label %.noexc43.preheader.us

.noexc43.preheader.us:                            ; preds = %.noexc42.us
  %i.at = icmp ne ptr %i.am, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.at)
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !103
  br label %.noexc43.us.us

.noexc43.us.us:                                   ; preds = %.critedge.i.us.us, %.noexc43.preheader.us
  %.sroa.067.0.us.us = phi i32 [ %i.bf, %.critedge.i.us.us ], [ %i.aq, %.noexc43.preheader.us ] ; 4 uses
  %i.av = icmp ne i32 %.sroa.067.0.us.us, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.0.us.us, i1 true)
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.am, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !104
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.bc ; 2 uses
  %.sroa.0.0.copyload.i.i.us.us = load ptr, ptr %i.bd, align 8, !tbaa !105
  %.sroa.4.0..sroa_idx.i.i.us.us = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4.0.copyload.i.i.us.us = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.us.us, align 8, !tbaa !105
  %.not.i.i.i48.us.us = icmp eq ptr %.sroa.4.0.copyload.i.i.us.us, %.sroa.0.0.copyload.i.i.us.us
  br i1 %.not.i.i.i48.us.us, label %.noexc44.thread, label %.critedge.i.us.us, !prof !106

.critedge.i.us.us:                                ; preds = %.noexc43.us.us
  %i.be = add nsw i32 %.sroa.067.0.us.us, -1
  %i.bf = and i32 %i.be, %.sroa.067.0.us.us       ; 2 uses
  %i.bg = and i32 %i.bf, 4094
  %.not118.us.us = icmp eq i32 %i.bg, 0
  br i1 %.not118.us.us, label %.loopexit.split.us.us, label %.noexc43.us.us, !llvm.loop !6

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.noexc42.us
  %i.bh = icmp eq i8 %i.as, 0
  br i1 %i.bh, label %.noexc.thread, label %bb.p, !prof !101

bb.p:                                             ; preds = %.loopexit.split.us.us
  %i.bi = add i64 %.023.i120.us, -1               ; 2 uses
  %i.bj = add i64 %i.z, %.025.i119.us
  %.not.i.us = icmp eq i64 %i.bi, 0
  br i1 %.not.i.us, label %.noexc.thread, label %.noexc42.us, !llvm.loop !7

.noexc42:                                         ; preds = %.noexc39, %bb.q
  %.023.i120 = phi i64 [ %i.cm, %bb.q ], [ %i.af, %.noexc39 ]
  %.025.i119 = phi i64 [ %i.cn, %bb.q ], [ %i.w, %.noexc39 ] ; 2 uses
  %i.bk = and i64 %.025.i119, %i.ag
  %i.bl = shl nsw i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bl ; 3 uses
  %i.bn = load <16 x i8>, ptr %i.bm, align 16     ; 2 uses
  %i.bo = icmp eq <16 x i8> %i.bn, %i.ac
  %i.bp = bitcast <16 x i1> %i.bo to i16
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = and i32 %i.bq, 4095
  %.not117 = icmp eq i32 %i.br, 0
  %i.bs = extractelement <16 x i8> %i.bn, i64 15
  br i1 %.not117, label %.loopexit.split, label %.noexc43.preheader

.noexc43.preheader:                               ; preds = %.noexc42
  %i.bt = icmp ne ptr %i.bm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bt)
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !103
  br label %.noexc43

.noexc43:                                         ; preds = %.noexc43.preheader, %.critedge.i
  %.sroa.067.0 = phi i32 [ %i.by, %.critedge.i ], [ %i.bq, %.noexc43.preheader ] ; 4 uses
  %i.bv = icmp ne i32 %.sroa.067.0, 0
  call void @llvm.assume(i1 %i.bv)
  %i.bw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.0, i1 true)
  %i.bx = add nsw i32 %.sroa.067.0, -1
  %i.by = and i32 %i.bx, %.sroa.067.0             ; 2 uses
  %i.bz = shl nuw nsw i32 %i.bw, 2
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr i8, ptr %i.bm, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !104
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.ce ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cf, align 8, !tbaa !105 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !105
  %i.cg = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.ch = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %.not.i.i.i48 = icmp eq i64 %.fr121, %i.ci
  br i1 %.not.i.i.i48, label %.noexc44, label %.critedge.i, !prof !106

.noexc44:                                         ; preds = %.noexc43
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.q, ptr %.sroa.0.0.copyload.i.i, i64 %.fr121)
  %i.cj = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cj, label %.noexc44.thread, label %.critedge.i, !prof !107

.critedge.i:                                      ; preds = %.noexc43, %.noexc44
  %i.ck = and i32 %i.by, 4094
  %.not118 = icmp eq i32 %i.ck, 0
  br i1 %.not118, label %.loopexit.split, label %.noexc43, !llvm.loop !6

.loopexit.split:                                  ; preds = %.critedge.i, %.noexc42
  %i.cl = icmp eq i8 %i.bs, 0
  br i1 %i.cl, label %.noexc.thread, label %bb.q, !prof !101

bb.q:                                             ; preds = %.loopexit.split
  %i.cm = add i64 %.023.i120, -1                  ; 2 uses
  %i.cn = add i64 %i.z, %.025.i119
  %.not.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i, label %.noexc.thread, label %.noexc42, !llvm.loop !7

.noexc44.thread:                                  ; preds = %.noexc44, %.noexc43.us.us
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA38_cS6_A17_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(38) @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(17) @.str.17)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.r:                                             ; preds = %.noexc44.thread
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #35
          to label %bb.al unwind label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc44.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r
  %.015 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cs = load ptr, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !36
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br i1 %.015, label %bb.v, label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br i1 %.015, label %bb.v, label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn25110 = phi { ptr, i32 } [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.co) #33
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

.noexc.thread:                                    ; preds = %bb.q, %.loopexit.split, %bb.p, %.loopexit.split.us.us, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !108 ; 3 uses
  %.not = icmp eq ptr %i.cy, null
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111, label %bb.w

bb.w:                                             ; preds = %.noexc.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 168
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 176
  %i.db = load i64, ptr %i.da, align 8, !tbaa !35 ; 3 uses
  %i.dc = load i64, ptr %i.r, align 8, !tbaa !35
  %i.dd = icmp eq i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111

bb.x:                                             ; preds = %bb.w
  %i.de = icmp eq i64 %i.db, 0
  br i1 %i.de, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.x
  %i.df = load ptr, ptr %3, align 8, !tbaa !56
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !56
  %bcmp.i = call i32 @bcmp(ptr %i.dg, ptr %i.df, i64 %i.db)
  %i.dh = icmp eq i32 %bcmp.i, 0
  br i1 %i.dh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.di = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA38_cS6_A17_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(38) @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(17) @.str.17)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #35
          to label %bb.al unwind label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0 = phi i1 [ false, %bb.z ], [ true, %bb.y ]  ; 2 uses
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dl = load ptr, ptr %8, align 8, !tbaa !56    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.aa
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !36
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %.0, label %bb.ab, label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %.0, label %bb.ab, label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn114 = phi { ptr, i32 } [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ]
  call void @__cxa_free_exception(ptr %i.di) #33
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111: ; preds = %bb.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.noexc.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.dq = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #37
          to label %.noexc54 unwind label %bb.ai  ; 3 uses

.noexc54:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111
  invoke void @_ZN5folly17FunctionScheduler10RepeatFuncC2EONS_8FunctionIFvvEEEONS2_IFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESL_SA_b(ptr noundef nonnull align 16 dereferenceable(241) %i.dq, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %5, i1 noundef zeroext %6)
          to label %bb.ad unwind label %bb.ac, !noalias !225

bb.ac:                                            ; preds = %.noexc54
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 256) #36, !noalias !225
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit57

bb.ad:                                            ; preds = %.noexc54
  store ptr %i.dq, ptr %9, align 8, !tbaa !109, !alias.scope !225
  invoke void @_ZN5folly17FunctionScheduler17addFunctionToHeapERKSt11unique_lockISt5mutexESt10unique_ptrINS0_10RepeatFuncESt14default_deleteIS7_EE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 %9)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load ptr, ptr %9, align 8, !tbaa !109   ; 10 uses
  %.not.i55 = icmp eq ptr %i.ds, null
  br i1 %.not.i55, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 208
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !56 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 224 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.af
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !36
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 168
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !56 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 184 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
end_hunk_1
begin_hunk_2_@_ZN5folly17FunctionScheduler22cancelFunctionWithLockERSt11unique_lockISt5mutexENS_5RangeIPKcEE:bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #34
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.m = load i64, ptr %i.l, align 8, !tbaa !35   ; 4 uses
  %i.n = ptrtoint ptr %3 to i64
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i.i = icmp eq i64 %i.m, %i.p
  br i1 %.not.i.i, label %bb.g, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread6

bb.g:                                             ; preds = %bb.f
  %i.q = icmp samesign eq i64 %i.m, 0
  br i1 %i.q, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit

_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit: ; preds = %bb.g
  %bcmp.i.i = call i32 @bcmp(ptr %i.k, ptr %2, i64 %i.m)
  %i.r = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.r, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread6

_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread: ; preds = %bb.g, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store ptr %i.k, ptr %6, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  store ptr %i.u, ptr %i.t, align 8, !tbaa !112
  %i.v = call noundef i64 @_ZN5folly3f146detail16F14VectorMapImplINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S9_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyIS6_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  store ptr null, ptr %i.f, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.w, align 1, !tbaa !52
  br label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread6

_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread6: ; preds = %bb.f, %bb.b, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread
  %.0 = phi i1 [ true, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread ], [ false, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit ], [ false, %bb.b ], [ false, %bb.f ]
  ret i1 %.0
}

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #23

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #24 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !236
  %i.b = load i8, ptr %0, align 1, !tbaa !121, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext %i.c)
          to label %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit: ; preds = %bb.a
  %i.e = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit
  %i.f = load i8, ptr %1, align 1, !tbaa !121, !range !54, !noundef !55
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext %i.g)
          to label %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4 unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4: ; preds = %bb.b
  %i.i = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret ptr %i.i

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4, %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.j
}

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #13

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail16F14VectorMapImplINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S9_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyIS6_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !60
  %i.e = icmp ult i64 %i.d, 256
  br i1 %i.e, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %1, align 8, !tbaa !105 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !105
  %i.f = ptrtoint ptr %.sroa.2.0.copyload.i.i.i to i64
  %i.g = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.h = sub i64 %i.f, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !61
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %.sroa.0.0.copyload.i.i.i, i64 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = lshr i64 %i.i, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.j, i64 1) ; 2 uses
  %i.k = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.l = or disjoint i64 %i.k, 1
  %i.m = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.n = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.p = load i64, ptr %i.c, align 8, !tbaa !60
  %i.q = and i64 %i.p, 255                        ; 2 uses
  %i.r = shl nuw i64 1, %i.q
  %notmask.i = shl nsw i64 -1, %i.q
  %i.s = xor i64 %notmask.i, -1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.023.i55 = phi i64 [ %i.r, %bb.b ], [ %i.bq, %bb.d ]
  %.025.i54 = phi i64 [ %i.i, %bb.b ], [ %i.br, %bb.d ] ; 2 uses
  %i.v = and i64 %.025.i54, %i.s
  %i.w = shl nsw i64 %i.v, 6
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 5 uses
  %i.y = load <16 x i8>, ptr %i.x, align 16       ; 2 uses
  %i.z = icmp eq <16 x i8> %i.y, %i.o
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = zext i16 %i.aa to i32                   ; 3 uses
  %i.ac = and i32 %i.ab, 4095
  %.not = icmp eq i32 %i.ac, 0
  %i.ad = extractelement <16 x i8> %i.y, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ae = icmp ne ptr %i.x, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ae)
  %i.af = load ptr, ptr %0, align 8, !tbaa !103   ; 2 uses
  %.sroa.02.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !105 ; 3 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.ag = ptrtoint ptr %.sroa.43.0.copyload.i.i to i64
  %i.ah = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq ptr %.sroa.43.0.copyload.i.i, %.sroa.02.0.copyload.i.i
  %.fr = freeze i1 %i.aj
  br i1 %.fr, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.critedge.i.us
  %.sroa.010.0.us = phi i32 [ %i.ax, %.critedge.i.us ], [ %i.ab, %.preheader ] ; 4 uses
  %i.ak = icmp ne i32 %.sroa.010.0.us, 0
  call void @llvm.assume(i1 %i.ak)
  %i.al = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.010.0.us, i1 true)
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 2                ; 2 uses
  %i.ao = getelementptr i8, ptr %i.x, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !104
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ar ; 2 uses
  %.sroa.0.0.copyload.i.i.us = load ptr, ptr %i.as, align 8, !tbaa !105
  %.sroa.4.0..sroa_idx.i.i.us = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.4.0.copyload.i.i.us = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.us, align 8, !tbaa !105
  %i.at = ptrtoint ptr %.sroa.4.0.copyload.i.i.us to i64
  %i.au = ptrtoint ptr %.sroa.0.0.copyload.i.i.us to i64
  %i.av = sub i64 %i.at, %i.au
  %.not.i.i.i.us = icmp eq i64 %i.ai, %i.av
  br i1 %.not.i.i.i.us, label %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.us, !prof !106

.critedge.i.us:                                   ; preds = %.preheader.split.us
  %i.aw = add nsw i32 %.sroa.010.0.us, -1
  %i.ax = and i32 %i.aw, %.sroa.010.0.us          ; 2 uses
  %i.ay = and i32 %i.ax, 4094
  %.not45.us = icmp eq i32 %i.ay, 0
  br i1 %.not45.us, label %.loopexit, label %.preheader.split.us, !llvm.loop !6

.preheader.split:                                 ; preds = %.preheader, %.critedge.i
  %.sroa.010.0 = phi i32 [ %i.bc, %.critedge.i ], [ %i.ab, %.preheader ] ; 4 uses
  %i.az = icmp ne i32 %.sroa.010.0, 0
  call void @llvm.assume(i1 %i.az)
  %i.ba = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.010.0, i1 true)
  %i.bb = add nsw i32 %.sroa.010.0, -1
  %i.bc = and i32 %i.bb, %.sroa.010.0             ; 2 uses
  %i.bd = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 2                ; 2 uses
  %i.bf = getelementptr i8, ptr %i.x, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !104
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.bi ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bj, align 8, !tbaa !105 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !105
  %i.bk = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.bl = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %.not.i.i.i = icmp eq i64 %i.ai, %i.bm
  br i1 %.not.i.i.i, label %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit, label %.critedge.i, !prof !106

_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit: ; preds = %.preheader.split
  %bcmp.i.i.i = call i32 @bcmp(ptr %.sroa.02.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, i64 %i.ai)
  %i.bn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i, !prof !107

.critedge.i:                                      ; preds = %.preheader.split, %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit
  %i.bo = and i32 %i.bc, 4094
  %.not45 = icmp eq i32 %i.bo, 0
  br i1 %.not45, label %.loopexit, label %.preheader.split, !llvm.loop !6

.loopexit:                                        ; preds = %.critedge.i, %.critedge.i.us, %bb.c
  %i.bp = icmp eq i8 %i.ad, 0
  br i1 %i.bp, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.bq = add i64 %.023.i55, -1                   ; 2 uses
  %i.br = add i64 %i.l, %.025.i54
  %.not.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.c, !llvm.loop !7

_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit, %.preheader.split.us
  %i.bs = phi i64 [ %i.an, %.preheader.split.us ], [ %i.be, %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit ]
  %.us-phi50 = phi i64 [ %i.am, %.preheader.split.us ], [ %i.bd, %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit ]
  %i.bt = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  call void @_ZN5folly3f146detail16F14VectorMapImplINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S9_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.bu, i64 %.us-phi50, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.loopexit, %bb.d, %bb.a, %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread
  %.0 = phi i64 [ 1, %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %.loopexit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorMapImplINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S9_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %class.anon.24, align 8             ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !103    ; 3 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !104    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %3, ptr %4, align 8, !tbaa !240
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISE_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS7_SA_EE_EEvSR_ST_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60
  %i.i = lshr i64 %i.h, 8                         ; 5 uses
  %.not = icmp eq i64 %i.i, %i.e
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp ne i64 %i.i, 0
  call void @llvm.assume(i1 %i.k)
  %i.l = load ptr, ptr %0, align 8, !tbaa !103
  %i.m = and i64 %i.i, 4294967295
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !105 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !105
  %i.o = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i to i64
  %i.p = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i to i64
  %i.q = sub i64 %i.o, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !61
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.r = load i64, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = lshr i64 %i.r, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1) ; 2 uses
  %i.t = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.u = or disjoint i64 %i.t, 1
  %i.v = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.w = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.y = load i64, ptr %i.g, align 8, !tbaa !60
  %i.z = and i64 %i.y, 255
  %notmask.i = shl nsw i64 -1, %i.z
  %i.aa = xor i64 %notmask.i, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.025.i = phi i64 [ %i.r, %bb.b ], [ %i.ax, %.loopexit ] ; 2 uses
  %i.ad = and i64 %.025.i, %i.aa
  %i.ae = shl nsw i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 3 uses
  %i.ag = load <16 x i8>, ptr %i.af, align 16
  %i.ah = icmp eq <16 x i8> %i.ag, %i.x
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = and i32 %i.aj, 4095
  %.not45 = icmp eq i32 %i.ak, 0
  br i1 %.not45, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.al = icmp ne ptr %i.af, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.al)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.024.0 = phi i32 [ %i.av, %.critedge.i ], [ %i.aj, %.preheader ] ; 4 uses
  %i.am = icmp ne i32 %.sroa.024.0, 0
  call void @llvm.assume(i1 %i.am)
  %i.an = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0, i1 true)
  %i.ao = shl nuw nsw i32 %i.an, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.af, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !104
  %i.at = icmp eq i32 %i.as, %i.j
  br i1 %i.at, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit, label %.critedge.i, !prof !101

.critedge.i:                                      ; preds = %bb.d
  %i.au = add nsw i32 %.sroa.024.0, -1
  %i.av = and i32 %i.au, %.sroa.024.0             ; 2 uses
  %i.aw = and i32 %i.av, 4094
  %.not46 = icmp eq i32 %i.aw, 0
  br i1 %.not46, label %.loopexit, label %bb.d, !llvm.loop !237

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ax = add i64 %i.u, %.025.i
  br label %bb.c, !llvm.loop !238

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit: ; preds = %bb.d
  %i.ay = getelementptr i8, ptr %i.aq, i64 16
  store i32 %i.d, ptr %i.ay, align 4, !tbaa !104
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.f, ptr noundef nonnull align 1 dereferenceable(24) %i.az, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISE_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS7_SA_EE_EEvSR_ST_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -4
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 14 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !126
  %.not = icmp ult i8 %i.f, 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !103
  %i.h = load i32, ptr %1, align 4, !tbaa !104
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !105 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !105
  %i.k = ptrtoint ptr %.sroa.2.0.copyload.i.i.i to i64
  %i.l = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.m = sub i64 %i.k, %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !61
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %.sroa.0.0.copyload.i.i.i, i64 noundef %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.n = load i64, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = lshr i64 %i.n, 56
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.q = or disjoint i64 %i.p, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ 1, %bb.a ], [ %i.q, %bb.b ]
  %.sroa.04.0 = phi i64 [ 0, %bb.a ], [ %i.n, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !60
  %i.t = add i64 %i.s, -256
  store i64 %i.t, ptr %i.r, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !36
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.24) #38
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i: ; preds = %bb.c
  store i8 0, ptr %i.u, align 1, !tbaa !36
  %i.w = load i8, ptr %i.e, align 2, !tbaa !126
  %.not.i.i = icmp ult i8 %i.w, 16
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i
  %i.x = load i64, ptr %i.r, align 8, !tbaa !60
  %i.y = and i64 %i.x, 255
  %notmask.i.i.i = shl nsw i64 -1, %i.y
  %i.z = xor i64 %notmask.i.i.i, -1               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30 ; 4 uses
  %i.ac = and i64 %.sroa.04.0, %i.z
  %i.ad = shl nsw i64 %i.ac, 6                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = icmp eq ptr %i.ae, %i.d
  br i1 %i.af, label %.thread.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %bb.g, %bb.e
  %.010.lcssa.i.i = phi i8 [ 0, %bb.e ], [ -16, %bb.g ]
  %i.ag = phi i64 [ %i.ad, %bb.e ], [ %i.as, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 14 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !126
  %i.ak = add i8 %i.aj, %.010.lcssa.i.i
  store i8 %i.ak, ptr %i.ai, align 2, !tbaa !126
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %i.al = phi i64 [ %i.as, %bb.g ], [ %i.ad, %bb.e ]
  %.01126.i.i = phi i64 [ %i.aq, %bb.g ], [ %.sroa.04.0, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 15 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !127 ; 2 uses
  %.not.i17.i.i = icmp eq i8 %i.ao, -2
  br i1 %.not.i17.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i8 %i.ao, -1
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !127
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.aq = add i64 %.01126.i.i, %.sroa.5.0         ; 2 uses
  %i.ar = and i64 %i.aq, %i.z
  %i.as = shl nsw i64 %i.ar, 6                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.as
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %.thread.i.i, label %.lr.ph.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i, %.thread.i.i
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #25

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly17FunctionScheduler14cancelFunctionENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr %1, ptr %2) local_unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !128
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #33 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #35
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 1, ptr %i.e, align 8, !tbaa !120
  %i.f = invoke noundef zeroext i1 @_ZN5folly17FunctionScheduler22cancelFunctionWithLockERSt11unique_lockISt5mutexENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr %1, ptr %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  br i1 %i.f, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.e

bb.d:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit31

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !60
  %i.k = icmp ult i64 %i.j, 256
  br i1 %i.k, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !61
  invoke void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.n, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %.noexc18 unwind label %bb.i

.noexc18:                                         ; preds = %bb.f
  %i.o = load i64, ptr %i.b, align 8, !tbaa !61   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = lshr i64 %i.o, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1) ; 2 uses
  %i.q = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.r = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.s = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.v = load i64, ptr %i.i, align 8, !tbaa !60
  %i.w = and i64 %i.v, 255                        ; 2 uses
  %i.x = shl nuw i64 1, %i.w                      ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.w
  %i.y = xor i64 %notmask.i, -1                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30  ; 2 uses
  %i.ab = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.ab
  br i1 %.fr, label %.noexc21.us, label %.noexc21

.noexc21.us:                                      ; preds = %.noexc18, %bb.g
  %.023.i85.us = phi i64 [ %i.bd, %bb.g ], [ %i.x, %.noexc18 ]
  %.025.i84.us = phi i64 [ %i.be, %bb.g ], [ %i.o, %.noexc18 ] ; 2 uses
  %i.ac = and i64 %.025.i84.us, %i.y
  %i.ad = shl nsw i64 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad ; 3 uses
  %i.af = load <16 x i8>, ptr %i.ae, align 16     ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.af, %i.u
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = and i32 %i.ai, 4095
  %.not.us = icmp eq i32 %i.aj, 0
  %i.ak = extractelement <16 x i8> %i.af, i64 15
  br i1 %.not.us, label %.loopexit.split.us.us, label %.noexc22.preheader.us

.noexc22.preheader.us:                            ; preds = %.noexc21.us
  %i.al = icmp ne ptr %i.ae, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.al)
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !103 ; 2 uses
  br label %.noexc22.us.us

.noexc22.us.us:                                   ; preds = %.critedge.i.us.us, %.noexc22.preheader.us
  %.sroa.039.0.us.us = phi i32 [ %i.ba, %.critedge.i.us.us ], [ %i.ai, %.noexc22.preheader.us ] ; 4 uses
  %i.an = icmp ne i32 %.sroa.039.0.us.us, 0
  call void @llvm.assume(i1 %i.an)
  %i.ao = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.039.0.us.us, i1 true)
  %i.ap = shl nuw nsw i32 %i.ao, 2
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %i.ae, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 4, !tbaa !104
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.au ; 2 uses
  %.sroa.0.0.copyload.i.i.us.us = load ptr, ptr %i.av, align 8, !tbaa !105
  %.sroa.4.0..sroa_idx.i.i.us.us = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.4.0.copyload.i.i.us.us = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.us.us, align 8, !tbaa !105
  %i.aw = ptrtoint ptr %.sroa.4.0.copyload.i.i.us.us to i64
  %i.ax = ptrtoint ptr %.sroa.0.0.copyload.i.i.us.us to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %.not.i.i.i27.us.us = icmp eq i64 %i.n, %i.ay
  br i1 %.not.i.i.i27.us.us, label %.noexc23.thread, label %.critedge.i.us.us, !prof !106

.critedge.i.us.us:                                ; preds = %.noexc22.us.us
  %i.az = add nsw i32 %.sroa.039.0.us.us, -1
  %i.ba = and i32 %i.az, %.sroa.039.0.us.us       ; 2 uses
  %i.bb = and i32 %i.ba, 4094
  %.not80.us.us = icmp eq i32 %i.bb, 0
  br i1 %.not80.us.us, label %.loopexit.split.us.us, label %.noexc22.us.us, !llvm.loop !6

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.noexc21.us
  %i.bc = icmp eq i8 %i.ak, 0
  br i1 %i.bc, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.g, !prof !101

bb.g:                                             ; preds = %.loopexit.split.us.us
  %i.bd = add i64 %.023.i85.us, -1                ; 2 uses
  %i.be = add i64 %i.r, %.025.i84.us
  %.not.i.us = icmp eq i64 %i.bd, 0
  br i1 %.not.i.us, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc21.us, !llvm.loop !7

.noexc21:                                         ; preds = %.noexc18, %bb.h
  %.023.i85 = phi i64 [ %i.ch, %bb.h ], [ %i.x, %.noexc18 ]
  %.025.i84 = phi i64 [ %i.ci, %bb.h ], [ %i.o, %.noexc18 ] ; 2 uses
  %i.bf = and i64 %.025.i84, %i.y
  %i.bg = shl nsw i64 %i.bf, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bg ; 3 uses
  %i.bi = load <16 x i8>, ptr %i.bh, align 16     ; 2 uses
  %i.bj = icmp eq <16 x i8> %i.bi, %i.u
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = and i32 %i.bl, 4095
  %.not = icmp eq i32 %i.bm, 0
  %i.bn = extractelement <16 x i8> %i.bi, i64 15
  br i1 %.not, label %.loopexit.split, label %.noexc22.preheader

.noexc22.preheader:                               ; preds = %.noexc21
  %i.bo = icmp ne ptr %i.bh, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bo)
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !103 ; 2 uses
  br label %.noexc22

.noexc22:                                         ; preds = %.noexc22.preheader, %.critedge.i
  %.sroa.039.0 = phi i32 [ %i.bt, %.critedge.i ], [ %i.bl, %.noexc22.preheader ] ; 4 uses
  %i.bq = icmp ne i32 %.sroa.039.0, 0
  call void @llvm.assume(i1 %i.bq)
  %i.br = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.039.0, i1 true)
  %i.bs = add nsw i32 %.sroa.039.0, -1
  %i.bt = and i32 %i.bs, %.sroa.039.0             ; 2 uses
  %i.bu = shl nuw nsw i32 %i.br, 2
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.bh, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !104
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bz ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ca, align 8, !tbaa !105 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !105
  %i.cb = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.cc = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %.not.i.i.i27 = icmp eq i64 %i.n, %i.cd
  br i1 %.not.i.i.i27, label %.noexc23, label %.critedge.i, !prof !106

.noexc23:                                         ; preds = %.noexc22
  %bcmp.i.i.i = call i32 @bcmp(ptr %1, ptr %.sroa.0.0.copyload.i.i, i64 %i.n)
  %i.ce = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ce, label %.noexc23.thread, label %.critedge.i, !prof !107

.critedge.i:                                      ; preds = %.noexc22, %.noexc23
  %i.cf = and i32 %i.bt, 4094
  %.not80 = icmp eq i32 %i.cf, 0
  br i1 %.not80, label %.loopexit.split, label %.noexc22, !llvm.loop !6

.loopexit.split:                                  ; preds = %.critedge.i, %.noexc21
  %i.cg = icmp eq i8 %i.bn, 0
  br i1 %i.cg, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.h, !prof !101

bb.h:                                             ; preds = %.loopexit.split
  %i.ch = add i64 %.023.i85, -1                   ; 2 uses
  %i.ci = add i64 %i.r, %.025.i84
  %.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc21, !llvm.loop !7

.noexc23.thread:                                  ; preds = %.noexc23, %.noexc22.us.us
  %.pre-phi = phi i64 [ %i.au, %.noexc22.us.us ], [ %i.bz, %.noexc23 ]
  %i.cj = phi ptr [ %i.am, %.noexc22.us.us ], [ %i.bp, %.noexc23 ]
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.pre-phi
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !130
  invoke void @_ZN5folly17FunctionScheduler14cancelFunctionERKSt11unique_lockISt5mutexEPNS0_10RepeatFuncE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr nonnull align 8 poison, ptr noundef %i.cm)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.f, %.noexc23.thread
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit31

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.h, %.loopexit.split, %bb.g, %.loopexit.split.us.us, %bb.e, %bb.c, %.noexc23.thread
  %.16 = phi i1 [ true, %bb.c ], [ true, %.noexc23.thread ], [ false, %bb.e ], [ false, %bb.g ], [ false, %.loopexit.split.us.us ], [ false, %.loopexit.split ], [ false, %bb.h ]
  %i.co = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #33 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i1 %.16

_ZNSt11unique_lockISt5mutexED2Ev.exit31:          ; preds = %bb.d, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.cn, %bb.i ]
  %i.cp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #33 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17FunctionScheduler14cancelFunctionERKSt11unique_lockISt5mutexEPNS0_10RepeatFuncE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Range", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  store ptr %i.g, ptr %i.d, align 8, !tbaa !112
  %i.h = call noundef i64 @_ZN5folly3f146detail16F14VectorMapImplINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S9_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyIS6_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %2, align 8, !tbaa !67     ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64
  %i.n = icmp eq ptr %i.m, %2
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %spec.select.i = select i1 %i.n, ptr %i.l, ptr %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %spec.select.i, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 3 uses
  %i.t = icmp eq ptr %i.q, null                   ; 2 uses
  %i.u = icmp eq ptr %i.s, null
  %or.cond.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %bb.d, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %.sroa.0.0.copyload.i.i.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 16, !tbaa !61
  br label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.v = select i1 %i.t, ptr %i.s, ptr %i.q       ; 3 uses
  store ptr %i.v, ptr %.0.i, align 8, !tbaa !66
  %.not38.i.i = icmp eq ptr %i.v, null
  br i1 %.not38.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr %i.v, align 8, !tbaa !67
  br label %bb.g

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.sroa.0.0.copyload.i.i.i.i = phi i64 [ %i.ac, %.preheader.i ], [ %.sroa.0.0.copyload.i.i.i.pre.i, %.preheader.preheader.i ] ; 2 uses
  %.031.i.i = phi ptr [ %.031..030.i.i, %.preheader.i ], [ %i.q, %.preheader.preheader.i ] ; 2 uses
  %.030.i.i = phi ptr [ %i.z, %.preheader.i ], [ %i.s, %.preheader.preheader.i ] ; 3 uses
  %.029.i.i = phi ptr [ %.030..031.i.i, %.preheader.i ], [ %i.j, %.preheader.preheader.i ]
  %.0.i.i = phi ptr [ %i.aa, %.preheader.i ], [ %.0.i, %.preheader.preheader.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 160
  %.sroa.0.0.copyload.i3.i.i.i = load i64, ptr %i.w, align 16, !tbaa !61 ; 2 uses
  %i.x = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i3.i.i.i ; 2 uses
  %.031..030.i.i = select i1 %i.x, ptr %.031.i.i, ptr %.030.i.i, !unpredictable !55 ; 3 uses
  %.030..031.i.i = select i1 %i.x, ptr %.030.i.i, ptr %.031.i.i, !unpredictable !55 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.030..031.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65   ; 2 uses
  store ptr %.030..031.i.i, ptr %.0.i.i, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %.030..031.i.i, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !65
  store ptr %.029.i.i, ptr %.030..031.i.i, align 8, !tbaa !67
  %.not.i.i = icmp eq ptr %i.z, null
  %i.ac = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i3.i.i.i)
  br i1 %.not.i.i, label %bb.f, label %.preheader.i, !llvm.loop !0

bb.f:                                             ; preds = %.preheader.i
  store ptr %.031..030.i.i, ptr %i.aa, align 8, !tbaa !66
  store ptr %.030..031.i.i, ptr %.031..030.i.i, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !36
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !36
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ar = call noundef i64 %i.ap(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.aq, ptr noundef null) #33, !inline_history !1 ; 0 uses
  br label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i

_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !72 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i4.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = call noundef i64 %i.at(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.au, ptr noundef null) #33, !inline_history !2 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 256) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly17FunctionScheduler21cancelFunctionAndWaitENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr %1, ptr %2) local_unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::unique_lock", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #33 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #35
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.d, align 8, !tbaa !120
  %i.f = invoke noundef zeroext i1 @_ZN5folly17FunctionScheduler22cancelFunctionWithLockERSt11unique_lockISt5mutexENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr %1, ptr %2)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  %.val.val2.i = load i8, ptr %i.h, align 1, !tbaa !52, !range !54, !noundef !55
  %i.i = trunc nuw i8 %.val.val2.i to i1
  br i1 %i.i, label %.lr.ph.i, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread"

.lr.ph.i:                                         ; preds = %bb.d, %.noexc28
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %.noexc28 unwind label %bb.k

.noexc28:                                         ; preds = %.lr.ph.i
  %.val.val.i = load i8, ptr %i.h, align 1, !tbaa !52, !range !54, !noundef !55
  %i.j = trunc nuw i8 %.val.val.i to i1
  br i1 %i.j, label %.lr.ph.i, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit", !llvm.loop !241

.loopexit.split-lp:                               ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !60
  %i.n = icmp ult i64 %i.m, 256
  br i1 %i.n, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %2 to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !61
  invoke void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %.noexc20 unwind label %bb.i

.noexc20:                                         ; preds = %bb.f
  %i.r = load i64, ptr %i.b, align 8, !tbaa !61   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = lshr i64 %i.r, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1) ; 2 uses
  %i.t = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.u = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.v = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.w = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.y = load i64, ptr %i.l, align 8, !tbaa !60
  %i.z = and i64 %i.y, 255                        ; 2 uses
  %i.aa = shl nuw i64 1, %i.z                     ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.z
  %i.ab = xor i64 %notmask.i, -1                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30 ; 2 uses
  %i.ae = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.ae
  br i1 %.fr, label %.noexc23.us, label %.noexc23

.noexc23.us:                                      ; preds = %.noexc20, %bb.g
  %.023.i90.us = phi i64 [ %i.bg, %bb.g ], [ %i.aa, %.noexc20 ]
  %.025.i89.us = phi i64 [ %i.bh, %bb.g ], [ %i.r, %.noexc20 ] ; 2 uses
  %i.af = and i64 %.025.i89.us, %i.ab
  %i.ag = shl nsw i64 %i.af, 6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 3 uses
  %i.ai = load <16 x i8>, ptr %i.ah, align 16     ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ai, %i.x
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = and i32 %i.al, 4095
  %.not.us = icmp eq i32 %i.am, 0
  %i.an = extractelement <16 x i8> %i.ai, i64 15
  br i1 %.not.us, label %.loopexit84.split.us.us, label %.noexc24.preheader.us

.noexc24.preheader.us:                            ; preds = %.noexc23.us
  %i.ao = icmp ne ptr %i.ah, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  br label %.noexc24.us.us

.noexc24.us.us:                                   ; preds = %.critedge.i.us.us, %.noexc24.preheader.us
  %.sroa.042.0.us.us = phi i32 [ %i.bd, %.critedge.i.us.us ], [ %i.al, %.noexc24.preheader.us ] ; 4 uses
  %i.aq = icmp ne i32 %.sroa.042.0.us.us, 0
  call void @llvm.assume(i1 %i.aq)
  %i.ar = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0.us.us, i1 true)
  %i.as = shl nuw nsw i32 %i.ar, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !104
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ax ; 2 uses
  %.sroa.0.0.copyload.i.i.us.us = load ptr, ptr %i.ay, align 8, !tbaa !105
  %.sroa.4.0..sroa_idx.i.i.us.us = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4.0.copyload.i.i.us.us = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.us.us, align 8, !tbaa !105
  %i.az = ptrtoint ptr %.sroa.4.0.copyload.i.i.us.us to i64
  %i.ba = ptrtoint ptr %.sroa.0.0.copyload.i.i.us.us to i64
  %i.bb = sub i64 %i.az, %i.ba
  %.not.i.i.i30.us.us = icmp eq i64 %i.q, %i.bb
  br i1 %.not.i.i.i30.us.us, label %.noexc25.thread, label %.critedge.i.us.us, !prof !106

.critedge.i.us.us:                                ; preds = %.noexc24.us.us
  %i.bc = add nsw i32 %.sroa.042.0.us.us, -1
  %i.bd = and i32 %i.bc, %.sroa.042.0.us.us       ; 2 uses
  %i.be = and i32 %i.bd, 4094
  %.not83.us.us = icmp eq i32 %i.be, 0
  br i1 %.not83.us.us, label %.loopexit84.split.us.us, label %.noexc24.us.us, !llvm.loop !6

.loopexit84.split.us.us:                          ; preds = %.critedge.i.us.us, %.noexc23.us
  %i.bf = icmp eq i8 %i.an, 0
  br i1 %i.bf, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %bb.g, !prof !101

bb.g:                                             ; preds = %.loopexit84.split.us.us
  %i.bg = add i64 %.023.i90.us, -1                ; 2 uses
  %i.bh = add i64 %i.u, %.025.i89.us
  %.not.i.us = icmp eq i64 %i.bg, 0
  br i1 %.not.i.us, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %.noexc23.us, !llvm.loop !7

.noexc23:                                         ; preds = %.noexc20, %bb.h
  %.023.i90 = phi i64 [ %i.ck, %bb.h ], [ %i.aa, %.noexc20 ]
  %.025.i89 = phi i64 [ %i.cl, %bb.h ], [ %i.r, %.noexc20 ] ; 2 uses
  %i.bi = and i64 %.025.i89, %i.ab
  %i.bj = shl nsw i64 %i.bi, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp eq <16 x i8> %i.bl, %i.x
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %i.bp = and i32 %i.bo, 4095
  %.not = icmp eq i32 %i.bp, 0
  %i.bq = extractelement <16 x i8> %i.bl, i64 15
  br i1 %.not, label %.loopexit84.split, label %.noexc24.preheader

.noexc24.preheader:                               ; preds = %.noexc23
  %i.br = icmp ne ptr %i.bk, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.br)
  %i.bs = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc24.preheader, %.critedge.i
  %.sroa.042.0 = phi i32 [ %i.bw, %.critedge.i ], [ %i.bo, %.noexc24.preheader ] ; 4 uses
  %i.bt = icmp ne i32 %.sroa.042.0, 0
  call void @llvm.assume(i1 %i.bt)
  %i.bu = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.bv = add nsw i32 %.sroa.042.0, -1
  %i.bw = and i32 %i.bv, %.sroa.042.0             ; 2 uses
  %i.bx = shl nuw nsw i32 %i.bu, 2
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %i.bk, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !104
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.cc ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cd, align 8, !tbaa !105 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !105
  %i.ce = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.cf = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %.not.i.i.i30 = icmp eq i64 %i.q, %i.cg
  br i1 %.not.i.i.i30, label %.noexc25, label %.critedge.i, !prof !106

.noexc25:                                         ; preds = %.noexc24
  %bcmp.i.i.i = call i32 @bcmp(ptr %1, ptr %.sroa.0.0.copyload.i.i, i64 %i.q)
  %i.ch = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ch, label %.noexc25.thread, label %.critedge.i, !prof !107

.critedge.i:                                      ; preds = %.noexc24, %.noexc25
  %i.ci = and i32 %i.bw, 4094
  %.not83 = icmp eq i32 %i.ci, 0
  br i1 %.not83, label %.loopexit84.split, label %.noexc24, !llvm.loop !6

.loopexit84.split:                                ; preds = %.critedge.i, %.noexc23
  %i.cj = icmp eq i8 %i.bq, 0
  br i1 %i.cj, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %bb.h, !prof !101

bb.h:                                             ; preds = %.loopexit84.split
  %i.ck = add i64 %.023.i90, -1                   ; 2 uses
  %i.cl = add i64 %i.u, %.025.i89
  %.not.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %.noexc23, !llvm.loop !7

.noexc25.thread:                                  ; preds = %.noexc25, %.noexc24.us.us
  %.pre-phi = phi i64 [ %i.ax, %.noexc24.us.us ], [ %i.cc, %.noexc25 ]
  %i.cm = phi ptr [ %i.ap, %.noexc24.us.us ], [ %i.bs, %.noexc25 ]
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.pre-phi
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !130
  invoke void @_ZN5folly17FunctionScheduler14cancelFunctionERKSt11unique_lockISt5mutexEPNS0_10RepeatFuncE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr nonnull align 8 poison, ptr noundef %i.cp)
          to label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread" unwind label %bb.i

bb.i:                                             ; preds = %bb.f, %.noexc25.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.thread

"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit": ; preds = %.noexc28
  %.pre98 = load i8, ptr %i.d, align 8, !tbaa !120, !range !54
  %i.cr = trunc nuw i8 %.pre98 to i1
  br i1 %i.cr, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %_ZNSt11unique_lockISt5mutexED2Ev.exit

"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread": ; preds = %bb.h, %.loopexit84.split, %.loopexit84.split.us.us, %bb.g, %bb.e, %.noexc25.thread, %bb.d, %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit"
  %.1106 = phi i1 [ true, %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit" ], [ false, %bb.e ], [ false, %.loopexit84.split.us.us ], [ true, %.noexc25.thread ], [ true, %bb.d ], [ false, %bb.g ], [ false, %.loopexit84.split ], [ false, %bb.h ] ; 2 uses
  %i.cs = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread"
  %i.ct = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cs) #33 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit", %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", %bb.j
  %.1105 = phi i1 [ true, %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit" ], [ %.1106, %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread" ], [ %.1106, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i1 %.1105

bb.k:                                             ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load i8, ptr %i.d, align 8, !tbaa !120, !range !54
  %i.cu = trunc nuw i8 %.pre to i1
  br i1 %i.cu, label %.thread, label %_ZNSt11unique_lockISt5mutexED2Ev.exit34

.thread:                                          ; preds = %.loopexit.split-lp, %bb.i, %bb.k
  %.pn9109 = phi { ptr, i32 } [ %lpad.loopexit, %bb.k ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cq, %bb.i ] ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i33, label %_ZNSt11unique_lockISt5mutexED2Ev.exit34, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.cw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cv) #33 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit34

_ZNSt11unique_lockISt5mutexED2Ev.exit34:          ; preds = %bb.k, %.thread, %bb.l
  %.pn9108 = phi { ptr, i32 } [ %lpad.loopexit, %bb.k ], [ %.pn9109, %.thread ], [ %.pn9109, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn9108
}

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly17FunctionScheduler26cancelAllFunctionsWithLockERSt11unique_lockISt5mutexE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(178) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !120, !range !54, !noundef !55 ; 2 uses
  store i8 %i.d, ptr %i.a, align 1, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i8 1, ptr %i.b, align 1, !tbaa !121
  %.not3 = icmp eq i8 %i.d, 0
  br i1 %.not3, label %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit, label %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, !prof !76

_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.b

_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.a
  %i.e = call noundef ptr @_ZN6google17MakeCheckOpStringIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull @.str.18) ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %.not4 = icmp eq ptr %i.e, null
  br i1 %.not4, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @_ZN5folly17FunctionScheduler9clearHeapEv(ptr noundef nonnull align 8 dereferenceable(178) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.j = load i8, ptr %i.i, align 1, !tbaa !59
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !60   ; 3 uses
  %i.n = and i64 %i.m, 255                        ; 3 uses
  %i.o = icmp samesign ugt i64 %i.n, 3            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.p, align 1 ; 2 uses
  %i.q = zext i16 %.0.copyload.i.i.i.i.i to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.n
  %i.r = xor i64 %notmask.i.i.i.i, -1
  %i.s = lshr i64 %i.r, 12
  %i.t = add nuw nsw i64 %i.s, 1
  %i.u = icmp ult i64 %i.m, 256
  br i1 %i.u, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.f, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.y, %.preheader.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.w = shl nsw i64 %.020.i.i.i, 6
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = add nuw i64 %.020.i.i.i, 1               ; 2 uses
  %i.z = load i64, ptr %i.l, align 8, !tbaa !60
  %i.aa = and i64 %i.z, 255
  %.0.highbits.i.i.i = lshr i64 %i.y, %i.aa
  %i.ab = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.ab, label %.preheader.i.i.i, label %bb.e, !llvm.loop !242

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i16 %.0.copyload.i.i.i.i.i, ptr %i.ad, align 1
  %.pre.i.i.i = load i64, ptr %i.l, align 8, !tbaa !60
  %.pre21.i.i.i = and i64 %.pre.i.i.i, 255
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %.pre21.i.i.i, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  store i64 %.pre-phi.i.i.i, ptr %i.l, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.ae = phi i64 [ %.pre-phi.i.i.i, %bb.f ], [ %i.m, %bb.c ] ; 2 uses
  br i1 %i.o, label %_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE5clearEv.exit

_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i: ; preds = %bb.g
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !30  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %.0.copyload.i17.i.i.i = load i16, ptr %i.ag, align 1
  %i.ah = zext i16 %.0.copyload.i17.i.i.i to i64
  %i.ai = icmp eq i64 %i.ae, 0
  %i.aj = shl nuw nsw i64 %i.ah, 2
  %.neg18.i.i.i = sub nuw nsw i64 -16, %i.aj
  %.neg19.i.i.i = shl i64 -64, %i.ae
  %.0.i.neg.i.i.i = select i1 %i.ai, i64 %.neg18.i.i.i, i64 %.neg19.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.g, align 8, !tbaa !30
end_hunk_2
begin_hunk_3_@_ZN5folly17FunctionScheduler25cancelAllFunctionsAndWaitEv:bb.a
.lr.ph.i:                                         ; preds = %bb.d, %.noexc
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.lr.ph.i
  %.val.val.i = load i8, ptr %i.f, align 1, !tbaa !52, !range !54, !noundef !55
  %i.h = trunc nuw i8 %.val.val.i to i1
  br i1 %i.h, label %.lr.ph.i, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler25cancelAllFunctionsAndWaitEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit", !llvm.loop !243

.thread:                                          ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load i8, ptr %i.b, align 8, !tbaa !120, !range !54
  %i.i = trunc nuw i8 %.pre to i1
  br i1 %i.i, label %bb.f, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.f:                                             ; preds = %.thread, %bb.e
  %lpad.phi9 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread ], [ %lpad.loopexit, %bb.e ] ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !128    ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #33 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.e, %bb.f, %bb.g
  %lpad.phi8 = phi { ptr, i32 } [ %lpad.loopexit, %bb.e ], [ %lpad.phi9, %bb.f ], [ %lpad.phi9, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %lpad.phi8

"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler25cancelAllFunctionsAndWaitEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit": ; preds = %.noexc
  %.pre4 = load i8, ptr %i.b, align 8, !tbaa !120, !range !54
  %i.l = trunc nuw i8 %.pre4 to i1
  br i1 %i.l, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler25cancelAllFunctionsAndWaitEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %_ZNSt11unique_lockISt5mutexED2Ev.exit3

"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler25cancelAllFunctionsAndWaitEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread": ; preds = %bb.c, %bb.d, %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler25cancelAllFunctionsAndWaitEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit"
  %i.m = load ptr, ptr %1, align 8, !tbaa !128    ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.m, null
  br i1 %.not.i.i2, label %_ZNSt11unique_lockISt5mutexED2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler25cancelAllFunctionsAndWaitEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread"
  %i.n = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #33 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit3

_ZNSt11unique_lockISt5mutexED2Ev.exit3:           ; preds = %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler25cancelAllFunctionsAndWaitEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit", %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler25cancelAllFunctionsAndWaitEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly17FunctionScheduler18resetFunctionTimerENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr %1, ptr %2) local_unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #33 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #35
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56, label %bb.c

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.j = load i64, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.k, %i.l
  %.not.i.i = icmp eq i64 %i.j, %i.m
  br i1 %.not.i.i, label %bb.d, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign eq i64 %i.j, 0
  br i1 %i.n, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit

_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit: ; preds = %bb.d
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.h, ptr %1, i64 %i.j)
  %i.o = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.o, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56

_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread: ; preds = %bb.d, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52, !range !54, !noundef !55
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.t = load i8, ptr %i.s, align 16, !tbaa !117, !range !54, !noundef !55
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.x = load i64, ptr %i.w, align 8, !tbaa !91
  %i.y = mul nsw i64 %i.x, 1000
  %i.z = add nsw i64 %i.y, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store i64 %i.z, ptr %i.aa, align 16, !tbaa !61
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56: ; preds = %bb.c, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !60
  %i.ae = icmp ult i64 %i.ad, 256
  br i1 %i.ae, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !61
  invoke void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.ah, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %.noexc21 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit38

.noexc21:                                         ; preds = %bb.g
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !61  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = lshr i64 %i.ai, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1) ; 2 uses
  %i.ak = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.an = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ao = shufflevector <16 x i8> %i.an, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ap = load i64, ptr %i.ac, align 8, !tbaa !60
  %i.aq = and i64 %i.ap, 255                      ; 2 uses
  %i.ar = shl nuw i64 1, %i.aq                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aq
  %i.as = xor i64 %notmask.i, -1                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30 ; 2 uses
  %i.av = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.av
  br i1 %.fr, label %.noexc24.us, label %.noexc24

.noexc24.us:                                      ; preds = %.noexc21, %bb.h
  %.023.i103.us = phi i64 [ %i.bx, %bb.h ], [ %i.ar, %.noexc21 ]
  %.025.i102.us = phi i64 [ %i.by, %bb.h ], [ %i.ai, %.noexc21 ] ; 2 uses
  %i.aw = and i64 %.025.i102.us, %i.as
  %i.ax = shl nsw i64 %i.aw, 6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax ; 3 uses
  %i.az = load <16 x i8>, ptr %i.ay, align 16     ; 2 uses
  %i.ba = icmp eq <16 x i8> %i.az, %i.ao
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %i.bd = and i32 %i.bc, 4095
  %.not94.us = icmp eq i32 %i.bd, 0
  %i.be = extractelement <16 x i8> %i.az, i64 15
  br i1 %.not94.us, label %.loopexit.split.us.us, label %.noexc25.preheader.us

.noexc25.preheader.us:                            ; preds = %.noexc24.us
  %i.bf = icmp ne ptr %i.ay, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bf)
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !103 ; 2 uses
  br label %.noexc25.us.us

.noexc25.us.us:                                   ; preds = %.critedge.i.us.us, %.noexc25.preheader.us
  %.sroa.050.0.us.us = phi i32 [ %i.bu, %.critedge.i.us.us ], [ %i.bc, %.noexc25.preheader.us ] ; 4 uses
  %i.bh = icmp ne i32 %.sroa.050.0.us.us, 0
  call void @llvm.assume(i1 %i.bh)
  %i.bi = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.050.0.us.us, i1 true)
  %i.bj = shl nuw nsw i32 %i.bi, 2
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %i.ay, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !104 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bo ; 2 uses
  %.sroa.0.0.copyload.i.i.us.us = load ptr, ptr %i.bp, align 8, !tbaa !105
  %.sroa.4.0..sroa_idx.i.i.us.us = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.4.0.copyload.i.i.us.us = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.us.us, align 8, !tbaa !105
  %i.bq = ptrtoint ptr %.sroa.4.0.copyload.i.i.us.us to i64
  %i.br = ptrtoint ptr %.sroa.0.0.copyload.i.i.us.us to i64
  %i.bs = sub i64 %i.bq, %i.br
  %.not.i.i.i30.us.us = icmp eq i64 %i.ah, %i.bs
  br i1 %.not.i.i.i30.us.us, label %.noexc26.thread, label %.critedge.i.us.us, !prof !106

.critedge.i.us.us:                                ; preds = %.noexc25.us.us
  %i.bt = add nsw i32 %.sroa.050.0.us.us, -1
  %i.bu = and i32 %i.bt, %.sroa.050.0.us.us       ; 2 uses
  %i.bv = and i32 %i.bu, 4094
  %.not95.us.us = icmp eq i32 %i.bv, 0
  br i1 %.not95.us.us, label %.loopexit.split.us.us, label %.noexc25.us.us, !llvm.loop !6

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.noexc24.us
  %i.bw = icmp eq i8 %i.be, 0
  br i1 %i.bw, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.h, !prof !101

bb.h:                                             ; preds = %.loopexit.split.us.us
  %i.bx = add i64 %.023.i103.us, -1               ; 2 uses
  %i.by = add i64 %i.al, %.025.i102.us
  %.not.i.us = icmp eq i64 %i.bx, 0
  br i1 %.not.i.us, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc24.us, !llvm.loop !7

.noexc24:                                         ; preds = %.noexc21, %bb.i
  %.023.i103 = phi i64 [ %i.db, %bb.i ], [ %i.ar, %.noexc21 ]
  %.025.i102 = phi i64 [ %i.dc, %bb.i ], [ %i.ai, %.noexc21 ] ; 2 uses
  %i.bz = and i64 %.025.i102, %i.as
  %i.ca = shl nsw i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ca ; 3 uses
  %i.cc = load <16 x i8>, ptr %i.cb, align 16     ; 2 uses
  %i.cd = icmp eq <16 x i8> %i.cc, %i.ao
  %i.ce = bitcast <16 x i1> %i.cd to i16
  %i.cf = zext i16 %i.ce to i32                   ; 2 uses
  %i.cg = and i32 %i.cf, 4095
  %.not94 = icmp eq i32 %i.cg, 0
  %i.ch = extractelement <16 x i8> %i.cc, i64 15
  br i1 %.not94, label %.loopexit.split, label %.noexc25.preheader

.noexc25.preheader:                               ; preds = %.noexc24
  %i.ci = icmp ne ptr %i.cb, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load ptr, ptr %i.ab, align 8, !tbaa !103 ; 2 uses
  br label %.noexc25

.noexc25:                                         ; preds = %.noexc25.preheader, %.critedge.i
  %.sroa.050.0 = phi i32 [ %i.cn, %.critedge.i ], [ %i.cf, %.noexc25.preheader ] ; 4 uses
  %i.ck = icmp ne i32 %.sroa.050.0, 0
  call void @llvm.assume(i1 %i.ck)
  %i.cl = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.050.0, i1 true)
  %i.cm = add nsw i32 %.sroa.050.0, -1
  %i.cn = and i32 %i.cm, %.sroa.050.0             ; 2 uses
  %i.co = shl nuw nsw i32 %i.cl, 2
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr i8, ptr %i.cb, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !104 ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.ct ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cu, align 8, !tbaa !105 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !105
  %i.cv = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.cw = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %.not.i.i.i30 = icmp eq i64 %i.ah, %i.cx
  br i1 %.not.i.i.i30, label %.noexc26, label %.critedge.i, !prof !106

.noexc26:                                         ; preds = %.noexc25
  %bcmp.i.i.i = call i32 @bcmp(ptr %1, ptr %.sroa.0.0.copyload.i.i, i64 %i.ah)
  %i.cy = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cy, label %.noexc26.thread, label %.critedge.i, !prof !107

.critedge.i:                                      ; preds = %.noexc25, %.noexc26
  %i.cz = and i32 %i.cn, 4094
  %.not95 = icmp eq i32 %i.cz, 0
  br i1 %.not95, label %.loopexit.split, label %.noexc25, !llvm.loop !6

.loopexit.split:                                  ; preds = %.critedge.i, %.noexc24
  %i.da = icmp eq i8 %i.ch, 0
  br i1 %i.da, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.i, !prof !101

bb.i:                                             ; preds = %.loopexit.split
  %i.db = add i64 %.023.i103, -1                  ; 2 uses
  %i.dc = add i64 %i.al, %.025.i102
  %.not.i = icmp eq i64 %i.db, 0
  br i1 %.not.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc24, !llvm.loop !7

.noexc26.thread:                                  ; preds = %.noexc26, %.noexc25.us.us
  %i.dd = phi i32 [ %i.bn, %.noexc25.us.us ], [ %i.cs, %.noexc26 ]
  %i.de = phi ptr [ %i.bg, %.noexc25.us.us ], [ %i.cj, %.noexc26 ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !53, !range !54, !noundef !55
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.j, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.j:                                             ; preds = %.noexc26.thread
  %i.di = zext i32 %i.dd to i64
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !130 ; 2 uses
  %i.dm = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 200
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !91
  %i.dp = mul nsw i64 %i.do, 1000
  %i.dq = add nsw i64 %i.dp, %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 160
  store i64 %i.dq, ptr %i.dr, align 16, !tbaa !61
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !130 ; 9 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !67 ; 5 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !64
  %i.dy = icmp eq ptr %i.dx, %i.dt
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %spec.select.i.i = select i1 %i.dy, ptr %i.dw, ptr %i.dz
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i.i33 = phi ptr [ %spec.select.i.i, %bb.k ], [ %i.ds, %bb.j ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !64 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !65 ; 3 uses
  %i.ee = icmp eq ptr %i.eb, null                 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, null
  %or.cond.i.i.i = or i1 %i.ee, %i.ef
  br i1 %or.cond.i.i.i, label %bb.m, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.l
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 160
  %.sroa.0.0.copyload.i.i.i.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 16, !tbaa !61
  br label %.preheader.i.i

bb.m:                                             ; preds = %bb.l
  %i.eg = select i1 %i.ee, ptr %i.ed, ptr %i.eb   ; 3 uses
  store ptr %i.eg, ptr %.0.i.i33, align 8, !tbaa !66
  %.not38.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not38.i.i.i, label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.du, ptr %i.eg, align 8, !tbaa !67
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %.sroa.0.0.copyload.i.i.i.i.i = phi i64 [ %i.en, %.preheader.i.i ], [ %.sroa.0.0.copyload.i.i.i.pre.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %.031.i.i.i = phi ptr [ %.031..030.i.i.i, %.preheader.i.i ], [ %i.eb, %.preheader.preheader.i.i ] ; 2 uses
  %.030.i.i.i = phi ptr [ %i.ek, %.preheader.i.i ], [ %i.ed, %.preheader.preheader.i.i ] ; 3 uses
  %.029.i.i.i = phi ptr [ %.030..031.i.i.i, %.preheader.i.i ], [ %i.du, %.preheader.preheader.i.i ]
  %.0.i.i.i34 = phi ptr [ %i.el, %.preheader.i.i ], [ %.0.i.i33, %.preheader.preheader.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.030.i.i.i, i64 160
  %.sroa.0.0.copyload.i3.i.i.i.i = load i64, ptr %i.eh, align 16, !tbaa !61 ; 2 uses
  %i.ei = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i3.i.i.i.i ; 2 uses
  %.031..030.i.i.i = select i1 %i.ei, ptr %.031.i.i.i, ptr %.030.i.i.i, !unpredictable !55 ; 3 uses
  %.030..031.i.i.i = select i1 %i.ei, ptr %.030.i.i.i, ptr %.031.i.i.i, !unpredictable !55 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.030..031.i.i.i, i64 16 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !65 ; 2 uses
  store ptr %.030..031.i.i.i, ptr %.0.i.i.i34, align 8, !tbaa !66
  %i.el = getelementptr inbounds nuw i8, ptr %.030..031.i.i.i, i64 8 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !64
  store ptr %i.em, ptr %i.ej, align 8, !tbaa !65
  store ptr %.029.i.i.i, ptr %.030..031.i.i.i, align 8, !tbaa !67
  %.not.i.i.i35 = icmp eq ptr %i.ek, null
  %i.en = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i3.i.i.i.i)
  br i1 %.not.i.i.i35, label %bb.o, label %.preheader.i.i, !llvm.loop !0

bb.o:                                             ; preds = %.preheader.i.i
  store ptr %.031..030.i.i.i, ptr %i.el, align 8, !tbaa !66
  store ptr %.030..031.i.i.i, ptr %.031..030.i.i.i, align 8, !tbaa !67
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i

_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i8 0, i64 24, i1 false)
  %i.eo = load ptr, ptr %i.ds, align 8, !tbaa !62 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.p, label %.preheader.preheader.i3.i

.preheader.preheader.i3.i:                        ; preds = %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i
  %.phi.trans.insert.i4.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 160
  %.sroa.0.0.copyload.i.i.i.pre.i5.i = load i64, ptr %.phi.trans.insert.i4.i, align 16, !tbaa !61
  br label %.preheader.i6.i

bb.p:                                             ; preds = %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !66
  store ptr null, ptr %i.dt, align 8, !tbaa !67
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit

.preheader.i6.i:                                  ; preds = %.preheader.i6.i, %.preheader.preheader.i3.i
  %.sroa.0.0.copyload.i.i.i.i7.i = phi i64 [ %i.ew, %.preheader.i6.i ], [ %.sroa.0.0.copyload.i.i.i.pre.i5.i, %.preheader.preheader.i3.i ] ; 2 uses
  %.031.i.i8.i = phi ptr [ %.031..030.i.i13.i, %.preheader.i6.i ], [ %i.dt, %.preheader.preheader.i3.i ] ; 2 uses
  %.030.i.i9.i = phi ptr [ %i.et, %.preheader.i6.i ], [ %i.eo, %.preheader.preheader.i3.i ] ; 3 uses
  %.029.i.i10.i = phi ptr [ %.030..031.i.i14.i, %.preheader.i6.i ], [ null, %.preheader.preheader.i3.i ]
  %.0.i.i11.i = phi ptr [ %i.eu, %.preheader.i6.i ], [ %i.ds, %.preheader.preheader.i3.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.030.i.i9.i, i64 160
  %.sroa.0.0.copyload.i3.i.i.i12.i = load i64, ptr %i.eq, align 16, !tbaa !61 ; 2 uses
  %i.er = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i7.i, %.sroa.0.0.copyload.i3.i.i.i12.i ; 2 uses
  %.031..030.i.i13.i = select i1 %i.er, ptr %.031.i.i8.i, ptr %.030.i.i9.i, !unpredictable !55 ; 3 uses
  %.030..031.i.i14.i = select i1 %i.er, ptr %.030.i.i9.i, ptr %.031.i.i8.i, !unpredictable !55 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.030..031.i.i14.i, i64 16 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !65 ; 2 uses
  store ptr %.030..031.i.i14.i, ptr %.0.i.i11.i, align 8, !tbaa !66
  %i.eu = getelementptr inbounds nuw i8, ptr %.030..031.i.i14.i, i64 8 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !64
  store ptr %i.ev, ptr %i.es, align 8, !tbaa !65
  store ptr %.029.i.i10.i, ptr %.030..031.i.i14.i, align 8, !tbaa !67
  %.not.i.i15.i = icmp eq ptr %i.et, null
  %i.ew = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i7.i, i64 %.sroa.0.0.copyload.i3.i.i.i12.i)
  br i1 %.not.i.i15.i, label %bb.q, label %.preheader.i6.i, !llvm.loop !0

bb.q:                                             ; preds = %.preheader.i6.i
  store ptr %.031..030.i.i13.i, ptr %i.eu, align 8, !tbaa !66
  store ptr %.030..031.i.i14.i, ptr %.031..030.i.i13.i, align 8, !tbaa !67
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit

_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit: ; preds = %bb.q, %bb.p
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ex) #33
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit38:          ; preds = %bb.g
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #33 ; 0 uses
  resume { ptr, i32 } %i.ey

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.i, %.loopexit.split, %bb.h, %.loopexit.split.us.us, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56, %bb.e, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread, %bb.f, %.noexc26.thread, %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit
  %.1 = phi i1 [ true, %bb.f ], [ false, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread ], [ false, %bb.e ], [ true, %.noexc26.thread ], [ true, %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit ], [ false, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56 ], [ false, %bb.h ], [ false, %.loopexit.split.us.us ], [ false, %.loopexit.split ], [ false, %bb.i ]
  %i.fa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #33 ; 0 uses
  ret i1 %.1
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly17FunctionScheduler5startEv(ptr noundef nonnull align 8 dereferenceable(178) %0) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.32", align 8 ; 6 uses
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %4 = alloca %class.anon.30, align 8             ; 5 uses
  %5 = alloca %"class.std::thread", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #33 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5folly17FunctionScheduler14runOneFunctionERSt11unique_lockISt5mutexENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ar
  %i.dd = load i64, ptr %i.db, align 16, !tbaa !36
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !56 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !36
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.do = call noundef i64 %i.dm(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.dn, ptr noundef null) #33, !inline_history !8 ; 0 uses
  br label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i

_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i: ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !72 ; 2 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i4.i.i.i, label %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ds = call noundef i64 %i.dq(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.dr, ptr noundef null) #33, !inline_history !9 ; 0 uses
  br label %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i: ; preds = %bb.at, %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 256) #36
  br label %_ZNSt10unique_ptrIN5folly17FunctionScheduler10RepeatFuncESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5folly17FunctionScheduler10RepeatFuncESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread86, %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.au:                                            ; preds = %bb.aj, %bb.ai, %bb.am, %bb.s, %bb.f
  %.merged = phi { ptr, i32 } [ %i.cp, %bb.am ], [ %i.ab, %bb.f ], [ %.pn26, %bb.s ], [ %i.cd, %bb.aj ], [ %.pn28.pn.pn, %bb.ai ]
  call void @_ZNSt10unique_ptrIN5folly17FunctionScheduler10RepeatFuncESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.merged

bb.av:                                            ; preds = %bb.ai
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #34
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #27

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERSt13basic_ostreamINS_14basic_fbstringIT_T0_T1_T2_E10value_typeENSC_11traits_typeEESG_RKSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #28 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.c = load i8, ptr %i.b, align 1, !tbaa !36    ; 3 uses
  %i.d = icmp ult i8 %i.c, 64
  %i.e = select i1 %i.d, ptr %1, ptr %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = zext i8 %i.c to i64
  %i.i = sub nsw i64 23, %i.h
  %i.j = icmp ult i8 %i.c, 24
  %i.k = select i1 %i.j, i64 %i.i, i64 %i.g
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.e, i64 noundef %i.k) ; 0 uses
  ret ptr %0
}

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #13

declare void @_ZN5folly12exceptionStrERKSt9exception(ptr dead_on_unwind writable sret(%"class.folly::basic_fbstring") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !36
  %i.c = icmp slt i8 %i.b, -64
  %i.d = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  br i1 %i.c, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.sink) #33
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JS7_SA_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread71_crit_edge, label %bb.b

..thread71_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30
  %.pre109 = shl nuw i64 1, %i.b
  br label %.thread71

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 6 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 6 uses
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %.sroa.02.0.copyload.i.i = load ptr, ptr %4, align 8 ; 3 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.o = ptrtoint ptr %.sroa.43.0.copyload.i.i to i64
  %i.p = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq ptr %.sroa.43.0.copyload.i.i, %.sroa.02.0.copyload.i.i
  %.fr = freeze i1 %i.r
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %bb.d
  %.023.i89.us = phi i64 [ %i.as, %bb.d ], [ %i.j, %bb.b ]
  %.025.i88.us = phi i64 [ %i.at, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.s = and i64 %.025.i88.us, %i.k
  %i.t = shl nsw i64 %i.s, 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t ; 3 uses
  %i.v = load <16 x i8>, ptr %i.u, align 16       ; 2 uses
  %i.w = icmp eq <16 x i8> %i.v, %i.h
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = and i32 %i.y, 4095
  %.not73.us = icmp eq i32 %i.z, 0
  %i.aa = extractelement <16 x i8> %i.v, i64 15
  br i1 %.not73.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.ab = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ab)
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.us.us, %.preheader.us
  %.sroa.043.0.us.us = phi i32 [ %i.ap, %.critedge.i.us.us ], [ %i.y, %.preheader.us ] ; 4 uses
  %i.ac = icmp ne i32 %.sroa.043.0.us.us, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.043.0.us.us, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !104
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.aj ; 2 uses
  %.sroa.0.0.copyload.i.i.us.us = load ptr, ptr %i.ak, align 8, !tbaa !105
  %.sroa.4.0..sroa_idx.i.i.us.us = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4.0.copyload.i.i.us.us = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.us.us, align 8, !tbaa !105
  %i.al = ptrtoint ptr %.sroa.4.0.copyload.i.i.us.us to i64
  %i.am = ptrtoint ptr %.sroa.0.0.copyload.i.i.us.us to i64
  %i.an = sub i64 %i.al, %i.am
  %.not.i.i.i.us.us = icmp eq i64 %i.q, %i.an
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.us.us, !prof !106

.critedge.i.us.us:                                ; preds = %bb.c
  %i.ao = add nsw i32 %.sroa.043.0.us.us, -1
  %i.ap = and i32 %i.ao, %.sroa.043.0.us.us       ; 2 uses
  %i.aq = and i32 %i.ap, 4094
  %.not74.us.us = icmp eq i32 %i.aq, 0
  br i1 %.not74.us.us, label %.loopexit.split.us.us, label %bb.c, !llvm.loop !6

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.split.us
  %i.ar = icmp eq i8 %i.aa, 0
  br i1 %i.ar, label %.thread71, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit.split.us.us
  %i.as = add i64 %.023.i89.us, -1                ; 2 uses
  %i.at = add i64 %i.e, %.025.i88.us
  %.not.i.us = icmp eq i64 %i.as, 0
  br i1 %.not.i.us, label %.thread71, label %.split.us, !llvm.loop !7

.split:                                           ; preds = %bb.b, %bb.f
  %.023.i89 = phi i64 [ %i.bv, %bb.f ], [ %i.j, %bb.b ]
  %.025.i88 = phi i64 [ %i.bw, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.au = and i64 %.025.i88, %i.k
  %i.av = shl nsw i64 %i.au, 6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.av ; 3 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16     ; 2 uses
  %i.ay = icmp eq <16 x i8> %i.ax, %i.h
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = and i32 %i.ba, 4095
  %.not73 = icmp eq i32 %i.bb, 0
  %i.bc = extractelement <16 x i8> %i.ax, i64 15
  br i1 %.not73, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.bd = icmp ne ptr %i.aw, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bd)
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.043.0 = phi i32 [ %i.bh, %.critedge.i ], [ %i.ba, %.preheader ] ; 4 uses
  %i.be = icmp ne i32 %.sroa.043.0, 0
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.043.0, i1 true)
  %i.bg = add nsw i32 %.sroa.043.0, -1
  %i.bh = and i32 %i.bg, %.sroa.043.0             ; 2 uses
  %i.bi = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = getelementptr i8, ptr %i.aw, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !104
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.bn ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bo, align 8, !tbaa !105 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !105
  %i.bp = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.bq = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.br = sub i64 %i.bp, %i.bq
  %.not.i.i.i = icmp eq i64 %i.q, %i.br
  br i1 %.not.i.i.i, label %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit, label %.critedge.i, !prof !106

_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit: ; preds = %bb.e
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.02.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, i64 %i.q)
  %i.bs = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bs, label %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i, !prof !107

.critedge.i:                                      ; preds = %bb.e, %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit
  %i.bt = and i32 %i.bh, 4094
  %.not74 = icmp eq i32 %i.bt, 0
  br i1 %.not74, label %.loopexit.split, label %bb.e, !llvm.loop !6

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.bu = icmp eq i8 %i.bc, 0
  br i1 %i.bu, label %.thread71, label %bb.f, !prof !101

bb.f:                                             ; preds = %.loopexit.split
  %i.bv = add i64 %.023.i89, -1                   ; 2 uses
  %i.bw = add i64 %i.e, %.025.i88
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %.thread71, label %.split, !llvm.loop !7

_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit, %bb.c
  %.us-phi = phi ptr [ %i.ag, %bb.c ], [ %i.bk, %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit ]
  %.us-phi83 = phi i64 [ %i.ae, %bb.c ], [ %i.bi, %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit ]
  %i.bx = getelementptr i8, ptr %.us-phi, i64 16
  br label %bb.n

.thread71:                                        ; preds = %.loopexit.split, %bb.f, %bb.d, %.loopexit.split.us.us, %..thread71_crit_edge
  %.pre-phi110 = phi i64 [ %.pre109, %..thread71_crit_edge ], [ %i.j, %bb.d ], [ %i.j, %.loopexit.split.us.us ], [ %i.j, %bb.f ], [ %i.j, %.loopexit.split ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread71_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %.loopexit.split.us.us ], [ %i.i, %bb.f ], [ %i.i, %.loopexit.split ]
  %i.by = phi ptr [ %.pre, %..thread71_crit_edge ], [ %i.m, %bb.d ], [ %i.m, %.loopexit.split.us.us ], [ %i.m, %bb.f ], [ %i.m, %.loopexit.split ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %.0.copyload.i.i = load i16, ptr %i.bz, align 1
  %i.ca = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.cb = add i64 %.pre-phi110, -1
  %i.cc = lshr i64 %i.cb, 12
  %i.cd = add nuw nsw i64 %i.cc, 1
  %i.ce = mul i64 %i.cd, %i.ca                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.ce
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread71
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi110, i64 noundef %i.ca, i64 noundef %i.ce)
  %.pre106 = load i64, ptr %i.a, align 8, !tbaa !60
  %.pre107 = load ptr, ptr %i.cf, align 8, !tbaa !30
  %.pre111 = and i64 %.pre106, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread71, %bb.g
  %.pre-phi112 = phi i64 [ %.pre-phi, %.thread71 ], [ %.pre111, %bb.g ]
  %i.cg = phi ptr [ %i.by, %.thread71 ], [ %.pre107, %bb.g ] ; 4 uses
  %notmask.i32 = shl nsw i64 -1, %.pre-phi112
  %i.ch = xor i64 %notmask.i32, -1                ; 2 uses
  %i.ci = and i64 %2, %i.ch
  %i.cj = shl nsw i64 %i.ci, 6                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cj ; 2 uses
  %i.cl = load <16 x i8>, ptr %i.ck, align 16, !tbaa !36
  %i.cm = icmp eq <16 x i8> %i.cl, zeroinitializer
  %i.cn = bitcast <16 x i1> %i.cm to i16
  %i.co = and i16 %i.cn, 4095                     ; 2 uses
  %.not75 = icmp eq i16 %i.co, 0
  br i1 %.not75, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.cp = shl i64 %3, 1
  %i.cq = or disjoint i64 %i.cp, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.cr = phi i64 [ %i.cj, %bb.h ], [ %i.cy, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.cw, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 15 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !127 ; 2 uses
  %.not.i33 = icmp eq i8 %i.cu, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = add i8 %i.cu, 1
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !127
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cw = add i64 %i.cq, %.029                    ; 2 uses
  %i.cx = and i64 %i.cw, %i.ch
  %i.cy = shl nsw i64 %i.cx, 6                    ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cy
  %i.da = load <16 x i8>, ptr %i.cz, align 16     ; 2 uses
  %i.db = icmp eq <16 x i8> %i.da, zeroinitializer
  %i.dc = bitcast <16 x i1> %i.db to i16
  %i.dd = and i16 %i.dc, 4095                     ; 2 uses
  %.not76 = icmp eq i16 %i.dd, 0
  br i1 %.not76, label %bb.i, label %bb.k, !llvm.loop !701

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cy ; 2 uses
  %i.df = extractelement <16 x i8> %i.da, i64 14
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 14
  %i.dh = add i8 %i.df, 16
  store i8 %i.dh, ptr %i.dg, align 2, !tbaa !126
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.037.0.in = phi i16 [ %i.co, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.dd, %bb.k ]
  %.1 = phi ptr [ %i.ck, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.de, %bb.k ] ; 3 uses
  %i.di = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.037.0.in, i1 true)
  %i.dj = zext nneg i16 %i.di to i64              ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dj ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !36
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.24) #38
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.dn = trunc i64 %3 to i8
  store i8 %i.dn, ptr %i.dk, align 1, !tbaa !36
  %i.do = shl nuw nsw i64 %i.dj, 2
  %i.dp = getelementptr i8, ptr %.1, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 16     ; 3 uses
  %i.dr = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dr)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dq) ]
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !60
  %i.dt = lshr i64 %i.ds, 8                       ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  store i32 %i.du, ptr %i.dq, align 4, !tbaa !104
  %i.dv = load ptr, ptr %1, align 8, !tbaa !103, !nonnull !55, !noundef !55
  %i.dw = and i64 %i.dt, 4294967295
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !702
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %6, align 8, !tbaa !109
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !130
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.eb = and i64 %i.ea, -256
  %i.ec = add i64 %i.eb, 256
  %i.ed = and i64 %i.ea, 255
  %i.ee = or disjoint i64 %i.ec, %i.ed
  store i64 %i.ee, ptr %i.a, align 8, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink134 = phi ptr [ %i.bx, %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.dq, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi83.sink = phi i64 [ %.us-phi83, %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.dj, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink134, ptr %0, align 8, !tbaa !703
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi83.sink, ptr %.sroa.542.0..sroa_idx, align 8, !tbaa !61
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ef, align 8, !tbaa !706
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
end_hunk_4
