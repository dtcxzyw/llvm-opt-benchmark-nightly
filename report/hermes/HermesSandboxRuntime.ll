Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/HermesSandboxRuntime?download=true
inline.NumInlined: 1912
inline.NumDeleted: 845
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE19_M_destroy_data_auxESt15_Deque_iteratorISA_RSA_PSA_ESG_:bb.a

bb.r:                                             ; preds = %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i.14
  %.05.i.i.ptr.15 = getelementptr inbounds nuw i8, ptr %i.h, i64 480 ; 2 uses
  %i.bf = invoke noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.ptr.15, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.ptr.15, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i.15 unwind label %bb.c ; 0 uses

_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i.15: ; preds = %bb.r, %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i.14
  %.0 = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !270 ; 2 uses
  %i.bh = icmp ult ptr %.0, %i.bg
  br i1 %i.bh, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !694

bb.s:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !273 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, %i.bj
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvT_SC_.exit11, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %bb.s, %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i9
  %.05.i.i7 = phi ptr [ %i.bp, %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i9 ], [ %i.g, %bb.s ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i8, label %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i9, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i6
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i7, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i7, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i9 unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #30
  unreachable

_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i9: ; preds = %bb.t, %.lr.ph.i.i6
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 32 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.bp, %i.bj
  br i1 %.not.i.i10, label %_ZSt8_DestroyIPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvT_SC_.exit11, label %.lr.ph.i.i6, !llvm.loop !695

_ZSt8_DestroyIPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvT_SC_.exit11: ; preds = %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i9, %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !272 ; 2 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !271   ; 2 uses
  %.not4.i.i12 = icmp eq ptr %i.br, %i.bs
  br i1 %.not4.i.i12, label %_ZSt8_DestroyIPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvT_SC_.exit18, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %_ZSt8_DestroyIPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvT_SC_.exit11, %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i16
  %.05.i.i14 = phi ptr [ %i.by, %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i16 ], [ %i.br, %_ZSt8_DestroyIPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvT_SC_.exit11 ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i14, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i15, label %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i16, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i13
  %i.bv = invoke noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i14, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i14, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i16 unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  tail call void @__clang_call_terminate(ptr %i.bx) #30
  unreachable

_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i16: ; preds = %bb.v, %.lr.ph.i.i13
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i14, i64 32 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.by, %i.bs
  br i1 %.not.i.i17, label %_ZSt8_DestroyIPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvT_SC_.exit18, label %.lr.ph.i.i13, !llvm.loop !695

bb.x:                                             ; preds = %._crit_edge
  %i.bz = load ptr, ptr %2, align 8, !tbaa !271   ; 2 uses
  %.not4.i.i19 = icmp eq ptr %i.g, %i.bz
  br i1 %.not4.i.i19, label %_ZSt8_DestroyIPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvT_SC_.exit18, label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %bb.x, %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i23
  %.05.i.i21 = phi ptr [ %i.cf, %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i23 ], [ %i.g, %bb.x ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i21, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i22, label %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i23, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i20
  %i.cc = invoke noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i21, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i23 unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #30
  unreachable

_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i23: ; preds = %bb.y, %.lr.ph.i.i20
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i21, i64 32 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.cf, %i.bz
  br i1 %.not.i.i24, label %_ZSt8_DestroyIPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvT_SC_.exit18, label %.lr.ph.i.i20, !llvm.loop !695

_ZSt8_DestroyIPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvT_SC_.exit18: ; preds = %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i16, %_ZSt8_DestroyISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvPT_.exit.i.i23, %bb.x, %_ZSt8_DestroyIPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEEEvT_SC_.exit11
  ret void
}

declare void @wasm2c_hermes_free(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc i32 @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl13BufferWrapper6createERS0_RKSt10shared_ptrIKN8facebook3jsi6BufferEE(ptr noundef nonnull align 8 dereferenceable(1038) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !421    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.f = add i64 %i.e, 1                          ; 4 uses
  %i.g = icmp ugt i64 %i.f, 4294967295
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = trunc nuw i64 %i.f to i32
  %i.j = tail call i32 @w2c_hermes_malloc(ptr noundef nonnull %i.h, i32 noundef %i.i) ; 3 uses
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %i.f, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !7
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %i.j, 0
  %i.q = icmp ne i64 %i.f, 0
  %or.cond.i.i.i = and i1 %i.q, %i.p
  br i1 %or.cond.i.i.i, label %bb.f, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl7sbAllocIcEENS_2sb3PtrIT_EEm.exit

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl7sbAllocIcEENS_2sb3PtrIT_EEm.exit: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.val.val = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val.val, i64 %i.k
  %i.t = load ptr, ptr %1, align 8, !tbaa !421    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.x, i64 %i.e, i1 false)
  %.val21.val = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val21.val, i64 %i.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.e
  store i8 0, ptr %i.z, align 1, !tbaa !24
  %i.aa = tail call i32 @w2c_hermes_malloc(ptr noundef nonnull %i.h, i32 noundef 12) ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 12
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !7
  %i.ae = icmp ugt i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl7sbAllocIcEENS_2sb3PtrIT_EEm.exit
  tail call void @abort() #30
  unreachable

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl7sbAllocIcEENS_2sb3PtrIT_EEm.exit
  %i.af = icmp eq i32 %i.aa, 0
  br i1 %i.af, label %bb.i, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl7sbAllocINS0_13BufferWrapperEEENS_2sb3PtrIT_EEm.exit

bb.i:                                             ; preds = %bb.h
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl7sbAllocINS0_13BufferWrapperEEENS_2sb3PtrIT_EEm.exit: ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val23 = load i32, ptr %i.ag, align 8, !tbaa !38
  %.val19.val = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val19.val, i64 %i.ab ; 3 uses
  store i32 %.val23, ptr %i.ah, align 4, !tbaa !696
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.j, ptr %i.ai, align 4, !tbaa !262
  %i.aj = trunc i64 %i.e to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !697
  ret i32 %i.aa
}

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl10throwErrorENS_16SandboxErrorCodeE(ptr noundef nonnull align 8 dereferenceable(1038) %0, i32 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.facebook::jsi::Value", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  switch i32 %1, label %bb.ab [
    i32 1, label %bb.b
    i32 0, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = tail call i32 @w2c_hermes_stackSave(ptr noundef nonnull %i.b)
  %i.d = tail call i32 @w2c_hermes_stackAlloc(ptr noundef nonnull %i.b, i32 noundef 16) ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.d, 0
  br i1 %i.j, label %bb.e, label %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.n = load i32, ptr %i.m, align 8, !tbaa !137
  invoke void %i.l(ptr noundef nonnull %i.b, i32 noundef %i.d, i32 noundef %i.n)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val32.val = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val32.val, i64 %i.e ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.p, align 8, !tbaa !24
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !24
  invoke fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl12intoJSIValueENS_12SandboxValueE(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(1038) %0, i32 %.sroa.04.0.copyload, i64 %.sroa.26.0.copyload)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1036 ; 3 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !73, !range !26, !noundef !27
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.noexc.i, label %bb.m

.noexc.i:                                         ; preds = %bb.g
  %i.t = tail call ptr @__cxa_allocate_exception(i64 40) #31 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 34, ptr %i.a, align 8, !tbaa !19
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.v, ptr %3, align 8, !tbaa !25
  %i.w = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.v, ptr noundef nonnull align 1 dereferenceable(34) @.str.11, i64 34, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.z = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread: ; preds = %.noexc
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !22  ; 3 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.ad, i1 false)
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %.noexc
  %i.af = load i64, ptr %i.u, align 8, !tbaa !24
  %.pre.i = load i64, ptr %i.x, align 8, !tbaa !22
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread
  %.sink = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %i.ag = phi i64 [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  store ptr %i.u, ptr %3, align 8, !tbaa !25
  store i64 0, ptr %i.x, align 8, !tbaa !22
  store i8 0, ptr %i.u, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sink, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook3jsi18JSINativeExceptionE, i64 16), ptr %i.t, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN8facebook3jsi18JSINativeExceptionE, ptr nonnull @_ZN8facebook3jsi18JSINativeExceptionD1Ev) #34
          to label %bb.ac unwind label %bb.k

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.u
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.k
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !24
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.l:                                             ; preds = %.noexc.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.t) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %bb.g
  store i8 1, ptr %i.q, align 4, !tbaa !73
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 120) #31 ; 3 uses
  invoke void @_ZN8facebook3jsi7JSErrorC1ERNS0_7RuntimeEONS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN8facebook3jsi7JSErrorE, ptr nonnull @_ZN8facebook3jsi7JSErrorD1Ev) #34
          to label %bb.ac unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ar) #31
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn23 = phi { ptr, i32 } [ %i.at, %bb.p ], [ %i.as, %bb.o ]
  store i8 0, ptr %i.q, align 4, !tbaa !698
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.l, %bb.q
  %.pn25.pn = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %.pn23, %bb.q ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.al, %bb.k ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.j
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ak, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %bb.r ], [ %i.aj, %bb.i ]
  invoke void @w2c_hermes_stackRestore(ptr noundef nonnull %i.b, i32 noundef %i.c)
          to label %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #30
  unreachable

