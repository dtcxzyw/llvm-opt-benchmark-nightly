Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/file?download=true
inline.NumInlined: 2099
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4pbrt8LogFatalIJRA18_KcRA2_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt11ThreadLocalIP23libdeflate_decompressorEC2EOSt8functionIFS2_vEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = tail call noundef i32 @_ZN4pbrt14RunningThreadsEv() ; 3 uses
  %i.c = shl nsw i32 %i.b, 2
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp slt i32 %i.b, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EE17_S_check_init_lenEmRKS9_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
  unreachable

_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EE17_S_check_init_lenEmRKS9_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EEC2EmRKS9_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EEC2EmRKS9_.exit.thread.i: ; preds = %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EE17_S_check_init_lenEmRKS9_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EE17_S_check_init_lenEmRKS9_.exit.i
  %i.f = mul nuw nsw i64 %i.d, 24                 ; 3 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32 ; 4 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.f, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.g, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EEC2EmRKS9_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EEC2EmRKS9_.exit.thread.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EEC2EmRKS9_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %.sink.i, ptr %i.j, align 8, !tbaa !68
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.i, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFP23libdeflate_decompressorvEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !70
  store <2 x ptr> %i.p, ptr %i.l, align 8, !tbaa !70
  br label %_ZNSt8functionIFP23libdeflate_decompressorvEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %.body unwind label %bb.g      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #34
  unreachable

_ZNSt8functionIFP23libdeflate_decompressorvEEC2ERKS3_.exit: ; preds = %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.e, %bb.f
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #28
  br label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EED2Ev.exit

_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt11ThreadLocalIP23libdeflate_decompressorED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #28
  br label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EED2Ev.exit

_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEESaIS8_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pbrt11ThreadLocalIP23libdeflate_decompressorE3GetEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::thread::id", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.c = tail call i64 @pthread_self() #33
  store i64 %i.c, ptr %1, align 8
  %i.d = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNKSt4hashINSt6thread2idEEclERKS1_.exit:         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  %i.o = and i64 %i.d, 4294967295
  %i.p = urem i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit
  %i.r = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #29
  switch i32 %i.r, label %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

_ZNSt12shared_mutex11lock_sharedEv.exit.preheader: ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 1, ptr %i.a, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.x, ptr %i.b, align 8, !tbaa !40
  %i.y = icmp ugt i64 %i.x, 1
  br i1 %i.y, label %.lr.ph, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.rhs.trunc = trunc nuw i64 %i.x to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #31
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge: ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  call void @_ZN4pbrt8LogFatalIJRA8_KcRA17_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.55, i32 noundef 72, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(8) @.str.56, ptr noundef nonnull align 1 dereferenceable(17) @.str.57, ptr noundef nonnull align 1 dereferenceable(8) @.str.56, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.57, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #31
  unreachable

bb.e:                                             ; preds = %.lr.ph, %_ZNSt12shared_mutex11lock_sharedEv.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 2 uses
  %.02547 = phi i32 [ %i.q, %.lr.ph ], [ %.4, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 3 uses
  %indvars59 = trunc i64 %indvars.iv to i32       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.z = zext i32 %.02547 to i64                  ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !131, !range !36, !noundef !37
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit, label %bb.f

_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit: ; preds = %bb.e
  %.sroa.03.0.copyload = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.ae = icmp eq i64 %.sroa.03.0.copyload, %.sroa.0.0.copyload
  br i1 %i.ae, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit32, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.af = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #29 ; 0 uses
  %i.ag = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #29
  %i.ah = icmp eq i32 %i.ag, 35
  br i1 %i.ah, label %bb.g, label %_ZNSt12shared_mutex4lockEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #31
  unreachable

_ZNSt12shared_mutex4lockEv.exit:                  ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.h, label %_ZNKSt8functionIFP23libdeflate_decompressorvEEclEv.exit

bb.h:                                             ; preds = %_ZNSt12shared_mutex4lockEv.exit
  call void @_ZSt25__throw_bad_function_callv() #31
  unreachable

_ZNKSt8functionIFP23libdeflate_decompressorvEEclEv.exit: ; preds = %_ZNSt12shared_mutex4lockEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !61
  %i.an = call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.ak), !inline_history !127
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !67  ; 4 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.z
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !131, !range !36, !noundef !37
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.preheader, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit33

