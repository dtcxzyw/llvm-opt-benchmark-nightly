Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexFastScan?download=true
inline.NumInlined: 578
inline.NumDeleted: 228
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@llvm.lifetime.end.p0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 7 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.e = sub i64 9223372036854775807, %i.b
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %1, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %i.d)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !19
  br label %.sink.split.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %i.b
  br i1 %i.o, label %.sink.split.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !28
  %i.p = load ptr, ptr %0, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.q, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %bb.g, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss13IndexFastScan17search_implem_234INS_4CMaxIflEEEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(26) %6) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::unique_ptr.5", align 8 ; 7 uses
  %9 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !51
  store i64 %3, ptr %i.b, align 8, !tbaa !51
  store ptr %4, ptr %i.c, align 8, !tbaa !55
  store ptr %5, ptr %i.d, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !59
  %.off = add i32 %i.i, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !28
  store i8 0, ptr %i.j, align 8, !tbaa !19
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #10 ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.l to i64                ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.o)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %7, align 8, !tbaa !16
  %i.q = load i64, ptr %i.k, align 8, !tbaa !28
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #10 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.n)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.t = call ptr @__cxa_allocate_exception(i64 40) #10 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss13IndexFastScan17search_implem_234INS_4CMaxIflEEEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE, ptr noundef nonnull @.str.1, i32 noundef 384)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %bb.w unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.t) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.u, %bb.h ]
  %i.v = load ptr, ptr %7, align 8, !tbaa !16     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.x = load i64, ptr %i.j, align 8, !tbaa !19
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.ad = mul i64 %i.ac, %i.aa                    ; 3 uses
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.ae = mul i64 %i.ad, %1                       ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 4611686018427387903
  %i.ag = shl i64 %i.ae, 2
  %i.ah = select i1 %i.af, i64 -1, i64 %i.ag
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #29 ; 4 uses
  store ptr %i.ai, ptr %8, align 8, !tbaa !55
  %i.aj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %i.ai, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(26) %6)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.am = shl nsw i64 %1, 1                       ; 2 uses
  %i.an = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.an, label %bb.l, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i, label %.thread, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ao = shl nsw i64 %1, 3                       ; 3 uses
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #29
          to label %bb.n unwind label %bb.p       ; 9 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.ap, ptr %9, align 8, !tbaa !64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !66
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !67
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %.idx.i.i.i.i.i.i.i = add i64 %i.ao, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !67
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !68
  %i.av = load i32, ptr %i.h, align 4, !tbaa !59
  %.off26 = add i32 %i.av, -3
  %switch27 = icmp ult i32 %.off26, 2
  br i1 %switch27, label %.preheader, label %.loopexit

.thread:                                          ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit.thread

.preheader:                                       ; preds = %bb.n
  %i.aw = icmp sgt i64 %1, 0
  br i1 %i.aw, label %.lr.ph, label %.loopexit.thread

bb.o:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit33

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.035 = phi i64 [ %i.bf, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %i.az = mul i64 %i.ad, %.035
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.az
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.bc = load i64, ptr %i.z, align 8, !tbaa !63
  %.idx = shl nuw nsw i64 %.035, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  invoke void @_ZN5faiss12quantize_lut22round_uint8_per_columnEPfmmS1_S1_(ptr noundef nonnull %i.ba, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.bf = add nuw nsw i64 %.035, 1                ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %1
  br i1 %i.bg, label %.lr.ph, label %.loopexit, !llvm.loop !69

bb.r:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %.idx47 = shl nsw i64 %1, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %.idx47) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.loopexit:                                        ; preds = %bb.q, %bb.n
  %i.bi = icmp sgt i64 %1, 1000
  br i1 %i.bi, label %bb.s, label %.loopexit.thread

bb.s:                                             ; preds = %.loopexit
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK5faiss13IndexFastScan17search_implem_234INS_4CMaxIflEEEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %0, ptr nonnull %8, ptr nonnull %i.e, ptr nonnull %6, ptr nonnull %9)
  %.pre = load ptr, ptr %9, align 8, !tbaa !64
  br label %bb.t

.loopexit.thread:                                 ; preds = %.thread, %.preheader, %.loopexit
  %i.bj = phi ptr [ %i.ap, %.loopexit ], [ null, %.thread ], [ %i.ap, %.preheader ]
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !60
  call void @_ZNK5faiss13IndexFastScan17search_implem_234INS_4CMaxIflEEEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE.omp_outlined(ptr nonnull %i.f, ptr nonnull poison, ptr %i.a, ptr %i.d, ptr %i.b, ptr %i.c, ptr nonnull %0, ptr %8, ptr %i.e, ptr %6, ptr %9) #10
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.thread, %bb.s
  %i.bk = phi ptr [ %i.bj, %.loopexit.thread ], [ %.pre, %bb.s ] ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIfSaIfEED2Ev.exit30, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !66
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit30

