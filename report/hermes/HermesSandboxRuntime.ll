inline.NumInlined: 1912
inline.NumDeleted: 845
begin_hunk_0_@_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl19setValueAtIndexImplERKN8facebook3jsi5ArrayEmRKNS2_5ValueE:bb.a
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @abort() #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.af = icmp eq i32 %i.z, 0
  br i1 %i.af, label %bb.j, label %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit

bb.j:                                             ; preds = %bb.i
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit: ; preds = %bb.i
  %i.ag = invoke i32 @w2c_hermes_stackSave(ptr noundef nonnull %i.x)
          to label %.noexc unwind label %bb.y     ; 2 uses

.noexc:                                           ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit
  %i.ah = invoke i32 @w2c_hermes_stackAlloc(ptr noundef nonnull %i.x, i32 noundef 16)
          to label %.noexc42 unwind label %bb.y   ; 3 uses

.noexc42:                                         ; preds = %.noexc
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 16
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !7
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc42
  tail call void @abort() #30
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.am = icmp eq i32 %i.ah, 0
  br i1 %i.am, label %bb.m, label %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit43

bb.m:                                             ; preds = %bb.l
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit43: ; preds = %bb.l
  %i.an = uitofp i64 %2 to double
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val28.val = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val28.val, i64 %i.ai ; 2 uses
  store i32 4, ptr %i.ap, align 8, !tbaa !24
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store double %i.an, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !24
  %i.aq = load i32, ptr %3, align 8, !tbaa !300   ; 5 uses
  switch i32 %i.aq, label %bb.p [
    i32 0, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl14toSandboxValueERKN8facebook3jsi5ValueE.exit
    i32 1, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl14toSandboxValueERKN8facebook3jsi5ValueE.exit
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit43
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !24, !range !26, !noundef !27
  %.sroa.2.8.insert.ext.i.i = zext nneg i8 %i.as to i64
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl14toSandboxValueERKN8facebook3jsi5ValueE.exit

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit43
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !24
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl14toSandboxValueERKN8facebook3jsi5ValueE.exit

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit43
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24
  %i.ax = getelementptr i8, ptr %i.aw, i64 12
  %.val.i = load i32, ptr %i.ax, align 4, !tbaa !303
  switch i32 %i.aq, label %bb.s [
    i32 6, label %bb.t
    i32 7, label %bb.q
    i32 4, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ay = icmp eq i32 %i.aq, 5
  tail call void @llvm.assume(i1 %i.ay)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i = phi i32 [ -2147483642, %bb.s ], [ -2147483639, %bb.q ], [ -2147483643, %bb.r ], [ -2147483641, %bb.p ]
  %.sroa.2.8.insert.ext.i15.pn.i = zext i32 %.val.i to i64
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl14toSandboxValueERKN8facebook3jsi5ValueE.exit

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl14toSandboxValueERKN8facebook3jsi5ValueE.exit: ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit43, %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit43, %bb.n, %bb.o, %bb.t
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0.i, %bb.t ], [ %i.aq, %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit43 ], [ 2, %bb.n ], [ 4, %bb.o ], [ %i.aq, %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit43 ]
  %.sroa.9.1.i = phi i64 [ %.sroa.2.8.insert.ext.i15.pn.i, %bb.t ], [ undef, %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit43 ], [ %.sroa.2.8.insert.ext.i.i, %bb.n ], [ %i.au, %bb.o ], [ undef, %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit43 ]
  %.val.val = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val.val, i64 %i.aa ; 2 uses
  store i32 %.sroa.0.1.i, ptr %i.az, align 8, !tbaa !24
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.9.1.i, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !180
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !137
  %.val40 = load ptr, ptr %1, align 8, !tbaa !359
  %i.be = getelementptr i8, ptr %.val40, i64 12
  %.val40.val = load i32, ptr %i.be, align 4, !tbaa !303
  %i.bf = invoke noundef i32 %i.bb(ptr noundef nonnull %i.x, i32 noundef %i.bd, i32 noundef %.val40.val, i32 noundef %i.ah, i32 noundef %i.z)
          to label %bb.u unwind label %bb.z       ; 2 uses

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl14toSandboxValueERKN8facebook3jsi5ValueE.exit
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %bb.v, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_18SandboxVoidOrErrorE.exit

bb.v:                                             ; preds = %bb.u
  %i.bh = lshr i32 %i.bf, 2
  invoke fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl10throwErrorENS_16SandboxErrorCodeE(ptr noundef nonnull align 8 dereferenceable(1038) %0, i32 noundef %i.bh) #34
          to label %.noexc45 unwind label %bb.aa

.noexc45:                                         ; preds = %bb.v
  unreachable

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_18SandboxVoidOrErrorE.exit: ; preds = %bb.u
  invoke void @w2c_hermes_stackRestore(ptr noundef nonnull %i.x, i32 noundef %i.ag)
          to label %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_18SandboxVoidOrErrorE.exit
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_18SandboxVoidOrErrorE.exit
  invoke void @w2c_hermes_stackRestore(ptr noundef nonnull %i.x, i32 noundef %i.y)
          to label %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit46 unwind label %bb.x

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit46: ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit
  ret void

bb.y:                                             ; preds = %.noexc, %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit47

bb.z:                                             ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl14toSandboxValueERKN8facebook3jsi5ValueE.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.aa ], [ %i.bn, %bb.z ]
  invoke void @w2c_hermes_stackRestore(ptr noundef nonnull %i.x, i32 noundef %i.ag)
          to label %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit47 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit47: ; preds = %bb.ab, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.y ], [ %.pn, %bb.ab ]
  invoke void @w2c_hermes_stackRestore(ptr noundef nonnull %i.x, i32 noundef %i.y)
          to label %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit48 unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit47
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit48: ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.f
  %.pn24.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %.pn.pn, %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEED2Ev.exit47 ]
  resume { ptr, i32 } %.pn24.pn