bb.u:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ax = tail call i32 @w2c_hermes_malloc(ptr noundef nonnull %i.aw, i32 noundef 16) ; 4 uses
  %i.ay = zext i32 %i.ax to i64                   ; 4 uses
  %i.az = add nuw nsw i64 %i.ay, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !7
  %i.bc = icmp ugt i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @abort() #30
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bd = icmp eq i32 %i.ax, 0
  br i1 %i.bd, label %bb.x, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl18GrowableBufferImpl6createERS0_.exit

bb.x:                                             ; preds = %bb.w
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl18GrowableBufferImpl6createERS0_.exit: ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val10.i = load i32, ptr %i.be, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.val8.val.i = load ptr, ptr %i.bf, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val8.val.i, i64 %i.ay ; 4 uses
  store i32 %.val10.i, ptr %i.bg, align 4, !tbaa !465
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 0, ptr %i.bh, align 4, !tbaa !266
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bi, align 4, !tbaa !264
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !466
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !146
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !137
  tail call void %i.bl(ptr noundef nonnull %i.aw, i32 noundef %i.bn, i32 noundef %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %.val.val = load ptr, ptr %i.bf, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.val, i64 %i.ay ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  %.val40 = load i32, ptr %i.bp, align 4, !tbaa !266
  %i.bq = getelementptr i8, ptr %i.bo, i64 12
  %.val41 = load i32, ptr %i.bq, align 4, !tbaa !466
  call fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl18GrowableBufferImpl9getStringB5cxx11EP10w2c_hermes(ptr dead_on_unwind noalias nonnull writable align 8 %4, i32 %.val40, i32 %.val41, ptr noundef %i.aw)
  %.val.val.i = load ptr, ptr %i.bf, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 %i.ay
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !266
  invoke void @w2c_hermes_free(ptr noundef nonnull %i.aw, i32 noundef %i.bt)
          to label %.noexc43 unwind label %bb.z

.noexc43:                                         ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl18GrowableBufferImpl6createERS0_.exit
  invoke void @w2c_hermes_free(ptr noundef nonnull %i.aw, i32 noundef %i.ax)
          to label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl18GrowableBufferImpl7releaseEP10w2c_hermesNS_2sb3PtrIS1_EE.exit unwind label %bb.z

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl18GrowableBufferImpl7releaseEP10w2c_hermesNS_2sb3PtrIS1_EE.exit: ; preds = %.noexc43
  %i.bu = call ptr @__cxa_allocate_exception(i64 40) #31 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.bv, ptr %5, align 8, !tbaa !20
  %i.bw = load ptr, ptr %4, align 8, !tbaa !25    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl18GrowableBufferImpl7releaseEP10w2c_hermesNS_2sb3PtrIS1_EE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !22 ; 4 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull align 8 dereferenceable(1) %i.bx, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ca, ptr %i.ce, align 8, !tbaa !22
  store ptr %i.bx, ptr %4, align 8, !tbaa !25
  store i64 0, ptr %i.cd, align 8, !tbaa !22
  store i8 0, ptr %i.bx, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl18GrowableBufferImpl7releaseEP10w2c_hermesNS_2sb3PtrIS1_EE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ch = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22 ; 2 uses
  store <2 x i64> %i.ch, ptr %i.cg, align 8, !tbaa !24
  store ptr %i.bx, ptr %4, align 8, !tbaa !25
  store i64 0, ptr %i.cf, align 8, !tbaa !22
  store i8 0, ptr %i.bx, align 8, !tbaa !24
  %i.ci = icmp eq ptr %i.bw, %i.bv
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.cj = phi ptr [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.ck = phi i64 [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.cl = add nuw nsw i64 %i.ck, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.cn = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.cl, i1 false)
  br label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.co = load i64, ptr %i.bv, align 8, !tbaa !24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !24
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48.thread
  %i.cq = phi ptr [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48.thread ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48 ]
  %i.cr = phi i64 [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48 ]
  %.sink68 = phi ptr [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48.thread ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i48 ]
  store ptr %i.bv, ptr %5, align 8, !tbaa !25
  store i64 0, ptr %i.cq, align 8, !tbaa !22
  store i8 0, ptr %i.bv, align 8, !tbaa !24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %.sink68, ptr %i.cs, align 8, !tbaa !20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook3jsi18JSINativeExceptionE, i64 16), ptr %i.bu, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTIN8facebook3jsi18JSINativeExceptionE, ptr nonnull @_ZN8facebook3jsi18JSINativeExceptionD1Ev) #34
          to label %bb.ac unwind label %bb.aa