_ZNSt6vectorIfSaIfEED2Ev.exit30:                  ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.bq = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit30
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #28
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit30, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.r, %bb.p
  %.pn22 = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %i.bh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit33

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit33: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.o
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.ax, %bb.o ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit33 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn22.pn.pn

bb.w:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: nounwind
declare i32 @omp_get_max_threads() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss13IndexFastScan16search_implem_12INS_4CMaxItiEEEEvlPKflPfPliRKNS_30FastScanDistancePostProcessingE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(26) %7) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"struct.faiss::FastScanDistancePostProcessing", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39
  %i.e = icmp eq i32 %i.d, 32
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !28
  store i8 0, ptr %i.f, align 8, !tbaa !19
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #10 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.k)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %8, align 8, !tbaa !16
  %i.m = load i64, ptr %i.g, align 8, !tbaa !28
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #10 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.j)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.p = call ptr @__cxa_allocate_exception(i64 40) #10 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss13IndexFastScan16search_implem_12INS_4CMaxItiEEEEvlPKflPfPliRKNS_30FastScanDistancePostProcessingE, ptr noundef nonnull @.str.1, i32 noundef 444)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %bb.be unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.p) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.q, %bb.h ]
  %i.r = load ptr, ptr %8, align 8, !tbaa !16     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.t = load i64, ptr %i.f, align 8, !tbaa !19
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.bd

bb.j:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !70   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %bb.k

end_hunk_0
begin_hunk_1_@_ZNK5faiss13IndexFastScan22search_dispatch_implemILb0EEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE:bb.a

bb.ai:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bp, ptr %11, align 8, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.bq, align 8, !tbaa !28
  store i8 0, ptr %i.bp, align 8, !tbaa !19
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %i.k, i32 noundef %i.aq) #10 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.bt = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.bu)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bv = load ptr, ptr %11, align 8, !tbaa !16
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !28
  %i.bx = load i32, ptr %i.j, align 4, !tbaa !59
  %i.by = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bv, i64 noundef %i.bw, ptr noundef nonnull @.str.5, i32 noundef %i.bx, i32 noundef %i.aq) #10 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.bt)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak, %bb.aj
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak, %bb.ai
  %i.ca = call ptr @__cxa_allocate_exception(i64 40) #10 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss13IndexFastScan22search_dispatch_implemILb0EEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE, ptr noundef nonnull @.str.1, i32 noundef 372)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %bb.at unwind label %bb.al

bb.ao:                                            ; preds = %bb.am
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ca) #10
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.al ], [ %i.cb, %bb.ao ]
  %i.cc = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bp
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.ap
  %i.ce = load i64, ptr %i.bp, align 8, !tbaa !19
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.as

bb.aq:                                            ; preds = %bb.s, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %bb.ar

bb.ar:                                            ; preds = %bb.a, %bb.aq
  ret void

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.pn37.pn = phi { ptr, i32 } [ %.pn3754, %bb.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  resume { ptr, i32 } %.pn37.pn

bb.at:                                            ; preds = %bb.an, %bb.z, %bb.p, %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss13IndexFastScan17search_implem_234INS_4CMinIflEEEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(26) %6) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::unique_ptr.5", align 8 ; 7 uses
  %9 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !51
  store i64 %3, ptr %i.b, align 8, !tbaa !51
  store ptr %4, ptr %i.c, align 8, !tbaa !55
  store ptr %5, ptr %i.d, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !59
  %.off = add i32 %i.i, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !28
  store i8 0, ptr %i.j, align 8, !tbaa !19
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #10 ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.l to i64                ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.o)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %7, align 8, !tbaa !16
  %i.q = load i64, ptr %i.k, align 8, !tbaa !28
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #10 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.n)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.t = call ptr @__cxa_allocate_exception(i64 40) #10 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss13IndexFastScan17search_implem_234INS_4CMinIflEEEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE, ptr noundef nonnull @.str.1, i32 noundef 384)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %bb.w unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.t) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.u, %bb.h ]
  %i.v = load ptr, ptr %7, align 8, !tbaa !16     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.x = load i64, ptr %i.j, align 8, !tbaa !19
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.ad = mul i64 %i.ac, %i.aa                    ; 3 uses
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.ae = mul i64 %i.ad, %1                       ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 4611686018427387903
  %i.ag = shl i64 %i.ae, 2
  %i.ah = select i1 %i.af, i64 -1, i64 %i.ag
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #29 ; 4 uses
  store ptr %i.ai, ptr %8, align 8, !tbaa !55
  %i.aj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %i.ai, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(26) %6)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.am = shl nsw i64 %1, 1                       ; 2 uses
  %i.an = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.an, label %bb.l, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i, label %.thread, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ao = shl nsw i64 %1, 3                       ; 3 uses
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #29
          to label %bb.n unwind label %bb.p       ; 9 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.ap, ptr %9, align 8, !tbaa !64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !66
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !67
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %.idx.i.i.i.i.i.i.i = add i64 %i.ao, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !67
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !68
  %i.av = load i32, ptr %i.h, align 4, !tbaa !59
  %.off26 = add i32 %i.av, -3
  %switch27 = icmp ult i32 %.off26, 2
  br i1 %switch27, label %.preheader, label %.loopexit