bb.ae:                                            ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl30createFunctionFromHostFunctionERKN8facebook3jsi10PropNameIDEjSt8functionIFNS2_5ValueERNS2_7RuntimeERKS7_PSA_mEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::Function") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i32 noundef %3, ptr noundef captures(none) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 10 uses
  %6 = alloca %"class.std::function", align 8     ; 5 uses
  %7 = alloca %"class.std::function", align 8     ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !297
  store ptr %i.c, ptr %i.a, align 8, !tbaa !297
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !278  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !598
  store ptr %i.e, ptr %i.f, align 8, !tbaa !278
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = invoke i32 @w2c_hermes_malloc(ptr noundef nonnull %i.g, i32 noundef 8)
          to label %.noexc unwind label %bb.z     ; 3 uses

.noexc:                                           ; preds = %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = add nuw nsw i64 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  tail call void @abort() #30
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.n = icmp eq i32 %i.h, 0
  br i1 %i.n, label %bb.e, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl7sbAllocINS0_19HostFunctionWrapperEEENS_2sb3PtrIT_EEm.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl7sbAllocINS0_19HostFunctionWrapperEEENS_2sb3PtrIT_EEm.exit.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val7.i = load i32, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.val5.val.i = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val5.val.i, i64 %i.i
  store i32 %.val7.i, ptr %i.q, align 4, !tbaa !599
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !518
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !518  ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl7sbAllocINS0_19HostFunctionWrapperEEENS_2sb3PtrIT_EEm.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !600  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !601
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %.not.i.i.i = icmp eq ptr %i.y, %i.ab
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 24, i1 false)
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !297
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !297
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !278
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false), !tbaa.struct !598
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !278
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !278
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i.i.i

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !600
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  store ptr %i.aj, ptr %i.x, align 8, !tbaa !600
  br label %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit.i.i

bb.i:                                             ; preds = %bb.f
  invoke void @_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_push_back_auxIJSA_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc7 unwind label %bb.z

.noexc7:                                          ; preds = %bb.i
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !271
  br label %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit.i.i

