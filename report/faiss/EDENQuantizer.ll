Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/EDENQuantizer?download=true
inline.NumInlined: 299
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf.omp_outlined:bb.a

.loopexit.split-lp:                               ; preds = %bb.a, %bb.c, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dn = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.dn) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5faiss10eden_utils21get_distance_computerERKNS_15ScalarQuantizerENS_10MetricTypeEPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = add i32 %i.b, -19
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !20
  store i8 0, ptr %i.e, align 8, !tbaa !17
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.j)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !16
  %i.l = load i64, ptr %i.f, align 8, !tbaa !20
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.i)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils21get_distance_computerERKNS_15ScalarQuantizerENS_10MetricTypeEPKf, ptr noundef nonnull @.str.1, i32 noundef 869)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.t unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.p, %bb.h ]
  %i.q = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.s = load i64, ptr %i.e, align 8, !tbaa !17
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !57   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  %.highbits = lshr i64 %i.ad, %i.v
  %.not = icmp eq i64 %.highbits, 0
  br i1 %.not, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.af, align 8, !tbaa !20
  store i8 0, ptr %i.ae, align 8, !tbaa !17
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #18 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ai = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.aj)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %4, align 8, !tbaa !16
  %i.al = load i64, ptr %i.af, align 8, !tbaa !20
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ai)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.ao = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils21get_distance_computerERKNS_15ScalarQuantizerENS_10MetricTypeEPKf, ptr noundef nonnull @.str.1, i32 noundef 871)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.t unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ao) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn19 = phi { ptr, i32 } [ %i.an, %bb.n ], [ %i.ap, %bb.q ]
  %i.aq = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ae
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.r
  %i.as = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume

bb.s:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !43 ; 2 uses
  %i.aw = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #28, !noalias !106 ; 10 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.aw, i8 0, i64 112, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5faiss13eden_distance12_GLOBAL__N_129EDENReferenceDistanceComputerE, i64 16), ptr %i.aw, align 16, !tbaa !22, !noalias !106
  store i32 %1, ptr %i.az, align 16, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 %i.av, ptr %i.ba, align 16, !tbaa !64
  store i64 %i.v, ptr %i.ax, align 8, !tbaa !65
  store ptr %i.z, ptr %i.ay, align 16, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store ptr %2, ptr %i.bb, align 8, !tbaa !67
  %i.bc = invoke noundef i64 @_ZN5faiss10eden_utils16packed_code_sizeEmm(i64 noundef %i.av, i64 noundef %i.v)
          to label %"_ZN5faiss15with_simd_levelIZNS_10eden_utils21get_distance_computerERKNS_15ScalarQuantizerENS_10MetricTypeEPKfE3$_0EEDaOT_.exit" unwind label %_ZNSt10unique_ptrIN5faiss13eden_distance12_GLOBAL__N_129EDENReferenceDistanceComputerESt14default_deleteIS3_EED2Ev.exit15.i.i.i.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt10unique_ptrIN5faiss13eden_distance12_GLOBAL__N_129EDENReferenceDistanceComputerESt14default_deleteIS3_EED2Ev.exit15.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %_ZNSt10unique_ptrIN5faiss13eden_distance12_GLOBAL__N_129EDENReferenceDistanceComputerESt14default_deleteIS3_EED2Ev.exit15.i.i.i.i.i.i ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10unique_ptrIN5faiss13eden_distance12_GLOBAL__N_129EDENReferenceDistanceComputerESt14default_deleteIS3_EED2Ev.exit15.i.i.i.i.i.i: ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5faiss13eden_distance12_GLOBAL__N_129EDENReferenceDistanceComputerD0Ev(ptr noundef nonnull align 8 dereferenceable(108) %i.aw) #18, !inline_history !105
  br label %common.resume

"_ZN5faiss15with_simd_levelIZNS_10eden_utils21get_distance_computerERKNS_15ScalarQuantizerENS_10MetricTypeEPKfE3$_0EEDaOT_.exit": ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !68
  ret ptr %i.aw

