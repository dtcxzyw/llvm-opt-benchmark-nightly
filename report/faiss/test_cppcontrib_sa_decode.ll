Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_cppcontrib_sa_decode?download=true
inline.NumInlined: 5280
inline.NumDeleted: 463
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_0
begin_hunk_1_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_1
begin_hunk_2_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_2
begin_hunk_3_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_3
begin_hunk_4_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_4
begin_hunk_5_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_5
begin_hunk_6_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_6
begin_hunk_7_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_7
begin_hunk_8_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_8
begin_hunk_9_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_9
begin_hunk_10_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_10
begin_hunk_11_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_11
begin_hunk_12_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_12
begin_hunk_13_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_13
begin_hunk_14_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_14
begin_hunk_15_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_15
begin_hunk_16_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_16
begin_hunk_17_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_17
begin_hunk_18_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_18
begin_hunk_19_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_19
begin_hunk_20_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_20
begin_hunk_21_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_21
begin_hunk_22_@_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0705.ph = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.0704.ph = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull readonly %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i316 = icmp eq ptr %i.r, null
  br i1 %.not.i316, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.a, %bb.f, %bb.g, %bb.h, %bb.i
  %.1706 = phi ptr [ %i.v, %bb.i ], [ %.0705.ph, %bb.f ], [ %.0705.ph, %bb.g ], [ %.0705.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %.1 = phi ptr [ %i.t, %bb.i ], [ %.0704.ph, %bb.f ], [ %.0704.ph, %bb.g ], [ %.0704.ph, %bb.h ], [ null, %bb.a ] ; 14 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.aa = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338, label %.noexc318

.noexc318:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %1 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc327 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit571.thread ; 4 uses

.noexc327:                                        ; preds = %.noexc318
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc337 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit569.thread ; 3 uses

.noexc337:                                        ; preds = %.noexc327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ab, i1 false), !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338:         ; preds = %.noexc337, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12644.0798 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc337 ] ; 2 uses
  %.sroa.0638.0783 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc337 ] ; 9 uses
  %.sroa.11653.0724761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.noexc337 ] ; 3 uses
  %.sroa.0648.0740749 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %.noexc337 ] ; 8 uses
  %.sroa.0630.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc337 ] ; 8 uses
  %.sroa.11634.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc337 ] ; 2 uses
  %.not2481035.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2481035.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i350, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit338
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.j

_ZNSt6vectorIfSaIfEED2Ev.exit571.thread:          ; preds = %.noexc318
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIfSaIfEED2Ev.exit569.thread:          ; preds = %.noexc327
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.j:                                             ; preds = %.lr.ph1038, %._crit_edge
  %.01911037 = phi i64 [ 0, %.lr.ph1038 ], [ %i.de, %._crit_edge ] ; 2 uses
  %.sroa.0669.01036 = phi i64 [ 123, %.lr.ph1038 ], [ %i.co, %._crit_edge ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !43
  %i.at = mul i64 %.01911037, %i.z                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, i64 noundef 1, ptr noundef %i.au, ptr noundef %.sroa.0638.0783)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %3, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.az, ptr noundef %.sroa.0630.0)
  br i1 %.not.i.i.i.i, label %.critedge295, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567

.lr.ph:                                           ; preds = %bb.k, %bb.z
  %.01891032 = phi i64 [ %i.ci, %bb.z ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0638.0783, i64 %.01891032
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0630.0, i64 %.01891032
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.bc, float noundef %i.be)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.critedge, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ @.str.20, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef %i.bk)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bl = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i339 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i339, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i340, label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit553.thread

bb.u:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit343

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i341 = icmp eq ptr %i.by, null
  br i1 %.not.i.i341, label %_ZN7testing7MessageD2Ev.exit343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit343

_ZN7testing7MessageD2Ev.exit343:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit567.thread

.critedge:                                        ; preds = %bb.m
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 4 uses
  %.not.i.i344 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i344, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345: ; preds = %bb.y
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i346, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ci = add nuw i64 %.01891032, 1               ; 2 uses
end_hunk_22
begin_hunk_23_@_Z18testIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !88

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !44
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z20verifyIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !44
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !38  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z20verifyIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30, !nonnull !100, !noundef !100 ; 3 uses
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss7IndexPQE, i64 0) #22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 14 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit351, label %.noexc331

.noexc331:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %1, 2                    ; 6 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !75
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1 ; 3 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24
          to label %.noexc340 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit584.thread ; 4 uses

.noexc340:                                        ; preds = %.noexc331
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.m, i8 0, i64 %i.j, i1 false), !tbaa !75
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %1 ; 2 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24
          to label %.noexc350 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit582.thread ; 3 uses

.noexc350:                                        ; preds = %.noexc340
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.j, i1 false), !tbaa !75
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %1
  %i.q = ptrtoint ptr %i.p to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit351

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit351:         ; preds = %.noexc350, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12657.0776 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc350 ] ; 2 uses
  %.sroa.0651.0761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.m, %.noexc350 ] ; 9 uses
  %.sroa.11666.0702739 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %.noexc350 ] ; 3 uses
  %.sroa.0661.0718727 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc350 ] ; 8 uses
  %.sroa.0643.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc350 ] ; 8 uses
  %.sroa.11647.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.q, %.noexc350 ] ; 2 uses
  %.not2631013.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2631013.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i363, label %.lr.ph1016

.lr.ph1016:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit351
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.s = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.t = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.u = fdiv x86_fp80 %i.s, %i.t
  %i.v = fptoui x86_fp80 %i.u to i64              ; 2 uses
  %i.w = add i64 %i.v, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.b

_ZNSt6vectorIfSaIfEED2Ev.exit584.thread:          ; preds = %.noexc331
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

_ZNSt6vectorIfSaIfEED2Ev.exit582.thread:          ; preds = %.noexc340
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.b:                                             ; preds = %.lr.ph1016, %._crit_edge
  %.02051015 = phi i64 [ 0, %.lr.ph1016 ], [ %i.cm, %._crit_edge ] ; 2 uses
  %.sroa.0682.01014 = phi i64 [ 123, %.lr.ph1016 ], [ %i.bw, %._crit_edge ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !43
  %i.ab = mul i64 %.02051015, %i.h                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(36) %i.z, i64 noundef 1, ptr noundef %i.ac, ptr noundef %.sroa.0651.0761)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %3, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5storeEPKfPKhPf(ptr noundef %i.d, ptr noundef %i.ah, ptr noundef %.sroa.0643.0)
  br i1 %.not.i.i.i.i, label %.critedge310, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit580

.lr.ph:                                           ; preds = %bb.c, %bb.r
  %.02031010 = phi i64 [ %i.bq, %bb.r ], [ 0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0651.0761, i64 %.02031010
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !75
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0643.0, i64 %.02031010
  %i.am = load float, ptr %i.al, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.ak, float noundef %i.am)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.an = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.critedge, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit580.thread

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.as = phi ptr [ %i.ar, %bb.i ], [ @.str.20, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 586, ptr noundef %i.as)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.at = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i352 = icmp eq ptr %i.at, null
  br i1 %.not.i.i352, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !101 ; 4 uses
  %.not.i.i353 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i353, label %_ZNSt6vectorIfSaIfEED2Ev.exit566.thread, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !24
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit566.thread