_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit.i.i: ; preds = %.noexc7, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i.i.i
  %i.ak = phi ptr [ %.pre.i.i, %.noexc7 ], [ %i.aj, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !272, !noalias !602
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !270 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !270
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = icmp ne ptr %i.ap, null
  %.neg.i.i.i.i = sext i1 %i.aw to i64
  %i.ax = add nsw i64 %i.av, %.neg.i.i.i.i
  %i.ay = shl nsw i64 %i.ax, 4
  %i.az = ptrtoint ptr %i.ak to i64
  %i.ba = ptrtoint ptr %i.am to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = lshr exact i64 %i.bb, 5
  %i.bd = add i64 %i.ay, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !273
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !271
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = lshr exact i64 %i.bj, 5
  %i.bl = add i64 %i.bd, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = add i32 %i.bm, -1
  br label %bb.t

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl7sbAllocINS0_19HostFunctionWrapperEEENS_2sb3PtrIT_EEm.exit.i
  %i.bo = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3  ; 2 uses
  store ptr %i.bo, ptr %i.u, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !297
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.bs, null   ; 2 uses
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false), !tbaa.struct !598
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i.i

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i.i: ; preds = %bb.k, %bb.j
  %i.bt = zext i32 %i.bp to i64                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !271, !noalias !605 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !272, !noalias !605
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !270, !noalias !605
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 5
  %i.ce = add nsw i64 %i.cd, %i.bt                ; 5 uses
  %i.cf = icmp sgt i64 %i.ce, -1
  br i1 %i.cf, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i.i
  %i.cg = icmp samesign ult i64 %i.ce, 16
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %i.bt
  br label %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EEixEm.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ci = lshr i64 %i.ce, 4
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i.i
  %i.cj = ashr i64 %i.ce, 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ck = phi i64 [ %i.ci, %bb.n ], [ %i.cj, %bb.o ] ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !277, !noalias !605
  %i.cn = shl nsw i64 %i.ck, 4
  %i.co = sub nsw i64 %i.ce, %i.cn
  %i.cp = getelementptr inbounds [32 x i8], ptr %i.cm, i64 %i.co
  br label %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EEixEm.exit.i.i

_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EEixEm.exit.i.i: ; preds = %bb.p, %bb.m
  %storemerge.i.i.i.i.i.i = phi ptr [ %i.cp, %bb.p ], [ %i.ch, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i6.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EEixEm.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !598
  br label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i6.i.i

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i6.i.i: ; preds = %bb.q, %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EEixEm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %storemerge.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %storemerge.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !598
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !308 ; 3 uses
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !308
  store ptr %i.bs, ptr %i.cs, align 8, !tbaa !308
  %i.cu = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !308
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !308
  store ptr %i.bq, ptr %i.cu, align 8, !tbaa !308
  %.not.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i6.i.i
  %i.cw = invoke noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.r, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit.i.i
  %.0.i.i = phi i32 [ %i.bn, %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit.i.i ], [ %i.bp, %_ZNSt14_Function_baseD2Ev.exit.i.i ]
  %.val.val.i = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 %i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %.0.i.i, ptr %i.da, align 4, !tbaa !267
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !278 ; 2 uses
  %.not.i = icmp eq ptr %i.dc, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !208
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !137
  %.val = load ptr, ptr %2, align 8, !tbaa !359
  %i.dk = getelementptr i8, ptr %.val, i64 12
  %.val.val = load i32, ptr %i.dk, align 4, !tbaa !303
  %i.dl = call noundef i32 %i.dh(ptr noundef nonnull %i.g, i32 noundef %i.dj, i32 noundef %.val.val, i32 noundef %3, i32 noundef %i.h) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %bb.w, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_22SandboxFunctionOrErrorE.exit.i

bb.w:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.dn = lshr i32 %i.dl, 2
  call fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl10throwErrorENS_16SandboxErrorCodeE(ptr noundef nonnull align 8 dereferenceable(1038) %1, i32 noundef %i.dn) #34, !noalias !608
  unreachable

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_22SandboxFunctionOrErrorE.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !355, !noalias !614 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i8, label %bb.x, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl15intoJSIFunctionENS_22SandboxFunctionOrErrorE.exit, !prof !347

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_22SandboxFunctionOrErrorE.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !357, !noalias !614
  %i.dt = uitofp i64 %i.ds to double
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dv = load double, ptr %i.du, align 8, !tbaa !358, !noalias !614
  %i.dw = fcmp ogt double %i.dv, %i.dt
  br i1 %i.dw, label %.sink.split.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_124HermesSandboxRuntimeImpl20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.do), !noalias !614
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !355, !noalias !614 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not5.i.i.i, label %.sink.split.i.i.i, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl15intoJSIFunctionENS_22SandboxFunctionOrErrorE.exit