.preheader:                                       ; preds = %_ZNKSt8functionIFP23libdeflate_decompressorvEEclEv.exit
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %.rhs.trunc37 = trunc nuw i64 %i.ax to i32
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.k
  %.127 = phi i32 [ %i.az, %bb.k ], [ %indvars59, %.preheader ] ; 2 uses
  %.1 = phi i32 [ %.2, %bb.k ], [ %.02547, %.preheader ]
  %i.ay = add i32 %.1, %.127                      ; 3 uses
  %i.az = add nuw nsw i32 %.127, 1
  %i.ba = zext i32 %i.ay to i64                   ; 2 uses
  %.not = icmp ugt i64 %i.ax, %i.ba
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = urem i32 %i.ay, %.rhs.trunc37           ; 2 uses
  %.pre = zext i32 %i.bb to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi = phi i64 [ %.pre, %bb.j ], [ %i.ba, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %i.bb, %bb.j ], [ %i.ay, %bb.i ]
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.pre-phi
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !131, !range !36, !noundef !37
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.i, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit33, !llvm.loop !128

_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit33: ; preds = %bb.k, %_ZNKSt8functionIFP23libdeflate_decompressorvEEclEv.exit
  %.pre-phi60 = phi i64 [ %i.z, %_ZNKSt8functionIFP23libdeflate_decompressorvEEclEv.exit ], [ %.pre-phi, %bb.k ]
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.pre-phi60 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %1, align 8, !tbaa !40
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !64
  store i8 1, ptr %i.bh, align 8, !tbaa !131
  br label %_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit32

bb.l:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit
  %i.bj = add i32 %.02547, %indvars59             ; 3 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 3 uses
  %i.bk = zext i32 %i.bj to i64
  %.not31 = icmp ugt i64 %i.x, %i.bk
  br i1 %.not31, label %_ZNSt12shared_mutex11lock_sharedEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = urem i32 %i.bj, %.rhs.trunc
  br label %_ZNSt12shared_mutex11lock_sharedEv.exit

_ZNSt12shared_mutex11lock_sharedEv.exit:          ; preds = %bb.m, %bb.l
  %.4 = phi i32 [ %i.bl, %bb.m ], [ %i.bj, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.bm = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.x, ptr %i.b, align 8, !tbaa !40
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %bb.e, !llvm.loop !129

_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit32: ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit, %_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit33
  %.pn = phi ptr [ %i.bg, %_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit33 ], [ %i.aa, %_ZN4pstd8optionalIN4pbrt11ThreadLocalIP23libdeflate_decompressorE5EntryEEptEv.exit ]
  %i.bn = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #29 ; 0 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret ptr %.0
}

declare i32 @libdeflate_gzip_decompress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA10_KcRA20_S1_S3_RmS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(20) %5, ptr noundef nonnull align 1 dereferenceable(10) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !38, !alias.scope !134
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !134
  store i8 0, ptr %i.a, align 8, !tbaa !23, !alias.scope !134
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA10_KcJRA20_S2_S4_RmS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(20) %5, ptr noundef nonnull align 1 dereferenceable(10) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4pbrt12StringPrintfIJRA10_KcRA20_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !22, !alias.scope !134 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !23, !alias.scope !134
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA10_KcRA20_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !22
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA10_KcRA20_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA10_KcRA20_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !22    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !38, !alias.scope !137
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !137
  store i8 0, ptr %i.a, align 8, !tbaa !23, !alias.scope !137
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !22, !alias.scope !137 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !23, !alias.scope !137
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !22
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.h) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA10_KcRA3_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(10) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(3) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !38, !alias.scope !140
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !140
  store i8 0, ptr %i.a, align 8, !tbaa !23, !alias.scope !140
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA10_KcJRA3_S2_S4_RiS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(10) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(3) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA10_KcRA3_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !22, !alias.scope !140 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !23, !alias.scope !140
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA10_KcRA3_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !22
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA10_KcRA3_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA10_KcRA3_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !22    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noalias noundef ptr @_ZN4pbrt9FOpenReadENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call noalias ptr @fopen(ptr noundef %i.a, ptr noundef nonnull @.str.16)
  ret ptr %i.b
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noalias noundef ptr @_ZN4pbrt10FOpenWriteENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call noalias ptr @fopen(ptr noundef %i.a, ptr noundef nonnull @.str.17)
  ret ptr %i.b
end_hunk_0