bb.m:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit356

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %i.be, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bg = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i354 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i354, label %_ZN7testing7MessageD2Ev.exit356, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i355

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i355: ; preds = %bb.p
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(128) %i.bg) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit356

_ZN7testing7MessageD2Ev.exit356:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i355, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i355 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit580.thread

.critedge:                                        ; preds = %bb.e
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !101 ; 4 uses
  %.not.i.i357 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i357, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358: ; preds = %bb.q
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 32) #23
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bq = add nuw i64 %.02031010, 1               ; 2 uses
end_hunk_23
begin_hunk_24_@_Z18testIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !88

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !44
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z20verifyIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !44
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !38  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !35
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !44
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z20verifyIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30, !nonnull !100, !noundef !100 ; 3 uses
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss7IndexPQE, i64 0) #22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 14 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 7 uses
  %i.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit351, label %.noexc331

.noexc331:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %1, 2                    ; 6 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !75
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1 ; 3 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24
          to label %.noexc340 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit584.thread ; 4 uses

.noexc340:                                        ; preds = %.noexc331
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.m, i8 0, i64 %i.j, i1 false), !tbaa !75
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %1 ; 2 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24
          to label %.noexc350 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit582.thread ; 3 uses

.noexc350:                                        ; preds = %.noexc340
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.j, i1 false), !tbaa !75
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %1
  %i.q = ptrtoint ptr %i.p to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit351

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit351:         ; preds = %.noexc350, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12657.0776 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc350 ] ; 2 uses
  %.sroa.0651.0761 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.m, %.noexc350 ] ; 9 uses
  %.sroa.11666.0702739 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %.noexc350 ] ; 3 uses
  %.sroa.0661.0718727 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc350 ] ; 8 uses
  %.sroa.0643.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc350 ] ; 8 uses
  %.sroa.11647.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.q, %.noexc350 ] ; 2 uses
  %.not2631013.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2631013.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i363, label %.lr.ph1016

.lr.ph1016:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit351
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.s = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.t = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.u = fdiv x86_fp80 %i.s, %i.t
  %i.v = fptoui x86_fp80 %i.u to i64              ; 2 uses
  %i.w = add i64 %i.v, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.b

_ZNSt6vectorIfSaIfEED2Ev.exit584.thread:          ; preds = %.noexc331
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

_ZNSt6vectorIfSaIfEED2Ev.exit582.thread:          ; preds = %.noexc340
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.b:                                             ; preds = %.lr.ph1016, %._crit_edge
  %.02051015 = phi i64 [ 0, %.lr.ph1016 ], [ %i.cm, %._crit_edge ] ; 2 uses
  %.sroa.0682.01014 = phi i64 [ 123, %.lr.ph1016 ], [ %i.bw, %._crit_edge ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !43
  %i.ab = mul i64 %.02051015, %i.h                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(36) %i.z, i64 noundef 1, ptr noundef %i.ac, ptr noundef %.sroa.0651.0761)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %3, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EE5storeEPKfPKhPf(ptr noundef %i.d, ptr noundef %i.ah, ptr noundef %.sroa.0643.0)
  br i1 %.not.i.i.i.i, label %.critedge310, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit580

.lr.ph:                                           ; preds = %bb.c, %bb.r
  %.02031010 = phi i64 [ %i.bq, %bb.r ], [ 0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0651.0761, i64 %.02031010
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !75
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0643.0, i64 %.02031010
  %i.am = load float, ptr %i.al, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.ak, float noundef %i.am)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.an = load i8, ptr %4, align 8, !tbaa !98, !range !99, !noundef !100
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.critedge, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit580.thread

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.as = phi ptr [ %i.ar, %bb.i ], [ @.str.20, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 586, ptr noundef %i.as)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.at = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i352 = icmp eq ptr %i.at, null
  br i1 %.not.i.i352, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !101 ; 4 uses
  %.not.i.i353 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i353, label %_ZNSt6vectorIfSaIfEED2Ev.exit566.thread, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !24
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit566.thread

bb.m:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit356

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %i.be, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bg = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %.not.i.i354 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i354, label %_ZN7testing7MessageD2Ev.exit356, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i355

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i355: ; preds = %bb.p
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(128) %i.bg) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit356

_ZN7testing7MessageD2Ev.exit356:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i355, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i355 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit580.thread

.critedge:                                        ; preds = %bb.e
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !101 ; 4 uses
  %.not.i.i357 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i357, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358: ; preds = %bb.q
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i358
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 32) #23
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bq = add nuw i64 %.02031010, 1               ; 2 uses
end_hunk_24
begin_hunk_25_@_Z30verifyMinMaxIndex2LevelDecoderIN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.k, %bb.j
  %i.x = phi ptr [ %i.w, %bb.k ], [ @.str.20, %bb.j ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 312, ptr noundef %i.x)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.y = load ptr, ptr %6, align 8, !tbaa !103    ; 3 uses
  %.not.i.i366 = icmp eq ptr %i.y, null
  br i1 %.not.i.i366, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !101 ; 4 uses
  %.not.i.i367 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i367, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 32) #23
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit644

bb.o:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit370

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %i.aj, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.al = load ptr, ptr %6, align 8, !tbaa !103   ; 3 uses
  %.not.i.i368 = icmp eq ptr %i.al, null
  br i1 %.not.i.i368, label %_ZN7testing7MessageD2Ev.exit370, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369: ; preds = %bb.r
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit370

_ZN7testing7MessageD2Ev.exit370:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369, %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %.pn, %bb.r ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  br label %bb.af

