Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/threadpool_imp?download=true
inline.NumInlined: 863
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb14ThreadPoolImpl4Impl6SubmitEOSt8functionIFvvEES5_Pv:bb.a
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 16, i1 false), !tbaa.struct !62
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.ah, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = getelementptr inbounds i8, ptr %i.af, i64 -48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !86 ; 3 uses
  store ptr %i.ap, ptr %i.an, align 16, !tbaa !86
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !86
  %i.aq = getelementptr inbounds i8, ptr %i.af, i64 -40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !86
  store ptr %i.ar, ptr %i.ai, align 8, !tbaa !86
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !86
  %.not.i.i12 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i12, label %_ZNSt8functionIFvvEEaSEOS1_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  %i.as = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt8functionIFvvEEaSEOS1_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #28
  unreachable

_ZNSt8functionIFvvEEaSEOS1_.exit:                 ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.av = getelementptr inbounds i8, ptr %i.af, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.not.i.i15 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.not.i.i15, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i16, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFvvEEaSEOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i16

_ZNSt8functionIFvvEEC2EOS1_.exit.i16:             ; preds = %bb.n, %_ZNSt8functionIFvvEEaSEOS1_.exit
  %.sroa.0.i.i.i14.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 16, i1 false), !tbaa.struct !62
  store <2 x i64> %.sroa.0.i.i.i14.sroa.0.0.copyload, ptr %i.av, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = getelementptr inbounds i8, ptr %i.af, i64 -16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !86 ; 3 uses
  store ptr %i.bd, ptr %i.bb, align 16, !tbaa !86
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !86
  %i.be = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !86
  store ptr %i.bf, ptr %i.aw, align 8, !tbaa !86
  store ptr %i.ay, ptr %i.be, align 8, !tbaa !86
  %.not.i.i17 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i17, label %_ZNSt8functionIFvvEEaSEOS1_.exit19, label %bb.o

bb.o:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i16
  %i.bg = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFvvEEaSEOS1_.exit19 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #28
  unreachable

_ZNSt8functionIFvvEEaSEOS1_.exit19:               ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i16, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !63 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = lshr exact i64 %i.br, 3
  %i.bt = icmp ne ptr %i.bm, null
  %.neg.i.i = sext i1 %i.bt to i64
  %i.bu = add nsw i64 %i.bs, %.neg.i.i
  %i.bv = mul i64 %i.bu, 7
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.bx = load ptr, ptr %i.x, align 8, !tbaa !64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 72
  %i.cc = add i64 %i.bv, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !65
  %i.cf = load ptr, ptr %i.bk, align 8, !tbaa !57
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 72
  %i.ck = add i64 %i.cc, %i.cj
  %i.cl = trunc i64 %i.ck to i32
  store atomic i32 %i.cl, ptr %i.bj monotonic, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !52
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !51
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = lshr exact i64 %i.cs, 3
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !48
  %i.cx = icmp slt i32 %i.cw, %i.cu
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br i1 %i.cx, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZNSt8functionIFvvEEaSEOS1_.exit19
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cy) #26
  br label %bb.u

bb.r:                                             ; preds = %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.e
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb14ThreadPoolImpl4Impl6BGItemD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.v

bb.t:                                             ; preds = %_ZNSt8functionIFvvEEaSEOS1_.exit19
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cy) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.db = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  ret void