bb.z:                                             ; preds = %.noexc43, %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl18GrowableBufferImpl6createERS0_.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.aa:                                            ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.bv
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.aa
  %i.cy = load i64, ptr %i.bv, align 8, !tbaa !24
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.z
  %.pn = phi { ptr, i32 } [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.cu, %bb.z ], [ %i.cv, %bb.aa ]
  %i.da = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !24
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit

bb.ab:                                            ; preds = %bb.a
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit: ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn25.pn.pn.pn, %bb.s ]
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn

bb.ac:                                            ; preds = %bb.y, %bb.n, %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl12intoJSIValueENS_12SandboxValueE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, i32 %2, i64 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.r [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
    i32 -2147483641, label %bb.f
    i32 -2147483639, label %bb.i
    i32 -2147483643, label %bb.l
    i32 -2147483642, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !300, !alias.scope !699
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !300, !alias.scope !702
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %.sroa.1.8.extract.trunc63 = trunc i64 %3 to i8
  store i32 2, ptr %0, align 8, !tbaa !300
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.1.8.extract.trunc63, ptr %i.a, align 8, !tbaa !24
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 8, !tbaa !300
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.b, align 8, !tbaa !24
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.sroa.1.8.extract.trunc61 = trunc i64 %3 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !355  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.g, label %_ZN8facebook3jsi7PointerD2Ev.exit, !prof !347

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.g = load i64, ptr %i.f, align 8, !tbaa !357
  %i.h = uitofp i64 %i.g to double
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.j = load double, ptr %i.i, align 8, !tbaa !358
  %i.k = fcmp ogt double %i.j, %i.h
  br i1 %i.k, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_124HermesSandboxRuntimeImpl20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !355  ; 2 uses
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %.sink.split.i, label %_ZN8facebook3jsi7PointerD2Ev.exit

.sink.split.i:                                    ; preds = %bb.h, %bb.g
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_124HermesSandboxRuntimeImpl20ManagedPointerHolderELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  %.pre66 = load ptr, ptr %i.d, align 8, !tbaa !355
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.f, %bb.h, %.sink.split.i
  %i.m = phi ptr [ %i.e, %bb.f ], [ %i.l, %bb.h ], [ %.pre66, %.sink.split.i ] ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !24
  store ptr %.val.i, ptr %i.d, align 8, !tbaa !355
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store atomic i32 1, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %.sroa.1.8.extract.trunc61, ptr %i.p, align 4, !tbaa !303
  store ptr %1, ptr %i.n, align 8, !tbaa !24
  store i32 6, ptr %0, align 8, !tbaa !300
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.q, align 8, !tbaa !359
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.sroa.1.8.extract.trunc59 = trunc i64 %3 to i32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !355  ; 2 uses
  %.not.i14 = icmp eq ptr %i.t, null
  br i1 %.not.i14, label %bb.j, label %_ZN8facebook3jsi7PointerD2Ev.exit20, !prof !347

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.v = load i64, ptr %i.u, align 8, !tbaa !357
end_hunk_0
begin_hunk_1_@_ZNK8facebook3jsi27SourceJavaScriptPreparation4sizeEv:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK8facebook3jsi27SourceJavaScriptPreparation4dataEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.f
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N8facebook3jsi27SourceJavaScriptPreparationD1Ev(ptr noundef %0) unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !342  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN8facebook3jsi27SourceJavaScriptPreparationD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !343
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !345
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !708
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !708
  br label %_ZN8facebook3jsi27SourceJavaScriptPreparationD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZN8facebook3jsi27SourceJavaScriptPreparationD2Ev.exit, !prof !347

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  br label %_ZN8facebook3jsi27SourceJavaScriptPreparationD2Ev.exit

_ZN8facebook3jsi27SourceJavaScriptPreparationD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.x = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN8facebook3jsi6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #31
  tail call void @_ZN8facebook3jsi18PreparedJavaScriptD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %i.x) #31
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N8facebook3jsi27SourceJavaScriptPreparationD0Ev(ptr noundef %0) unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !342  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook3jsi27SourceJavaScriptPreparationD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !343
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !345
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !709
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !709
  br label %_ZN8facebook3jsi27SourceJavaScriptPreparationD0Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZN8facebook3jsi27SourceJavaScriptPreparationD0Ev.exit, !prof !347

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  br label %_ZN8facebook3jsi27SourceJavaScriptPreparationD0Ev.exit