.critedge:                                        ; preds = %_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !101 ; 4 uses
  %.not.i.i371 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i371, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372: ; preds = %bb.s
  %i.au = load i64, ptr %i.as, align 8, !tbaa !24
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #23
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !116 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = call ptr @__dynamic_cast(ptr nonnull readonly %i.ax, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !52 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = call ptr @__dynamic_cast(ptr nonnull %i.bc, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i376 = icmp eq ptr %i.be, null
  br i1 %.not.i376, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 408
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !61
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.0806.ph = phi ptr [ %i.bi, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ] ; 3 uses
  %.0805.ph = phi ptr [ %i.bg, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ] ; 3 uses
  %i.bj = call ptr @__dynamic_cast(ptr nonnull readonly %i.ax, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !73 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = call ptr @__dynamic_cast(ptr nonnull %i.bm, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i377 = icmp eq ptr %i.bo, null
  br i1 %.not.i377, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 344
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 168
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.t, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.1807 = phi ptr [ %i.bs, %bb.ab ], [ %.0806.ph, %bb.y ], [ %.0806.ph, %bb.z ], [ %.0806.ph, %bb.aa ], [ null, %bb.t ] ; 14 uses
  %.1 = phi ptr [ %i.bq, %bb.ab ], [ %.0805.ph, %bb.y ], [ %.0805.ph, %bb.z ], [ %.0805.ph, %bb.aa ], [ null, %bb.t ] ; 14 uses
  %i.bt = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 192
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef i64 %i.bw(ptr noundef nonnull align 8 dereferenceable(36) %i.bt)
          to label %bb.ac unwind label %bb.ag     ; 7 uses

bb.ac:                                            ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %i.by = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.by, label %bb.ad, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
          to label %.noexc380 unwind label %bb.ah

.noexc380:                                        ; preds = %bb.ad
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ac
  %.not.i.i.i.i379 = icmp eq i64 %1, 0            ; 12 uses
  br i1 %.not.i.i.i.i379, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit401, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bz = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #24
          to label %.noexc381 unwind label %bb.ah ; 5 uses

.noexc381:                                        ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ca, i8 0, i64 %i.bz, i1 false), !tbaa !75
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %1 ; 3 uses
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #24
          to label %.noexc390 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit658.thread ; 4 uses

.noexc390:                                        ; preds = %.noexc381
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cc, i8 0, i64 %i.bz, i1 false), !tbaa !75
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %1 ; 2 uses
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #24
          to label %.noexc400 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit656.thread ; 3 uses

.noexc400:                                        ; preds = %.noexc390
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ce, i8 0, i64 %i.bz, i1 false), !tbaa !75
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %1
  %i.cg = ptrtoint ptr %i.cf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit401

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit401:         ; preds = %.noexc400, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0903 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cd, %.noexc400 ] ; 2 uses
  %.sroa.0741.0888 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cc, %.noexc400 ] ; 11 uses
  %.sroa.10754.0825864 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc400 ] ; 3 uses
  %.sroa.0751.0841850 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ca, %.noexc400 ] ; 7 uses
  %.sroa.0733.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ce, %.noexc400 ] ; 10 uses
  %.sroa.11737.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cg, %.noexc400 ] ; 2 uses
  %.not2861140.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2861140.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421, label %.lr.ph1143

.lr.ph1143:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit401
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ci = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.cj = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ck = fdiv x86_fp80 %i.ci, %i.cj
  %i.cl = fptoui x86_fp80 %i.ck to i64            ; 2 uses
  %i.cm = add i64 %i.cl, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.ai

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit370, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit370 ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit660

bb.ag:                                            ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit660

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit660

_ZNSt6vectorIfSaIfEED2Ev.exit658.thread:          ; preds = %.noexc381
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

_ZNSt6vectorIfSaIfEED2Ev.exit656.thread:          ; preds = %.noexc390
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.ai:                                            ; preds = %.lr.ph1143, %._crit_edge
  %.02121142 = phi i64 [ 0, %.lr.ph1143 ], [ %i.ha, %._crit_edge ] ; 2 uses
  %.sroa.0770.01141 = phi i64 [ 123, %.lr.ph1143 ], [ %i.gk, %._crit_edge ]
  %i.cr = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.cs = load ptr, ptr %3, align 8, !tbaa !43
  %i.ct = mul i64 %.02121142, %i.bx               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 208
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(36) %i.cr, i64 noundef 1, ptr noundef %i.cu, ptr noundef %.sroa.0741.0888)
          to label %vector.ph1348 unwind label %bb.aj

vector.ph1348:                                    ; preds = %bb.ai
  %i.cy = load ptr, ptr %3, align 8, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.ct ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !108, !alias.scope !551, !noalias !553 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !108, !alias.scope !551, !noalias !553 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1807, ptr noundef %.1, ptr noundef nonnull %i.dd, ptr noundef %.sroa.0733.0)
  %i.de = zext i16 %i.dc to i32
  %i.df = shl nuw nsw i32 %i.de, 13               ; 3 uses
  %i.dg = and i32 %i.df, 260046848                ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 260046848
  %i.di = or i32 %i.df, 1879048192
  %i.dj = icmp eq i32 %i.dg, 0
  %i.dk = and i32 %i.df, 268427264                ; 2 uses
  %i.dl = add nuw nsw i32 %i.dk, 947912704
  %i.dm = bitcast i32 %i.dl to float
  %i.dn = fadd float %i.dm, f0xB8800000
  %i.do = bitcast float %i.dn to i32
  %i.dp = add nuw nsw i32 %i.dk, 939524096
  %i.dq = select i1 %i.dj, i32 %i.do, i32 %i.dp
  %i.dr = select i1 %i.dh, i32 %i.di, i32 %i.dq
  %.signext.i14.i = sext i16 %i.dc to i32
  %i.ds = and i32 %.signext.i14.i, -2147483648
  %i.dt = or i32 %i.dr, %i.ds
  %i.du = zext i16 %i.da to i32
  %i.dv = shl nuw nsw i32 %i.du, 13               ; 3 uses
  %i.dw = and i32 %i.dv, 260046848                ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 260046848
  %i.dy = or i32 %i.dv, 1879048192
  %i.dz = icmp eq i32 %i.dw, 0
  %i.ea = and i32 %i.dv, 268427264                ; 2 uses
  %i.eb = add nuw nsw i32 %i.ea, 947912704
  %i.ec = bitcast i32 %i.eb to float
  %i.ed = fadd float %i.ec, f0xB8800000
  %i.ee = bitcast float %i.ed to i32
  %i.ef = add nuw nsw i32 %i.ea, 939524096
  %i.eg = select i1 %i.dz, i32 %i.ee, i32 %i.ef
  %i.eh = select i1 %i.dx, i32 %i.dy, i32 %i.eg
  %.signext.i.i = sext i16 %i.da to i32
  %i.ei = and i32 %.signext.i.i, -2147483648
  %i.ej = or i32 %i.eh, %i.ei
  %i.ek = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splatinsert1349 = bitcast <4 x i32> %i.ek to <4 x float>
  %broadcast.splat1350 = shufflevector <4 x float> %broadcast.splatinsert1349, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.el = insertelement <4 x i32> poison, i32 %i.dt, i64 0
  %broadcast.splatinsert1351 = bitcast <4 x i32> %i.el to <4 x float>
  %broadcast.splat1352 = shufflevector <4 x float> %broadcast.splatinsert1351, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1353