bb.v:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.da, %bb.s ], [ %i.cz, %bb.r ]
  %i.dc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb14ThreadPoolImpl4Impl6BGItemD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7rocksdb14ThreadPoolImpl4Impl10UnScheduleEPv(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %3 = alloca %"class.std::vector.7", align 8     ; 13 uses
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #29
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57, !noalias !174 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57, !noalias !175 ; 2 uses
  %i.j = icmp eq ptr %i.e, %i.i
  %.pre54 = load ptr, ptr %i.g, align 8, !tbaa !63 ; 2 uses
  %.pre56 = load ptr, ptr %i.f, align 8, !tbaa !65 ; 2 uses
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIN7rocksdb14ThreadPoolImpl4Impl6BGItemERS3_PS3_EppEv.exit
  %i.o = phi ptr [ %i.i, %.lr.ph ], [ %i.ao, %_ZNSt15_Deque_iteratorIN7rocksdb14ThreadPoolImpl4Impl6BGItemERS3_PS3_EppEv.exit ] ; 2 uses
  %.01146 = phi i32 [ 0, %.lr.ph ], [ %.112, %_ZNSt15_Deque_iteratorIN7rocksdb14ThreadPoolImpl4Impl6BGItemERS3_PS3_EppEv.exit ] ; 3 uses
  %.sroa.20.045 = phi ptr [ %.pre54, %.lr.ph ], [ %.sroa.20.1, %_ZNSt15_Deque_iteratorIN7rocksdb14ThreadPoolImpl4Impl6BGItemERS3_PS3_EppEv.exit ] ; 4 uses
  %.sroa.16.044 = phi ptr [ %.pre56, %.lr.ph ], [ %.sroa.16.1, %_ZNSt15_Deque_iteratorIN7rocksdb14ThreadPoolImpl4Impl6BGItemERS3_PS3_EppEv.exit ] ; 2 uses
  %.sroa.029.043 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.029.1, %_ZNSt15_Deque_iteratorIN7rocksdb14ThreadPoolImpl4Impl6BGItemERS3_PS3_EppEv.exit ] ; 6 uses
  %i.p = load ptr, ptr %.sroa.029.043, align 8, !tbaa !85
  %i.q = icmp eq ptr %1, %i.p
  br i1 %i.q, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.029.043, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.029.043, i64 56 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %.not.i.i16.not = icmp eq ptr %i.t, null
  br i1 %.not.i.i16.not, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %5, align 8, !tbaa !89     ; 6 uses
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !90
  %.not.i.i17 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i17, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.029.043, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 24, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60
  store ptr %i.y, ptr %i.w, align 8, !tbaa !60
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !61
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !62
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !61
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i

_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ac = load ptr, ptr %5, align 8, !tbaa !89
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ad, ptr %5, align 8, !tbaa !89
  br label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZSt12construct_atISt8functionIFvvEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i, %bb.h, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  store ptr %.sroa.029.043, ptr %2, align 8, !tbaa !57, !alias.scope !176, !noalias !177
  %i.ag = load ptr, ptr %.sroa.20.045, align 8, !tbaa !70, !noalias !178 ; 2 uses
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !64, !alias.scope !176, !noalias !177
  %6 = getelementptr inbounds nuw i8, ptr %i.ag, i64 504
  store ptr %6, ptr %i.m, align 8, !tbaa !65, !alias.scope !176, !noalias !177
  store ptr %.sroa.20.045, ptr %i.n, align 8, !tbaa !63, !alias.scope !176, !noalias !177
  invoke void @_ZNSt5dequeIN7rocksdb14ThreadPoolImpl4Impl6BGItemESaIS3_EE8_M_eraseESt15_Deque_iteratorIS3_RS3_PS3_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.sroa.029.0.copyload = load ptr, ptr %4, align 8, !tbaa !70
  %.sroa.16.0.copyload = load ptr, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !70
  %.sroa.20.0.copyload = load ptr, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ah = add nsw i32 %.01146, 1
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !57, !noalias !175
  br label %_ZNSt15_Deque_iteratorIN7rocksdb14ThreadPoolImpl4Impl6BGItemERS3_PS3_EppEv.exit

bb.l:                                             ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.r

bb.m:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.029.043, i64 72 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.16.044
  br i1 %i.ak, label %bb.n, label %_ZNSt15_Deque_iteratorIN7rocksdb14ThreadPoolImpl4Impl6BGItemERS3_PS3_EppEv.exit

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.20.045, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !70 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 504
  br label %_ZNSt15_Deque_iteratorIN7rocksdb14ThreadPoolImpl4Impl6BGItemERS3_PS3_EppEv.exit

