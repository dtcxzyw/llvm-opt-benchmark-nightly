Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrator?download=true
inline.NumInlined: 4025
inline.NumDeleted: 1526
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4pbrt23WavefrontPathIntegratorC2EPN4pstd3pmr15memory_resourceERNS_10BasicSceneE:bb.a

bb.ex:                                            ; preds = %bb.ew
  %i.aei = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !615
  %i.aek = ptrtoint ptr %i.aej to i64
  %i.ael = ptrtoint ptr %i.aeh to i64
  %i.aem = sub i64 %i.aek, %i.ael
  call void @_ZdlPvm(ptr noundef nonnull %i.aeh, i64 noundef %i.aem) #32
  br label %_ZNSt6vectorIN4pbrt8MaterialESaIS1_EED2Ev.exit248

_ZNSt6vectorIN4pbrt8MaterialESaIS1_EED2Ev.exit248: ; preds = %bb.ew, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt8MaterialESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ak, %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit119, %_ZNSt6vectorIN4pbrt8MaterialESaIS1_EED2Ev.exit248, %bb.aj
  %.pn104.pn = phi { ptr, i32 } [ %i.ec, %bb.aj ], [ %.pn102, %_ZNSt6vectorIN4pbrt8MaterialESaIS1_EED2Ev.exit248 ], [ %i.ha, %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit119 ], [ %i.ed, %bb.ak ]
  call void @_ZNSt3mapIiPN4pstd6vectorIN4pbrt5LightENS0_3pmr21polymorphic_allocatorIS3_EEEESt4lessIiESaISt4pairIKiS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ai
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %bb.ey ], [ %i.eb, %bb.ai ]
  call void @_ZN4pbrt13NamedTexturesD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %10) #29
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ah
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn, %bb.ez ], [ %i.ea, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ag
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn, %bb.fa ], [ %i.dz, %bb.ag ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt6MediumESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #29
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.k
  %.pn104.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn, %bb.fb ], [ %i.ba, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.j
  %.pn104.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn, %bb.fc ], [ %i.az, %bb.j ]
  call void @_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %7) #29
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %_ZNSt14_Function_baseD2Ev.exit114
  %.pn104.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn.pn, %bb.fd ], [ %i.au, %_ZNSt14_Function_baseD2Ev.exit114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEC2EOSt8functionIFS5_vEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = tail call noundef i32 @_ZN4pbrt14RunningThreadsEv() ; 3 uses
  %i.c = shl nsw i32 %i.b, 2
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp slt i32 %i.b, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #33
  unreachable

_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EEC2EmRKSB_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EEC2EmRKSB_.exit.thread.i: ; preds = %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i
  %i.f = mul nuw nsw i64 %i.d, 24                 ; 3 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 4 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !175
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.f, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.g, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EEC2EmRKSB_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EEC2EmRKSB_.exit.thread.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EEC2EmRKSB_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %.sink.i, ptr %i.j, align 8, !tbaa !176
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.i, align 8, !tbaa !177
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEC2ERKS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !138
  store <2 x ptr> %i.p, ptr %i.l, align 8, !tbaa !138
  br label %_ZNSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEC2ERKS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !76   ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %.body unwind label %bb.g      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #30
  unreachable

_ZNSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEC2ERKS6_.exit: ; preds = %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.e, %bb.f
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #32
  br label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit

_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.q
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEE3GetEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::thread::id", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.c = tail call i64 @pthread_self() #34
  store i64 %i.c, ptr %1, align 8
  %i.d = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #30
  unreachable

_ZNKSt4hashINSt6thread2idEEclERKS1_.exit:         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !175
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
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !177
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !175  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = sdiv exact i64 %i.w, 24                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 1, ptr %i.a, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.x, ptr %i.b, align 8, !tbaa !178
  %i.y = icmp ugt i64 %i.w, 24
  br i1 %i.y, label %.lr.ph, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  %.sroa.02.0.copyload = load i64, ptr %1, align 8
  %.rhs.trunc = trunc nuw i64 %i.x to i32
  %umax = call i64 @llvm.umax.i64(i64 %i.x, i64 2)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #33
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge: ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  call void @_ZN4pbrt8LogFatalIJRA8_KcRA17_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.76, i32 noundef 72, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(8) @.str.78, ptr noundef nonnull align 1 dereferenceable(17) @.str.79, ptr noundef nonnull align 1 dereferenceable(8) @.str.78, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.79, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #33
  unreachable

bb.e:                                             ; preds = %.lr.ph, %_ZNSt12shared_mutex11lock_sharedEv.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 2 uses
  %.02546 = phi i32 [ %i.q, %.lr.ph ], [ %.4, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 3 uses
  %indvars58 = trunc i64 %indvars.iv to i32       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.z = zext i32 %.02546 to i64                  ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !620, !range !118, !noundef !119
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit, label %bb.f

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit: ; preds = %bb.e
  %.sroa.03.0.copyload = load i64, ptr %i.aa, align 8, !tbaa !178
  %i.ae = icmp eq i64 %.sroa.03.0.copyload, %.sroa.02.0.copyload
  br i1 %i.ae, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit32, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.af = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #29 ; 0 uses
  %i.ag = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #29
  %i.ah = icmp eq i32 %i.ag, 35
  br i1 %i.ah, label %bb.g, label %_ZNSt12shared_mutex4lockEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #33
  unreachable

_ZNSt12shared_mutex4lockEv.exit:                  ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.h, label %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit

bb.h:                                             ; preds = %_ZNSt12shared_mutex4lockEv.exit
  call void @_ZSt25__throw_bad_function_callv() #33
  unreachable

_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit: ; preds = %_ZNSt12shared_mutex4lockEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75
  %i.an = call ptr %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.ak), !inline_history !616
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !175 ; 4 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.z
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !620, !range !118, !noundef !119
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.preheader, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33

.preheader:                                       ; preds = %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !177
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %.rhs.trunc36 = trunc nuw i64 %i.ax to i32
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.k
  %.127 = phi i32 [ %i.az, %bb.k ], [ %indvars58, %.preheader ] ; 2 uses
  %.1 = phi i32 [ %.2, %bb.k ], [ %.02546, %.preheader ]
  %i.ay = add i32 %.1, %.127                      ; 3 uses
  %i.az = add nuw nsw i32 %.127, 1
  %i.ba = zext i32 %i.ay to i64                   ; 2 uses
  %.not = icmp ugt i64 %i.ax, %i.ba
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = urem i32 %i.ay, %.rhs.trunc36           ; 2 uses
  %.pre = zext i32 %i.bb to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi = phi i64 [ %.pre, %bb.j ], [ %i.ba, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %i.bb, %bb.j ], [ %i.ay, %bb.i ]
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.pre-phi
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !620, !range !118, !noundef !119
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.i, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33, !llvm.loop !617

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33: ; preds = %bb.k, %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit
  %.pre-phi59 = phi i64 [ %i.z, %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit ], [ %.pre-phi, %bb.k ]
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.pre-phi59 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %1, align 8, !tbaa !178
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !178
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  store i8 1, ptr %i.bh, align 8, !tbaa !620
  br label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit32

bb.l:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit
  %i.bj = add i32 %.02546, %indvars58             ; 3 uses
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
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.x, ptr %i.b, align 8, !tbaa !178
  %exitcond.not = icmp eq i64 %indvars.iv.next, %umax
  br i1 %exitcond.not, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %bb.e, !llvm.loop !618

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit32: ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33
  %.pn = phi ptr [ %i.bg, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33 ], [ %i.aa, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit ]
  %i.bn = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #29 ; 0 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare void @_ZN4pbrt10BasicScene11CreateMediaB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::map") align 8, ptr noundef nonnull align 8 dereferenceable(1520)) local_unnamed_addr #1

declare void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4pbrt10BasicScene14CreateTexturesEv(ptr dead_on_unwind writable sret(%"struct.pbrt::NamedTextures") align 8, ptr noundef nonnull align 8 dereferenceable(1520)) local_unnamed_addr #1

declare void @_ZN4pbrt10BasicScene12CreateLightsERKNS_13NamedTexturesEPSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEE(ptr dead_on_unwind writable sret(%"class.std::vector.117") align 8, ptr noundef nonnull align 8 dereferenceable(1520), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef) local_unnamed_addr #1

declare void @_ZN4pbrt10BasicScene15CreateMaterialsERKNS_13NamedTexturesEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8MaterialESt4lessISA_ESaISt4pairIKSA_SB_EEEPSt6vectorISB_SaISB_EE(ptr noundef nonnull align 8 dereferenceable(1520), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pbrtL19updateMaterialNeedsENS_8MaterialEPN4pstd5arrayIbLi12EEES4_PbS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %"class.pbrt::BasicTextureEvaluator", align 1 ; 3 uses
  %6 = alloca %class.anon.207, align 8            ; 4 uses
  %7 = alloca %"class.pbrt::BasicTextureEvaluator", align 1 ; 3 uses
  %8 = alloca %class.anon.207, align 8            ; 4 uses
  %9 = alloca %"class.pbrt::Material", align 8    ; 2 uses
  %10 = alloca %"class.pbrt::Material", align 8   ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 4 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = load i8, ptr %4, align 1, !tbaa !179, !range !118, !noundef !119
  %i.d = zext i1 %i.b to i8
  %i.e = or i8 %i.c, %i.d
  store i8 %i.e, ptr %4, align 1, !tbaa !179
  %i.f = and i64 %i.a, 144115188075855871         ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.mask.i.i = and i64 %i.a, -144115188075855872  ; 2 uses
  %i.g = icmp eq i64 %.mask.i.i, 1585267068834414592
  %i.h = inttoptr i64 %i.f to ptr                 ; 13 uses
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %7, ptr %8, align 8, !tbaa !662
  %i.i = call noundef zeroext i1 @_ZN4pbrt6detail8DispatchIRZNKS_8Material19CanEvaluateTexturesINS_21BasicTextureEvaluatorEEEbT_EUlS5_E_bNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialEJNS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %i.h, i32 noundef 10)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4pbrt9ErrorExitIJRNS_11MixMaterialEEEEvPKcDpOT_(ptr noundef nonnull @.str.57, ptr noundef nonnull align 8 dereferenceable(24) %i.h) #33
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !109, !noalias !663
  store i64 %i.k, ptr %9, align 8, !tbaa !109, !alias.scope !663
  call fastcc void @_ZN4pbrtL19updateMaterialNeedsENS_8MaterialEPN4pstd5arrayIbLi12EEES4_PbS5_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %9, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !109, !noalias !664
  store i64 %i.m, ptr %10, align 8, !tbaa !109, !alias.scope !664
  call fastcc void @_ZN4pbrtL19updateMaterialNeedsENS_8MaterialEPN4pstd5arrayIbLi12EEES4_PbS5_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %switch.selectcmp7.i.i.i.i = icmp eq i64 %.mask.i.i, 1297036692682702848
  %i.n = load i8, ptr %3, align 1, !tbaa !179, !range !118, !noundef !119
  %i.o = zext i1 %switch.selectcmp7.i.i.i.i to i8
  %i.p = or i8 %i.n, %i.o
  store i8 %i.p, ptr %3, align 1, !tbaa !179
  %i.q = lshr i64 %i.a, 57
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = add nsw i32 %i.r, -1                     ; 3 uses
  switch i32 %i.s, label %bb.n [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %_ZNK4pbrt8Material15GetDisplacementEv.exit
    i32 7, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.h, align 8, !tbaa !181, !noalias !665
  br label %_ZNK4pbrt8Material15GetDisplacementEv.exit

bb.h:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.h, align 8, !tbaa !181, !noalias !666
  br label %_ZNK4pbrt8Material15GetDisplacementEv.exit

bb.i:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.h, align 8, !tbaa !181, !noalias !667
  br label %_ZNK4pbrt8Material15GetDisplacementEv.exit

bb.j:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !181, !noalias !668
  br label %_ZNK4pbrt8Material15GetDisplacementEv.exit

bb.k:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !181, !noalias !669
  br label %_ZNK4pbrt8Material15GetDisplacementEv.exit

bb.l:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !181, !noalias !670
  br label %_ZNK4pbrt8Material15GetDisplacementEv.exit

bb.m:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !181, !noalias !671
  br label %_ZNK4pbrt8Material15GetDisplacementEv.exit

bb.n:                                             ; preds = %bb.f
  %i.ac = and i32 %i.s, -2
  %switch.i.i.i.i = icmp eq i32 %i.ac, 8
  br i1 %switch.i.i.i.i, label %_ZN4pbrt6detail8DispatchIRZNKS_8Material15GetDisplacementEvEUlT_E_NS_12FloatTextureENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEET0_OS3_PKvi.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.65, i32 noundef 304, ptr noundef nonnull @.str.66) #33, !noalias !672
  unreachable

_ZN4pbrt6detail8DispatchIRZNKS_8Material15GetDisplacementEvEUlT_E_NS_12FloatTextureENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEET0_OS3_PKvi.exit.i.i.i: ; preds = %bb.n
  %storemerge.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !181, !noalias !672
  br label %_ZNK4pbrt8Material15GetDisplacementEv.exit

_ZNK4pbrt8Material15GetDisplacementEv.exit:       ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %_ZN4pbrt6detail8DispatchIRZNKS_8Material15GetDisplacementEvEUlT_E_NS_12FloatTextureENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEET0_OS3_PKvi.exit.i.i.i
  %storemerge.i.sink.i.i.i = phi i64 [ %storemerge.i.i.i.i, %_ZN4pbrt6detail8DispatchIRZNKS_8Material15GetDisplacementEvEUlT_E_NS_12FloatTextureENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEET0_OS3_PKvi.exit.i.i.i ], [ %i.ab, %bb.m ], [ %i.t, %bb.g ], [ %i.aa, %bb.l ], [ %i.z, %bb.k ], [ %i.x, %bb.j ], [ %i.v, %bb.i ], [ %i.u, %bb.h ], [ 0, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr %5, ptr %6, align 8, !tbaa !662
  %i.ad = call noundef zeroext i1 @_ZN4pbrt6detail8DispatchIRZNKS_8Material19CanEvaluateTexturesINS_21BasicTextureEvaluatorEEEbT_EUlS5_E_bNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialEJNS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.h, i32 noundef %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.ad, label %bb.p, label %_ZNK4pbrt21BasicTextureEvaluator11CanEvaluateESt16initializer_listINS_12FloatTextureEES1_INS_15SpectrumTextureEE.exit

bb.p:                                             ; preds = %_ZNK4pbrt8Material15GetDisplacementEv.exit
  %i.ae = and i64 %storemerge.i.sink.i.i.i, 144115188075855871
  %.not24 = icmp eq i64 %i.ae, 0
  br i1 %.not24, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.af = add i64 %storemerge.i.sink.i.i.i, -144115188075855872
  %i.ag = lshr i64 %i.af, 57
  switch i64 %i.ag, label %_ZNK4pbrt21BasicTextureEvaluator11CanEvaluateESt16initializer_listINS_12FloatTextureEES1_INS_15SpectrumTextureEE.exit [
    i64 5, label %.critedge.i
    i64 0, label %.critedge.i
    i64 11, label %.critedge.i
    i64 1, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.p, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ah = load i64, ptr %0, align 8, !tbaa !109
  %i.ai = lshr i64 %i.ah, 57
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  store i8 1, ptr %i.aj, align 1, !tbaa !179
  br label %bb.q

_ZNK4pbrt21BasicTextureEvaluator11CanEvaluateESt16initializer_listINS_12FloatTextureEES1_INS_15SpectrumTextureEE.exit: ; preds = %_ZNK4pbrt8Material15GetDisplacementEv.exit, %.lr.ph.i
  %i.ak = load i64, ptr %0, align 8, !tbaa !109
  %i.al = lshr i64 %i.ak, 57
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  store i8 1, ptr %i.am, align 1, !tbaa !179
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i, %_ZNK4pbrt21BasicTextureEvaluator11CanEvaluateESt16initializer_listINS_12FloatTextureEES1_INS_15SpectrumTextureEE.exit, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt10BasicScene9GetCameraEv(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Camera") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1520) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pstd::optional.218", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNSt5mutex4lockEv.exit.preheader, label %bb.b

_ZNSt5mutex4lockEv.exit.preheader:                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !110
  %i.e = and i64 %i.d, 144115188075855871
  %.not2 = icmp eq i64 %i.e, 0
  br i1 %.not2, label %.lr.ph, label %_ZNSt5mutex4lockEv.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNSt5mutex4lockEv.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c
end_hunk_0
begin_hunk_1_@_ZNK4pbrt11GBufferFilm11GetPixelRGBENS_6Point2IiEEf:_ZN4pbrt3RGBixEi.exit.2
  %i.af = load atomic i64, ptr %i.ad seq_cst, align 8
  %i.ag = load float, ptr %i.ae, align 8, !tbaa !1294
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ai = load atomic i64, ptr %i.ah seq_cst, align 8
  %i.aj = load float, ptr %i.ae, align 8, !tbaa !1294
  %i.ak = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.al = insertelement <2 x i64> %i.ak, i64 %i.ai, i64 1
  %i.am = bitcast <2 x i64> %i.al to <2 x double>
  %i.an = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.ao, %i.am
  %i.aq = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.aj, i64 1
  %i.as = fpext <2 x float> %i.ar to <2 x double>
  %i.at = fdiv <2 x double> %i.ap, %i.as
  %i.au = fpext <2 x float> %.sroa.0.0 to <2 x double>
  %i.av = fadd <2 x double> %i.at, %i.au
  %i.aw = fptrunc <2 x double> %i.av to <2 x float> ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ay = load atomic i64, ptr %i.ax seq_cst, align 8
  %i.az = load float, ptr %i.ae, align 8, !tbaa !1294
  %i.ba = bitcast i64 %i.ay to double
  %i.bb = fmul double %i.ac, %i.ba
  %i.bc = fpext float %i.az to double
  %i.bd = fdiv double %i.bb, %i.bc
  %i.be = fpext float %.sroa.11.0 to double
  %i.bf = fadd double %i.bd, %i.be
  %i.bg = fptrunc double %i.bf to float           ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 836
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !437
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.aw, i64 0 ; 3 uses
  %i.bj = fmul float %i.bi, %.sroa.0.0.vec.extract
  %i.bk = fadd float %i.bj, 0.000000e+00
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !437
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.aw, i64 1 ; 3 uses
  %i.bn = fmul float %i.bm, %.sroa.0.4.vec.extract
  %i.bo = fadd float %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !437
  %i.br = fmul float %i.bq, %i.bg
  %i.bs = fadd float %i.bo, %i.br
  %.sroa.014.i.4.vec.insert.i = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !437
  %i.bv = fmul float %.sroa.0.0.vec.extract, %i.bu
  %i.bw = fadd float %i.bv, 0.000000e+00
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.by = load float, ptr %i.bx, align 4, !tbaa !437
  %i.bz = fmul float %.sroa.0.4.vec.extract, %i.by
  %i.ca = fadd float %i.bz, %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !437
  %i.cd = fmul float %i.cc, %i.bg
  %i.ce = fadd float %i.cd, %i.ca
  %.sroa.014.i.4.vec.insert10.i = insertelement <2 x float> %.sroa.014.i.4.vec.insert.i, float %i.ce, i64 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !437
  %i.ch = fmul float %.sroa.0.0.vec.extract, %i.cg
  %i.ci = fadd float %i.ch, 0.000000e+00
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !437
  %i.cl = fmul float %.sroa.0.4.vec.extract, %i.ck
  %i.cm = fadd float %i.cl, %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.co = load float, ptr %i.cn, align 4, !tbaa !437
  %i.cp = fmul float %i.co, %i.bg
  %i.cq = fadd float %i.cp, %i.cm
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.014.i.4.vec.insert10.i, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.cq, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

declare { <2 x float>, float } @_ZNK4pbrt12SpectralFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(180), i64, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E9_M_invokeERKSt9_Any_dataOl"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #23 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !138   ; 4 uses
  %.val2 = load i64, ptr %1, align 8, !tbaa !178  ; 2 uses
  %i.a = trunc i64 %.val2 to i32                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1296
  %i.d = load i32, ptr %.val, align 8, !tbaa !440 ; 2 uses
  %i.e = srem i32 %i.a, %i.d
  %i.f = sdiv i32 %i.a, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = load float, ptr %i.g, align 8, !tbaa !1297 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !111  ; 2 uses
  %i.k = and i64 %i.j, 144115188075855871
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %.sroa.0.0.copyload.i.i12.pn.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i12.pn.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i12.pn.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i12.pn.i.i.i.i.i.i to i32
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i12.pn.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.m = add nsw i32 %i.e, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.n = add nsw i32 %i.f, %.sroa.2.0.extract.trunc.i.i.i.i
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.n to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.m to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i ; 3 uses
  %i.o = lshr i64 %i.j, 57
  %i.p = trunc nuw nsw i64 %i.o to i32
  switch i32 %i.p, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = tail call { <2 x float>, float } @_ZNK4pbrt7RGBFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(168) %i.l, i64 %.sroa.0.0.insert.insert.i.i.i.i, float noundef 1.000000e+00)
  br label %"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS0_7Bounds2IiEEfPNS0_3RGBEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

bb.c:                                             ; preds = %bb.a
  %i.r = tail call { <2 x float>, float } @_ZNK4pbrt11GBufferFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(872) %i.l, i64 %.sroa.0.0.insert.insert.i.i.i.i, float noundef 1.000000e+00)
  br label %"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS0_7Bounds2IiEEfPNS0_3RGBEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

bb.d:                                             ; preds = %bb.a
  %i.s = tail call { <2 x float>, float } @_ZNK4pbrt12SpectralFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(180) %i.l, i64 %.sroa.0.0.insert.insert.i.i.i.i, float noundef 1.000000e+00)
  br label %"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS0_7Bounds2IiEEfPNS0_3RGBEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS0_7Bounds2IiEEfPNS0_3RGBEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.b, %bb.c, %bb.d
  %.pn.i.i.i16.i.i.i = phi { <2 x float>, float } [ %i.s, %bb.d ], [ %i.q, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %.fca.0.extract3.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i16.i.i.i, 0
  %.fca.1.extract4.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i16.i.i.i, 1
  %i.t = insertelement <2 x float> poison, float %i.h, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %.fca.0.extract3.i.i.i
  %i.w = fmul float %i.h, %.fca.1.extract4.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1298
  %sext.i.i = shl i64 %.val2, 32
  %i.z = ashr exact i64 %sext.i.i, 32
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.y, i64 %i.z ; 2 uses
  store <2 x float> %i.v, ptr %i.aa, align 4
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store float %i.w, ptr %.sroa.413.0..sroa_idx.i.i.i, align 4, !tbaa !437
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS_7Bounds2IiEEfPNS_3RGBEE3$_0", ptr %0, align 8, !tbaa !339
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !138
  store ptr %.val, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !138 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #32
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_integrator.cpp() #25 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !437
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !437
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !437
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !437
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL24STATS_REGprimitiveMemoryE, ptr noundef nonnull @"_ZN4pbrt3$_28__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL28STATS_REGpathIntegratorBytesE, ptr noundef nonnull @"_ZN4pbrt3$_68__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #24

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn }
attributes #34 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{null}
!1 = distinct !{null, null, null}
!2 = distinct !{null, null, null, null}
!3 = distinct !{null, null, null, null}
!4 = distinct !{!4, !106}
!5 = distinct !{null, null, null, null}
!6 = distinct !{null, null, null, null}
!7 = distinct !{null, null, null, null}
!8 = distinct !{null, null, null, null}
!9 = distinct !{null, null, null, null, null}
!10 = distinct !{null, null, null, null, null}
!11 = distinct !{null, null, null, null}
!12 = distinct !{null, null, null, null}
!13 = distinct !{null, null, null}
!14 = distinct !{null, null, null, null, null}
!15 = distinct !{null, null, null}
!16 = distinct !{null, null, null, null}
!17 = distinct !{null, null, null}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!22 = !{!"Simple C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!"__libc_errno", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"bool", !23, i64 0}
!28 = !{!"_ZTSN4pstd5arrayIbLi12EEE", !23, i64 0}
!29 = !{!"any pointer", !23, i64 0}
!30 = !{!"p1 _ZTSN4pbrt23WavefrontPathIntegrator5StatsE", !29, i64 0}
!31 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !29, i64 0}
!32 = !{!"long", !23, i64 0}
!33 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEEE", !32, i64 0}
!34 = !{!"_ZTSN4pbrt6FilterE", !33, i64 0}
!35 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEEE", !32, i64 0}
!36 = !{!"_ZTSN4pbrt4FilmE", !35, i64 0}
!37 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerENS_15DebugMLTSamplerEEEE", !32, i64 0}
!38 = !{!"_ZTSN4pbrt7SamplerE", !37, i64 0}
!39 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17PerspectiveCameraENS_18OrthographicCameraENS_15SphericalCameraENS_15RealisticCameraEEEE", !32, i64 0}
!40 = !{!"_ZTSN4pbrt6CameraE", !39, i64 0}
!41 = !{!"p1 _ZTSN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEEE", !29, i64 0}
!42 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_19UniformLightSamplerENS_17PowerLightSamplerENS_22ExhaustiveLightSamplerENS_15BVHLightSamplerEEEE", !32, i64 0}
!43 = !{!"_ZTSN4pbrt12LightSamplerE", !42, i64 0}
!44 = !{!"p1 float", !29, i64 0}
!45 = !{!"p1 int", !29, i64 0}
!46 = !{!"_ZTSN4pbrt3SOAINS_6Point2IiEEEE", !24, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"p1 _ZTSN4pbrt6Float4E", !29, i64 0}
!48 = !{!"_ZTSN4pbrt3SOAINS_18SampledWavelengthsEEE", !24, i64 0, !47, i64 8, !47, i64 16, !44, i64 24, !44, i64 32}
!49 = !{!"_ZTSN4pbrt3SOAINS_15SampledSpectrumEEE", !24, i64 0, !47, i64 8, !44, i64 16}
!50 = !{!"p1 bool", !29, i64 0}
!51 = !{!"_ZTSN4pbrt3SOAINS_6Point3IfEEEE", !24, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!52 = !{!"_ZTSN4pbrt3SOAINS_7Normal3IfEEEE", !24, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!53 = !{!"_ZTSN4pbrt3SOAINS_6Point2IfEEEE", !24, i64 0, !44, i64 8, !44, i64 16}
!54 = !{!"_ZTSN4pbrt3SOAINS_7Vector3IfEEEE", !24, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!55 = !{!"_ZTSN4pbrt3SOAINS_14VisibleSurfaceEEE", !24, i64 0, !50, i64 8, !51, i64 16, !52, i64 48, !52, i64 80, !53, i64 112, !44, i64 136, !54, i64 144, !54, i64 176, !49, i64 208}
!56 = !{!"_ZTSN4pbrt3SOAINS_10RaySamplesEEE", !47, i64 0, !47, i64 8, !47, i64 16, !44, i64 24, !44, i64 32}
!57 = !{!"_ZTSN4pbrt3SOAINS_16PixelSampleStateEEE", !24, i64 0, !44, i64 8, !46, i64 16, !48, i64 40, !49, i64 80, !49, i64 104, !55, i64 128, !56, i64 360}
!58 = !{!"p1 _ZTSN4pbrt18WavefrontAggregateE", !29, i64 0}
!59 = !{!"p1 _ZTSN4pbrt17MediumSampleQueueE", !29, i64 0}
!60 = !{!"p1 _ZTSN4pbrt14MultiWorkQueueINS_8TypePackIJNS_21MediumScatterWorkItemINS_15HGPhaseFunctionEEEEEEEE", !29, i64 0}
!61 = !{!"p1 _ZTSN4pbrt15EscapedRayQueueE", !29, i64 0}
!62 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_20HitAreaLightWorkItemEEE", !29, i64 0}
!63 = !{!"p1 _ZTSN4pbrt14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS2_INS_23CoatedConductorMaterialEEENS2_INS_17ConductorMaterialEEENS2_INS_18DielectricMaterialEEENS2_INS_15DiffuseMaterialEEENS2_INS_27DiffuseTransmissionMaterialEEENS2_INS_12HairMaterialEEENS2_INS_16MeasuredMaterialEEENS2_INS_18SubsurfaceMaterialEEENS2_INS_22ThinDielectricMaterialEEENS2_INS_11MixMaterialEEEEEEEE", !29, i64 0}
!64 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_17ShadowRayWorkItemEEE", !29, i64 0}
!65 = !{!"p1 _ZTSN4pbrt25GetBSSRDFAndProbeRayQueueE", !29, i64 0}
!66 = !{!"p1 _ZTSN4pbrt22SubsurfaceScatterQueueE", !29, i64 0}
!67 = !{!"p1 _ZTSN4pbrt3RGBE", !29, i64 0}
!68 = !{!"p1 _ZTSSt6atomicIbE", !29, i64 0}
!69 = !{!"p1 _ZTSSt6thread", !29, i64 0}
!70 = !{!"_ZTSN4pbrt23WavefrontPathIntegratorE", !27, i64 0, !27, i64 1, !27, i64 2, !28, i64 3, !28, i64 15, !30, i64 32, !31, i64 40, !34, i64 48, !36, i64 56, !38, i64 64, !40, i64 72, !41, i64 80, !43, i64 88, !24, i64 96, !24, i64 100, !27, i64 104, !24, i64 108, !24, i64 112, !57, i64 120, !23, i64 520, !58, i64 536, !59, i64 544, !60, i64 552, !61, i64 560, !62, i64 568, !63, i64 576, !63, i64 584, !64, i64 592, !65, i64 600, !66, i64 608, !67, i64 616, !67, i64 624, !68, i64 632, !69, i64 640}
!71 = !{!42, !32, i64 0}
!72 = !{!31, !31, i64 0}
!73 = !{!"_ZTSSt14_Function_base", !23, i64 0, !29, i64 16}
!74 = !{!"_ZTSSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEE", !73, i64 0, !29, i64 24}
!75 = !{!74, !29, i64 24}
!76 = !{!73, !29, i64 16}
!77 = !{!70, !27, i64 2}
!78 = !{!"p1 _ZTSN4pbrt16ShapeSceneEntityE", !29, i64 0}
!79 = !{!"p1 _ZTSN4pbrt24AnimatedShapeSceneEntityE", !29, i64 0}
!80 = !{!"p1 omnipotent char", !29, i64 0}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !80, i64 0}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !81, i64 0, !32, i64 8, !23, i64 16}
!83 = !{!82, !32, i64 8}
!84 = !{!"_ZTSSt14_Rb_tree_color", !23, i64 0}
!85 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !29, i64 0}
!86 = !{!"_ZTSSt18_Rb_tree_node_base", !84, i64 0, !85, i64 8, !85, i64 16, !85, i64 24}
!87 = !{!"_ZTSSt15_Rb_tree_header", !86, i64 0, !32, i64 32}
!88 = !{!"_ZTSN4pbrt8LogLevelE", !23, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0}
!91 = !{!"_ZTSN4pbrt14InternedStringE", !90, i64 0}
!92 = !{!87, !85, i64 8}
!93 = !{!"vtable pointer", !22, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!70, !41, i64 80}
!96 = !{!"p1 _ZTSN4pbrt5LightE", !29, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEEE", !32, i64 0}
!99 = !{!98, !32, i64 0}
!100 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIN4pbrt5LightEEE", !31, i64 0}
!101 = !{!"_ZTSN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEEE", !100, i64 0, !96, i64 8, !32, i64 16, !32, i64 24}
!102 = !{!101, !32, i64 16}
!103 = !{!101, !32, i64 24}
!104 = !{!100, !31, i64 0}
!105 = !{!101, !96, i64 8}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!"p1 _ZTSN4pbrt8MaterialE", !29, i64 0}
!108 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEEE", !32, i64 0}
!109 = !{!108, !32, i64 0}
!110 = !{!39, !32, i64 0}
!111 = !{!35, !32, i64 0}
!112 = !{!37, !32, i64 0}
!113 = !{!"p1 _ZTSN4pbrt11PBRTOptionsE", !29, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!"_ZTSN4pbrt25RenderingCoordinateSystemE", !23, i64 0}
!116 = !{!"_ZTSN4pbrt16BasicPBRTOptionsE", !24, i64 0, !27, i64 4, !27, i64 5, !27, i64 6, !27, i64 7, !27, i64 8, !27, i64 9, !27, i64 10, !27, i64 11, !27, i64 12, !27, i64 13, !115, i64 16}
!117 = !{!116, !27, i64 10}
!118 = !{i8 0, i8 2}
!119 = !{}
!120 = !{!70, !58, i64 536}
!121 = !{!81, !80, i64 0}
!122 = !{!23, !23, i64 0}
!123 = !{!82, !80, i64 0}
!124 = !{!91, !90, i64 0}
!125 = !{!70, !24, i64 96}
!126 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EiEE", !24, i64 0, !24, i64 4}
!127 = !{!"_ZTSN4pbrt6Point2IiEE", !126, i64 0}
!128 = !{!"float", !23, i64 0}
!129 = !{!70, !24, i64 100}
!130 = !{!24, !24, i64 0}
!131 = !{!70, !24, i64 108}
!132 = !{!70, !24, i64 112}
!133 = !{!57, !24, i64 0}
end_hunk_1