vector.body1353:                                  ; preds = %vector.body1353, %vector.ph1348
  %index1354 = phi i64 [ 0, %vector.ph1348 ], [ %index.next1357.1, %vector.body1353 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0733.0, i64 %index1354 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %wide.load1355 = load <4 x float>, ptr %i.em, align 4, !tbaa !75, !alias.scope !552, !noalias !554
  %wide.load1356 = load <4 x float>, ptr %i.en, align 4, !tbaa !75, !alias.scope !552, !noalias !554
  %i.eo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1355, <4 x float> %broadcast.splat1350, <4 x float> %broadcast.splat1352)
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1356, <4 x float> %broadcast.splat1350, <4 x float> %broadcast.splat1352)
  store <4 x float> %i.eo, ptr %i.em, align 4, !tbaa !75, !alias.scope !552, !noalias !554
  store <4 x float> %i.ep, ptr %i.en, align 4, !tbaa !75, !alias.scope !552, !noalias !554
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0733.0, i64 %index1354 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 48 ; 2 uses
  %wide.load1355.1 = load <4 x float>, ptr %i.er, align 4, !tbaa !75, !alias.scope !552, !noalias !554
  %wide.load1356.1 = load <4 x float>, ptr %i.es, align 4, !tbaa !75, !alias.scope !552, !noalias !554
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1355.1, <4 x float> %broadcast.splat1350, <4 x float> %broadcast.splat1352)
  %i.eu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1356.1, <4 x float> %broadcast.splat1350, <4 x float> %broadcast.splat1352)
  store <4 x float> %i.et, ptr %i.er, align 4, !tbaa !75, !alias.scope !552, !noalias !554
  store <4 x float> %i.eu, ptr %i.es, align 4, !tbaa !75, !alias.scope !552, !noalias !554
  %index.next1357.1 = add nuw nsw i64 %index1354, 16 ; 2 uses
  %i.ev = icmp eq i64 %index.next1357.1, 256
  br i1 %i.ev, label %_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit.preheader, label %vector.body1353, !llvm.loop !489

_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit.preheader: ; preds = %vector.body1353
  br i1 %.not.i.i.i.i379, label %.critedge342, label %.lr.ph

bb.aj:                                            ; preds = %bb.ai
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit654

.lr.ph:                                           ; preds = %_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit.preheader, %_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit
  %.02111137 = phi i64 [ %i.ge, %_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit ], [ 0, %_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0888, i64 %.02111137
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !75
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0733.0, i64 %.02111137
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.ey, float noundef %i.fa)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  %i.fb = load i8, ptr %8, align 8, !tbaa !98, !range !99, !noundef !100
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %.critedge340, label %bb.am

bb.al:                                            ; preds = %.lr.ph
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit654.thread

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.fe = load ptr, ptr %i.ch, align 8, !tbaa !101 ; 2 uses
  %.not.i.i402 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i402, label %_ZNK7testing15AssertionResult15failure_messageEv.exit403, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit403

_ZNK7testing15AssertionResult15failure_messageEv.exit403: ; preds = %bb.ao, %bb.an
  %i.fg = phi ptr [ %i.ff, %bb.ao ], [ @.str.20, %bb.an ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 344, ptr noundef %i.fg)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit403
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.fh = load ptr, ptr %9, align 8, !tbaa !103   ; 3 uses
  %.not.i.i404 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i404, label %_ZN7testing7MessageD2Ev.exit406, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405: ; preds = %bb.aq
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !32
end_hunk_25
begin_hunk_26_@_Z26verifyMinMaxIndexPQDecoderIN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  br label %bb.f

_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !652 ; 0 uses
  %.pr.pre = load ptr, ptr %4, align 8, !tbaa !111 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %.pr.pre, ptr %i.a, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr null, ptr %i.b, align 8, !tbaa !114
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread, %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.p = phi ptr [ %i.g, %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread ], [ %.pr.pre, %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit ]
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit unwind label %bb.h

bb.g:                                             ; preds = %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread1269, %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.99)
          to label %_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit unwind label %bb.h

_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit: ; preds = %bb.f, %bb.g
  %i.q = phi ptr [ %i.p, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.r = load i8, ptr %5, align 8, !tbaa !98, !range !99, !noundef !100
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.critedge, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.u

bb.i:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.k, %bb.j
  %i.x = phi ptr [ %i.w, %bb.k ], [ @.str.20, %bb.j ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 745, ptr noundef %i.x)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.y = load ptr, ptr %6, align 8, !tbaa !103    ; 3 uses
  %.not.i.i379 = icmp eq ptr %i.y, null
  br i1 %.not.i.i379, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !101 ; 4 uses
  %.not.i.i380 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i380, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 32) #23
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit655

bb.o:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit383

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %i.aj, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.al = load ptr, ptr %6, align 8, !tbaa !103   ; 3 uses
  %.not.i.i381 = icmp eq ptr %i.al, null
  br i1 %.not.i.i381, label %_ZN7testing7MessageD2Ev.exit383, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382: ; preds = %bb.r
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit383

_ZN7testing7MessageD2Ev.exit383:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382, %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %.pn, %bb.r ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  br label %bb.u

.critedge:                                        ; preds = %_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !101 ; 4 uses
  %.not.i.i384 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i384, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i385: ; preds = %bb.s
  %i.au = load i64, ptr %i.as, align 8, !tbaa !24
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i385
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #23
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !116, !nonnull !100, !noundef !100
  %i.ay = call ptr @__dynamic_cast(ptr nonnull %i.ax, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss7IndexPQE, i64 0) #22
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 256
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41 ; 14 uses
  %i.bb = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 192
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(36) %i.bb)
          to label %bb.v unwind label %bb.y       ; 7 uses

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit383, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit383 ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit671

bb.v:                                             ; preds = %bb.t
  %i.bg = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.bg, label %bb.w, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
          to label %.noexc390 unwind label %bb.z

.noexc390:                                        ; preds = %bb.w
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.v
  %.not.i.i.i.i389 = icmp eq i64 %1, 0            ; 12 uses
  br i1 %.not.i.i.i.i389, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit411, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bh = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #24
          to label %.noexc391 unwind label %bb.z  ; 5 uses

.noexc391:                                        ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bi, i8 0, i64 %i.bh, i1 false), !tbaa !75
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %1 ; 3 uses
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #24
          to label %.noexc400 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit669.thread ; 4 uses

.noexc400:                                        ; preds = %.noexc391
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bk, i8 0, i64 %i.bh, i1 false), !tbaa !75
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %1 ; 2 uses
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #24
          to label %.noexc410 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit667.thread ; 3 uses

.noexc410:                                        ; preds = %.noexc400
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.bh, i1 false), !tbaa !75
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %1
  %i.bo = ptrtoint ptr %i.bn to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit411

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit411:         ; preds = %.noexc410, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0879 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bl, %.noexc410 ] ; 2 uses
  %.sroa.0752.0864 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bk, %.noexc410 ] ; 11 uses
  %.sroa.10765.0801840 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bj, %.noexc410 ] ; 3 uses
  %.sroa.0762.0817826 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bi, %.noexc410 ] ; 7 uses
  %.sroa.0744.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bm, %.noexc410 ] ; 10 uses
  %.sroa.11748.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bo, %.noexc410 ] ; 2 uses
  %.not3001116.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not3001116.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431, label %.lr.ph1119

.lr.ph1119:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit411
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bq = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.br = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.bs = fdiv x86_fp80 %i.bq, %i.br
  %i.bt = fptoui x86_fp80 %i.bs to i64            ; 2 uses
  %i.bu = add i64 %i.bt, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.aa

bb.y:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit671

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit671