_ZNSt15_Deque_iteratorIN7rocksdb14ThreadPoolImpl4Impl6BGItemERS3_PS3_EppEv.exit: ; preds = %bb.n, %bb.m, %bb.k
  %i.ao = phi ptr [ %.pre, %bb.k ], [ %i.o, %bb.n ], [ %i.o, %bb.m ] ; 3 uses
  %.sroa.029.1 = phi ptr [ %.sroa.029.0.copyload, %bb.k ], [ %i.am, %bb.n ], [ %i.aj, %bb.m ] ; 2 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.0.copyload, %bb.k ], [ %i.an, %bb.n ], [ %.sroa.16.044, %bb.m ]
  %.sroa.20.1 = phi ptr [ %.sroa.20.0.copyload, %bb.k ], [ %i.al, %bb.n ], [ %.sroa.20.045, %bb.m ]
  %.112 = phi i32 [ %i.ah, %bb.k ], [ %.01146, %bb.n ], [ %.01146, %bb.m ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.029.1, %i.ao
  br i1 %i.ap, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !173

._crit_edge.loopexit:                             ; preds = %_ZNSt15_Deque_iteratorIN7rocksdb14ThreadPoolImpl4Impl6BGItemERS3_PS3_EppEv.exit
  %.pre53 = load ptr, ptr %i.g, align 8, !tbaa !63
  %.pre55 = load ptr, ptr %i.f, align 8, !tbaa !65
  %.pre57 = load ptr, ptr %i.d, align 8, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aq = phi ptr [ %i.e, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.pre57, %._crit_edge.loopexit ]
  %i.ar = phi ptr [ %.pre56, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.pre55, %._crit_edge.loopexit ]
  %i.as = phi ptr [ %.pre54, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.pre53, %._crit_edge.loopexit ]
  %.011.lcssa = phi i32 [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.112, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.e, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %i.ao, %._crit_edge.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !63 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = lshr exact i64 %i.az, 3
  %i.bb = icmp ne ptr %i.aw, null
  %.neg.i.i = sext i1 %i.bb to i64
  %i.bc = add nsw i64 %i.ba, %.neg.i.i
  %i.bd = mul i64 %i.bc, 7
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !64
  %i.bf = ptrtoint ptr %.lcssa to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 72
  %i.bj = add i64 %i.bd, %i.bi
  %i.bk = ptrtoint ptr %i.ar to i64
  %i.bl = ptrtoint ptr %i.aq to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 72
  %i.bo = add i64 %i.bj, %i.bn
  %i.bp = trunc i64 %i.bo to i32
  store atomic i32 %i.bp, ptr %i.av monotonic, align 4
  %i.bq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  %i.br = load ptr, ptr %3, align 8, !tbaa !179   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !179 ; 2 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph50

._crit_edge51:                                    ; preds = %_ZNKSt8functionIFvvEEclEv.exit
  %.pre58 = load ptr, ptr %3, align 8, !tbaa !92  ; 3 uses
  %.pre59 = load ptr, ptr %i.bs, align 8, !tbaa !89 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre58, %.pre59
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge51, %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ca, %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i ], [ %.pre58, %._crit_edge51 ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #28
  unreachable

_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i:  ; preds = %bb.o, %.lr.ph.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, %.pre59
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !92
  br label %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %._crit_edge, %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge51
  %i.cb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %.pre58, %._crit_edge51 ], [ %i.br, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !90
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #25
  br label %_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev.exit

_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i32 %.011.lcssa

bb.r:                                             ; preds = %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.af, %bb.j ]
  %i.ch = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  br label %bb.u

.lr.ph50:                                         ; preds = %._crit_edge, %_ZNKSt8functionIFvvEEclEv.exit
  %.sroa.023.048 = phi ptr [ %i.cm, %_ZNKSt8functionIFvvEEclEv.exit ], [ %i.br, %._crit_edge ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.023.048, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !61
  %.not.i.i20 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i20, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph50
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %.lr.ph50
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.023.048, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !60
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.048)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit, !inline_history !1

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.023.048, i64 32 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bt
  br i1 %i.cn, label %._crit_edge51, label %.lr.ph50

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %.pn, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i, label %bb.b
end_hunk_0