.thread:                                          ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit.thread

.preheader:                                       ; preds = %bb.n
  %i.aw = icmp sgt i64 %1, 0
  br i1 %i.aw, label %.lr.ph, label %.loopexit.thread

bb.o:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit33

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.035 = phi i64 [ %i.bf, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %i.az = mul i64 %i.ad, %.035
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.az
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.bc = load i64, ptr %i.z, align 8, !tbaa !63
  %.idx = shl nuw nsw i64 %.035, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  invoke void @_ZN5faiss12quantize_lut22round_uint8_per_columnEPfmmS1_S1_(ptr noundef nonnull %i.ba, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.bf = add nuw nsw i64 %.035, 1                ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %1
  br i1 %i.bg, label %.lr.ph, label %.loopexit, !llvm.loop !109

bb.r:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %.idx47 = shl nsw i64 %1, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %.idx47) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.loopexit:                                        ; preds = %bb.q, %bb.n
  %i.bi = icmp sgt i64 %1, 1000
  br i1 %i.bi, label %bb.s, label %.loopexit.thread

bb.s:                                             ; preds = %.loopexit
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK5faiss13IndexFastScan17search_implem_234INS_4CMinIflEEEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %0, ptr nonnull %8, ptr nonnull %i.e, ptr nonnull %6, ptr nonnull %9)
  %.pre = load ptr, ptr %9, align 8, !tbaa !64
  br label %bb.t

.loopexit.thread:                                 ; preds = %.thread, %.preheader, %.loopexit
  %i.bj = phi ptr [ %i.ap, %.loopexit ], [ null, %.thread ], [ %i.ap, %.preheader ]
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !60
  call void @_ZNK5faiss13IndexFastScan17search_implem_234INS_4CMinIflEEEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE.omp_outlined(ptr nonnull %i.f, ptr nonnull poison, ptr %i.a, ptr %i.d, ptr %i.b, ptr %i.c, ptr nonnull %0, ptr %8, ptr %i.e, ptr %6, ptr %9) #10
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.thread, %bb.s
  %i.bk = phi ptr [ %i.bj, %.loopexit.thread ], [ %.pre, %bb.s ] ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIfSaIfEED2Ev.exit30, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !66
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit30

_ZNSt6vectorIfSaIfEED2Ev.exit30:                  ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.bq = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit30
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #28
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit30, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.r, %bb.p
  %.pn22 = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %i.bh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit33

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit33: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.o
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.ax, %bb.o ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit33 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn22.pn.pn

bb.w:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss13IndexFastScan16search_implem_12INS_4CMinItiEEEEvlPKflPfPliRKNS_30FastScanDistancePostProcessingE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(26) %7) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"struct.faiss::FastScanDistancePostProcessing", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39
  %i.e = icmp eq i32 %i.d, 32
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !28
  store i8 0, ptr %i.f, align 8, !tbaa !19
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #10 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.k)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %8, align 8, !tbaa !16
  %i.m = load i64, ptr %i.g, align 8, !tbaa !28
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #10 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.j)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.p = call ptr @__cxa_allocate_exception(i64 40) #10 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss13IndexFastScan16search_implem_12INS_4CMinItiEEEEvlPKflPfPliRKNS_30FastScanDistancePostProcessingE, ptr noundef nonnull @.str.1, i32 noundef 444)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %bb.be unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.p) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.q, %bb.h ]
  %i.r = load ptr, ptr %8, align 8, !tbaa !16     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.t = load i64, ptr %i.f, align 8, !tbaa !19
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.bd

bb.j:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !70   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = tail call noundef i32 @_ZN5faiss13pq4_qbs_to_nqEi(i32 noundef %i.w)
  %i.z = sext i32 %i.y to i64
end_hunk_1