_ZNSt6vectorIfSaIfEED2Ev.exit669.thread:          ; preds = %.noexc391
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

_ZNSt6vectorIfSaIfEED2Ev.exit667.thread:          ; preds = %.noexc400
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.aa:                                            ; preds = %.lr.ph1119, %._crit_edge
  %.02261118 = phi i64 [ 0, %.lr.ph1119 ], [ %i.gi, %._crit_edge ] ; 2 uses
  %.sroa.0781.01117 = phi i64 [ 123, %.lr.ph1119 ], [ %i.fs, %._crit_edge ]
  %i.bz = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ca = load ptr, ptr %3, align 8, !tbaa !43
  %i.cb = mul i64 %.02261118, %i.bf               ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 208
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(36) %i.bz, i64 noundef 1, ptr noundef %i.cc, ptr noundef %.sroa.0752.0864)
          to label %vector.ph1316 unwind label %bb.ab

vector.ph1316:                                    ; preds = %bb.aa
  %i.cg = load ptr, ptr %3, align 8, !tbaa !43
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cb ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !108, !alias.scope !653, !noalias !655 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !108, !alias.scope !653, !noalias !655 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5storeEPKfPKhPf(ptr noundef %i.ba, ptr noundef nonnull %i.cl, ptr noundef %.sroa.0744.0)
  %i.cm = zext i16 %i.ck to i32
  %i.cn = shl nuw nsw i32 %i.cm, 13               ; 3 uses
  %i.co = and i32 %i.cn, 260046848                ; 2 uses
  %i.cp = icmp eq i32 %i.co, 260046848
  %i.cq = or i32 %i.cn, 1879048192
  %i.cr = icmp eq i32 %i.co, 0
  %i.cs = and i32 %i.cn, 268427264                ; 2 uses
  %i.ct = add nuw nsw i32 %i.cs, 947912704
  %i.cu = bitcast i32 %i.ct to float
  %i.cv = fadd float %i.cu, f0xB8800000
  %i.cw = bitcast float %i.cv to i32
  %i.cx = add nuw nsw i32 %i.cs, 939524096
  %i.cy = select i1 %i.cr, i32 %i.cw, i32 %i.cx
  %i.cz = select i1 %i.cp, i32 %i.cq, i32 %i.cy
  %.signext.i13.i = sext i16 %i.ck to i32
  %i.da = and i32 %.signext.i13.i, -2147483648
  %i.db = or i32 %i.cz, %i.da
  %i.dc = zext i16 %i.ci to i32
  %i.dd = shl nuw nsw i32 %i.dc, 13               ; 3 uses
  %i.de = and i32 %i.dd, 260046848                ; 2 uses
  %i.df = icmp eq i32 %i.de, 260046848
  %i.dg = or i32 %i.dd, 1879048192
  %i.dh = icmp eq i32 %i.de, 0
  %i.di = and i32 %i.dd, 268427264                ; 2 uses
  %i.dj = add nuw nsw i32 %i.di, 947912704
  %i.dk = bitcast i32 %i.dj to float
  %i.dl = fadd float %i.dk, f0xB8800000
  %i.dm = bitcast float %i.dl to i32
  %i.dn = add nuw nsw i32 %i.di, 939524096
  %i.do = select i1 %i.dh, i32 %i.dm, i32 %i.dn
  %i.dp = select i1 %i.df, i32 %i.dg, i32 %i.do
  %.signext.i.i = sext i16 %i.ci to i32
  %i.dq = and i32 %.signext.i.i, -2147483648
  %i.dr = or i32 %i.dp, %i.dq
  %i.ds = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %broadcast.splatinsert1317 = bitcast <4 x i32> %i.ds to <4 x float>
  %broadcast.splat1318 = shufflevector <4 x float> %broadcast.splatinsert1317, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dt = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %broadcast.splatinsert1319 = bitcast <4 x i32> %i.dt to <4 x float>
  %broadcast.splat1320 = shufflevector <4 x float> %broadcast.splatinsert1319, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %vector.ph1316
  %index1322 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1325.1, %vector.body1321 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0744.0, i64 %index1322 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load1323 = load <4 x float>, ptr %i.du, align 4, !tbaa !75, !alias.scope !654, !noalias !656
  %wide.load1324 = load <4 x float>, ptr %i.dv, align 4, !tbaa !75, !alias.scope !654, !noalias !656
  %i.dw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1323, <4 x float> %broadcast.splat1318, <4 x float> %broadcast.splat1320)
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1324, <4 x float> %broadcast.splat1318, <4 x float> %broadcast.splat1320)
  store <4 x float> %i.dw, ptr %i.du, align 4, !tbaa !75, !alias.scope !654, !noalias !656
  store <4 x float> %i.dx, ptr %i.dv, align 4, !tbaa !75, !alias.scope !654, !noalias !656
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0744.0, i64 %index1322 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 48 ; 2 uses
  %wide.load1323.1 = load <4 x float>, ptr %i.dz, align 4, !tbaa !75, !alias.scope !654, !noalias !656
  %wide.load1324.1 = load <4 x float>, ptr %i.ea, align 4, !tbaa !75, !alias.scope !654, !noalias !656
  %i.eb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1323.1, <4 x float> %broadcast.splat1318, <4 x float> %broadcast.splat1320)
  %i.ec = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1324.1, <4 x float> %broadcast.splat1318, <4 x float> %broadcast.splat1320)
  store <4 x float> %i.eb, ptr %i.dz, align 4, !tbaa !75, !alias.scope !654, !noalias !656
  store <4 x float> %i.ec, ptr %i.ea, align 4, !tbaa !75, !alias.scope !654, !noalias !656
  %index.next1325.1 = add nuw nsw i64 %index1322, 16 ; 2 uses
  %i.ed = icmp eq i64 %index.next1325.1, 256
  br i1 %i.ed, label %_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit.preheader, label %vector.body1321, !llvm.loop !600

_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit.preheader: ; preds = %vector.body1321
  br i1 %.not.i.i.i.i389, label %.critedge355, label %.lr.ph

bb.ab:                                            ; preds = %bb.aa
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit665

.lr.ph:                                           ; preds = %_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit.preheader, %_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit
  %.02251113 = phi i64 [ %i.fm, %_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit ], [ 0, %_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0752.0864, i64 %.02251113
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !75
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0744.0, i64 %.02251113
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.eg, float noundef %i.ei)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.lr.ph
  %i.ej = load i8, ptr %8, align 8, !tbaa !98, !range !99, !noundef !100
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %.critedge353, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit665.thread

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.em = load ptr, ptr %i.bp, align 8, !tbaa !101 ; 2 uses
  %.not.i.i412 = icmp eq ptr %i.em, null
  br i1 %.not.i.i412, label %_ZNK7testing15AssertionResult15failure_messageEv.exit413, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit413