_ZN8facebook3jsi27SourceJavaScriptPreparationD0Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN8facebook3jsi6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #31
  tail call void @_ZN8facebook3jsi18PreparedJavaScriptD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %i.x) #31
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 noundef 64) #32
  ret void
}

; Function Attrs: uwtable
define linkonce_odr hidden noundef i64 @_ZThn8_NK8facebook3jsi27SourceJavaScriptPreparation4sizeEv(ptr noundef %0) unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !710
  ret i64 %i.f
}

; Function Attrs: uwtable
define linkonce_odr hidden noundef ptr @_ZThn8_NK8facebook3jsi27SourceJavaScriptPreparation4dataEv(ptr noundef %0) unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !711
  ret ptr %i.f
}

; Function Attrs: nounwind
declare void @_ZN8facebook3jsi6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN8facebook3jsi18PreparedJavaScriptD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN12_GLOBAL__N_122throwUnimplementedImplEPKc(ptr noundef %0) unnamed_addr #16 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #31 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 23, ptr %i.a, align 8, !tbaa !19
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %2, align 8, !tbaa !25
  %i.e = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.d, ptr noundef nonnull align 1 dereferenceable(23) @.str.12, i64 23, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !22
  %i.g = load ptr, ptr %2, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31, !noalias !712 ; 2 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !22, !noalias !712
  %i.k = sub i64 4611686018427387903, %i.j
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.a:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #34
          to label %.noexc9 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.noexc9:                                          ; preds = %bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.noexc
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %0, i64 noundef %i.i)
          to label %.noexc10 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 8 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !20, !alias.scope !712
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc10
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22   ; 4 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.w, align 8, !tbaa !22, !alias.scope !712
  store ptr %i.p, ptr %i.m, align 8, !tbaa !25
  store i64 0, ptr %i.v, align 8, !tbaa !22
  store i8 0, ptr %i.p, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread

bb.b:                                             ; preds = %.noexc10
  %i.x = load i64, ptr %i.p, align 8, !tbaa !24
  store i64 %i.x, ptr %i.n, align 8, !tbaa !24, !alias.scope !712
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !22 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.z, align 8, !tbaa !22, !alias.scope !712
  store ptr %i.p, ptr %i.m, align 8, !tbaa !25
  store i64 0, ptr %i.y, align 8, !tbaa !22
  store i8 0, ptr %i.p, align 8, !tbaa !24
  %i.aa = icmp eq ptr %i.o, %i.n
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread: ; preds = %.thread, %bb.b
  %i.ab = phi ptr [ %i.w, %.thread ], [ %i.z, %bb.b ]
  %i.ac = phi i64 [ %i.s, %.thread ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.af = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.ad, i1 false)
  br label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %bb.b
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread
  %i.ai = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %i.aj = phi i64 [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %.sink = phi ptr [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  store ptr %i.n, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %i.ai, align 8, !tbaa !22
  store i8 0, ptr %i.n, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sink, ptr %i.ak, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook3jsi18JSINativeExceptionE, i64 16), ptr %i.b, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN8facebook3jsi18JSINativeExceptionE, ptr nonnull @_ZN8facebook3jsi18JSINativeExceptionD1Ev) #34
          to label %bb.f unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread: ; preds = %.noexc.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread28

bb.d:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.n
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.d
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !24
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.as = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.c
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.c
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !24
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.c, align 8, !tbaa !24
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.ba) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread
  %.pn.pn21 = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread28
  %.pn.pn20 = phi { ptr, i32 } [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %.pn.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread28 ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ]
  resume { ptr, i32 } %.pn.pn20

bb.f:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !332  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !332
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !333
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !334
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !335
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !333
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !625
  %i.ag = load ptr, ptr %0, align 8, !tbaa !626
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #33 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !682
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !339
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !519 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !342
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load <2 x ptr>, ptr %1, align 8, !tbaa !308
  store ptr null, ptr %i.ar, align 8, !tbaa !342
  store <2 x ptr> %i.as, ptr %i.ap, align 8, !tbaa !308
  store ptr null, ptr %1, align 8, !tbaa !368
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !332
  store ptr %i.am, ptr %i.o, align 8, !tbaa !334
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !335
  store ptr %i.am, ptr %i.a, align 8, !tbaa !519
end_hunk_1