.sink.split.i.i.i:                                ; preds = %bb.y, %bb.x
  call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_124HermesSandboxRuntimeImpl20ManagedPointerHolderELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.do), !noalias !614
  %.pre.i.i9 = load ptr, ptr %i.dp, align 8, !tbaa !355, !noalias !614
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl15intoJSIFunctionENS_22SandboxFunctionOrErrorE.exit

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl15intoJSIFunctionENS_22SandboxFunctionOrErrorE.exit: ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_22SandboxFunctionOrErrorE.exit.i, %bb.y, %.sink.split.i.i.i
  %i.dy = phi ptr [ %i.dq, %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_22SandboxFunctionOrErrorE.exit.i ], [ %i.dx, %bb.y ], [ %.pre.i.i9, %.sink.split.i.i.i ] ; 4 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 16     ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !24, !noalias !614
  store ptr %.val.i.i.i, ptr %i.dp, align 8, !tbaa !355, !noalias !614
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store atomic i32 1, ptr %i.ea monotonic, align 8, !noalias !614
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 %i.dl, ptr %i.eb, align 4, !tbaa !303, !noalias !614
  store ptr %1, ptr %i.dz, align 8, !tbaa !24, !noalias !614
  store ptr %i.dy, ptr %0, align 8, !tbaa !359, !alias.scope !615
  ret void