_ZNK7testing15AssertionResult15failure_messageEv.exit413: ; preds = %bb.ag, %bb.af
  %i.eo = phi ptr [ %i.en, %bb.ag ], [ @.str.20, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 777, ptr noundef %i.eo)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit413
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ep = load ptr, ptr %9, align 8, !tbaa !103   ; 3 uses
  %.not.i.i414 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i414, label %_ZN7testing7MessageD2Ev.exit416, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415: ; preds = %bb.ai
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !32
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(128) %i.ep) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit416

end_hunk_26
begin_hunk_27_@_Z30verifyMinMaxIndex2LevelDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.k, %bb.j
  %i.v = phi ptr [ %i.u, %bb.k ], [ @.str.20, %bb.j ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 312, ptr noundef %i.v)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.w = load ptr, ptr %6, align 8, !tbaa !103    ; 3 uses
  %.not.i.i366 = icmp eq ptr %i.w, null
  br i1 %.not.i.i366, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !101 ; 4 uses
  %.not.i.i367 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i367, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #23
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit630

bb.o:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit370

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %i.ah, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.aj = load ptr, ptr %6, align 8, !tbaa !103   ; 3 uses
  %.not.i.i368 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i368, label %_ZN7testing7MessageD2Ev.exit370, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369: ; preds = %bb.r
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit370

_ZN7testing7MessageD2Ev.exit370:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369, %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.o ], [ %.pn, %bb.r ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  br label %bb.af

.critedge:                                        ; preds = %_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !101 ; 4 uses
  %.not.i.i371 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i371, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372: ; preds = %bb.s
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !24
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 32) #23
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !116 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = call ptr @__dynamic_cast(ptr nonnull readonly %i.av, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !52 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = call ptr @__dynamic_cast(ptr nonnull %i.ba, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not.i376 = icmp eq ptr %i.bc, null
  br i1 %.not.i376, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 408
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !61
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.0796.ph = phi ptr [ %i.bg, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ] ; 3 uses
  %.0795.ph = phi ptr [ %i.be, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ] ; 3 uses
  %i.bh = call ptr @__dynamic_cast(ptr nonnull readonly %i.av, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !73 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = call ptr @__dynamic_cast(ptr nonnull %i.bk, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not.i377 = icmp eq ptr %i.bm, null
  br i1 %.not.i377, label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 344
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 168
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !41
  br label %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit

_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit: ; preds = %bb.t, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.1797 = phi ptr [ %i.bq, %bb.ab ], [ %.0796.ph, %bb.y ], [ %.0796.ph, %bb.z ], [ %.0796.ph, %bb.aa ], [ null, %bb.t ] ; 14 uses
  %.1 = phi ptr [ %i.bo, %bb.ab ], [ %.0795.ph, %bb.y ], [ %.0795.ph, %bb.z ], [ %.0795.ph, %bb.aa ], [ null, %bb.t ] ; 14 uses
  %i.br = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef i64 %i.bu(ptr noundef nonnull align 8 dereferenceable(36) %i.br)
          to label %bb.ac unwind label %bb.ag     ; 7 uses

bb.ac:                                            ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %i.bw = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.bw, label %bb.ad, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
          to label %.noexc380 unwind label %bb.ah

.noexc380:                                        ; preds = %bb.ad
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ac
  %.not.i.i.i.i379 = icmp eq i64 %1, 0            ; 12 uses
  br i1 %.not.i.i.i.i379, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit401, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bx = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #24
          to label %.noexc381 unwind label %bb.ah ; 5 uses

.noexc381:                                        ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.by, i8 0, i64 %i.bx, i1 false), !tbaa !75
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %1 ; 3 uses
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #24
          to label %.noexc390 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit644.thread ; 4 uses

.noexc390:                                        ; preds = %.noexc381
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ca, i8 0, i64 %i.bx, i1 false), !tbaa !75
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %1 ; 2 uses
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #24
          to label %.noexc400 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit642.thread ; 3 uses

.noexc400:                                        ; preds = %.noexc390
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cc, i8 0, i64 %i.bx, i1 false), !tbaa !75
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %1
  %i.ce = ptrtoint ptr %i.cd to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit401

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit401:         ; preds = %.noexc400, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0889 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc400 ] ; 2 uses
  %.sroa.0731.0874 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ca, %.noexc400 ] ; 11 uses
  %.sroa.10744.0815852 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bz, %.noexc400 ] ; 3 uses
  %.sroa.0741.0831840 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.by, %.noexc400 ] ; 7 uses
  %.sroa.0723.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cc, %.noexc400 ] ; 10 uses
  %.sroa.11727.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ce, %.noexc400 ] ; 2 uses
  %.not2861126.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not2861126.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421, label %.lr.ph1129

.lr.ph1129:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit401
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cg = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.ch = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ci = fdiv x86_fp80 %i.cg, %i.ch
  %i.cj = fptoui x86_fp80 %i.ci to i64            ; 2 uses
  %i.ck = add i64 %i.cj, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.ai

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit370, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit370 ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit646

bb.ag:                                            ; preds = %_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit646

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit646

_ZNSt6vectorIfSaIfEED2Ev.exit644.thread:          ; preds = %.noexc381
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

_ZNSt6vectorIfSaIfEED2Ev.exit642.thread:          ; preds = %.noexc390
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.ai:                                            ; preds = %.lr.ph1129, %._crit_edge
  %.02121128 = phi i64 [ 0, %.lr.ph1129 ], [ %i.fq, %._crit_edge ] ; 2 uses
  %.sroa.0760.01127 = phi i64 [ 123, %.lr.ph1129 ], [ %i.fa, %._crit_edge ]
  %i.cp = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.cq = load ptr, ptr %3, align 8, !tbaa !43
  %i.cr = mul i64 %.02121128, %i.bv               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 208
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(36) %i.cp, i64 noundef 1, ptr noundef %i.cs, ptr noundef %.sroa.0731.0874)
          to label %vector.ph1334 unwind label %bb.aj