bb.t:                                             ; preds = %bb.p, %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5faiss13eden_distance12_GLOBAL__N_129EDENReferenceDistanceComputer9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(108) initializes((24, 32)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !113
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase16set_query_commonEPKf, ptr noundef nonnull @.str.1, i32 noundef 301) #30 ; 0 uses
  tail call void @abort() #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = sub nuw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.o)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %i.f, %i.m
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.f
  store ptr %i.q, ptr %i.g, align 8, !tbaa !56
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i, %bb.f, %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !63
  switch i32 %i.s, label %bb.n [
    i32 1, label %bb.g
    i32 0, label %bb.k
  ]

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67   ; 2 uses
  %.not25.i = icmp eq ptr %i.u, null
  %i.v = load i64, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  br i1 %.not25.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef nonnull %1, ptr noundef nonnull %i.u, i64 noundef %i.v)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef float @_ZN5faiss15fvec_norm_L2sqrEPKfm(ptr noundef nonnull %1, i64 noundef %i.v)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = phi float [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.y, ptr %i.z, align 8, !tbaa !114
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !64  ; 13 uses
  %.not32.i = icmp eq i64 %i.aa, 0
  br i1 %.not32.i, label %_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase16set_query_commonEPKf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !67  ; 8 uses
  %.not26.i = icmp eq ptr %i.ab, null
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !57  ; 14 uses
  br i1 %.not26.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i64 %i.aa, 12
  br i1 %min.iters.check, label %.lr.ph.split.i.preheader35, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.i.preheader
  %4 = ptrtoaddr ptr %i.ac to i64                 ; 2 uses
  %5 = ptrtoaddr ptr %1 to i64
  %i.ad = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.ad, -32
  %6 = ptrtoaddr ptr %i.ab to i64
  %i.ae = sub i64 %6, %4
  %diff.check16 = icmp ugt i64 %i.ae, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %.lr.ph.split.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <4 x float>, ptr %i.af, align 4, !tbaa !46
  %wide.load17 = load <4 x float>, ptr %i.ag, align 4, !tbaa !46
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load18 = load <4 x float>, ptr %i.ah, align 4, !tbaa !46
  %wide.load19 = load <4 x float>, ptr %i.ai, align 4, !tbaa !46
  %i.aj = fsub <4 x float> %wide.load, %wide.load18
  %i.ak = fsub <4 x float> %wide.load17, %wide.load19
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x float> %i.aj, ptr %i.al, align 4, !tbaa !46
  store <4 x float> %i.ak, ptr %i.am, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase16set_query_commonEPKf.exit, label %.lr.ph.split.i.preheader35

.lr.ph.split.i.preheader35:                       ; preds = %vector.memcheck, %.lr.ph.split.i.preheader, %middle.block
  %.01731.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader35, %.lr.ph.split.i.prol
  %.01731.i.prol = phi i64 [ %i.au, %.lr.ph.split.i.prol ], [ %.01731.i.ph, %.lr.ph.split.i.preheader35 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.prol ], [ 0, %.lr.ph.split.i.preheader35 ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01731.i.prol
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !46
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.01731.i.prol
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !46
  %i.as = fsub float %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.01731.i.prol
  store float %i.as, ptr %i.at, align 4, !tbaa !46
  %i.au = add nuw i64 %.01731.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol, !llvm.loop !108

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader35
  %.01731.i.unr = phi i64 [ %.01731.i.ph, %.lr.ph.split.i.preheader35 ], [ %i.au, %.lr.ph.split.i.prol ]
  %i.av = sub i64 %.01731.i.ph, %i.aa
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase16set_query_commonEPKf.exit, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check23 = icmp ult i64 %i.aa, 8
  %7 = ptrtoaddr ptr %i.ac to i64
  %8 = ptrtoaddr ptr %1 to i64
  %i.ax = sub i64 %8, %7
  %diff.check21 = icmp ugt i64 %i.ax, -32
  %or.cond = select i1 %min.iters.check23, i1 true, i1 %diff.check21
  br i1 %or.cond, label %.lr.ph.split.us.i.preheader34, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph.split.us.i.preheader
  %n.vec25 = and i64 %i.aa, -8                    ; 3 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next30, %vector.body26 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index27 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load28 = load <4 x float>, ptr %i.ay, align 4, !tbaa !46
  %wide.load29 = load <4 x float>, ptr %i.az, align 4, !tbaa !46
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index27 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x float> %wide.load28, ptr %i.ba, align 4, !tbaa !46
  store <4 x float> %wide.load29, ptr %i.bb, align 4, !tbaa !46
  %index.next30 = add nuw i64 %index27, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.bc, label %middle.block31, label %vector.body26, !llvm.loop !109

middle.block31:                                   ; preds = %vector.body26
  %cmp.n32 = icmp eq i64 %i.aa, %n.vec25
  br i1 %cmp.n32, label %_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase16set_query_commonEPKf.exit, label %.lr.ph.split.us.i.preheader34

.lr.ph.split.us.i.preheader34:                    ; preds = %.lr.ph.split.us.i.preheader, %middle.block31
  %.01731.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec25, %middle.block31 ] ; 3 uses
  %xtraiter37 = and i64 %i.aa, 3                  ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader34, %.lr.ph.split.us.i.prol
  %.01731.us.i.prol = phi i64 [ %i.bg, %.lr.ph.split.us.i.prol ], [ %.01731.us.i.ph, %.lr.ph.split.us.i.preheader34 ] ; 3 uses
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader34 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01731.us.i.prol
  %i.be = load float, ptr %i.bd, align 4, !tbaa !46
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.01731.us.i.prol
  store float %i.be, ptr %i.bf, align 4, !tbaa !46
  %i.bg = add nuw i64 %.01731.us.i.prol, 1        ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !110

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader34
  %.01731.us.i.unr = phi i64 [ %.01731.us.i.ph, %.lr.ph.split.us.i.preheader34 ], [ %i.bg, %.lr.ph.split.us.i.prol ]
  %i.bh = sub i64 %.01731.us.i.ph, %i.aa
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase16set_query_commonEPKf.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.01731.us.i = phi i64 [ %i.by, %.lr.ph.split.us.i ], [ %.01731.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01731.us.i
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !46
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.01731.us.i
  store float %i.bk, ptr %i.bl, align 4, !tbaa !46
  %i.bm = add nuw i64 %.01731.us.i, 1             ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !46
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bm
  store float %i.bo, ptr %i.bp, align 4, !tbaa !46
  %i.bq = add nuw i64 %.01731.us.i, 2             ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !46
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bq
  store float %i.bs, ptr %i.bt, align 4, !tbaa !46
  %i.bu = add nuw i64 %.01731.us.i, 3             ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !46
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bu
  store float %i.bw, ptr %i.bx, align 4, !tbaa !46
  %i.by = add nuw i64 %.01731.us.i, 4             ; 2 uses
  %exitcond34.not.i.3 = icmp eq i64 %i.by, %i.aa
  br i1 %exitcond34.not.i.3, label %_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase16set_query_commonEPKf.exit, label %.lr.ph.split.us.i, !llvm.loop !111

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %.01731.i = phi i64 [ %i.da, %.lr.ph.split.i ], [ %.01731.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 7 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01731.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !46
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.01731.i
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !46
  %i.cd = fsub float %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.01731.i
  store float %i.cd, ptr %i.ce, align 4, !tbaa !46
  %i.cf = add nuw i64 %.01731.i, 1                ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !46
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.cf
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !46
  %i.ck = fsub float %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cf
  store float %i.ck, ptr %i.cl, align 4, !tbaa !46
  %i.cm = add nuw i64 %.01731.i, 2                ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !46
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.cm
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !46
  %i.cr = fsub float %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cm
  store float %i.cr, ptr %i.cs, align 4, !tbaa !46
  %i.ct = add nuw i64 %.01731.i, 3                ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !46
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ct
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !46
  %i.cy = fsub float %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ct
  store float %i.cy, ptr %i.cz, align 4, !tbaa !46
  %i.da = add nuw i64 %.01731.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.da, %i.aa
  br i1 %exitcond.not.i.3, label %_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase16set_query_commonEPKf.exit, label %.lr.ph.split.i, !llvm.loop !112

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !67 ; 2 uses
  %.not24.i = icmp eq ptr %i.dc, null
  %.pre35.i = load i64, ptr %i.e, align 8, !tbaa !64 ; 2 uses
  br i1 %.not24.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dd = tail call noundef float @_ZN5faiss18fvec_inner_productEPKfS1_m(ptr noundef nonnull %1, ptr noundef nonnull %i.dc, i64 noundef %.pre35.i)
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.de = phi i64 [ %.pre.i, %bb.l ], [ %.pre35.i, %bb.k ]
  %i.df = phi float [ %i.dd, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.df, ptr %i.dg, align 8, !tbaa !114
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.di = shl i64 %i.de, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dh, ptr nonnull align 4 %1, i64 %i.di, i1 false)
  br label %_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase16set_query_commonEPKf.exit

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.dj = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase16set_query_commonEPKf, ptr noundef nonnull @.str.1, i32 noundef 314)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.t unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.n
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dm = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !17
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.0.i, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.0.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn30.i = phi { ptr, i32 } [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dj) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn29.i = phi { ptr, i32 } [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn30.i, %bb.r ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn29.i

bb.t:                                             ; preds = %bb.p
  unreachable

_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase16set_query_commonEPKf.exit: ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block, %middle.block31, %bb.j, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss25FlatCodesDistanceComputerclEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  %i.e = mul i64 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %0, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef float %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f)
  ret float %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss25FlatCodesDistanceComputer17distances_batch_4EllllRfS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70   ; 4 uses
  %i.e = mul i64 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = mul i64 %i.d, %3
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.k = mul i64 %i.d, %4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k
  %i.m = load ptr, ptr %0, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8)
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal noundef float @_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase13symmetric_disEll(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, ptr noundef nonnull align 1 dereferenceable(15) @.str.22, i64 15, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 15, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 0, ptr %i.d, align 1, !tbaa !17
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBase13symmetric_disEll, ptr noundef nonnull @.str.1, i32 noundef 296)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge.i.i
  %.0 = phi i1 [ false, %bb.a ], [ true, %._crit_edge.i.i ] ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !tbaa !17
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @__cxa_free_exception(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBaseD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(108) dereferenceable(108) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBaseE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5faiss13eden_distance12_GLOBAL__N_129EDENReferenceDistanceComputerD0Ev(ptr noundef nonnull align 8 dereferenceable(108) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBaseE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBaseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27, !inline_history !115
  br label %_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBaseD2Ev.exit

_ZN5faiss13eden_distance12_GLOBAL__N_124EDENDistanceComputerBaseD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss25FlatCodesDistanceComputer19partial_dot_productEljj(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !18
  %i.c = invoke noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #28
          to label %.noexc6 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.c, ptr %4, align 8, !tbaa !16
  store i64 35, ptr %i.b, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.c, ptr noundef nonnull align 1 dereferenceable(35) @.str.23, i64 35, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 35, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 35
  store i8 0, ptr %i.e, align 1, !tbaa !17
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss25FlatCodesDistanceComputer19partial_dot_productEljj, ptr noundef nonnull @.str.24, i32 noundef 185)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc6
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc6
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc6 ] ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8, !tbaa !17
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
end_hunk_0