bb.z:                                             ; preds = %bb.i, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !278 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ee, null
  br i1 %.not.i10, label %_ZNSt14_Function_baseD2Ev.exit11, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = invoke noundef zeroext i1 %i.ee(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit11 unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit11:                 ; preds = %bb.z, %bb.aa
  resume { ptr, i32 } %i.ec
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl4callERKN8facebook3jsi8FunctionERKNS2_5ValueEPS7_m(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::Value") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef readonly captures(none) %4, i64 noundef %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.b = trunc i64 %5 to i32                      ; 3 uses
  %i.c = shl i32 %i.b, 4
  %i.d = tail call i32 @w2c_hermes_malloc(ptr noundef nonnull %i.a, i32 noundef %i.c) ; 5 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = shl i64 %5, 4
  %i.g = and i64 %i.f, 68719476720
  %i.h = add nuw nsw i64 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !7
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.d, 0
  %i.m = icmp ne i32 %i.b, 0
  %or.cond.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit.preheader

_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit.preheader: ; preds = %bb.c
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit._crit_edge: ; preds = %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit, %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit.preheader
  %i.o = invoke i32 @w2c_hermes_stackSave(ptr noundef nonnull %i.a)
          to label %.noexc unwind label %bb.af    ; 2 uses

.noexc:                                           ; preds = %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit._crit_edge
  %i.p = invoke i32 @w2c_hermes_stackAlloc(ptr noundef nonnull %i.a, i32 noundef 16)
          to label %.noexc49 unwind label %bb.af  ; 3 uses

.noexc49:                                         ; preds = %.noexc
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 16
  %i.s = load i64, ptr %i.i, align 8, !tbaa !7
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc49
  tail call void @abort() #30
  unreachable

bb.f:                                             ; preds = %.noexc49
  %i.u = icmp eq i32 %i.p, 0
  br i1 %i.u, label %bb.g, label %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #30
  unreachable

bb.h:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit
  %.079 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.079 ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !300  ; 5 uses
  switch i32 %i.w, label %bb.k [
    i32 0, label %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit
    i32 1, label %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !24, !range !26, !noundef !27
  %.sroa.2.8.insert.ext.i.i = zext nneg i8 %i.y to i64
  br label %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24
  br label %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24
  %i.ad = getelementptr i8, ptr %i.ac, i64 12
  %.val.i = load i32, ptr %i.ad, align 4, !tbaa !303
  switch i32 %i.w, label %bb.n [
    i32 6, label %bb.o
    i32 7, label %bb.l
    i32 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ae = icmp eq i32 %i.w, 5
  tail call void @llvm.assume(i1 %i.ae)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.i = phi i32 [ -2147483642, %bb.n ], [ -2147483639, %bb.l ], [ -2147483643, %bb.m ], [ -2147483641, %bb.k ]
  %.sroa.2.8.insert.ext.i15.pn.i = zext i32 %.val.i to i64
  br label %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit

_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit: ; preds = %bb.h, %bb.o, %bb.j, %bb.i, %bb.h
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0.i, %bb.o ], [ %i.w, %bb.h ], [ 2, %bb.i ], [ 4, %bb.j ], [ %i.w, %bb.h ]
  %.sroa.9.1.i = phi i64 [ %.sroa.2.8.insert.ext.i15.pn.i, %bb.o ], [ undef, %bb.h ], [ %.sroa.2.8.insert.ext.i.i, %bb.i ], [ %i.aa, %bb.j ], [ undef, %bb.h ]
  %.val29.val = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val29.val, i64 %i.e
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.079 ; 2 uses
  store i32 %.sroa.0.1.i, ptr %i.ag, align 8, !tbaa !24
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.9.1.i, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !24
  %i.ah = add nuw i64 %.079, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %5
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_19LIFOAllocINS_12SandboxValueEEC2EP10w2c_hermesj.exit._crit_edge, label %bb.h, !llvm.loop !618

_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit: ; preds = %bb.f
  %i.ai = invoke i32 @w2c_hermes_stackSave(ptr noundef nonnull %i.a)
          to label %.noexc50 unwind label %bb.ag  ; 2 uses

.noexc50:                                         ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_12SandboxValueEEC2EP10w2c_hermes.exit
  %i.aj = invoke i32 @w2c_hermes_stackAlloc(ptr noundef nonnull %i.a, i32 noundef 16)
          to label %.noexc51 unwind label %bb.ag  ; 3 uses

.noexc51:                                         ; preds = %.noexc50
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 16
  %i.am = load i64, ptr %i.i, align 8, !tbaa !7
  %i.an = icmp ugt i64 %i.al, %i.am
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc51
  tail call void @abort() #30
  unreachable

bb.q:                                             ; preds = %.noexc51
  %i.ao = icmp eq i32 %i.aj, 0
  br i1 %i.ao, label %bb.r, label %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEEC2EP10w2c_hermes.exit

bb.r:                                             ; preds = %bb.q
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEEC2EP10w2c_hermes.exit: ; preds = %bb.q
  %i.ap = load i32, ptr %3, align 8, !tbaa !300   ; 5 uses
  switch i32 %i.ap, label %bb.u [
    i32 0, label %.fold.split.i57
    i32 1, label %.fold.split.i57
    i32 2, label %bb.s
    i32 3, label %bb.t
  ]

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEEC2EP10w2c_hermes.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !24, !range !26, !noundef !27
  %.sroa.2.8.insert.ext.i.i56 = zext nneg i8 %i.ar to i64
  br label %.fold.split.i57

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEEC2EP10w2c_hermes.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24
  br label %.fold.split.i57

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEEC2EP10w2c_hermes.exit
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.aw = getelementptr i8, ptr %i.av, i64 12
  %.val.i58 = load i32, ptr %i.aw, align 4, !tbaa !303
  switch i32 %i.ap, label %bb.x [
    i32 6, label %bb.y
    i32 7, label %bb.v
    i32 4, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  br label %bb.y
end_hunk_0