vector.ph1334:                                    ; preds = %bb.ai
  %i.cw = load ptr, ptr %3, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cr ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !75, !alias.scope !764, !noalias !766
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !75, !alias.scope !764, !noalias !766
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5storeEPKfS4_PKhPf(ptr noundef %.1797, ptr noundef %.1, ptr noundef nonnull %i.db, ptr noundef %.sroa.0723.0)
  %broadcast.splatinsert1335 = insertelement <4 x float> poison, float %i.cy, i64 0
  %broadcast.splat1336 = shufflevector <4 x float> %broadcast.splatinsert1335, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1337 = insertelement <4 x float> poison, float %i.da, i64 0
  %broadcast.splat1338 = shufflevector <4 x float> %broadcast.splatinsert1337, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %vector.ph1334
  %index1340 = phi i64 [ 0, %vector.ph1334 ], [ %index.next1343.1, %vector.body1339 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0723.0, i64 %index1340 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %wide.load1341 = load <4 x float>, ptr %i.dc, align 4, !tbaa !75, !alias.scope !765, !noalias !767
  %wide.load1342 = load <4 x float>, ptr %i.dd, align 4, !tbaa !75, !alias.scope !765, !noalias !767
  %i.de = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1341, <4 x float> %broadcast.splat1336, <4 x float> %broadcast.splat1338)
  %i.df = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1342, <4 x float> %broadcast.splat1336, <4 x float> %broadcast.splat1338)
  store <4 x float> %i.de, ptr %i.dc, align 4, !tbaa !75, !alias.scope !765, !noalias !767
  store <4 x float> %i.df, ptr %i.dd, align 4, !tbaa !75, !alias.scope !765, !noalias !767
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0723.0, i64 %index1340 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 48 ; 2 uses
  %wide.load1341.1 = load <4 x float>, ptr %i.dh, align 4, !tbaa !75, !alias.scope !765, !noalias !767
  %wide.load1342.1 = load <4 x float>, ptr %i.di, align 4, !tbaa !75, !alias.scope !765, !noalias !767
  %i.dj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1341.1, <4 x float> %broadcast.splat1336, <4 x float> %broadcast.splat1338)
  %i.dk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1342.1, <4 x float> %broadcast.splat1336, <4 x float> %broadcast.splat1338)
  store <4 x float> %i.dj, ptr %i.dh, align 4, !tbaa !75, !alias.scope !765, !noalias !767
  store <4 x float> %i.dk, ptr %i.di, align 4, !tbaa !75, !alias.scope !765, !noalias !767
  %index.next1343.1 = add nuw nsw i64 %index1340, 16 ; 2 uses
  %i.dl = icmp eq i64 %index.next1343.1, 256
  br i1 %i.dl, label %_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit.preheader, label %vector.body1339, !llvm.loop !684

_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit.preheader: ; preds = %vector.body1339
  br i1 %.not.i.i.i.i379, label %.critedge342, label %.lr.ph

bb.aj:                                            ; preds = %bb.ai
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit640

.lr.ph:                                           ; preds = %_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit.preheader, %_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit
  %.02111123 = phi i64 [ %i.eu, %_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit ], [ 0, %_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5storeEPKfS6_PKhPf.exit.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0731.0874, i64 %.02111123
  %i.do = load float, ptr %i.dn, align 4, !tbaa !75
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0723.0, i64 %.02111123
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.do, float noundef %i.dq)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  %i.dr = load i8, ptr %8, align 8, !tbaa !98, !range !99, !noundef !100
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %.critedge340, label %bb.am

bb.al:                                            ; preds = %.lr.ph
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit640.thread

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.du = load ptr, ptr %i.cf, align 8, !tbaa !101 ; 2 uses
  %.not.i.i402 = icmp eq ptr %i.du, null
  br i1 %.not.i.i402, label %_ZNK7testing15AssertionResult15failure_messageEv.exit403, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit403

_ZNK7testing15AssertionResult15failure_messageEv.exit403: ; preds = %bb.ao, %bb.an
  %i.dw = phi ptr [ %i.dv, %bb.ao ], [ @.str.20, %bb.an ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 344, ptr noundef %i.dw)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit403
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.dx = load ptr, ptr %9, align 8, !tbaa !103   ; 3 uses
  %.not.i.i404 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i404, label %_ZN7testing7MessageD2Ev.exit406, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405: ; preds = %bb.aq
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(128) %i.dx) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit406

_ZN7testing7MessageD2Ev.exit406:                  ; preds = %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.eb = load ptr, ptr %i.cf, align 8, !tbaa !101 ; 4 uses
  %.not.i.i407 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i407, label %_ZNSt6vectorIfSaIfEED2Ev.exit624.thread, label %bb.ar

bb.ar:                                            ; preds = %_ZN7testing7MessageD2Ev.exit406
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !25 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i408: ; preds = %bb.ar
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !24
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i408
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit624.thread

bb.as:                                            ; preds = %bb.am
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit414

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit403
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.av
end_hunk_27
begin_hunk_28_@_Z26verifyMinMaxIndexPQDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  br label %bb.f

_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.d
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !872 ; 0 uses
  %.pr.pre = load ptr, ptr %4, align 8, !tbaa !111 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %.pr.pre, ptr %i.a, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr null, ptr %i.b, align 8, !tbaa !114
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread, %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.n = phi ptr [ %i.e, %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread ], [ %.pr.pre, %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit ]
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit unwind label %bb.h

bb.g:                                             ; preds = %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread1254, %_ZSt20dynamic_pointer_castIN5faiss22IndexRowwiseMinMaxBaseENS0_5IndexEESt10shared_ptrIT_ERKS3_IT0_E.exit
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_S7_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.99)
          to label %_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit unwind label %bb.h

_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit: ; preds = %bb.f, %bb.g
  %i.o = phi ptr [ %i.n, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.p = load i8, ptr %5, align 8, !tbaa !98, !range !99, !noundef !100
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.critedge, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.u

bb.i:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !101  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.k, %bb.j
  %i.v = phi ptr [ %i.u, %bb.k ], [ @.str.20, %bb.j ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 745, ptr noundef %i.v)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.w = load ptr, ptr %6, align 8, !tbaa !103    ; 3 uses
  %.not.i.i379 = icmp eq ptr %i.w, null
  br i1 %.not.i.i379, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !101 ; 4 uses
  %.not.i.i380 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i380, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #23
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit640

bb.o:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit383

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %i.ah, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.aj = load ptr, ptr %6, align 8, !tbaa !103   ; 3 uses
  %.not.i.i381 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i381, label %_ZN7testing7MessageD2Ev.exit383, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382: ; preds = %bb.r
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit383

_ZN7testing7MessageD2Ev.exit383:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382, %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.o ], [ %.pn, %bb.r ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  br label %bb.u

.critedge:                                        ; preds = %_ZN7testing8internal11CmpHelperNEIPN5faiss22IndexRowwiseMinMaxBaseEDnEENS_15AssertionResultEPKcS7_RKT_RKT0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !101 ; 4 uses
  %.not.i.i384 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i384, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i385: ; preds = %bb.s
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !24
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i385
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 32) #23
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !116, !nonnull !100, !noundef !100
  %i.aw = call ptr @__dynamic_cast(ptr nonnull %i.av, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss7IndexPQE, i64 0) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 256
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 14 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 192
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(36) %i.az)
          to label %bb.v unwind label %bb.y       ; 7 uses

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit383, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit383 ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit656

bb.v:                                             ; preds = %bb.t
  %i.be = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.be, label %bb.w, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
          to label %.noexc390 unwind label %bb.z

.noexc390:                                        ; preds = %bb.w
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.v
  %.not.i.i.i.i389 = icmp eq i64 %1, 0            ; 12 uses
  br i1 %.not.i.i.i.i389, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit411, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bf = shl nuw nsw i64 %1, 2                   ; 6 uses
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #24
          to label %.noexc391 unwind label %bb.z  ; 5 uses

.noexc391:                                        ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bf, i1 false), !tbaa !75
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %1 ; 3 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #24
          to label %.noexc400 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit654.thread ; 4 uses

.noexc400:                                        ; preds = %.noexc391
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bi, i8 0, i64 %i.bf, i1 false), !tbaa !75
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %1 ; 2 uses
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #24
          to label %.noexc410 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit652.thread ; 3 uses

.noexc410:                                        ; preds = %.noexc400
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bk, i8 0, i64 %i.bf, i1 false), !tbaa !75
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %1
  %i.bm = ptrtoint ptr %i.bl to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit411

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit411:         ; preds = %.noexc410, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0864 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bj, %.noexc410 ] ; 2 uses
  %.sroa.0741.0849 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bi, %.noexc410 ] ; 11 uses
  %.sroa.10754.0790827 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bh, %.noexc410 ] ; 3 uses
  %.sroa.0751.0806815 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bg, %.noexc410 ] ; 7 uses
  %.sroa.0733.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bk, %.noexc410 ] ; 10 uses
  %.sroa.11737.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bm, %.noexc410 ] ; 2 uses
  %.not3001101.not = icmp eq i64 %0, 0            ; 3 uses
  br i1 %.not3001101.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431, label %.lr.ph1104

.lr.ph1104:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit411
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bo = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.bp = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.bq = fdiv x86_fp80 %i.bo, %i.bp
  %i.br = fptoui x86_fp80 %i.bq to i64            ; 2 uses
  %i.bs = add i64 %i.br, 23
  %min.iters.check = icmp ult i64 %1, 8
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %bb.aa

bb.y:                                             ; preds = %bb.t
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit656

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit656

_ZNSt6vectorIfSaIfEED2Ev.exit654.thread:          ; preds = %.noexc391
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

_ZNSt6vectorIfSaIfEED2Ev.exit652.thread:          ; preds = %.noexc400
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.aa:                                            ; preds = %.lr.ph1104, %._crit_edge
  %.02261103 = phi i64 [ 0, %.lr.ph1104 ], [ %i.ey, %._crit_edge ] ; 2 uses
  %.sroa.0770.01102 = phi i64 [ 123, %.lr.ph1104 ], [ %i.ei, %._crit_edge ]
  %i.bx = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.by = load ptr, ptr %3, align 8, !tbaa !43
  %i.bz = mul i64 %.02261103, %i.bd               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 208
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(36) %i.bx, i64 noundef 1, ptr noundef %i.ca, ptr noundef %.sroa.0741.0849)
          to label %vector.ph1301 unwind label %bb.ab

vector.ph1301:                                    ; preds = %bb.aa
  %i.ce = load ptr, ptr %3, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bz ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !75, !alias.scope !873, !noalias !875
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !75, !alias.scope !873, !noalias !875
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5storeEPKfPKhPf(ptr noundef %i.ay, ptr noundef nonnull %i.cj, ptr noundef %.sroa.0733.0)
  %broadcast.splatinsert1302 = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat1303 = shufflevector <4 x float> %broadcast.splatinsert1302, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1304 = insertelement <4 x float> poison, float %i.ci, i64 0
  %broadcast.splat1305 = shufflevector <4 x float> %broadcast.splatinsert1304, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1301
  %index1307 = phi i64 [ 0, %vector.ph1301 ], [ %index.next1310.1, %vector.body1306 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0733.0, i64 %index1307 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %wide.load1308 = load <4 x float>, ptr %i.ck, align 4, !tbaa !75, !alias.scope !874, !noalias !876
  %wide.load1309 = load <4 x float>, ptr %i.cl, align 4, !tbaa !75, !alias.scope !874, !noalias !876
  %i.cm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1308, <4 x float> %broadcast.splat1303, <4 x float> %broadcast.splat1305)
  %i.cn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1309, <4 x float> %broadcast.splat1303, <4 x float> %broadcast.splat1305)
  store <4 x float> %i.cm, ptr %i.ck, align 4, !tbaa !75, !alias.scope !874, !noalias !876
  store <4 x float> %i.cn, ptr %i.cl, align 4, !tbaa !75, !alias.scope !874, !noalias !876
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0733.0, i64 %index1307 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 2 uses
  %wide.load1308.1 = load <4 x float>, ptr %i.cp, align 4, !tbaa !75, !alias.scope !874, !noalias !876
  %wide.load1309.1 = load <4 x float>, ptr %i.cq, align 4, !tbaa !75, !alias.scope !874, !noalias !876
  %i.cr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1308.1, <4 x float> %broadcast.splat1303, <4 x float> %broadcast.splat1305)
  %i.cs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1309.1, <4 x float> %broadcast.splat1303, <4 x float> %broadcast.splat1305)
  store <4 x float> %i.cr, ptr %i.cp, align 4, !tbaa !75, !alias.scope !874, !noalias !876
  store <4 x float> %i.cs, ptr %i.cq, align 4, !tbaa !75, !alias.scope !874, !noalias !876
  %index.next1310.1 = add nuw nsw i64 %index1307, 16 ; 2 uses
  %i.ct = icmp eq i64 %index.next1310.1, 256
  br i1 %i.ct, label %_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit.preheader, label %vector.body1306, !llvm.loop !806

_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit.preheader: ; preds = %vector.body1306
  br i1 %.not.i.i.i.i389, label %.critedge355, label %.lr.ph

bb.ab:                                            ; preds = %bb.aa
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit650

.lr.ph:                                           ; preds = %_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit.preheader, %_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit
  %.02251098 = phi i64 [ %i.ec, %_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit ], [ 0, %_ZN5faiss10cppcontrib18IndexMinMaxDecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5storeEPKfPKhPf.exit.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0849, i64 %.02251098
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !75
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0733.0, i64 %.02251098
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !75
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, float noundef %i.cw, float noundef %i.cy)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.lr.ph
  %i.cz = load i8, ptr %8, align 8, !tbaa !98, !range !99, !noundef !100
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %.critedge353, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit650.thread

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.dc = load ptr, ptr %i.bn, align 8, !tbaa !101 ; 2 uses
  %.not.i.i412 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i412, label %_ZNK7testing15AssertionResult15failure_messageEv.exit413, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit413

_ZNK7testing15AssertionResult15failure_messageEv.exit413: ; preds = %bb.ag, %bb.af
  %i.de = phi ptr [ %i.dd, %bb.ag ], [ @.str.20, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 777, ptr noundef %i.de)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit413
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.df = load ptr, ptr %9, align 8, !tbaa !103   ; 3 uses
  %.not.i.i414 = icmp eq ptr %i.df, null
  br i1 %.not.i.i414, label %_ZN7testing7MessageD2Ev.exit416, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415: ; preds = %bb.ai
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit416

_ZN7testing7MessageD2Ev.exit416:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.dj = load ptr, ptr %i.bn, align 8, !tbaa !101 ; 4 uses
  %.not.i.i417 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i417, label %_ZNSt6vectorIfSaIfEED2Ev.exit634.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit416
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !25 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i418: ; preds = %bb.aj
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !24
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i418
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit634.thread

bb.ak:                                            ; preds = %bb.ae
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit424

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit413
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
end_hunk_28
