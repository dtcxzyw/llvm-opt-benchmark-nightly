Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_nested?download=true
inline.NumInlined: 3701
inline.NumDeleted: 1113
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute8internal14GetNestedCastsEv:bb.a
  %113 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %114 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %115 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %116 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %117 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 12 uses
  %118 = alloca %"class.std::shared_ptr.50", align 16 ; 4 uses
  %119 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %120 = alloca %"class.std::shared_ptr.32", align 16 ; 7 uses
  %121 = alloca %"class.std::vector.41", align 8  ; 10 uses
  %122 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %123 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %124 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %125 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %126 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 12 uses
  %127 = alloca %"class.std::shared_ptr.50", align 16 ; 4 uses
  %128 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %129 = alloca %"class.std::shared_ptr.32", align 16 ; 7 uses
  %130 = alloca %"class.std::vector.41", align 8  ; 10 uses
  %131 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %132 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %133 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %134 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %135 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 12 uses
  %136 = alloca %"class.std::shared_ptr.50", align 16 ; 4 uses
  %137 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %138 = alloca %"class.std::shared_ptr.32", align 16 ; 7 uses
  %139 = alloca %"class.std::vector.41", align 8  ; 10 uses
  %140 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %141 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %142 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %143 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %144 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 12 uses
  %145 = alloca %"class.std::shared_ptr.50", align 16 ; 4 uses
  %146 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %147 = alloca %"class.std::shared_ptr.32", align 16 ; 7 uses
  %148 = alloca %"class.std::vector.41", align 8  ; 10 uses
  %149 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %150 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %151 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %152 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %153 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 12 uses
  %154 = alloca %"class.std::shared_ptr.50", align 16 ; 4 uses
  %155 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %156 = alloca %"class.std::shared_ptr.32", align 16 ; 7 uses
  %157 = alloca %"class.std::vector.41", align 8  ; 10 uses
  %158 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %159 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %160 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %161 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %162 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 12 uses
  %163 = alloca %"class.std::shared_ptr.50", align 16 ; 4 uses
  %164 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %165 = alloca %"class.std::shared_ptr.32", align 16 ; 7 uses
  %166 = alloca %"class.std::vector.41", align 8  ; 10 uses
  %167 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %168 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %169 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %170 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %171 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 12 uses
  %172 = alloca %"class.std::shared_ptr.50", align 16 ; 4 uses
  %173 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %174 = alloca %"class.std::shared_ptr.32", align 16 ; 7 uses
  %175 = alloca %"class.std::vector.41", align 8  ; 10 uses
  %176 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %177 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %178 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %179 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %180 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 12 uses
  %181 = alloca %"class.std::shared_ptr", align 16 ; 13 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %182 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %183 = alloca %"class.std::shared_ptr", align 16 ; 13 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %184 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %185 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %186 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %187 = alloca %"class.std::shared_ptr", align 16 ; 13 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %188 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %189 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %190 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %191 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %192 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %193 = alloca [6 x %"class.std::shared_ptr"], align 16 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %181) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 25, ptr %i.a, align 4, !tbaa !33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.g = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #21, !noalias !38 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !41, !noalias !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !43, !noalias !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !44, !noalias !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA10_KcNS0_4Type4typeEEEvPT_DpOT0_(ptr noundef nonnull %i.j, ptr noundef nonnull align 1 dereferenceable(10) @.str, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA10_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !35

common.resume:                                    ; preds = %.body, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 272) #22, !noalias !35
  br label %common.resume

_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA10_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %181, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.l, align 8, !tbaa !46, !alias.scope !35
  store ptr %i.j, ptr %181, align 16, !tbaa !50, !alias.scope !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %182, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.b unwind label %bb.ave

bb.b:                                             ; preds = %_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA10_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_.exit
  invoke void @_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE(i32 noundef 25, ptr noundef nonnull %182, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %bb.avf

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %182, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %182, i64 24 ; 2 uses
  %i.p = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %182, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.u, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !43
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #20, !inline_history !54
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #20, !inline_history !54
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.x, %bb.i ], [ %i.ah, %bb.j ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.k, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, !prof !56

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit

_ZN5arrow7compute10OutputTypeD2Ev.exit:           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  %i.aj = load ptr, ptr %181, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %175)
  call void @llvm.lifetime.start.p0(ptr nonnull %177)
  call void @llvm.lifetime.start.p0(ptr nonnull %178)
  call void @llvm.lifetime.start.p0(ptr nonnull %179)
  call void @llvm.lifetime.start.p0(ptr nonnull %180)
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #20
  %i.ak = getelementptr inbounds nuw i8, ptr %173, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %173, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.ak, align 16, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %173, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.al, i8 0, i64 20, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %173, i64 80
  store i8 1, ptr %i.am, align 16, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %173, i64 84 ; 2 uses
  store i32 0, ptr %i.an, align 4, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %173, i64 88
  store i32 0, ptr %i.ao, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %173, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeES4_E4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.ap, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %176) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %172)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %172, i32 noundef 25)
          to label %bb.l unwind label %bb.bg

bb.l:                                             ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit
  store i32 2, ptr %176, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %176, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %176, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %176, i64 32
  %i.at = load <2 x ptr>, ptr %172, align 16, !tbaa !86
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %172)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %175, i8 0, i64 24, i1 false)
  %i.au = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i ; 4 uses

.noexc3.i.i:                                      ; preds = %bb.l
  store ptr %i.au, ptr %175, align 8, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %175, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !90
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %176)
  %i.ay = getelementptr inbounds nuw i8, ptr %175, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %177, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.m unwind label %bb.bh

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.m:                                             ; preds = %.noexc3.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %178, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %174, ptr noundef nonnull %175, ptr noundef nonnull %177, i1 noundef zeroext false, ptr noundef nonnull %178)
          to label %bb.n unwind label %bb.bi

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %174, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %173, i64 8 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %174, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %174, i8 0, i64 16, i1 false)
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.bc, ptr %173, align 16, !tbaa !86
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.be, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !43
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #20, !inline_history !92
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #20, !inline_history !92
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bh, %bb.r ], [ %i.br, %bb.s ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bs, label %bb.t, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i, !prof !56

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.p, %bb.n
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i23 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i23, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bu, align 8, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !43
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #20, !inline_history !93
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !44
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #20, !inline_history !93
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i24 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i24, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

bb.y:                                             ; preds = %bb.w
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i26 = phi i32 [ %i.bx, %bb.x ], [ %i.ch, %bb.y ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i26, 1
  br i1 %i.ci, label %bb.z, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !56

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25, %bb.v, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %178, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i12.i, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cl, align 8, !tbaa !41
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !43
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #20, !inline_history !94
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !44
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #20, !inline_history !94
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i13.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i

bb.ae:                                            ; preds = %bb.ac
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i15.i = phi i32 [ %i.co, %bb.ad ], [ %i.cy, %bb.ae ]
  %i.cz = icmp eq i32 %.0.i.i.i.i15.i, 1
  br i1 %i.cz, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !56

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i, %bb.ab, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %177, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i16.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %177, i64 24 ; 2 uses
  %i.dd = invoke noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.ag, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %177, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i17.i, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.di, align 8, !tbaa !41
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !43
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !44
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !inline_history !95
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !inline_history !95
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i18.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.al ], [ %i.dv, %bb.am ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dw, label %bb.an, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i, !prof !56

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i

_ZN5arrow7compute10OutputTypeD2Ev.exit.i:         ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aj, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.dx = load ptr, ptr %175, align 8, !tbaa !87
  %i.dy = load ptr, ptr %i.ay, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.dx, ptr noundef %i.dy)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.ap

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i
  %i.dz = load ptr, ptr %175, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i19.i, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ea = load ptr, ptr %i.aw, align 8, !tbaa !90
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ed) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i

bb.ap:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i: ; preds = %bb.ao, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.eg = load ptr, ptr %i.as, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i21.i, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 4 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 4294967297
  %i.ek = trunc i64 %i.ei to i32                  ; 2 uses
  br i1 %i.ej, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.eh, align 8, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i32 0, ptr %i.el, align 4, !tbaa !43
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !44
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #20, !inline_history !96
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !44
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #20, !inline_history !96
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i22.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.et = add nsw i32 %i.ek, -1
  store i32 %i.et, ptr %i.eh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i

bb.au:                                            ; preds = %bb.as
  %i.eu = atomicrmw volatile add ptr %i.eh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i24.i = phi i32 [ %i.ek, %bb.at ], [ %i.eu, %bb.au ]
  %i.ev = icmp eq i32 %.0.i.i.i.i.i24.i, 1
  br i1 %i.ev, label %bb.av, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !56

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i, %bb.ar, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %176, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.ey, align 8, !tbaa !41
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !43
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !44
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #20, !inline_history !97
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !44
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #20, !inline_history !97
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i2.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i4.i.i = phi i32 [ %i.fb, %bb.az ], [ %i.fl, %bb.ba ]
  %i.fm = icmp eq i32 %.0.i.i.i.i4.i.i, 1
  br i1 %i.fm, label %bb.bb, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i, !prof !56

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i

_ZN5arrow7compute9InputTypeD2Ev.exit.i:           ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.ax, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #20
  store i32 2, ptr %i.an, align 4, !tbaa !74
  %i.fn = load <2 x ptr>, ptr %173, align 16, !tbaa !86
  store ptr null, ptr %i.bb, align 8, !tbaa !46
  store <2 x ptr> %i.fn, ptr %180, align 16, !tbaa !86
  store ptr null, ptr %173, align 16, !tbaa !98
  %i.fo = getelementptr inbounds nuw i8, ptr %180, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %180, i64 40
  %i.fq = getelementptr inbounds nuw i8, ptr %173, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, i8 0, i64 24, i1 false)
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !99
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !99
  %i.fs = getelementptr inbounds nuw i8, ptr %173, i64 32 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %173, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %180, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %i.fu, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.ft, ptr %i.fv, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i:    ; preds = %bb.bc, %_ZN5arrow7compute9InputTypeD2Ev.exit.i
  %i.fw = getelementptr inbounds nuw i8, ptr %180, i64 48
  %i.fx = load i64, ptr %i.ak, align 16
  store i64 %i.fx, ptr %i.fw, align 16
  %i.fy = getelementptr inbounds nuw i8, ptr %180, i64 56
  %i.fz = getelementptr inbounds nuw i8, ptr %173, i64 56 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %173, i64 64
  %i.gb = load <2 x ptr>, ptr %i.fz, align 8, !tbaa !86
  store ptr null, ptr %i.ga, align 16, !tbaa !46
  store <2 x ptr> %i.gb, ptr %i.fy, align 8, !tbaa !86
  store ptr null, ptr %i.fz, align 8, !tbaa !101
  %i.gc = getelementptr inbounds nuw i8, ptr %180, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.gc, ptr noundef nonnull align 8 dereferenceable(20) %i.ap, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %179, ptr noundef nonnull align 8 dereferenceable(252) %i.aj, i32 noundef 25, ptr noundef nonnull %180)
          to label %bb.bd unwind label %bb.bk

bb.bd:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i
  %i.gd = load ptr, ptr %179, align 8, !tbaa !102 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i27, label %bb.bm, label %bb.be, !prof !105

bb.be:                                            ; preds = %bb.bd
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !106, !range !115, !noundef !116
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %179) #20
  br label %bb.bm

bb.bg:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.bh:                                            ; preds = %.noexc3.i.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.m
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %178) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %177) #20
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn.i = phi { ptr, i32 } [ %i.gj, %bb.bi ], [ %i.gi, %bb.bh ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %175) #20
  br label %.body.i

.body.i:                                          ; preds = %bb.bj, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bj ], [ %i.az, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %176) #20
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.body.i, %bb.bg
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.gh, %bb.bg ], [ %.pn.pn.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #20
  br label %bb.bl

bb.bk:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %180) #20
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit.i
  %.pn10.i = phi { ptr, i32 } [ %i.gk, %bb.bk ], [ %.pn.pn.pn.i, %.loopexit.i ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %173) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #20
  br label %.body

bb.bm:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %180) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %173) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %175)
  call void @llvm.lifetime.end.p0(ptr nonnull %177)
  call void @llvm.lifetime.end.p0(ptr nonnull %178)
  call void @llvm.lifetime.end.p0(ptr nonnull %179)
  call void @llvm.lifetime.end.p0(ptr nonnull %180)
  %i.gl = load ptr, ptr %181, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %166)
  call void @llvm.lifetime.start.p0(ptr nonnull %168)
  call void @llvm.lifetime.start.p0(ptr nonnull %169)
  call void @llvm.lifetime.start.p0(ptr nonnull %170)
  call void @llvm.lifetime.start.p0(ptr nonnull %171)
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #20
  %i.gm = getelementptr inbounds nuw i8, ptr %164, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %164, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.gm, align 16, !tbaa !59
  %i.gn = getelementptr inbounds nuw i8, ptr %164, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gn, i8 0, i64 20, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %164, i64 80
  store i8 1, ptr %i.go, align 16, !tbaa !70
  %i.gp = getelementptr inbounds nuw i8, ptr %164, i64 84 ; 2 uses
  store i32 0, ptr %i.gp, align 4, !tbaa !74
  %i.gq = getelementptr inbounds nuw i8, ptr %164, i64 88
  store i32 0, ptr %i.gq, align 8, !tbaa !75
  %i.gr = getelementptr inbounds nuw i8, ptr %164, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.gr, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %163)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %163, i32 noundef 41)
          to label %bb.bn unwind label %bb.di

bb.bn:                                            ; preds = %bb.bm
  store i32 2, ptr %167, align 8, !tbaa !77
  %i.gs = getelementptr inbounds nuw i8, ptr %167, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i8 0, i64 16, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %167, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %167, i64 32
  %i.gv = load <2 x ptr>, ptr %163, align 16, !tbaa !86
  store <2 x ptr> %i.gv, ptr %i.gt, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %163)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %166, i8 0, i64 24, i1 false)
  %i.gw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i34 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i31 ; 4 uses

.noexc3.i.i34:                                    ; preds = %bb.bn
  store ptr %i.gw, ptr %166, align 8, !tbaa !87
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 40 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %166, i64 16 ; 2 uses
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !90
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gz, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.gw, ptr noundef nonnull align 8 dereferenceable(40) %167)
  %i.ha = getelementptr inbounds nuw i8, ptr %166, i64 8 ; 2 uses
  store ptr %i.gx, ptr %i.ha, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %168, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.bo unwind label %bb.dj

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i31: ; preds = %bb.bn
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i32

bb.bo:                                            ; preds = %.noexc3.i.i34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %169, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %165, ptr noundef nonnull %166, ptr noundef nonnull %168, i1 noundef zeroext false, ptr noundef nonnull %169)
          to label %bb.bp unwind label %bb.dk

bb.bp:                                            ; preds = %bb.bo
  %i.hc = getelementptr inbounds nuw i8, ptr %165, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %164, i64 8 ; 2 uses
  %i.he = load <2 x ptr>, ptr %165, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %165, i8 0, i64 16, i1 false)
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.he, ptr %164, align 16, !tbaa !86
  %.not.i.i.i.i.i36 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i36, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i40, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 4 uses
  %i.hh = load atomic i64, ptr %i.hg acquire, align 8 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 4294967297
  %i.hj = trunc i64 %i.hh to i32                  ; 2 uses
  br i1 %i.hi, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.hg, align 8, !tbaa !41
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 0, ptr %i.hk, align 4, !tbaa !43
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !44
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #20, !inline_history !117
  %i.ho = load ptr, ptr %i.hf, align 8, !tbaa !44
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #20, !inline_history !117
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i40

bb.bs:                                            ; preds = %bb.bq
  %i.hr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i37 = icmp eq i8 %i.hr, 0
  br i1 %.not.i.i.i.i.i.i37, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hs = add nsw i32 %i.hj, -1
  store i32 %i.hs, ptr %i.hg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i38

bb.bu:                                            ; preds = %bb.bs
  %i.ht = atomicrmw volatile add ptr %i.hg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i38

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i38: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i.i.i39 = phi i32 [ %i.hj, %bb.bt ], [ %i.ht, %bb.bu ]
  %i.hu = icmp eq i32 %.0.i.i.i.i.i.i.i39, 1
  br i1 %i.hu, label %bb.bv, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i40, !prof !56

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i38
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i40

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i40: ; preds = %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i38, %bb.br, %bb.bp
  %i.hv = load ptr, ptr %i.hc, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i41 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i41, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i45, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i40
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 4 uses
  %i.hx = load atomic i64, ptr %i.hw acquire, align 8 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 4294967297
  %i.hz = trunc i64 %i.hx to i32                  ; 2 uses
  br i1 %i.hy, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.hw, align 8, !tbaa !41
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i32 0, ptr %i.ia, align 4, !tbaa !43
  %i.ib = load ptr, ptr %i.hv, align 8, !tbaa !44
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #20, !inline_history !118
  %i.ie = load ptr, ptr %i.hv, align 8, !tbaa !44
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #20, !inline_history !118
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i45

bb.by:                                            ; preds = %bb.bw
  %i.ih = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i42 = icmp eq i8 %i.ih, 0
  br i1 %.not.i.i.i.i42, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ii = add nsw i32 %i.hz, -1
  store i32 %i.ii, ptr %i.hw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i43

bb.ca:                                            ; preds = %bb.by
  %i.ij = atomicrmw volatile add ptr %i.hw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i43

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i43: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i.i44 = phi i32 [ %i.hz, %bb.bz ], [ %i.ij, %bb.ca ]
  %i.ik = icmp eq i32 %.0.i.i.i.i.i44, 1
  br i1 %i.ik, label %bb.cb, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i45, !prof !56

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i43
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i45

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i45: ; preds = %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i43, %bb.bx, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i40
  %i.il = getelementptr inbounds nuw i8, ptr %169, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i46 = icmp eq ptr %i.im, null
  br i1 %.not.i.i12.i46, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i50, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i45
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 4 uses
  %i.io = load atomic i64, ptr %i.in acquire, align 8 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 4294967297
  %i.iq = trunc i64 %i.io to i32                  ; 2 uses
  br i1 %i.ip, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.in, align 8, !tbaa !41
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  store i32 0, ptr %i.ir, align 4, !tbaa !43
  %i.is = load ptr, ptr %i.im, align 8, !tbaa !44
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #20, !inline_history !119
  %i.iv = load ptr, ptr %i.im, align 8, !tbaa !44
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #20, !inline_history !119
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i50

bb.ce:                                            ; preds = %bb.cc
  %i.iy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i47 = icmp eq i8 %i.iy, 0
  br i1 %.not.i.i.i13.i47, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.iz = add nsw i32 %i.iq, -1
  store i32 %i.iz, ptr %i.in, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i48

bb.cg:                                            ; preds = %bb.ce
  %i.ja = atomicrmw volatile add ptr %i.in, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i48: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i15.i49 = phi i32 [ %i.iq, %bb.cf ], [ %i.ja, %bb.cg ]
  %i.jb = icmp eq i32 %.0.i.i.i.i15.i49, 1
  br i1 %i.jb, label %bb.ch, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i50, !prof !56

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i48
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i50

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i50: ; preds = %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i48, %bb.cd, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i45
  %i.jc = getelementptr inbounds nuw i8, ptr %168, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i51 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i16.i51, label %_ZNSt14_Function_baseD2Ev.exit.i.i52, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i50
  %i.je = getelementptr inbounds nuw i8, ptr %168, i64 24 ; 2 uses
  %i.jf = invoke noundef zeroext i1 %i.jd(ptr noundef nonnull align 8 dereferenceable(32) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %i.je, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i52 unwind label %bb.cj ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i52:             ; preds = %bb.ci, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i50
  %i.ji = getelementptr inbounds nuw i8, ptr %168, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i53 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i17.i53, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i57, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i52
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 4 uses
  %i.jl = load atomic i64, ptr %i.jk acquire, align 8 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 4294967297
  %i.jn = trunc i64 %i.jl to i32                  ; 2 uses
  br i1 %i.jm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.jk, align 8, !tbaa !41
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store i32 0, ptr %i.jo, align 4, !tbaa !43
  %i.jp = load ptr, ptr %i.jj, align 8, !tbaa !44
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #20, !inline_history !120
  %i.js = load ptr, ptr %i.jj, align 8, !tbaa !44
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #20, !inline_history !120
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i57

bb.cm:                                            ; preds = %bb.ck
  %i.jv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i54 = icmp eq i8 %i.jv, 0
  br i1 %.not.i.i.i.i18.i54, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jw = add nsw i32 %i.jn, -1
  store i32 %i.jw, ptr %i.jk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i55

bb.co:                                            ; preds = %bb.cm
  %i.jx = atomicrmw volatile add ptr %i.jk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i55

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i55: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i.i.i56 = phi i32 [ %i.jn, %bb.cn ], [ %i.jx, %bb.co ]
  %i.jy = icmp eq i32 %.0.i.i.i.i.i.i56, 1
  br i1 %i.jy, label %bb.cp, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i57, !prof !56

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i55
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i57

_ZN5arrow7compute10OutputTypeD2Ev.exit.i57:       ; preds = %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i55, %bb.cl, %_ZNSt14_Function_baseD2Ev.exit.i.i52
  %i.jz = load ptr, ptr %166, align 8, !tbaa !87
  %i.ka = load ptr, ptr %i.ha, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.jz, ptr noundef %i.ka)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i58 unwind label %bb.cr

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i58: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i57
  %i.kb = load ptr, ptr %166, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i59 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i19.i59, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i60, label %bb.cq

bb.cq:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i58
  %i.kc = load ptr, ptr %i.gy, align 8, !tbaa !90
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.kb to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kf) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i60

bb.cr:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i57
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i60: ; preds = %bb.cq, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i58
  %i.ki = load ptr, ptr %i.gu, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i61 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i21.i61, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i65, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i60
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 4 uses
  %i.kk = load atomic i64, ptr %i.kj acquire, align 8 ; 2 uses
  %i.kl = icmp eq i64 %i.kk, 4294967297
  %i.km = trunc i64 %i.kk to i32                  ; 2 uses
  br i1 %i.kl, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.kj, align 8, !tbaa !41
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  store i32 0, ptr %i.kn, align 4, !tbaa !43
  %i.ko = load ptr, ptr %i.ki, align 8, !tbaa !44
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(16) %i.ki) #20, !inline_history !121
  %i.kr = load ptr, ptr %i.ki, align 8, !tbaa !44
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(16) %i.ki) #20, !inline_history !121
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i65

bb.cu:                                            ; preds = %bb.cs
  %i.ku = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i62 = icmp eq i8 %i.ku, 0
  br i1 %.not.i.i.i.i22.i62, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kv = add nsw i32 %i.km, -1
  store i32 %i.kv, ptr %i.kj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i63

bb.cw:                                            ; preds = %bb.cu
  %i.kw = atomicrmw volatile add ptr %i.kj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i63

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i63: ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i.i24.i64 = phi i32 [ %i.km, %bb.cv ], [ %i.kw, %bb.cw ]
  %i.kx = icmp eq i32 %.0.i.i.i.i.i24.i64, 1
  br i1 %i.kx, label %bb.cx, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i65, !prof !56

bb.cx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i63
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ki) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i65

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i65: ; preds = %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i63, %bb.ct, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i60
  %i.ky = getelementptr inbounds nuw i8, ptr %167, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i66 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i1.i.i66, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i70, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i65
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 4 uses
  %i.lb = load atomic i64, ptr %i.la acquire, align 8 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, 4294967297
  %i.ld = trunc i64 %i.lb to i32                  ; 2 uses
  br i1 %i.lc, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.la, align 8, !tbaa !41
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  store i32 0, ptr %i.le, align 4, !tbaa !43
  %i.lf = load ptr, ptr %i.kz, align 8, !tbaa !44
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #20, !inline_history !122
  %i.li = load ptr, ptr %i.kz, align 8, !tbaa !44
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #20, !inline_history !122
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i70

bb.da:                                            ; preds = %bb.cy
  %i.ll = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i67 = icmp eq i8 %i.ll, 0
  br i1 %.not.i.i.i2.i.i67, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lm = add nsw i32 %i.ld, -1
  store i32 %i.lm, ptr %i.la, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i68

bb.dc:                                            ; preds = %bb.da
  %i.ln = atomicrmw volatile add ptr %i.la, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i68

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i68: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i4.i.i69 = phi i32 [ %i.ld, %bb.db ], [ %i.ln, %bb.dc ]
  %i.lo = icmp eq i32 %.0.i.i.i.i4.i.i69, 1
  br i1 %i.lo, label %bb.dd, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i70, !prof !56

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i68
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i70

_ZN5arrow7compute9InputTypeD2Ev.exit.i70:         ; preds = %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i68, %bb.cz, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #20
  store i32 2, ptr %i.gp, align 4, !tbaa !74
  %i.lp = load <2 x ptr>, ptr %164, align 16, !tbaa !86
  store ptr null, ptr %i.hd, align 8, !tbaa !46
  store <2 x ptr> %i.lp, ptr %171, align 16, !tbaa !86
  store ptr null, ptr %164, align 16, !tbaa !98
  %i.lq = getelementptr inbounds nuw i8, ptr %171, i64 16 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %171, i64 40
  %i.ls = getelementptr inbounds nuw i8, ptr %164, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lq, i8 0, i64 24, i1 false)
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !99
  store ptr %i.lt, ptr %i.lr, align 8, !tbaa !99
  %i.lu = getelementptr inbounds nuw i8, ptr %164, i64 32 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i71 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.not.i.i.i.i71, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i72, label %bb.de

bb.de:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i70
  %i.lw = getelementptr inbounds nuw i8, ptr %164, i64 16
  %i.lx = getelementptr inbounds nuw i8, ptr %171, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lq, ptr noundef nonnull align 8 dereferenceable(32) %i.lw, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.lv, ptr %i.lx, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lu, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i72

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i72:  ; preds = %bb.de, %_ZN5arrow7compute9InputTypeD2Ev.exit.i70
  %i.ly = getelementptr inbounds nuw i8, ptr %171, i64 48
  %i.lz = load i64, ptr %i.gm, align 16
  store i64 %i.lz, ptr %i.ly, align 16
  %i.ma = getelementptr inbounds nuw i8, ptr %171, i64 56
  %i.mb = getelementptr inbounds nuw i8, ptr %164, i64 56 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %164, i64 64
  %i.md = load <2 x ptr>, ptr %i.mb, align 8, !tbaa !86
  store ptr null, ptr %i.mc, align 16, !tbaa !46
  store <2 x ptr> %i.md, ptr %i.ma, align 8, !tbaa !86
  store ptr null, ptr %i.mb, align 8, !tbaa !101
  %i.me = getelementptr inbounds nuw i8, ptr %171, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.me, ptr noundef nonnull align 8 dereferenceable(20) %i.gr, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %170, ptr noundef nonnull align 8 dereferenceable(252) %i.gl, i32 noundef 41, ptr noundef nonnull %171)
          to label %bb.df unwind label %bb.dm

bb.df:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i72
  %i.mf = load ptr, ptr %170, align 8, !tbaa !102 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i73, label %bb.do, label %bb.dg, !prof !105

bb.dg:                                            ; preds = %bb.df
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !106, !range !115, !noundef !116
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.do, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %170) #20
  br label %bb.do

bb.di:                                            ; preds = %bb.bm
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i28

bb.dj:                                            ; preds = %.noexc3.i.i34
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %bb.bo
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %169) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %168) #20
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn.i35 = phi { ptr, i32 } [ %i.ml, %bb.dk ], [ %i.mk, %bb.dj ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %166) #20
  br label %.body.i32

.body.i32:                                        ; preds = %bb.dl, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i31
  %.pn.pn.i33 = phi { ptr, i32 } [ %.pn.i35, %bb.dl ], [ %i.hb, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i31 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %167) #20
  br label %.loopexit.i28

.loopexit.i28:                                    ; preds = %.body.i32, %bb.di
  %.pn.pn.pn.i29 = phi { ptr, i32 } [ %i.mj, %bb.di ], [ %.pn.pn.i33, %.body.i32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #20
  br label %bb.dn

bb.dm:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i72
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %171) #20
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.loopexit.i28
  %.pn10.i30 = phi { ptr, i32 } [ %i.mm, %bb.dm ], [ %.pn.pn.pn.i29, %.loopexit.i28 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %164) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #20
  br label %.body

bb.do:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %171) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %164) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %166)
  call void @llvm.lifetime.end.p0(ptr nonnull %168)
  call void @llvm.lifetime.end.p0(ptr nonnull %169)
  call void @llvm.lifetime.end.p0(ptr nonnull %170)
  call void @llvm.lifetime.end.p0(ptr nonnull %171)
  %i.mn = load ptr, ptr %181, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %157)
  call void @llvm.lifetime.start.p0(ptr nonnull %159)
  call void @llvm.lifetime.start.p0(ptr nonnull %160)
  call void @llvm.lifetime.start.p0(ptr nonnull %161)
  call void @llvm.lifetime.start.p0(ptr nonnull %162)
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #20
  %i.mo = getelementptr inbounds nuw i8, ptr %155, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %155, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.mo, align 16, !tbaa !59
  %i.mp = getelementptr inbounds nuw i8, ptr %155, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mp, i8 0, i64 20, i1 false)
  %i.mq = getelementptr inbounds nuw i8, ptr %155, i64 80
  store i8 1, ptr %i.mq, align 16, !tbaa !70
  %i.mr = getelementptr inbounds nuw i8, ptr %155, i64 84 ; 2 uses
  store i32 0, ptr %i.mr, align 4, !tbaa !74
  %i.ms = getelementptr inbounds nuw i8, ptr %155, i64 88
  store i32 0, ptr %i.ms, align 8, !tbaa !75
  %i.mt = getelementptr inbounds nuw i8, ptr %155, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_13LargeListTypeENS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.mt, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %154)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %154, i32 noundef 36)
          to label %bb.dp unwind label %bb.fk

bb.dp:                                            ; preds = %bb.do
  store i32 2, ptr %158, align 8, !tbaa !77
  %i.mu = getelementptr inbounds nuw i8, ptr %158, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mu, i8 0, i64 16, i1 false)
  %i.mv = getelementptr inbounds nuw i8, ptr %158, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %158, i64 32
  %i.mx = load <2 x ptr>, ptr %154, align 16, !tbaa !86
  store <2 x ptr> %i.mx, ptr %i.mv, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %154)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %157, i8 0, i64 24, i1 false)
  %i.my = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i82 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i79 ; 4 uses

.noexc3.i.i82:                                    ; preds = %bb.dp
  store ptr %i.my, ptr %157, align 8, !tbaa !87
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 40 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %157, i64 16 ; 2 uses
  store ptr %i.mz, ptr %i.na, align 8, !tbaa !90
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nb, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.my, ptr noundef nonnull align 8 dereferenceable(40) %158)
  %i.nc = getelementptr inbounds nuw i8, ptr %157, i64 8 ; 2 uses
  store ptr %i.mz, ptr %i.nc, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %159, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.dq unwind label %bb.fl

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i79: ; preds = %bb.dp
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i80

bb.dq:                                            ; preds = %.noexc3.i.i82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %160, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %156, ptr noundef nonnull %157, ptr noundef nonnull %159, i1 noundef zeroext false, ptr noundef nonnull %160)
          to label %bb.dr unwind label %bb.fm

bb.dr:                                            ; preds = %bb.dq
  %i.ne = getelementptr inbounds nuw i8, ptr %156, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %155, i64 8 ; 2 uses
  %i.ng = load <2 x ptr>, ptr %156, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %156, i8 0, i64 16, i1 false)
  %i.nh = load ptr, ptr %i.nf, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.ng, ptr %155, align 16, !tbaa !86
  %.not.i.i.i.i.i84 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i.i.i84, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i88, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 4 uses
  %i.nj = load atomic i64, ptr %i.ni acquire, align 8 ; 2 uses
  %i.nk = icmp eq i64 %i.nj, 4294967297
  %i.nl = trunc i64 %i.nj to i32                  ; 2 uses
  br i1 %i.nk, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 0, ptr %i.ni, align 8, !tbaa !41
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  store i32 0, ptr %i.nm, align 4, !tbaa !43
  %i.nn = load ptr, ptr %i.nh, align 8, !tbaa !44
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #20, !inline_history !123
  %i.nq = load ptr, ptr %i.nh, align 8, !tbaa !44
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #20, !inline_history !123
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i88

bb.du:                                            ; preds = %bb.ds
  %i.nt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i85 = icmp eq i8 %i.nt, 0
  br i1 %.not.i.i.i.i.i.i85, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.nu = add nsw i32 %i.nl, -1
  store i32 %i.nu, ptr %i.ni, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i86

bb.dw:                                            ; preds = %bb.du
  %i.nv = atomicrmw volatile add ptr %i.ni, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i86

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i86: ; preds = %bb.dw, %bb.dv
  %.0.i.i.i.i.i.i.i87 = phi i32 [ %i.nl, %bb.dv ], [ %i.nv, %bb.dw ]
  %i.nw = icmp eq i32 %.0.i.i.i.i.i.i.i87, 1
  br i1 %i.nw, label %bb.dx, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i88, !prof !56

bb.dx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i86
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i88

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i88: ; preds = %bb.dx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i86, %bb.dt, %bb.dr
  %i.nx = load ptr, ptr %i.ne, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i89 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i89, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i93, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i88
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 4 uses
  %i.nz = load atomic i64, ptr %i.ny acquire, align 8 ; 2 uses
  %i.oa = icmp eq i64 %i.nz, 4294967297
  %i.ob = trunc i64 %i.nz to i32                  ; 2 uses
  br i1 %i.oa, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i32 0, ptr %i.ny, align 8, !tbaa !41
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  store i32 0, ptr %i.oc, align 4, !tbaa !43
  %i.od = load ptr, ptr %i.nx, align 8, !tbaa !44
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #20, !inline_history !124
  %i.og = load ptr, ptr %i.nx, align 8, !tbaa !44
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #20, !inline_history !124
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i93

bb.ea:                                            ; preds = %bb.dy
  %i.oj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i90 = icmp eq i8 %i.oj, 0
  br i1 %.not.i.i.i.i90, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ok = add nsw i32 %i.ob, -1
  store i32 %i.ok, ptr %i.ny, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91

bb.ec:                                            ; preds = %bb.ea
  %i.ol = atomicrmw volatile add ptr %i.ny, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91: ; preds = %bb.ec, %bb.eb
  %.0.i.i.i.i.i92 = phi i32 [ %i.ob, %bb.eb ], [ %i.ol, %bb.ec ]
  %i.om = icmp eq i32 %.0.i.i.i.i.i92, 1
  br i1 %i.om, label %bb.ed, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i93, !prof !56

bb.ed:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i93

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i93: ; preds = %bb.ed, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91, %bb.dz, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i88
  %i.on = getelementptr inbounds nuw i8, ptr %160, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i94 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i12.i94, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i98, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i93
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 4 uses
  %i.oq = load atomic i64, ptr %i.op acquire, align 8 ; 2 uses
  %i.or = icmp eq i64 %i.oq, 4294967297
  %i.os = trunc i64 %i.oq to i32                  ; 2 uses
  br i1 %i.or, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 0, ptr %i.op, align 8, !tbaa !41
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  store i32 0, ptr %i.ot, align 4, !tbaa !43
  %i.ou = load ptr, ptr %i.oo, align 8, !tbaa !44
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #20, !inline_history !125
  %i.ox = load ptr, ptr %i.oo, align 8, !tbaa !44
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #20, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i98

bb.eg:                                            ; preds = %bb.ee
  %i.pa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i95 = icmp eq i8 %i.pa, 0
  br i1 %.not.i.i.i13.i95, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.pb = add nsw i32 %i.os, -1
  store i32 %i.pb, ptr %i.op, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i96

bb.ei:                                            ; preds = %bb.eg
  %i.pc = atomicrmw volatile add ptr %i.op, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i96

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i96: ; preds = %bb.ei, %bb.eh
  %.0.i.i.i.i15.i97 = phi i32 [ %i.os, %bb.eh ], [ %i.pc, %bb.ei ]
  %i.pd = icmp eq i32 %.0.i.i.i.i15.i97, 1
  br i1 %i.pd, label %bb.ej, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i98, !prof !56

bb.ej:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i96
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i98

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i98: ; preds = %bb.ej, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i96, %bb.ef, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i93
  %i.pe = getelementptr inbounds nuw i8, ptr %159, i64 40
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i99 = icmp eq ptr %i.pf, null
  br i1 %.not.i.i16.i99, label %_ZNSt14_Function_baseD2Ev.exit.i.i100, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i98
  %i.pg = getelementptr inbounds nuw i8, ptr %159, i64 24 ; 2 uses
  %i.ph = invoke noundef zeroext i1 %i.pf(ptr noundef nonnull align 8 dereferenceable(32) %i.pg, ptr noundef nonnull align 8 dereferenceable(32) %i.pg, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i100 unwind label %bb.el ; 0 uses

bb.el:                                            ; preds = %bb.ek
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  call void @__clang_call_terminate(ptr %i.pj) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i100:            ; preds = %bb.ek, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i98
  %i.pk = getelementptr inbounds nuw i8, ptr %159, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i101 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i.i17.i101, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i105, label %bb.em

bb.em:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i100
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8 ; 4 uses
  %i.pn = load atomic i64, ptr %i.pm acquire, align 8 ; 2 uses
  %i.po = icmp eq i64 %i.pn, 4294967297
  %i.pp = trunc i64 %i.pn to i32                  ; 2 uses
  br i1 %i.po, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store i32 0, ptr %i.pm, align 8, !tbaa !41
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pl, i64 12
  store i32 0, ptr %i.pq, align 4, !tbaa !43
  %i.pr = load ptr, ptr %i.pl, align 8, !tbaa !44
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8
  call void %i.pt(ptr noundef nonnull align 8 dereferenceable(16) %i.pl) #20, !inline_history !126
  %i.pu = load ptr, ptr %i.pl, align 8, !tbaa !44
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %i.pw = load ptr, ptr %i.pv, align 8
  call void %i.pw(ptr noundef nonnull align 8 dereferenceable(16) %i.pl) #20, !inline_history !126
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i105

bb.eo:                                            ; preds = %bb.em
  %i.px = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i102 = icmp eq i8 %i.px, 0
  br i1 %.not.i.i.i.i18.i102, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.py = add nsw i32 %i.pp, -1
  store i32 %i.py, ptr %i.pm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i103

bb.eq:                                            ; preds = %bb.eo
  %i.pz = atomicrmw volatile add ptr %i.pm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i103

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i103: ; preds = %bb.eq, %bb.ep
  %.0.i.i.i.i.i.i104 = phi i32 [ %i.pp, %bb.ep ], [ %i.pz, %bb.eq ]
  %i.qa = icmp eq i32 %.0.i.i.i.i.i.i104, 1
  br i1 %i.qa, label %bb.er, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i105, !prof !56

bb.er:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i103
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pl) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i105

_ZN5arrow7compute10OutputTypeD2Ev.exit.i105:      ; preds = %bb.er, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i103, %bb.en, %_ZNSt14_Function_baseD2Ev.exit.i.i100
  %i.qb = load ptr, ptr %157, align 8, !tbaa !87
  %i.qc = load ptr, ptr %i.nc, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.qb, ptr noundef %i.qc)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i106 unwind label %bb.et

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i106: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i105
  %i.qd = load ptr, ptr %157, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i107 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i19.i107, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i108, label %bb.es

bb.es:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i106
  %i.qe = load ptr, ptr %i.na, align 8, !tbaa !90
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = ptrtoint ptr %i.qd to i64
  %i.qh = sub i64 %i.qf, %i.qg
  call void @_ZdlPvm(ptr noundef nonnull %i.qd, i64 noundef %i.qh) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i108

bb.et:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i105
  %i.qi = landingpad { ptr, i32 }
          catch ptr null
  %i.qj = extractvalue { ptr, i32 } %i.qi, 0
  call void @__clang_call_terminate(ptr %i.qj) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i108: ; preds = %bb.es, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i106
  %i.qk = load ptr, ptr %i.mw, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i109 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i21.i109, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i113, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i108
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8 ; 4 uses
  %i.qm = load atomic i64, ptr %i.ql acquire, align 8 ; 2 uses
  %i.qn = icmp eq i64 %i.qm, 4294967297
  %i.qo = trunc i64 %i.qm to i32                  ; 2 uses
  br i1 %i.qn, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 0, ptr %i.ql, align 8, !tbaa !41
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qk, i64 12
  store i32 0, ptr %i.qp, align 4, !tbaa !43
  %i.qq = load ptr, ptr %i.qk, align 8, !tbaa !44
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qs = load ptr, ptr %i.qr, align 8
  call void %i.qs(ptr noundef nonnull align 8 dereferenceable(16) %i.qk) #20, !inline_history !127
  %i.qt = load ptr, ptr %i.qk, align 8, !tbaa !44
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8
  call void %i.qv(ptr noundef nonnull align 8 dereferenceable(16) %i.qk) #20, !inline_history !127
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i113

bb.ew:                                            ; preds = %bb.eu
  %i.qw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i110 = icmp eq i8 %i.qw, 0
  br i1 %.not.i.i.i.i22.i110, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.qx = add nsw i32 %i.qo, -1
  store i32 %i.qx, ptr %i.ql, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i111

bb.ey:                                            ; preds = %bb.ew
  %i.qy = atomicrmw volatile add ptr %i.ql, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i111

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i111: ; preds = %bb.ey, %bb.ex
  %.0.i.i.i.i.i24.i112 = phi i32 [ %i.qo, %bb.ex ], [ %i.qy, %bb.ey ]
  %i.qz = icmp eq i32 %.0.i.i.i.i.i24.i112, 1
  br i1 %i.qz, label %bb.ez, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i113, !prof !56

bb.ez:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i111
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qk) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i113

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i113: ; preds = %bb.ez, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i111, %bb.ev, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i108
  %i.ra = getelementptr inbounds nuw i8, ptr %158, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i114 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i1.i.i114, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i118, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i113
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8 ; 4 uses
  %i.rd = load atomic i64, ptr %i.rc acquire, align 8 ; 2 uses
  %i.re = icmp eq i64 %i.rd, 4294967297
  %i.rf = trunc i64 %i.rd to i32                  ; 2 uses
  br i1 %i.re, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.rc, align 8, !tbaa !41
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rb, i64 12
  store i32 0, ptr %i.rg, align 4, !tbaa !43
  %i.rh = load ptr, ptr %i.rb, align 8, !tbaa !44
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8
  call void %i.rj(ptr noundef nonnull align 8 dereferenceable(16) %i.rb) #20, !inline_history !128
  %i.rk = load ptr, ptr %i.rb, align 8, !tbaa !44
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.rm = load ptr, ptr %i.rl, align 8
  call void %i.rm(ptr noundef nonnull align 8 dereferenceable(16) %i.rb) #20, !inline_history !128
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i118

bb.fc:                                            ; preds = %bb.fa
  %i.rn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i115 = icmp eq i8 %i.rn, 0
  br i1 %.not.i.i.i2.i.i115, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ro = add nsw i32 %i.rf, -1
  store i32 %i.ro, ptr %i.rc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i116

bb.fe:                                            ; preds = %bb.fc
  %i.rp = atomicrmw volatile add ptr %i.rc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i116

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i116: ; preds = %bb.fe, %bb.fd
  %.0.i.i.i.i4.i.i117 = phi i32 [ %i.rf, %bb.fd ], [ %i.rp, %bb.fe ]
  %i.rq = icmp eq i32 %.0.i.i.i.i4.i.i117, 1
  br i1 %i.rq, label %bb.ff, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i118, !prof !56

bb.ff:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i116
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rb) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i118

_ZN5arrow7compute9InputTypeD2Ev.exit.i118:        ; preds = %bb.ff, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i116, %bb.fb, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #20
  store i32 2, ptr %i.mr, align 4, !tbaa !74
  %i.rr = load <2 x ptr>, ptr %155, align 16, !tbaa !86
  store ptr null, ptr %i.nf, align 8, !tbaa !46
  store <2 x ptr> %i.rr, ptr %162, align 16, !tbaa !86
  store ptr null, ptr %155, align 16, !tbaa !98
  %i.rs = getelementptr inbounds nuw i8, ptr %162, i64 16 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %162, i64 40
  %i.ru = getelementptr inbounds nuw i8, ptr %155, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rs, i8 0, i64 24, i1 false)
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !99
  store ptr %i.rv, ptr %i.rt, align 8, !tbaa !99
  %i.rw = getelementptr inbounds nuw i8, ptr %155, i64 32 ; 2 uses
  %i.rx = load ptr, ptr %i.rw, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i119 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i.not.i.i.i.i119, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i120, label %bb.fg

bb.fg:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i118
  %i.ry = getelementptr inbounds nuw i8, ptr %155, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %162, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rs, ptr noundef nonnull align 8 dereferenceable(32) %i.ry, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.rx, ptr %i.rz, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rw, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i120

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i120: ; preds = %bb.fg, %_ZN5arrow7compute9InputTypeD2Ev.exit.i118
  %i.sa = getelementptr inbounds nuw i8, ptr %162, i64 48
  %i.sb = load i64, ptr %i.mo, align 16
  store i64 %i.sb, ptr %i.sa, align 16
  %i.sc = getelementptr inbounds nuw i8, ptr %162, i64 56
  %i.sd = getelementptr inbounds nuw i8, ptr %155, i64 56 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %155, i64 64
  %i.sf = load <2 x ptr>, ptr %i.sd, align 8, !tbaa !86
  store ptr null, ptr %i.se, align 16, !tbaa !46
  store <2 x ptr> %i.sf, ptr %i.sc, align 8, !tbaa !86
  store ptr null, ptr %i.sd, align 8, !tbaa !101
  %i.sg = getelementptr inbounds nuw i8, ptr %162, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.sg, ptr noundef nonnull align 8 dereferenceable(20) %i.mt, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %161, ptr noundef nonnull align 8 dereferenceable(252) %i.mn, i32 noundef 36, ptr noundef nonnull %162)
          to label %bb.fh unwind label %bb.fo

bb.fh:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i120
  %i.sh = load ptr, ptr %161, align 8, !tbaa !102 ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.sh, null
  br i1 %.not.i.i121, label %bb.fq, label %bb.fi, !prof !105

bb.fi:                                            ; preds = %bb.fh
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 1
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !106, !range !115, !noundef !116
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %bb.fq, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %161) #20
  br label %bb.fq

bb.fk:                                            ; preds = %bb.do
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i76

bb.fl:                                            ; preds = %.noexc3.i.i82
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fm:                                            ; preds = %bb.dq
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %160) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %159) #20
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.pn.i83 = phi { ptr, i32 } [ %i.sn, %bb.fm ], [ %i.sm, %bb.fl ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %157) #20
  br label %.body.i80

.body.i80:                                        ; preds = %bb.fn, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i79
  %.pn.pn.i81 = phi { ptr, i32 } [ %.pn.i83, %bb.fn ], [ %i.nd, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i79 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %158) #20
  br label %.loopexit.i76

.loopexit.i76:                                    ; preds = %.body.i80, %bb.fk
  %.pn.pn.pn.i77 = phi { ptr, i32 } [ %i.sl, %bb.fk ], [ %.pn.pn.i81, %.body.i80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #20
  br label %bb.fp

bb.fo:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i120
  %i.so = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %162) #20
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.loopexit.i76
  %.pn10.i78 = phi { ptr, i32 } [ %i.so, %bb.fo ], [ %.pn.pn.pn.i77, %.loopexit.i76 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %155) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #20
  br label %.body

bb.fq:                                            ; preds = %bb.fj, %bb.fi, %bb.fh
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %162) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %155) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %157)
  call void @llvm.lifetime.end.p0(ptr nonnull %159)
  call void @llvm.lifetime.end.p0(ptr nonnull %160)
  call void @llvm.lifetime.end.p0(ptr nonnull %161)
  call void @llvm.lifetime.end.p0(ptr nonnull %162)
  %i.sp = load ptr, ptr %181, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %148)
  call void @llvm.lifetime.start.p0(ptr nonnull %150)
  call void @llvm.lifetime.start.p0(ptr nonnull %151)
  call void @llvm.lifetime.start.p0(ptr nonnull %152)
  call void @llvm.lifetime.start.p0(ptr nonnull %153)
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #20
  %i.sq = getelementptr inbounds nuw i8, ptr %146, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %146, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.sq, align 16, !tbaa !59
  %i.sr = getelementptr inbounds nuw i8, ptr %146, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.sr, i8 0, i64 20, i1 false)
  %i.ss = getelementptr inbounds nuw i8, ptr %146, i64 80
  store i8 1, ptr %i.ss, align 16, !tbaa !70
  %i.st = getelementptr inbounds nuw i8, ptr %146, i64 84 ; 2 uses
  store i32 0, ptr %i.st, align 4, !tbaa !74
  %i.su = getelementptr inbounds nuw i8, ptr %146, i64 88
  store i32 0, ptr %i.su, align 8, !tbaa !75
  %i.sv = getelementptr inbounds nuw i8, ptr %146, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_17LargeListViewTypeENS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.sv, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %145)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %145, i32 noundef 42)
          to label %bb.fr unwind label %bb.hm

bb.fr:                                            ; preds = %bb.fq
  store i32 2, ptr %149, align 8, !tbaa !77
  %i.sw = getelementptr inbounds nuw i8, ptr %149, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sw, i8 0, i64 16, i1 false)
  %i.sx = getelementptr inbounds nuw i8, ptr %149, i64 24
  %i.sy = getelementptr inbounds nuw i8, ptr %149, i64 32
  %i.sz = load <2 x ptr>, ptr %145, align 16, !tbaa !86
  store <2 x ptr> %i.sz, ptr %i.sx, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %145)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %148, i8 0, i64 24, i1 false)
  %i.ta = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i130 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i127 ; 4 uses

.noexc3.i.i130:                                   ; preds = %bb.fr
  store ptr %i.ta, ptr %148, align 8, !tbaa !87
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 40 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %148, i64 16 ; 2 uses
  store ptr %i.tb, ptr %i.tc, align 8, !tbaa !90
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.td, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ta, ptr noundef nonnull align 8 dereferenceable(40) %149)
  %i.te = getelementptr inbounds nuw i8, ptr %148, i64 8 ; 2 uses
  store ptr %i.tb, ptr %i.te, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %150, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.fs unwind label %bb.hn

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i127: ; preds = %bb.fr
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i128

bb.fs:                                            ; preds = %.noexc3.i.i130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %151, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %147, ptr noundef nonnull %148, ptr noundef nonnull %150, i1 noundef zeroext false, ptr noundef nonnull %151)
          to label %bb.ft unwind label %bb.ho

bb.ft:                                            ; preds = %bb.fs
  %i.tg = getelementptr inbounds nuw i8, ptr %147, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %146, i64 8 ; 2 uses
  %i.ti = load <2 x ptr>, ptr %147, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %147, i8 0, i64 16, i1 false)
  %i.tj = load ptr, ptr %i.th, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.ti, ptr %146, align 16, !tbaa !86
  %.not.i.i.i.i.i132 = icmp eq ptr %i.tj, null
  br i1 %.not.i.i.i.i.i132, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i136, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8 ; 4 uses
  %i.tl = load atomic i64, ptr %i.tk acquire, align 8 ; 2 uses
  %i.tm = icmp eq i64 %i.tl, 4294967297
  %i.tn = trunc i64 %i.tl to i32                  ; 2 uses
  br i1 %i.tm, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 0, ptr %i.tk, align 8, !tbaa !41
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 12
  store i32 0, ptr %i.to, align 4, !tbaa !43
  %i.tp = load ptr, ptr %i.tj, align 8, !tbaa !44
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8
  call void %i.tr(ptr noundef nonnull align 8 dereferenceable(16) %i.tj) #20, !inline_history !129
  %i.ts = load ptr, ptr %i.tj, align 8, !tbaa !44
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  %i.tu = load ptr, ptr %i.tt, align 8
  call void %i.tu(ptr noundef nonnull align 8 dereferenceable(16) %i.tj) #20, !inline_history !129
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i136

bb.fw:                                            ; preds = %bb.fu
  %i.tv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i133 = icmp eq i8 %i.tv, 0
  br i1 %.not.i.i.i.i.i.i133, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.tw = add nsw i32 %i.tn, -1
  store i32 %i.tw, ptr %i.tk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i134

bb.fy:                                            ; preds = %bb.fw
  %i.tx = atomicrmw volatile add ptr %i.tk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i134

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i134: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i.i135 = phi i32 [ %i.tn, %bb.fx ], [ %i.tx, %bb.fy ]
  %i.ty = icmp eq i32 %.0.i.i.i.i.i.i.i135, 1
  br i1 %i.ty, label %bb.fz, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i136, !prof !56

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i134
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tj) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i136

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i136: ; preds = %bb.fz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i134, %bb.fv, %bb.ft
  %i.tz = load ptr, ptr %i.tg, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i137 = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i137, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i141, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i136
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8 ; 4 uses
  %i.ub = load atomic i64, ptr %i.ua acquire, align 8 ; 2 uses
  %i.uc = icmp eq i64 %i.ub, 4294967297
  %i.ud = trunc i64 %i.ub to i32                  ; 2 uses
  br i1 %i.uc, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  store i32 0, ptr %i.ua, align 8, !tbaa !41
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 12
  store i32 0, ptr %i.ue, align 4, !tbaa !43
  %i.uf = load ptr, ptr %i.tz, align 8, !tbaa !44
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8
  call void %i.uh(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #20, !inline_history !130
  %i.ui = load ptr, ptr %i.tz, align 8, !tbaa !44
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #20, !inline_history !130
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i141

bb.gc:                                            ; preds = %bb.ga
  %i.ul = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i138 = icmp eq i8 %i.ul, 0
  br i1 %.not.i.i.i.i138, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.um = add nsw i32 %i.ud, -1
  store i32 %i.um, ptr %i.ua, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i139

bb.ge:                                            ; preds = %bb.gc
  %i.un = atomicrmw volatile add ptr %i.ua, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i139: ; preds = %bb.ge, %bb.gd
  %.0.i.i.i.i.i140 = phi i32 [ %i.ud, %bb.gd ], [ %i.un, %bb.ge ]
  %i.uo = icmp eq i32 %.0.i.i.i.i.i140, 1
  br i1 %i.uo, label %bb.gf, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i141, !prof !56

bb.gf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i141

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i141: ; preds = %bb.gf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i139, %bb.gb, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i136
  %i.up = getelementptr inbounds nuw i8, ptr %151, i64 8
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i142 = icmp eq ptr %i.uq, null
  br i1 %.not.i.i12.i142, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i146, label %bb.gg

bb.gg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i141
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8 ; 4 uses
  %i.us = load atomic i64, ptr %i.ur acquire, align 8 ; 2 uses
  %i.ut = icmp eq i64 %i.us, 4294967297
  %i.uu = trunc i64 %i.us to i32                  ; 2 uses
  br i1 %i.ut, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  store i32 0, ptr %i.ur, align 8, !tbaa !41
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uq, i64 12
  store i32 0, ptr %i.uv, align 4, !tbaa !43
  %i.uw = load ptr, ptr %i.uq, align 8, !tbaa !44
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.uy = load ptr, ptr %i.ux, align 8
  call void %i.uy(ptr noundef nonnull align 8 dereferenceable(16) %i.uq) #20, !inline_history !131
  %i.uz = load ptr, ptr %i.uq, align 8, !tbaa !44
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 24
  %i.vb = load ptr, ptr %i.va, align 8
  call void %i.vb(ptr noundef nonnull align 8 dereferenceable(16) %i.uq) #20, !inline_history !131
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i146

bb.gi:                                            ; preds = %bb.gg
  %i.vc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i143 = icmp eq i8 %i.vc, 0
  br i1 %.not.i.i.i13.i143, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.vd = add nsw i32 %i.uu, -1
  store i32 %i.vd, ptr %i.ur, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i144

bb.gk:                                            ; preds = %bb.gi
  %i.ve = atomicrmw volatile add ptr %i.ur, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i144

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i144: ; preds = %bb.gk, %bb.gj
  %.0.i.i.i.i15.i145 = phi i32 [ %i.uu, %bb.gj ], [ %i.ve, %bb.gk ]
  %i.vf = icmp eq i32 %.0.i.i.i.i15.i145, 1
  br i1 %i.vf, label %bb.gl, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i146, !prof !56

bb.gl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i144
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.uq) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i146

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i146: ; preds = %bb.gl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i144, %bb.gh, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i141
  %i.vg = getelementptr inbounds nuw i8, ptr %150, i64 40
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i147 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i16.i147, label %_ZNSt14_Function_baseD2Ev.exit.i.i148, label %bb.gm

bb.gm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i146
  %i.vi = getelementptr inbounds nuw i8, ptr %150, i64 24 ; 2 uses
  %i.vj = invoke noundef zeroext i1 %i.vh(ptr noundef nonnull align 8 dereferenceable(32) %i.vi, ptr noundef nonnull align 8 dereferenceable(32) %i.vi, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i148 unwind label %bb.gn ; 0 uses

bb.gn:                                            ; preds = %bb.gm
  %i.vk = landingpad { ptr, i32 }
          catch ptr null
  %i.vl = extractvalue { ptr, i32 } %i.vk, 0
  call void @__clang_call_terminate(ptr %i.vl) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i148:            ; preds = %bb.gm, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i146
  %i.vm = getelementptr inbounds nuw i8, ptr %150, i64 16
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i149 = icmp eq ptr %i.vn, null
  br i1 %.not.i.i.i17.i149, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i153, label %bb.go

bb.go:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i148
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8 ; 4 uses
  %i.vp = load atomic i64, ptr %i.vo acquire, align 8 ; 2 uses
  %i.vq = icmp eq i64 %i.vp, 4294967297
  %i.vr = trunc i64 %i.vp to i32                  ; 2 uses
  br i1 %i.vq, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  store i32 0, ptr %i.vo, align 8, !tbaa !41
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 12
  store i32 0, ptr %i.vs, align 4, !tbaa !43
  %i.vt = load ptr, ptr %i.vn, align 8, !tbaa !44
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8
  call void %i.vv(ptr noundef nonnull align 8 dereferenceable(16) %i.vn) #20, !inline_history !132
  %i.vw = load ptr, ptr %i.vn, align 8, !tbaa !44
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 24
  %i.vy = load ptr, ptr %i.vx, align 8
  call void %i.vy(ptr noundef nonnull align 8 dereferenceable(16) %i.vn) #20, !inline_history !132
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i153

bb.gq:                                            ; preds = %bb.go
  %i.vz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i150 = icmp eq i8 %i.vz, 0
  br i1 %.not.i.i.i.i18.i150, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.wa = add nsw i32 %i.vr, -1
  store i32 %i.wa, ptr %i.vo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i151

bb.gs:                                            ; preds = %bb.gq
  %i.wb = atomicrmw volatile add ptr %i.vo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i151

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i151: ; preds = %bb.gs, %bb.gr
  %.0.i.i.i.i.i.i152 = phi i32 [ %i.vr, %bb.gr ], [ %i.wb, %bb.gs ]
  %i.wc = icmp eq i32 %.0.i.i.i.i.i.i152, 1
  br i1 %i.wc, label %bb.gt, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i153, !prof !56

bb.gt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i151
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vn) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i153

_ZN5arrow7compute10OutputTypeD2Ev.exit.i153:      ; preds = %bb.gt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i151, %bb.gp, %_ZNSt14_Function_baseD2Ev.exit.i.i148
  %i.wd = load ptr, ptr %148, align 8, !tbaa !87
  %i.we = load ptr, ptr %i.te, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.wd, ptr noundef %i.we)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i154 unwind label %bb.gv

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i154: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i153
  %i.wf = load ptr, ptr %148, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i155 = icmp eq ptr %i.wf, null
  br i1 %.not.i.i.i19.i155, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i156, label %bb.gu

bb.gu:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i154
  %i.wg = load ptr, ptr %i.tc, align 8, !tbaa !90
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = ptrtoint ptr %i.wf to i64
  %i.wj = sub i64 %i.wh, %i.wi
  call void @_ZdlPvm(ptr noundef nonnull %i.wf, i64 noundef %i.wj) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i156

bb.gv:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i153
  %i.wk = landingpad { ptr, i32 }
          catch ptr null
  %i.wl = extractvalue { ptr, i32 } %i.wk, 0
  call void @__clang_call_terminate(ptr %i.wl) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i156: ; preds = %bb.gu, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i154
  %i.wm = load ptr, ptr %i.sy, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i157 = icmp eq ptr %i.wm, null
  br i1 %.not.i.i.i21.i157, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i161, label %bb.gw

bb.gw:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i156
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8 ; 4 uses
  %i.wo = load atomic i64, ptr %i.wn acquire, align 8 ; 2 uses
  %i.wp = icmp eq i64 %i.wo, 4294967297
  %i.wq = trunc i64 %i.wo to i32                  ; 2 uses
  br i1 %i.wp, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  store i32 0, ptr %i.wn, align 8, !tbaa !41
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wm, i64 12
  store i32 0, ptr %i.wr, align 4, !tbaa !43
  %i.ws = load ptr, ptr %i.wm, align 8, !tbaa !44
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #20, !inline_history !133
  %i.wv = load ptr, ptr %i.wm, align 8, !tbaa !44
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load ptr, ptr %i.ww, align 8
  call void %i.wx(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #20, !inline_history !133
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i161

bb.gy:                                            ; preds = %bb.gw
  %i.wy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i158 = icmp eq i8 %i.wy, 0
  br i1 %.not.i.i.i.i22.i158, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.wz = add nsw i32 %i.wq, -1
  store i32 %i.wz, ptr %i.wn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i159

bb.ha:                                            ; preds = %bb.gy
  %i.xa = atomicrmw volatile add ptr %i.wn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i159

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i159: ; preds = %bb.ha, %bb.gz
  %.0.i.i.i.i.i24.i160 = phi i32 [ %i.wq, %bb.gz ], [ %i.xa, %bb.ha ]
  %i.xb = icmp eq i32 %.0.i.i.i.i.i24.i160, 1
  br i1 %i.xb, label %bb.hb, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i161, !prof !56

bb.hb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i159
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i161

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i161: ; preds = %bb.hb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i159, %bb.gx, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i156
  %i.xc = getelementptr inbounds nuw i8, ptr %149, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i162 = icmp eq ptr %i.xd, null
  br i1 %.not.i.i1.i.i162, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i166, label %bb.hc

bb.hc:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i161
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8 ; 4 uses
  %i.xf = load atomic i64, ptr %i.xe acquire, align 8 ; 2 uses
  %i.xg = icmp eq i64 %i.xf, 4294967297
  %i.xh = trunc i64 %i.xf to i32                  ; 2 uses
  br i1 %i.xg, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  store i32 0, ptr %i.xe, align 8, !tbaa !41
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xd, i64 12
  store i32 0, ptr %i.xi, align 4, !tbaa !43
  %i.xj = load ptr, ptr %i.xd, align 8, !tbaa !44
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8
  call void %i.xl(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #20, !inline_history !134
  %i.xm = load ptr, ptr %i.xd, align 8, !tbaa !44
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8
  call void %i.xo(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #20, !inline_history !134
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i166

bb.he:                                            ; preds = %bb.hc
  %i.xp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i163 = icmp eq i8 %i.xp, 0
  br i1 %.not.i.i.i2.i.i163, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.xq = add nsw i32 %i.xh, -1
  store i32 %i.xq, ptr %i.xe, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i164

bb.hg:                                            ; preds = %bb.he
  %i.xr = atomicrmw volatile add ptr %i.xe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i164

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i164: ; preds = %bb.hg, %bb.hf
  %.0.i.i.i.i4.i.i165 = phi i32 [ %i.xh, %bb.hf ], [ %i.xr, %bb.hg ]
  %i.xs = icmp eq i32 %.0.i.i.i.i4.i.i165, 1
  br i1 %i.xs, label %bb.hh, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i166, !prof !56

bb.hh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i164
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i166

_ZN5arrow7compute9InputTypeD2Ev.exit.i166:        ; preds = %bb.hh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i164, %bb.hd, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #20
  store i32 2, ptr %i.st, align 4, !tbaa !74
  %i.xt = load <2 x ptr>, ptr %146, align 16, !tbaa !86
  store ptr null, ptr %i.th, align 8, !tbaa !46
  store <2 x ptr> %i.xt, ptr %153, align 16, !tbaa !86
  store ptr null, ptr %146, align 16, !tbaa !98
  %i.xu = getelementptr inbounds nuw i8, ptr %153, i64 16 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %153, i64 40
  %i.xw = getelementptr inbounds nuw i8, ptr %146, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.xu, i8 0, i64 24, i1 false)
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !99
  store ptr %i.xx, ptr %i.xv, align 8, !tbaa !99
  %i.xy = getelementptr inbounds nuw i8, ptr %146, i64 32 ; 2 uses
  %i.xz = load ptr, ptr %i.xy, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i167 = icmp eq ptr %i.xz, null
  br i1 %.not.i.i.not.i.i.i.i167, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i168, label %bb.hi

bb.hi:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i166
  %i.ya = getelementptr inbounds nuw i8, ptr %146, i64 16
  %i.yb = getelementptr inbounds nuw i8, ptr %153, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.xu, ptr noundef nonnull align 8 dereferenceable(32) %i.ya, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.xz, ptr %i.yb, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xy, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i168

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i168: ; preds = %bb.hi, %_ZN5arrow7compute9InputTypeD2Ev.exit.i166
  %i.yc = getelementptr inbounds nuw i8, ptr %153, i64 48
  %i.yd = load i64, ptr %i.sq, align 16
  store i64 %i.yd, ptr %i.yc, align 16
  %i.ye = getelementptr inbounds nuw i8, ptr %153, i64 56
  %i.yf = getelementptr inbounds nuw i8, ptr %146, i64 56 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %146, i64 64
  %i.yh = load <2 x ptr>, ptr %i.yf, align 8, !tbaa !86
  store ptr null, ptr %i.yg, align 16, !tbaa !46
  store <2 x ptr> %i.yh, ptr %i.ye, align 8, !tbaa !86
  store ptr null, ptr %i.yf, align 8, !tbaa !101
  %i.yi = getelementptr inbounds nuw i8, ptr %153, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.yi, ptr noundef nonnull align 8 dereferenceable(20) %i.sv, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %152, ptr noundef nonnull align 8 dereferenceable(252) %i.sp, i32 noundef 42, ptr noundef nonnull %153)
          to label %bb.hj unwind label %bb.hq

bb.hj:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i168
  %i.yj = load ptr, ptr %152, align 8, !tbaa !102 ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.yj, null
  br i1 %.not.i.i169, label %bb.hs, label %bb.hk, !prof !105

bb.hk:                                            ; preds = %bb.hj
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 1
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !106, !range !115, !noundef !116
  %i.ym = trunc nuw i8 %i.yl to i1
  br i1 %i.ym, label %bb.hs, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %152) #20
  br label %bb.hs

bb.hm:                                            ; preds = %bb.fq
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i124

bb.hn:                                            ; preds = %.noexc3.i.i130
  %i.yo = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.ho:                                            ; preds = %bb.fs
  %i.yp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %151) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %150) #20
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.pn.i131 = phi { ptr, i32 } [ %i.yp, %bb.ho ], [ %i.yo, %bb.hn ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %148) #20
  br label %.body.i128

.body.i128:                                       ; preds = %bb.hp, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i127
  %.pn.pn.i129 = phi { ptr, i32 } [ %.pn.i131, %bb.hp ], [ %i.tf, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i127 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %149) #20
  br label %.loopexit.i124

.loopexit.i124:                                   ; preds = %.body.i128, %bb.hm
  %.pn.pn.pn.i125 = phi { ptr, i32 } [ %i.yn, %bb.hm ], [ %.pn.pn.i129, %.body.i128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #20
  br label %bb.hr

bb.hq:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i168
  %i.yq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %153) #20
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %.loopexit.i124
  %.pn10.i126 = phi { ptr, i32 } [ %i.yq, %bb.hq ], [ %.pn.pn.pn.i125, %.loopexit.i124 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %146) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #20
  br label %.body

bb.hs:                                            ; preds = %bb.hl, %bb.hk, %bb.hj
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %153) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %146) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %148)
  call void @llvm.lifetime.end.p0(ptr nonnull %150)
  call void @llvm.lifetime.end.p0(ptr nonnull %151)
  call void @llvm.lifetime.end.p0(ptr nonnull %152)
  call void @llvm.lifetime.end.p0(ptr nonnull %153)
  %i.yr = load ptr, ptr %181, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %139)
  call void @llvm.lifetime.start.p0(ptr nonnull %141)
  call void @llvm.lifetime.start.p0(ptr nonnull %142)
  call void @llvm.lifetime.start.p0(ptr nonnull %143)
  call void @llvm.lifetime.start.p0(ptr nonnull %144)
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #20
  %i.ys = getelementptr inbounds nuw i8, ptr %137, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %137, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.ys, align 16, !tbaa !59
  %i.yt = getelementptr inbounds nuw i8, ptr %137, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.yt, i8 0, i64 20, i1 false)
  %i.yu = getelementptr inbounds nuw i8, ptr %137, i64 80
  store i8 1, ptr %i.yu, align 16, !tbaa !70
  %i.yv = getelementptr inbounds nuw i8, ptr %137, i64 84 ; 2 uses
  store i32 0, ptr %i.yv, align 4, !tbaa !74
  %i.yw = getelementptr inbounds nuw i8, ptr %137, i64 88
  store i32 0, ptr %i.yw, align 8, !tbaa !75
  %i.yx = getelementptr inbounds nuw i8, ptr %137, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118CastFixedToVarListINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.yx, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %136)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %136, i32 noundef 32)
          to label %bb.ht unwind label %bb.jo

bb.ht:                                            ; preds = %bb.hs
  store i32 2, ptr %140, align 8, !tbaa !77
  %i.yy = getelementptr inbounds nuw i8, ptr %140, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yy, i8 0, i64 16, i1 false)
  %i.yz = getelementptr inbounds nuw i8, ptr %140, i64 24
  %i.za = getelementptr inbounds nuw i8, ptr %140, i64 32
  %i.zb = load <2 x ptr>, ptr %136, align 16, !tbaa !86
  store <2 x ptr> %i.zb, ptr %i.yz, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %136)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %139, i8 0, i64 24, i1 false)
  %i.zc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i178 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i175 ; 4 uses

.noexc3.i.i178:                                   ; preds = %bb.ht
  store ptr %i.zc, ptr %139, align 8, !tbaa !87
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 40 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %139, i64 16 ; 2 uses
  store ptr %i.zd, ptr %i.ze, align 8, !tbaa !90
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zf, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.zc, ptr noundef nonnull align 8 dereferenceable(40) %140)
  %i.zg = getelementptr inbounds nuw i8, ptr %139, i64 8 ; 2 uses
  store ptr %i.zd, ptr %i.zg, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %141, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.hu unwind label %bb.jp

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i175: ; preds = %bb.ht
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i176

bb.hu:                                            ; preds = %.noexc3.i.i178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %142, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %138, ptr noundef nonnull %139, ptr noundef nonnull %141, i1 noundef zeroext false, ptr noundef nonnull %142)
          to label %bb.hv unwind label %bb.jq

bb.hv:                                            ; preds = %bb.hu
  %i.zi = getelementptr inbounds nuw i8, ptr %138, i64 8
  %i.zj = getelementptr inbounds nuw i8, ptr %137, i64 8 ; 2 uses
  %i.zk = load <2 x ptr>, ptr %138, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %138, i8 0, i64 16, i1 false)
  %i.zl = load ptr, ptr %i.zj, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.zk, ptr %137, align 16, !tbaa !86
  %.not.i.i.i.i.i180 = icmp eq ptr %i.zl, null
  br i1 %.not.i.i.i.i.i180, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i184, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8 ; 4 uses
  %i.zn = load atomic i64, ptr %i.zm acquire, align 8 ; 2 uses
  %i.zo = icmp eq i64 %i.zn, 4294967297
  %i.zp = trunc i64 %i.zn to i32                  ; 2 uses
  br i1 %i.zo, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  store i32 0, ptr %i.zm, align 8, !tbaa !41
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zl, i64 12
  store i32 0, ptr %i.zq, align 4, !tbaa !43
  %i.zr = load ptr, ptr %i.zl, align 8, !tbaa !44
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %i.zt = load ptr, ptr %i.zs, align 8
  call void %i.zt(ptr noundef nonnull align 8 dereferenceable(16) %i.zl) #20, !inline_history !135
  %i.zu = load ptr, ptr %i.zl, align 8, !tbaa !44
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 24
  %i.zw = load ptr, ptr %i.zv, align 8
  call void %i.zw(ptr noundef nonnull align 8 dereferenceable(16) %i.zl) #20, !inline_history !135
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i184

bb.hy:                                            ; preds = %bb.hw
  %i.zx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i181 = icmp eq i8 %i.zx, 0
  br i1 %.not.i.i.i.i.i.i181, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.zy = add nsw i32 %i.zp, -1
  store i32 %i.zy, ptr %i.zm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i182

bb.ia:                                            ; preds = %bb.hy
  %i.zz = atomicrmw volatile add ptr %i.zm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i182

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i182: ; preds = %bb.ia, %bb.hz
  %.0.i.i.i.i.i.i.i183 = phi i32 [ %i.zp, %bb.hz ], [ %i.zz, %bb.ia ]
  %i.aaa = icmp eq i32 %.0.i.i.i.i.i.i.i183, 1
  br i1 %i.aaa, label %bb.ib, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i184, !prof !56

bb.ib:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i182
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zl) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i184

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i184: ; preds = %bb.ib, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i182, %bb.hx, %bb.hv
  %i.aab = load ptr, ptr %i.zi, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i185 = icmp eq ptr %i.aab, null
  br i1 %.not.i.i.i185, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i189, label %bb.ic

bb.ic:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i184
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 8 ; 4 uses
  %i.aad = load atomic i64, ptr %i.aac acquire, align 8 ; 2 uses
  %i.aae = icmp eq i64 %i.aad, 4294967297
  %i.aaf = trunc i64 %i.aad to i32                ; 2 uses
  br i1 %i.aae, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  store i32 0, ptr %i.aac, align 8, !tbaa !41
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aab, i64 12
  store i32 0, ptr %i.aag, align 4, !tbaa !43
  %i.aah = load ptr, ptr %i.aab, align 8, !tbaa !44
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aaj = load ptr, ptr %i.aai, align 8
  call void %i.aaj(ptr noundef nonnull align 8 dereferenceable(16) %i.aab) #20, !inline_history !136
  %i.aak = load ptr, ptr %i.aab, align 8, !tbaa !44
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 24
  %i.aam = load ptr, ptr %i.aal, align 8
  call void %i.aam(ptr noundef nonnull align 8 dereferenceable(16) %i.aab) #20, !inline_history !136
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i189

bb.ie:                                            ; preds = %bb.ic
  %i.aan = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i186 = icmp eq i8 %i.aan, 0
  br i1 %.not.i.i.i.i186, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.aao = add nsw i32 %i.aaf, -1
  store i32 %i.aao, ptr %i.aac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i187

bb.ig:                                            ; preds = %bb.ie
  %i.aap = atomicrmw volatile add ptr %i.aac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i187

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i187: ; preds = %bb.ig, %bb.if
  %.0.i.i.i.i.i188 = phi i32 [ %i.aaf, %bb.if ], [ %i.aap, %bb.ig ]
  %i.aaq = icmp eq i32 %.0.i.i.i.i.i188, 1
  br i1 %i.aaq, label %bb.ih, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i189, !prof !56

bb.ih:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i187
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aab) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i189

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i189: ; preds = %bb.ih, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i187, %bb.id, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i184
  %i.aar = getelementptr inbounds nuw i8, ptr %142, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i190 = icmp eq ptr %i.aas, null
  br i1 %.not.i.i12.i190, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i194, label %bb.ii

bb.ii:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i189
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 8 ; 4 uses
  %i.aau = load atomic i64, ptr %i.aat acquire, align 8 ; 2 uses
  %i.aav = icmp eq i64 %i.aau, 4294967297
  %i.aaw = trunc i64 %i.aau to i32                ; 2 uses
  br i1 %i.aav, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  store i32 0, ptr %i.aat, align 8, !tbaa !41
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aas, i64 12
  store i32 0, ptr %i.aax, align 4, !tbaa !43
  %i.aay = load ptr, ptr %i.aas, align 8, !tbaa !44
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  %i.aba = load ptr, ptr %i.aaz, align 8
  call void %i.aba(ptr noundef nonnull align 8 dereferenceable(16) %i.aas) #20, !inline_history !137
  %i.abb = load ptr, ptr %i.aas, align 8, !tbaa !44
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 24
  %i.abd = load ptr, ptr %i.abc, align 8
  call void %i.abd(ptr noundef nonnull align 8 dereferenceable(16) %i.aas) #20, !inline_history !137
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i194

bb.ik:                                            ; preds = %bb.ii
  %i.abe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i191 = icmp eq i8 %i.abe, 0
  br i1 %.not.i.i.i13.i191, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.abf = add nsw i32 %i.aaw, -1
  store i32 %i.abf, ptr %i.aat, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i192

bb.im:                                            ; preds = %bb.ik
  %i.abg = atomicrmw volatile add ptr %i.aat, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i192

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i192: ; preds = %bb.im, %bb.il
  %.0.i.i.i.i15.i193 = phi i32 [ %i.aaw, %bb.il ], [ %i.abg, %bb.im ]
  %i.abh = icmp eq i32 %.0.i.i.i.i15.i193, 1
  br i1 %i.abh, label %bb.in, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i194, !prof !56

bb.in:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i192
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aas) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i194

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i194: ; preds = %bb.in, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i192, %bb.ij, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i189
  %i.abi = getelementptr inbounds nuw i8, ptr %141, i64 40
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i195 = icmp eq ptr %i.abj, null
  br i1 %.not.i.i16.i195, label %_ZNSt14_Function_baseD2Ev.exit.i.i196, label %bb.io

bb.io:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i194
  %i.abk = getelementptr inbounds nuw i8, ptr %141, i64 24 ; 2 uses
  %i.abl = invoke noundef zeroext i1 %i.abj(ptr noundef nonnull align 8 dereferenceable(32) %i.abk, ptr noundef nonnull align 8 dereferenceable(32) %i.abk, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i196 unwind label %bb.ip ; 0 uses

bb.ip:                                            ; preds = %bb.io
  %i.abm = landingpad { ptr, i32 }
          catch ptr null
  %i.abn = extractvalue { ptr, i32 } %i.abm, 0
  call void @__clang_call_terminate(ptr %i.abn) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i196:            ; preds = %bb.io, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i194
  %i.abo = getelementptr inbounds nuw i8, ptr %141, i64 16
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i197 = icmp eq ptr %i.abp, null
  br i1 %.not.i.i.i17.i197, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i201, label %bb.iq

bb.iq:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i196
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 8 ; 4 uses
  %i.abr = load atomic i64, ptr %i.abq acquire, align 8 ; 2 uses
  %i.abs = icmp eq i64 %i.abr, 4294967297
  %i.abt = trunc i64 %i.abr to i32                ; 2 uses
  br i1 %i.abs, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  store i32 0, ptr %i.abq, align 8, !tbaa !41
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abp, i64 12
  store i32 0, ptr %i.abu, align 4, !tbaa !43
  %i.abv = load ptr, ptr %i.abp, align 8, !tbaa !44
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  %i.abx = load ptr, ptr %i.abw, align 8
  call void %i.abx(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #20, !inline_history !138
  %i.aby = load ptr, ptr %i.abp, align 8, !tbaa !44
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 24
  %i.aca = load ptr, ptr %i.abz, align 8
  call void %i.aca(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #20, !inline_history !138
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i201

bb.is:                                            ; preds = %bb.iq
  %i.acb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i198 = icmp eq i8 %i.acb, 0
  br i1 %.not.i.i.i.i18.i198, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.acc = add nsw i32 %i.abt, -1
  store i32 %i.acc, ptr %i.abq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i199

bb.iu:                                            ; preds = %bb.is
  %i.acd = atomicrmw volatile add ptr %i.abq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i199

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i199: ; preds = %bb.iu, %bb.it
  %.0.i.i.i.i.i.i200 = phi i32 [ %i.abt, %bb.it ], [ %i.acd, %bb.iu ]
  %i.ace = icmp eq i32 %.0.i.i.i.i.i.i200, 1
  br i1 %i.ace, label %bb.iv, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i201, !prof !56

bb.iv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i199
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i201

_ZN5arrow7compute10OutputTypeD2Ev.exit.i201:      ; preds = %bb.iv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i199, %bb.ir, %_ZNSt14_Function_baseD2Ev.exit.i.i196
  %i.acf = load ptr, ptr %139, align 8, !tbaa !87
  %i.acg = load ptr, ptr %i.zg, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.acf, ptr noundef %i.acg)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i202 unwind label %bb.ix

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i202: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i201
  %i.ach = load ptr, ptr %139, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i19.i203 = icmp eq ptr %i.ach, null
  br i1 %.not.i.i.i19.i203, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i204, label %bb.iw

bb.iw:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i202
  %i.aci = load ptr, ptr %i.ze, align 8, !tbaa !90
  %i.acj = ptrtoint ptr %i.aci to i64
  %i.ack = ptrtoint ptr %i.ach to i64
  %i.acl = sub i64 %i.acj, %i.ack
  call void @_ZdlPvm(ptr noundef nonnull %i.ach, i64 noundef %i.acl) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i204

bb.ix:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i201
  %i.acm = landingpad { ptr, i32 }
          catch ptr null
  %i.acn = extractvalue { ptr, i32 } %i.acm, 0
  call void @__clang_call_terminate(ptr %i.acn) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i204: ; preds = %bb.iw, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i202
  %i.aco = load ptr, ptr %i.za, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i205 = icmp eq ptr %i.aco, null
  br i1 %.not.i.i.i21.i205, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i209, label %bb.iy

bb.iy:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i204
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 8 ; 4 uses
  %i.acq = load atomic i64, ptr %i.acp acquire, align 8 ; 2 uses
  %i.acr = icmp eq i64 %i.acq, 4294967297
  %i.acs = trunc i64 %i.acq to i32                ; 2 uses
  br i1 %i.acr, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  store i32 0, ptr %i.acp, align 8, !tbaa !41
  %i.act = getelementptr inbounds nuw i8, ptr %i.aco, i64 12
  store i32 0, ptr %i.act, align 4, !tbaa !43
  %i.acu = load ptr, ptr %i.aco, align 8, !tbaa !44
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  %i.acw = load ptr, ptr %i.acv, align 8
  call void %i.acw(ptr noundef nonnull align 8 dereferenceable(16) %i.aco) #20, !inline_history !139
  %i.acx = load ptr, ptr %i.aco, align 8, !tbaa !44
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 24
  %i.acz = load ptr, ptr %i.acy, align 8
  call void %i.acz(ptr noundef nonnull align 8 dereferenceable(16) %i.aco) #20, !inline_history !139
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i209

bb.ja:                                            ; preds = %bb.iy
  %i.ada = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i206 = icmp eq i8 %i.ada, 0
  br i1 %.not.i.i.i.i22.i206, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.adb = add nsw i32 %i.acs, -1
  store i32 %i.adb, ptr %i.acp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i207

bb.jc:                                            ; preds = %bb.ja
  %i.adc = atomicrmw volatile add ptr %i.acp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i207

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i207: ; preds = %bb.jc, %bb.jb
  %.0.i.i.i.i.i24.i208 = phi i32 [ %i.acs, %bb.jb ], [ %i.adc, %bb.jc ]
  %i.add = icmp eq i32 %.0.i.i.i.i.i24.i208, 1
  br i1 %i.add, label %bb.jd, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i209, !prof !56

bb.jd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i207
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aco) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i209

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i209: ; preds = %bb.jd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i207, %bb.iz, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i204
  %i.ade = getelementptr inbounds nuw i8, ptr %140, i64 16
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i210 = icmp eq ptr %i.adf, null
  br i1 %.not.i.i1.i.i210, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i214, label %bb.je

bb.je:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i209
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 8 ; 4 uses
  %i.adh = load atomic i64, ptr %i.adg acquire, align 8 ; 2 uses
  %i.adi = icmp eq i64 %i.adh, 4294967297
  %i.adj = trunc i64 %i.adh to i32                ; 2 uses
  br i1 %i.adi, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  store i32 0, ptr %i.adg, align 8, !tbaa !41
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adf, i64 12
  store i32 0, ptr %i.adk, align 4, !tbaa !43
  %i.adl = load ptr, ptr %i.adf, align 8, !tbaa !44
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  %i.adn = load ptr, ptr %i.adm, align 8
  call void %i.adn(ptr noundef nonnull align 8 dereferenceable(16) %i.adf) #20, !inline_history !140
  %i.ado = load ptr, ptr %i.adf, align 8, !tbaa !44
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 24
  %i.adq = load ptr, ptr %i.adp, align 8
  call void %i.adq(ptr noundef nonnull align 8 dereferenceable(16) %i.adf) #20, !inline_history !140
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i214

bb.jg:                                            ; preds = %bb.je
  %i.adr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i211 = icmp eq i8 %i.adr, 0
  br i1 %.not.i.i.i2.i.i211, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.ads = add nsw i32 %i.adj, -1
  store i32 %i.ads, ptr %i.adg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i212

bb.ji:                                            ; preds = %bb.jg
  %i.adt = atomicrmw volatile add ptr %i.adg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i212

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i212: ; preds = %bb.ji, %bb.jh
  %.0.i.i.i.i4.i.i213 = phi i32 [ %i.adj, %bb.jh ], [ %i.adt, %bb.ji ]
  %i.adu = icmp eq i32 %.0.i.i.i.i4.i.i213, 1
  br i1 %i.adu, label %bb.jj, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i214, !prof !56

bb.jj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i212
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adf) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i214

_ZN5arrow7compute9InputTypeD2Ev.exit.i214:        ; preds = %bb.jj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i212, %bb.jf, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #20
  store i32 2, ptr %i.yv, align 4, !tbaa !74
  %i.adv = load <2 x ptr>, ptr %137, align 16, !tbaa !86
  store ptr null, ptr %i.zj, align 8, !tbaa !46
  store <2 x ptr> %i.adv, ptr %144, align 16, !tbaa !86
  store ptr null, ptr %137, align 16, !tbaa !98
  %i.adw = getelementptr inbounds nuw i8, ptr %144, i64 16 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %144, i64 40
  %i.ady = getelementptr inbounds nuw i8, ptr %137, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.adw, i8 0, i64 24, i1 false)
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !99
  store ptr %i.adz, ptr %i.adx, align 8, !tbaa !99
  %i.aea = getelementptr inbounds nuw i8, ptr %137, i64 32 ; 2 uses
  %i.aeb = load ptr, ptr %i.aea, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i215 = icmp eq ptr %i.aeb, null
  br i1 %.not.i.i.not.i.i.i.i215, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i216, label %bb.jk

bb.jk:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i214
  %i.aec = getelementptr inbounds nuw i8, ptr %137, i64 16
  %i.aed = getelementptr inbounds nuw i8, ptr %144, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.adw, ptr noundef nonnull align 8 dereferenceable(32) %i.aec, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.aeb, ptr %i.aed, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aea, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i216

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i216: ; preds = %bb.jk, %_ZN5arrow7compute9InputTypeD2Ev.exit.i214
  %i.aee = getelementptr inbounds nuw i8, ptr %144, i64 48
  %i.aef = load i64, ptr %i.ys, align 16
  store i64 %i.aef, ptr %i.aee, align 16
  %i.aeg = getelementptr inbounds nuw i8, ptr %144, i64 56
  %i.aeh = getelementptr inbounds nuw i8, ptr %137, i64 56 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %137, i64 64
  %i.aej = load <2 x ptr>, ptr %i.aeh, align 8, !tbaa !86
  store ptr null, ptr %i.aei, align 16, !tbaa !46
  store <2 x ptr> %i.aej, ptr %i.aeg, align 8, !tbaa !86
  store ptr null, ptr %i.aeh, align 8, !tbaa !101
  %i.aek = getelementptr inbounds nuw i8, ptr %144, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aek, ptr noundef nonnull align 8 dereferenceable(20) %i.yx, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %143, ptr noundef nonnull align 8 dereferenceable(252) %i.yr, i32 noundef 32, ptr noundef nonnull %144)
          to label %bb.jl unwind label %bb.js

bb.jl:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i216
  %i.ael = load ptr, ptr %143, align 8, !tbaa !102 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.ael, null
  br i1 %.not.i.i217, label %bb.ju, label %bb.jm, !prof !105

bb.jm:                                            ; preds = %bb.jl
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 1
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !106, !range !115, !noundef !116
  %i.aeo = trunc nuw i8 %i.aen to i1
  br i1 %i.aeo, label %bb.ju, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %143) #20
  br label %bb.ju

bb.jo:                                            ; preds = %bb.hs
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i172

bb.jp:                                            ; preds = %.noexc3.i.i178
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

bb.jq:                                            ; preds = %bb.hu
  %i.aer = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %142) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %141) #20
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %.pn.i179 = phi { ptr, i32 } [ %i.aer, %bb.jq ], [ %i.aeq, %bb.jp ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %139) #20
  br label %.body.i176

.body.i176:                                       ; preds = %bb.jr, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i175
  %.pn.pn.i177 = phi { ptr, i32 } [ %.pn.i179, %bb.jr ], [ %i.zh, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i175 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %140) #20
  br label %.loopexit.i172

.loopexit.i172:                                   ; preds = %.body.i176, %bb.jo
  %.pn.pn.pn.i173 = phi { ptr, i32 } [ %i.aep, %bb.jo ], [ %.pn.pn.i177, %.body.i176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #20
  br label %bb.jt

bb.js:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i216
  %i.aes = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %144) #20
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %.loopexit.i172
  %.pn10.i174 = phi { ptr, i32 } [ %i.aes, %bb.js ], [ %.pn.pn.pn.i173, %.loopexit.i172 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %137) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #20
  br label %.body

bb.ju:                                            ; preds = %bb.jn, %bb.jm, %bb.jl
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %144) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %137) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %139)
  call void @llvm.lifetime.end.p0(ptr nonnull %141)
  call void @llvm.lifetime.end.p0(ptr nonnull %142)
  call void @llvm.lifetime.end.p0(ptr nonnull %143)
  call void @llvm.lifetime.end.p0(ptr nonnull %144)
  call void @llvm.lifetime.start.p0(ptr nonnull %183) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 36, ptr %i.b, align 4, !tbaa !33
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.aet = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #21
          to label %.noexc unwind label %bb.avg   ; 6 uses

.noexc:                                           ; preds = %bb.ju
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  store i32 1, ptr %i.aeu, align 8, !tbaa !41, !noalias !141
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 12
  store i32 1, ptr %i.aev, align 4, !tbaa !43, !noalias !141
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aet, align 8, !tbaa !44, !noalias !141
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA16_KcNS0_4Type4typeEEEvPT_DpOT0_(ptr noundef nonnull %i.aew, ptr noundef nonnull align 1 dereferenceable(16) @.str.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.jv unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i220, !noalias !141

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i220: ; preds = %.noexc
  %i.aex = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aet, i64 noundef 272) #22, !noalias !141
  br label %.body221

bb.jv:                                            ; preds = %.noexc
  %i.aey = getelementptr inbounds nuw i8, ptr %183, i64 8 ; 3 uses
  store ptr %i.aet, ptr %i.aey, align 8, !tbaa !46, !alias.scope !141
  store ptr %i.aew, ptr %183, align 16, !tbaa !50, !alias.scope !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %184, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.jw unwind label %bb.avh

bb.jw:                                            ; preds = %bb.jv
  invoke void @_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE(i32 noundef 36, ptr noundef nonnull %184, ptr noundef nonnull %i.aew)
          to label %bb.jx unwind label %bb.avi

bb.jx:                                            ; preds = %bb.jw
  %i.aez = getelementptr inbounds nuw i8, ptr %184, i64 40
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !52 ; 2 uses
  %.not.i.i223 = icmp eq ptr %i.afa, null
  br i1 %.not.i.i223, label %_ZNSt14_Function_baseD2Ev.exit.i224, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.afb = getelementptr inbounds nuw i8, ptr %184, i64 24 ; 2 uses
  %i.afc = invoke noundef zeroext i1 %i.afa(ptr noundef nonnull align 8 dereferenceable(32) %i.afb, ptr noundef nonnull align 8 dereferenceable(32) %i.afb, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i224 unwind label %bb.jz ; 0 uses

bb.jz:                                            ; preds = %bb.jy
  %i.afd = landingpad { ptr, i32 }
          catch ptr null
  %i.afe = extractvalue { ptr, i32 } %i.afd, 0
  call void @__clang_call_terminate(ptr %i.afe) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i224:              ; preds = %bb.jy, %bb.jx
  %i.aff = getelementptr inbounds nuw i8, ptr %184, i64 16
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i225 = icmp eq ptr %i.afg, null
  br i1 %.not.i.i.i225, label %_ZN5arrow7compute10OutputTypeD2Ev.exit229, label %bb.ka

bb.ka:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i224
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 8 ; 4 uses
  %i.afi = load atomic i64, ptr %i.afh acquire, align 8 ; 2 uses
  %i.afj = icmp eq i64 %i.afi, 4294967297
  %i.afk = trunc i64 %i.afi to i32                ; 2 uses
  br i1 %i.afj, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  store i32 0, ptr %i.afh, align 8, !tbaa !41
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afg, i64 12
  store i32 0, ptr %i.afl, align 4, !tbaa !43
  %i.afm = load ptr, ptr %i.afg, align 8, !tbaa !44
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  %i.afo = load ptr, ptr %i.afn, align 8
  call void %i.afo(ptr noundef nonnull align 8 dereferenceable(16) %i.afg) #20, !inline_history !54
  %i.afp = load ptr, ptr %i.afg, align 8, !tbaa !44
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 24
  %i.afr = load ptr, ptr %i.afq, align 8
  call void %i.afr(ptr noundef nonnull align 8 dereferenceable(16) %i.afg) #20, !inline_history !54
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit229

bb.kc:                                            ; preds = %bb.ka
  %i.afs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i226 = icmp eq i8 %i.afs, 0
  br i1 %.not.i.i.i.i226, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.aft = add nsw i32 %i.afk, -1
  store i32 %i.aft, ptr %i.afh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i227

bb.ke:                                            ; preds = %bb.kc
  %i.afu = atomicrmw volatile add ptr %i.afh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i227

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i227: ; preds = %bb.ke, %bb.kd
  %.0.i.i.i.i.i228 = phi i32 [ %i.afk, %bb.kd ], [ %i.afu, %bb.ke ]
  %i.afv = icmp eq i32 %.0.i.i.i.i.i228, 1
  br i1 %i.afv, label %bb.kf, label %_ZN5arrow7compute10OutputTypeD2Ev.exit229, !prof !56

bb.kf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i227
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afg) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit229

_ZN5arrow7compute10OutputTypeD2Ev.exit229:        ; preds = %_ZNSt14_Function_baseD2Ev.exit.i224, %bb.kb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i227, %bb.kf
  %i.afw = load ptr, ptr %183, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %130)
  call void @llvm.lifetime.start.p0(ptr nonnull %132)
  call void @llvm.lifetime.start.p0(ptr nonnull %133)
  call void @llvm.lifetime.start.p0(ptr nonnull %134)
  call void @llvm.lifetime.start.p0(ptr nonnull %135)
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #20
  %i.afx = getelementptr inbounds nuw i8, ptr %128, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %128, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.afx, align 16, !tbaa !59
  %i.afy = getelementptr inbounds nuw i8, ptr %128, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.afy, i8 0, i64 20, i1 false)
  %i.afz = getelementptr inbounds nuw i8, ptr %128, i64 80
  store i8 1, ptr %i.afz, align 16, !tbaa !70
  %i.aga = getelementptr inbounds nuw i8, ptr %128, i64 84 ; 2 uses
  store i32 0, ptr %i.aga, align 4, !tbaa !74
  %i.agb = getelementptr inbounds nuw i8, ptr %128, i64 88
  store i32 0, ptr %i.agb, align 8, !tbaa !75
  %i.agc = getelementptr inbounds nuw i8, ptr %128, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeENS_13LargeListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.agc, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %127)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %127, i32 noundef 25)
          to label %bb.kg unwind label %bb.mb

bb.kg:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit229
  store i32 2, ptr %131, align 8, !tbaa !77
  %i.agd = getelementptr inbounds nuw i8, ptr %131, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agd, i8 0, i64 16, i1 false)
  %i.age = getelementptr inbounds nuw i8, ptr %131, i64 24
  %i.agf = getelementptr inbounds nuw i8, ptr %131, i64 32
  %i.agg = load <2 x ptr>, ptr %127, align 16, !tbaa !86
  store <2 x ptr> %i.agg, ptr %i.age, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %127)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %130, i8 0, i64 24, i1 false)
  %i.agh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i236 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i233 ; 4 uses

.noexc3.i.i236:                                   ; preds = %bb.kg
  store ptr %i.agh, ptr %130, align 8, !tbaa !87
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 40 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 2 uses
  store ptr %i.agi, ptr %i.agj, align 8, !tbaa !90
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.agk, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.agh, ptr noundef nonnull align 8 dereferenceable(40) %131)
  %i.agl = getelementptr inbounds nuw i8, ptr %130, i64 8 ; 2 uses
  store ptr %i.agi, ptr %i.agl, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %132, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.kh unwind label %bb.mc

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i233: ; preds = %bb.kg
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i234

bb.kh:                                            ; preds = %.noexc3.i.i236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %133, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %129, ptr noundef nonnull %130, ptr noundef nonnull %132, i1 noundef zeroext false, ptr noundef nonnull %133)
          to label %bb.ki unwind label %bb.md

bb.ki:                                            ; preds = %bb.kh
  %i.agn = getelementptr inbounds nuw i8, ptr %129, i64 8
  %i.ago = getelementptr inbounds nuw i8, ptr %128, i64 8 ; 2 uses
  %i.agp = load <2 x ptr>, ptr %129, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %129, i8 0, i64 16, i1 false)
  %i.agq = load ptr, ptr %i.ago, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.agp, ptr %128, align 16, !tbaa !86
  %.not.i.i.i.i.i238 = icmp eq ptr %i.agq, null
  br i1 %.not.i.i.i.i.i238, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i242, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 8 ; 4 uses
  %i.ags = load atomic i64, ptr %i.agr acquire, align 8 ; 2 uses
  %i.agt = icmp eq i64 %i.ags, 4294967297
  %i.agu = trunc i64 %i.ags to i32                ; 2 uses
  br i1 %i.agt, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  store i32 0, ptr %i.agr, align 8, !tbaa !41
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agq, i64 12
  store i32 0, ptr %i.agv, align 4, !tbaa !43
  %i.agw = load ptr, ptr %i.agq, align 8, !tbaa !44
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 16
  %i.agy = load ptr, ptr %i.agx, align 8
  call void %i.agy(ptr noundef nonnull align 8 dereferenceable(16) %i.agq) #20, !inline_history !144
  %i.agz = load ptr, ptr %i.agq, align 8, !tbaa !44
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 24
  %i.ahb = load ptr, ptr %i.aha, align 8
  call void %i.ahb(ptr noundef nonnull align 8 dereferenceable(16) %i.agq) #20, !inline_history !144
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i242

bb.kl:                                            ; preds = %bb.kj
  %i.ahc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i239 = icmp eq i8 %i.ahc, 0
  br i1 %.not.i.i.i.i.i.i239, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.ahd = add nsw i32 %i.agu, -1
  store i32 %i.ahd, ptr %i.agr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i240

bb.kn:                                            ; preds = %bb.kl
  %i.ahe = atomicrmw volatile add ptr %i.agr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i240

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i240: ; preds = %bb.kn, %bb.km
  %.0.i.i.i.i.i.i.i241 = phi i32 [ %i.agu, %bb.km ], [ %i.ahe, %bb.kn ]
  %i.ahf = icmp eq i32 %.0.i.i.i.i.i.i.i241, 1
  br i1 %i.ahf, label %bb.ko, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i242, !prof !56

bb.ko:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i240
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agq) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i242

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i242: ; preds = %bb.ko, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i240, %bb.kk, %bb.ki
  %i.ahg = load ptr, ptr %i.agn, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i243 = icmp eq ptr %i.ahg, null
  br i1 %.not.i.i.i243, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i247, label %bb.kp

bb.kp:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i242
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8 ; 4 uses
  %i.ahi = load atomic i64, ptr %i.ahh acquire, align 8 ; 2 uses
  %i.ahj = icmp eq i64 %i.ahi, 4294967297
  %i.ahk = trunc i64 %i.ahi to i32                ; 2 uses
  br i1 %i.ahj, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  store i32 0, ptr %i.ahh, align 8, !tbaa !41
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahg, i64 12
  store i32 0, ptr %i.ahl, align 4, !tbaa !43
  %i.ahm = load ptr, ptr %i.ahg, align 8, !tbaa !44
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  %i.aho = load ptr, ptr %i.ahn, align 8
  call void %i.aho(ptr noundef nonnull align 8 dereferenceable(16) %i.ahg) #20, !inline_history !145
  %i.ahp = load ptr, ptr %i.ahg, align 8, !tbaa !44
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 24
  %i.ahr = load ptr, ptr %i.ahq, align 8
  call void %i.ahr(ptr noundef nonnull align 8 dereferenceable(16) %i.ahg) #20, !inline_history !145
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i247

bb.kr:                                            ; preds = %bb.kp
  %i.ahs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i244 = icmp eq i8 %i.ahs, 0
  br i1 %.not.i.i.i.i244, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.aht = add nsw i32 %i.ahk, -1
  store i32 %i.aht, ptr %i.ahh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i245

bb.kt:                                            ; preds = %bb.kr
  %i.ahu = atomicrmw volatile add ptr %i.ahh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i245

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i245: ; preds = %bb.kt, %bb.ks
  %.0.i.i.i.i.i246 = phi i32 [ %i.ahk, %bb.ks ], [ %i.ahu, %bb.kt ]
  %i.ahv = icmp eq i32 %.0.i.i.i.i.i246, 1
  br i1 %i.ahv, label %bb.ku, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i247, !prof !56

bb.ku:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i245
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahg) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i247

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i247: ; preds = %bb.ku, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i245, %bb.kq, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i242
  %i.ahw = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i248 = icmp eq ptr %i.ahx, null
  br i1 %.not.i.i12.i248, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i252, label %bb.kv

bb.kv:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i247
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8 ; 4 uses
  %i.ahz = load atomic i64, ptr %i.ahy acquire, align 8 ; 2 uses
  %i.aia = icmp eq i64 %i.ahz, 4294967297
  %i.aib = trunc i64 %i.ahz to i32                ; 2 uses
  br i1 %i.aia, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  store i32 0, ptr %i.ahy, align 8, !tbaa !41
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahx, i64 12
  store i32 0, ptr %i.aic, align 4, !tbaa !43
  %i.aid = load ptr, ptr %i.ahx, align 8, !tbaa !44
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  %i.aif = load ptr, ptr %i.aie, align 8
  call void %i.aif(ptr noundef nonnull align 8 dereferenceable(16) %i.ahx) #20, !inline_history !146
  %i.aig = load ptr, ptr %i.ahx, align 8, !tbaa !44
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 24
  %i.aii = load ptr, ptr %i.aih, align 8
  call void %i.aii(ptr noundef nonnull align 8 dereferenceable(16) %i.ahx) #20, !inline_history !146
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i252

bb.kx:                                            ; preds = %bb.kv
  %i.aij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i249 = icmp eq i8 %i.aij, 0
  br i1 %.not.i.i.i13.i249, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.aik = add nsw i32 %i.aib, -1
  store i32 %i.aik, ptr %i.ahy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i250

bb.kz:                                            ; preds = %bb.kx
  %i.ail = atomicrmw volatile add ptr %i.ahy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i250

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i250: ; preds = %bb.kz, %bb.ky
  %.0.i.i.i.i15.i251 = phi i32 [ %i.aib, %bb.ky ], [ %i.ail, %bb.kz ]
  %i.aim = icmp eq i32 %.0.i.i.i.i15.i251, 1
  br i1 %i.aim, label %bb.la, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i252, !prof !56

bb.la:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i250
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahx) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i252

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i252: ; preds = %bb.la, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i250, %bb.kw, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i247
  %i.ain = getelementptr inbounds nuw i8, ptr %132, i64 40
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i253 = icmp eq ptr %i.aio, null
  br i1 %.not.i.i16.i253, label %_ZNSt14_Function_baseD2Ev.exit.i.i254, label %bb.lb

bb.lb:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i252
  %i.aip = getelementptr inbounds nuw i8, ptr %132, i64 24 ; 2 uses
  %i.aiq = invoke noundef zeroext i1 %i.aio(ptr noundef nonnull align 8 dereferenceable(32) %i.aip, ptr noundef nonnull align 8 dereferenceable(32) %i.aip, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i254 unwind label %bb.lc ; 0 uses

bb.lc:                                            ; preds = %bb.lb
  %i.air = landingpad { ptr, i32 }
          catch ptr null
  %i.ais = extractvalue { ptr, i32 } %i.air, 0
  call void @__clang_call_terminate(ptr %i.ais) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i254:            ; preds = %bb.lb, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i252
  %i.ait = getelementptr inbounds nuw i8, ptr %132, i64 16
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i255 = icmp eq ptr %i.aiu, null
  br i1 %.not.i.i.i17.i255, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i259, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i254
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8 ; 4 uses
  %i.aiw = load atomic i64, ptr %i.aiv acquire, align 8 ; 2 uses
  %i.aix = icmp eq i64 %i.aiw, 4294967297
  %i.aiy = trunc i64 %i.aiw to i32                ; 2 uses
  br i1 %i.aix, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  store i32 0, ptr %i.aiv, align 8, !tbaa !41
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiu, i64 12
  store i32 0, ptr %i.aiz, align 4, !tbaa !43
  %i.aja = load ptr, ptr %i.aiu, align 8, !tbaa !44
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 16
  %i.ajc = load ptr, ptr %i.ajb, align 8
  call void %i.ajc(ptr noundef nonnull align 8 dereferenceable(16) %i.aiu) #20, !inline_history !147
  %i.ajd = load ptr, ptr %i.aiu, align 8, !tbaa !44
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 24
  %i.ajf = load ptr, ptr %i.aje, align 8
  call void %i.ajf(ptr noundef nonnull align 8 dereferenceable(16) %i.aiu) #20, !inline_history !147
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i259

bb.lf:                                            ; preds = %bb.ld
  %i.ajg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i256 = icmp eq i8 %i.ajg, 0
  br i1 %.not.i.i.i.i18.i256, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.ajh = add nsw i32 %i.aiy, -1
  store i32 %i.ajh, ptr %i.aiv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i257

bb.lh:                                            ; preds = %bb.lf
  %i.aji = atomicrmw volatile add ptr %i.aiv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i257

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i257: ; preds = %bb.lh, %bb.lg
  %.0.i.i.i.i.i.i258 = phi i32 [ %i.aiy, %bb.lg ], [ %i.aji, %bb.lh ]
  %i.ajj = icmp eq i32 %.0.i.i.i.i.i.i258, 1
  br i1 %i.ajj, label %bb.li, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i259, !prof !56

bb.li:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i257
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aiu) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i259

_ZN5arrow7compute10OutputTypeD2Ev.exit.i259:      ; preds = %bb.li, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i257, %bb.le, %_ZNSt14_Function_baseD2Ev.exit.i.i254
  %i.ajk = load ptr, ptr %130, align 8, !tbaa !87
  %i.ajl = load ptr, ptr %i.agl, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.ajk, ptr noundef %i.ajl)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i260 unwind label %bb.lk

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i260: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i259
  %i.ajm = load ptr, ptr %130, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i19.i261 = icmp eq ptr %i.ajm, null
  br i1 %.not.i.i.i19.i261, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i262, label %bb.lj

bb.lj:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i260
  %i.ajn = load ptr, ptr %i.agj, align 8, !tbaa !90
  %i.ajo = ptrtoint ptr %i.ajn to i64
  %i.ajp = ptrtoint ptr %i.ajm to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp
  call void @_ZdlPvm(ptr noundef nonnull %i.ajm, i64 noundef %i.ajq) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i262

bb.lk:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i259
  %i.ajr = landingpad { ptr, i32 }
          catch ptr null
  %i.ajs = extractvalue { ptr, i32 } %i.ajr, 0
  call void @__clang_call_terminate(ptr %i.ajs) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i262: ; preds = %bb.lj, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i260
  %i.ajt = load ptr, ptr %i.agf, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i263 = icmp eq ptr %i.ajt, null
  br i1 %.not.i.i.i21.i263, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i267, label %bb.ll

bb.ll:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i262
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8 ; 4 uses
  %i.ajv = load atomic i64, ptr %i.aju acquire, align 8 ; 2 uses
  %i.ajw = icmp eq i64 %i.ajv, 4294967297
  %i.ajx = trunc i64 %i.ajv to i32                ; 2 uses
  br i1 %i.ajw, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  store i32 0, ptr %i.aju, align 8, !tbaa !41
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajt, i64 12
  store i32 0, ptr %i.ajy, align 4, !tbaa !43
  %i.ajz = load ptr, ptr %i.ajt, align 8, !tbaa !44
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.akb = load ptr, ptr %i.aka, align 8
  call void %i.akb(ptr noundef nonnull align 8 dereferenceable(16) %i.ajt) #20, !inline_history !148
  %i.akc = load ptr, ptr %i.ajt, align 8, !tbaa !44
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 24
  %i.ake = load ptr, ptr %i.akd, align 8
  call void %i.ake(ptr noundef nonnull align 8 dereferenceable(16) %i.ajt) #20, !inline_history !148
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i267

bb.ln:                                            ; preds = %bb.ll
  %i.akf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i264 = icmp eq i8 %i.akf, 0
  br i1 %.not.i.i.i.i22.i264, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.akg = add nsw i32 %i.ajx, -1
  store i32 %i.akg, ptr %i.aju, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i265

bb.lp:                                            ; preds = %bb.ln
  %i.akh = atomicrmw volatile add ptr %i.aju, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i265

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i265: ; preds = %bb.lp, %bb.lo
  %.0.i.i.i.i.i24.i266 = phi i32 [ %i.ajx, %bb.lo ], [ %i.akh, %bb.lp ]
  %i.aki = icmp eq i32 %.0.i.i.i.i.i24.i266, 1
  br i1 %i.aki, label %bb.lq, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i267, !prof !56

bb.lq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i265
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ajt) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i267

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i267: ; preds = %bb.lq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i265, %bb.lm, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i262
  %i.akj = getelementptr inbounds nuw i8, ptr %131, i64 16
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i268 = icmp eq ptr %i.akk, null
  br i1 %.not.i.i1.i.i268, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i272, label %bb.lr

bb.lr:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i267
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 8 ; 4 uses
  %i.akm = load atomic i64, ptr %i.akl acquire, align 8 ; 2 uses
  %i.akn = icmp eq i64 %i.akm, 4294967297
  %i.ako = trunc i64 %i.akm to i32                ; 2 uses
  br i1 %i.akn, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  store i32 0, ptr %i.akl, align 8, !tbaa !41
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akk, i64 12
  store i32 0, ptr %i.akp, align 4, !tbaa !43
  %i.akq = load ptr, ptr %i.akk, align 8, !tbaa !44
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 16
  %i.aks = load ptr, ptr %i.akr, align 8
  call void %i.aks(ptr noundef nonnull align 8 dereferenceable(16) %i.akk) #20, !inline_history !149
  %i.akt = load ptr, ptr %i.akk, align 8, !tbaa !44
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 24
  %i.akv = load ptr, ptr %i.aku, align 8
  call void %i.akv(ptr noundef nonnull align 8 dereferenceable(16) %i.akk) #20, !inline_history !149
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i272

bb.lt:                                            ; preds = %bb.lr
  %i.akw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i269 = icmp eq i8 %i.akw, 0
  br i1 %.not.i.i.i2.i.i269, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.akx = add nsw i32 %i.ako, -1
  store i32 %i.akx, ptr %i.akl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i270

bb.lv:                                            ; preds = %bb.lt
  %i.aky = atomicrmw volatile add ptr %i.akl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i270

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i270: ; preds = %bb.lv, %bb.lu
  %.0.i.i.i.i4.i.i271 = phi i32 [ %i.ako, %bb.lu ], [ %i.aky, %bb.lv ]
  %i.akz = icmp eq i32 %.0.i.i.i.i4.i.i271, 1
  br i1 %i.akz, label %bb.lw, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i272, !prof !56

bb.lw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i270
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.akk) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i272

_ZN5arrow7compute9InputTypeD2Ev.exit.i272:        ; preds = %bb.lw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i270, %bb.ls, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #20
  store i32 2, ptr %i.aga, align 4, !tbaa !74
  %i.ala = load <2 x ptr>, ptr %128, align 16, !tbaa !86
  store ptr null, ptr %i.ago, align 8, !tbaa !46
  store <2 x ptr> %i.ala, ptr %135, align 16, !tbaa !86
  store ptr null, ptr %128, align 16, !tbaa !98
  %i.alb = getelementptr inbounds nuw i8, ptr %135, i64 16 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %135, i64 40
  %i.ald = getelementptr inbounds nuw i8, ptr %128, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alb, i8 0, i64 24, i1 false)
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !99
  store ptr %i.ale, ptr %i.alc, align 8, !tbaa !99
  %i.alf = getelementptr inbounds nuw i8, ptr %128, i64 32 ; 2 uses
  %i.alg = load ptr, ptr %i.alf, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i273 = icmp eq ptr %i.alg, null
  br i1 %.not.i.i.not.i.i.i.i273, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i274, label %bb.lx

bb.lx:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i272
  %i.alh = getelementptr inbounds nuw i8, ptr %128, i64 16
  %i.ali = getelementptr inbounds nuw i8, ptr %135, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alb, ptr noundef nonnull align 8 dereferenceable(32) %i.alh, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.alg, ptr %i.ali, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alf, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i274

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i274: ; preds = %bb.lx, %_ZN5arrow7compute9InputTypeD2Ev.exit.i272
  %i.alj = getelementptr inbounds nuw i8, ptr %135, i64 48
  %i.alk = load i64, ptr %i.afx, align 16
  store i64 %i.alk, ptr %i.alj, align 16
  %i.all = getelementptr inbounds nuw i8, ptr %135, i64 56
  %i.alm = getelementptr inbounds nuw i8, ptr %128, i64 56 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %128, i64 64
  %i.alo = load <2 x ptr>, ptr %i.alm, align 8, !tbaa !86
  store ptr null, ptr %i.aln, align 16, !tbaa !46
  store <2 x ptr> %i.alo, ptr %i.all, align 8, !tbaa !86
  store ptr null, ptr %i.alm, align 8, !tbaa !101
  %i.alp = getelementptr inbounds nuw i8, ptr %135, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.alp, ptr noundef nonnull align 8 dereferenceable(20) %i.agc, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %134, ptr noundef nonnull align 8 dereferenceable(252) %i.afw, i32 noundef 25, ptr noundef nonnull %135)
          to label %bb.ly unwind label %bb.mf

bb.ly:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i274
  %i.alq = load ptr, ptr %134, align 8, !tbaa !102 ; 2 uses
  %.not.i.i275 = icmp eq ptr %i.alq, null
  br i1 %.not.i.i275, label %bb.mh, label %bb.lz, !prof !105

bb.lz:                                            ; preds = %bb.ly
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 1
  %i.als = load i8, ptr %i.alr, align 1, !tbaa !106, !range !115, !noundef !116
  %i.alt = trunc nuw i8 %i.als to i1
  br i1 %i.alt, label %bb.mh, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %134) #20
  br label %bb.mh

bb.mb:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit229
  %i.alu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i230

bb.mc:                                            ; preds = %.noexc3.i.i236
  %i.alv = landingpad { ptr, i32 }
          cleanup
  br label %bb.me

bb.md:                                            ; preds = %bb.kh
  %i.alw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %133) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %132) #20
  br label %bb.me

bb.me:                                            ; preds = %bb.md, %bb.mc
  %.pn.i237 = phi { ptr, i32 } [ %i.alw, %bb.md ], [ %i.alv, %bb.mc ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %130) #20
  br label %.body.i234

.body.i234:                                       ; preds = %bb.me, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i233
  %.pn.pn.i235 = phi { ptr, i32 } [ %.pn.i237, %bb.me ], [ %i.agm, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i233 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %131) #20
  br label %.loopexit.i230

.loopexit.i230:                                   ; preds = %.body.i234, %bb.mb
  %.pn.pn.pn.i231 = phi { ptr, i32 } [ %i.alu, %bb.mb ], [ %.pn.pn.i235, %.body.i234 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #20
  br label %bb.mg

bb.mf:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i274
  %i.alx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %135) #20
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %.loopexit.i230
  %.pn10.i232 = phi { ptr, i32 } [ %i.alx, %bb.mf ], [ %.pn.pn.pn.i231, %.loopexit.i230 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %128) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #20
  br label %.body276

bb.mh:                                            ; preds = %bb.ma, %bb.lz, %bb.ly
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %135) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %128) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %130)
  call void @llvm.lifetime.end.p0(ptr nonnull %132)
  call void @llvm.lifetime.end.p0(ptr nonnull %133)
  call void @llvm.lifetime.end.p0(ptr nonnull %134)
  call void @llvm.lifetime.end.p0(ptr nonnull %135)
  %i.aly = load ptr, ptr %183, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %121)
  call void @llvm.lifetime.start.p0(ptr nonnull %123)
  call void @llvm.lifetime.start.p0(ptr nonnull %124)
  call void @llvm.lifetime.start.p0(ptr nonnull %125)
  call void @llvm.lifetime.start.p0(ptr nonnull %126)
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #20
  %i.alz = getelementptr inbounds nuw i8, ptr %119, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %119, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.alz, align 16, !tbaa !59
  %i.ama = getelementptr inbounds nuw i8, ptr %119, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ama, i8 0, i64 20, i1 false)
  %i.amb = getelementptr inbounds nuw i8, ptr %119, i64 80
  store i8 1, ptr %i.amb, align 16, !tbaa !70
  %i.amc = getelementptr inbounds nuw i8, ptr %119, i64 84 ; 2 uses
  store i32 0, ptr %i.amc, align 4, !tbaa !74
  %i.amd = getelementptr inbounds nuw i8, ptr %119, i64 88
  store i32 0, ptr %i.amd, align 8, !tbaa !75
  %i.ame = getelementptr inbounds nuw i8, ptr %119, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_13LargeListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.ame, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %118)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %118, i32 noundef 41)
          to label %bb.mi unwind label %bb.od

bb.mi:                                            ; preds = %bb.mh
  store i32 2, ptr %122, align 8, !tbaa !77
  %i.amf = getelementptr inbounds nuw i8, ptr %122, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amf, i8 0, i64 16, i1 false)
  %i.amg = getelementptr inbounds nuw i8, ptr %122, i64 24
  %i.amh = getelementptr inbounds nuw i8, ptr %122, i64 32
  %i.ami = load <2 x ptr>, ptr %118, align 16, !tbaa !86
  store <2 x ptr> %i.ami, ptr %i.amg, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %118)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %121, i8 0, i64 24, i1 false)
  %i.amj = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i284 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i281 ; 4 uses

.noexc3.i.i284:                                   ; preds = %bb.mi
  store ptr %i.amj, ptr %121, align 8, !tbaa !87
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 40 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %121, i64 16 ; 2 uses
  store ptr %i.amk, ptr %i.aml, align 8, !tbaa !90
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amm, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.amj, ptr noundef nonnull align 8 dereferenceable(40) %122)
  %i.amn = getelementptr inbounds nuw i8, ptr %121, i64 8 ; 2 uses
  store ptr %i.amk, ptr %i.amn, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %123, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.mj unwind label %bb.oe

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i281: ; preds = %bb.mi
  %i.amo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i282

bb.mj:                                            ; preds = %.noexc3.i.i284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %124, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %120, ptr noundef nonnull %121, ptr noundef nonnull %123, i1 noundef zeroext false, ptr noundef nonnull %124)
          to label %bb.mk unwind label %bb.of

bb.mk:                                            ; preds = %bb.mj
  %i.amp = getelementptr inbounds nuw i8, ptr %120, i64 8
  %i.amq = getelementptr inbounds nuw i8, ptr %119, i64 8 ; 2 uses
  %i.amr = load <2 x ptr>, ptr %120, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %120, i8 0, i64 16, i1 false)
  %i.ams = load ptr, ptr %i.amq, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.amr, ptr %119, align 16, !tbaa !86
  %.not.i.i.i.i.i286 = icmp eq ptr %i.ams, null
  br i1 %.not.i.i.i.i.i286, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i290, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 8 ; 4 uses
  %i.amu = load atomic i64, ptr %i.amt acquire, align 8 ; 2 uses
  %i.amv = icmp eq i64 %i.amu, 4294967297
  %i.amw = trunc i64 %i.amu to i32                ; 2 uses
  br i1 %i.amv, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  store i32 0, ptr %i.amt, align 8, !tbaa !41
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ams, i64 12
  store i32 0, ptr %i.amx, align 4, !tbaa !43
  %i.amy = load ptr, ptr %i.ams, align 8, !tbaa !44
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 16
  %i.ana = load ptr, ptr %i.amz, align 8
  call void %i.ana(ptr noundef nonnull align 8 dereferenceable(16) %i.ams) #20, !inline_history !150
  %i.anb = load ptr, ptr %i.ams, align 8, !tbaa !44
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 24
  %i.and = load ptr, ptr %i.anc, align 8
  call void %i.and(ptr noundef nonnull align 8 dereferenceable(16) %i.ams) #20, !inline_history !150
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i290

bb.mn:                                            ; preds = %bb.ml
  %i.ane = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i287 = icmp eq i8 %i.ane, 0
  br i1 %.not.i.i.i.i.i.i287, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.anf = add nsw i32 %i.amw, -1
  store i32 %i.anf, ptr %i.amt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i288

bb.mp:                                            ; preds = %bb.mn
  %i.ang = atomicrmw volatile add ptr %i.amt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i288

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i288: ; preds = %bb.mp, %bb.mo
  %.0.i.i.i.i.i.i.i289 = phi i32 [ %i.amw, %bb.mo ], [ %i.ang, %bb.mp ]
  %i.anh = icmp eq i32 %.0.i.i.i.i.i.i.i289, 1
  br i1 %i.anh, label %bb.mq, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i290, !prof !56

bb.mq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i288
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ams) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i290

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i290: ; preds = %bb.mq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i288, %bb.mm, %bb.mk
  %i.ani = load ptr, ptr %i.amp, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i291 = icmp eq ptr %i.ani, null
  br i1 %.not.i.i.i291, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i295, label %bb.mr

bb.mr:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i290
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 8 ; 4 uses
  %i.ank = load atomic i64, ptr %i.anj acquire, align 8 ; 2 uses
  %i.anl = icmp eq i64 %i.ank, 4294967297
  %i.anm = trunc i64 %i.ank to i32                ; 2 uses
  br i1 %i.anl, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  store i32 0, ptr %i.anj, align 8, !tbaa !41
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ani, i64 12
  store i32 0, ptr %i.ann, align 4, !tbaa !43
  %i.ano = load ptr, ptr %i.ani, align 8, !tbaa !44
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 16
  %i.anq = load ptr, ptr %i.anp, align 8
  call void %i.anq(ptr noundef nonnull align 8 dereferenceable(16) %i.ani) #20, !inline_history !151
  %i.anr = load ptr, ptr %i.ani, align 8, !tbaa !44
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 24
  %i.ant = load ptr, ptr %i.ans, align 8
  call void %i.ant(ptr noundef nonnull align 8 dereferenceable(16) %i.ani) #20, !inline_history !151
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i295

bb.mt:                                            ; preds = %bb.mr
  %i.anu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i292 = icmp eq i8 %i.anu, 0
  br i1 %.not.i.i.i.i292, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.anv = add nsw i32 %i.anm, -1
  store i32 %i.anv, ptr %i.anj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i293

bb.mv:                                            ; preds = %bb.mt
  %i.anw = atomicrmw volatile add ptr %i.anj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i293

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i293: ; preds = %bb.mv, %bb.mu
  %.0.i.i.i.i.i294 = phi i32 [ %i.anm, %bb.mu ], [ %i.anw, %bb.mv ]
  %i.anx = icmp eq i32 %.0.i.i.i.i.i294, 1
  br i1 %i.anx, label %bb.mw, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i295, !prof !56

bb.mw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i293
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ani) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i295

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i295: ; preds = %bb.mw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i293, %bb.ms, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i290
  %i.any = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i296 = icmp eq ptr %i.anz, null
  br i1 %.not.i.i12.i296, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i300, label %bb.mx

bb.mx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i295
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 8 ; 4 uses
  %i.aob = load atomic i64, ptr %i.aoa acquire, align 8 ; 2 uses
  %i.aoc = icmp eq i64 %i.aob, 4294967297
  %i.aod = trunc i64 %i.aob to i32                ; 2 uses
  br i1 %i.aoc, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %bb.mx
  store i32 0, ptr %i.aoa, align 8, !tbaa !41
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anz, i64 12
  store i32 0, ptr %i.aoe, align 4, !tbaa !43
  %i.aof = load ptr, ptr %i.anz, align 8, !tbaa !44
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 16
  %i.aoh = load ptr, ptr %i.aog, align 8
  call void %i.aoh(ptr noundef nonnull align 8 dereferenceable(16) %i.anz) #20, !inline_history !152
  %i.aoi = load ptr, ptr %i.anz, align 8, !tbaa !44
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 24
  %i.aok = load ptr, ptr %i.aoj, align 8
  call void %i.aok(ptr noundef nonnull align 8 dereferenceable(16) %i.anz) #20, !inline_history !152
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i300

bb.mz:                                            ; preds = %bb.mx
  %i.aol = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i297 = icmp eq i8 %i.aol, 0
  br i1 %.not.i.i.i13.i297, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.aom = add nsw i32 %i.aod, -1
  store i32 %i.aom, ptr %i.aoa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i298

bb.nb:                                            ; preds = %bb.mz
  %i.aon = atomicrmw volatile add ptr %i.aoa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i298

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i298: ; preds = %bb.nb, %bb.na
  %.0.i.i.i.i15.i299 = phi i32 [ %i.aod, %bb.na ], [ %i.aon, %bb.nb ]
  %i.aoo = icmp eq i32 %.0.i.i.i.i15.i299, 1
  br i1 %i.aoo, label %bb.nc, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i300, !prof !56

bb.nc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i298
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.anz) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i300

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i300: ; preds = %bb.nc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i298, %bb.my, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i295
  %i.aop = getelementptr inbounds nuw i8, ptr %123, i64 40
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i301 = icmp eq ptr %i.aoq, null
  br i1 %.not.i.i16.i301, label %_ZNSt14_Function_baseD2Ev.exit.i.i302, label %bb.nd

bb.nd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i300
  %i.aor = getelementptr inbounds nuw i8, ptr %123, i64 24 ; 2 uses
  %i.aos = invoke noundef zeroext i1 %i.aoq(ptr noundef nonnull align 8 dereferenceable(32) %i.aor, ptr noundef nonnull align 8 dereferenceable(32) %i.aor, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i302 unwind label %bb.ne ; 0 uses

bb.ne:                                            ; preds = %bb.nd
  %i.aot = landingpad { ptr, i32 }
          catch ptr null
  %i.aou = extractvalue { ptr, i32 } %i.aot, 0
  call void @__clang_call_terminate(ptr %i.aou) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i302:            ; preds = %bb.nd, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i300
  %i.aov = getelementptr inbounds nuw i8, ptr %123, i64 16
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i303 = icmp eq ptr %i.aow, null
  br i1 %.not.i.i.i17.i303, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i307, label %bb.nf

bb.nf:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i302
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 8 ; 4 uses
  %i.aoy = load atomic i64, ptr %i.aox acquire, align 8 ; 2 uses
  %i.aoz = icmp eq i64 %i.aoy, 4294967297
  %i.apa = trunc i64 %i.aoy to i32                ; 2 uses
  br i1 %i.aoz, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  store i32 0, ptr %i.aox, align 8, !tbaa !41
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aow, i64 12
  store i32 0, ptr %i.apb, align 4, !tbaa !43
  %i.apc = load ptr, ptr %i.aow, align 8, !tbaa !44
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 16
  %i.ape = load ptr, ptr %i.apd, align 8
  call void %i.ape(ptr noundef nonnull align 8 dereferenceable(16) %i.aow) #20, !inline_history !153
  %i.apf = load ptr, ptr %i.aow, align 8, !tbaa !44
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 24
  %i.aph = load ptr, ptr %i.apg, align 8
  call void %i.aph(ptr noundef nonnull align 8 dereferenceable(16) %i.aow) #20, !inline_history !153
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i307

bb.nh:                                            ; preds = %bb.nf
  %i.api = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i304 = icmp eq i8 %i.api, 0
  br i1 %.not.i.i.i.i18.i304, label %bb.nj, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.apj = add nsw i32 %i.apa, -1
  store i32 %i.apj, ptr %i.aox, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i305

bb.nj:                                            ; preds = %bb.nh
  %i.apk = atomicrmw volatile add ptr %i.aox, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i305

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i305: ; preds = %bb.nj, %bb.ni
  %.0.i.i.i.i.i.i306 = phi i32 [ %i.apa, %bb.ni ], [ %i.apk, %bb.nj ]
  %i.apl = icmp eq i32 %.0.i.i.i.i.i.i306, 1
  br i1 %i.apl, label %bb.nk, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i307, !prof !56

bb.nk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i305
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aow) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i307

_ZN5arrow7compute10OutputTypeD2Ev.exit.i307:      ; preds = %bb.nk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i305, %bb.ng, %_ZNSt14_Function_baseD2Ev.exit.i.i302
  %i.apm = load ptr, ptr %121, align 8, !tbaa !87
  %i.apn = load ptr, ptr %i.amn, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.apm, ptr noundef %i.apn)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i308 unwind label %bb.nm

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i308: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i307
  %i.apo = load ptr, ptr %121, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i19.i309 = icmp eq ptr %i.apo, null
  br i1 %.not.i.i.i19.i309, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i310, label %bb.nl

bb.nl:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i308
  %i.app = load ptr, ptr %i.aml, align 8, !tbaa !90
  %i.apq = ptrtoint ptr %i.app to i64
  %i.apr = ptrtoint ptr %i.apo to i64
  %i.aps = sub i64 %i.apq, %i.apr
  call void @_ZdlPvm(ptr noundef nonnull %i.apo, i64 noundef %i.aps) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i310

bb.nm:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i307
  %i.apt = landingpad { ptr, i32 }
          catch ptr null
  %i.apu = extractvalue { ptr, i32 } %i.apt, 0
  call void @__clang_call_terminate(ptr %i.apu) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i310: ; preds = %bb.nl, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i308
  %i.apv = load ptr, ptr %i.amh, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i311 = icmp eq ptr %i.apv, null
  br i1 %.not.i.i.i21.i311, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i315, label %bb.nn

bb.nn:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i310
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 8 ; 4 uses
  %i.apx = load atomic i64, ptr %i.apw acquire, align 8 ; 2 uses
  %i.apy = icmp eq i64 %i.apx, 4294967297
  %i.apz = trunc i64 %i.apx to i32                ; 2 uses
  br i1 %i.apy, label %bb.no, label %bb.np

bb.no:                                            ; preds = %bb.nn
  store i32 0, ptr %i.apw, align 8, !tbaa !41
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apv, i64 12
  store i32 0, ptr %i.aqa, align 4, !tbaa !43
  %i.aqb = load ptr, ptr %i.apv, align 8, !tbaa !44
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 16
  %i.aqd = load ptr, ptr %i.aqc, align 8
  call void %i.aqd(ptr noundef nonnull align 8 dereferenceable(16) %i.apv) #20, !inline_history !154
  %i.aqe = load ptr, ptr %i.apv, align 8, !tbaa !44
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 24
  %i.aqg = load ptr, ptr %i.aqf, align 8
  call void %i.aqg(ptr noundef nonnull align 8 dereferenceable(16) %i.apv) #20, !inline_history !154
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i315

bb.np:                                            ; preds = %bb.nn
  %i.aqh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i312 = icmp eq i8 %i.aqh, 0
  br i1 %.not.i.i.i.i22.i312, label %bb.nr, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.aqi = add nsw i32 %i.apz, -1
  store i32 %i.aqi, ptr %i.apw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i313

bb.nr:                                            ; preds = %bb.np
  %i.aqj = atomicrmw volatile add ptr %i.apw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i313

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i313: ; preds = %bb.nr, %bb.nq
  %.0.i.i.i.i.i24.i314 = phi i32 [ %i.apz, %bb.nq ], [ %i.aqj, %bb.nr ]
  %i.aqk = icmp eq i32 %.0.i.i.i.i.i24.i314, 1
  br i1 %i.aqk, label %bb.ns, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i315, !prof !56

bb.ns:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i313
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.apv) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i315

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i315: ; preds = %bb.ns, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i313, %bb.no, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i310
  %i.aql = getelementptr inbounds nuw i8, ptr %122, i64 16
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i316 = icmp eq ptr %i.aqm, null
  br i1 %.not.i.i1.i.i316, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i320, label %bb.nt

bb.nt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i315
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 8 ; 4 uses
  %i.aqo = load atomic i64, ptr %i.aqn acquire, align 8 ; 2 uses
  %i.aqp = icmp eq i64 %i.aqo, 4294967297
  %i.aqq = trunc i64 %i.aqo to i32                ; 2 uses
  br i1 %i.aqp, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  store i32 0, ptr %i.aqn, align 8, !tbaa !41
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqm, i64 12
  store i32 0, ptr %i.aqr, align 4, !tbaa !43
  %i.aqs = load ptr, ptr %i.aqm, align 8, !tbaa !44
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16
  %i.aqu = load ptr, ptr %i.aqt, align 8
  call void %i.aqu(ptr noundef nonnull align 8 dereferenceable(16) %i.aqm) #20, !inline_history !155
  %i.aqv = load ptr, ptr %i.aqm, align 8, !tbaa !44
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 24
  %i.aqx = load ptr, ptr %i.aqw, align 8
  call void %i.aqx(ptr noundef nonnull align 8 dereferenceable(16) %i.aqm) #20, !inline_history !155
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i320

bb.nv:                                            ; preds = %bb.nt
  %i.aqy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i317 = icmp eq i8 %i.aqy, 0
  br i1 %.not.i.i.i2.i.i317, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.aqz = add nsw i32 %i.aqq, -1
  store i32 %i.aqz, ptr %i.aqn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i318

bb.nx:                                            ; preds = %bb.nv
  %i.ara = atomicrmw volatile add ptr %i.aqn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i318

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i318: ; preds = %bb.nx, %bb.nw
  %.0.i.i.i.i4.i.i319 = phi i32 [ %i.aqq, %bb.nw ], [ %i.ara, %bb.nx ]
  %i.arb = icmp eq i32 %.0.i.i.i.i4.i.i319, 1
  br i1 %i.arb, label %bb.ny, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i320, !prof !56

bb.ny:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i318
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aqm) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i320

_ZN5arrow7compute9InputTypeD2Ev.exit.i320:        ; preds = %bb.ny, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i318, %bb.nu, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i315
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #20
  store i32 2, ptr %i.amc, align 4, !tbaa !74
  %i.arc = load <2 x ptr>, ptr %119, align 16, !tbaa !86
  store ptr null, ptr %i.amq, align 8, !tbaa !46
  store <2 x ptr> %i.arc, ptr %126, align 16, !tbaa !86
  store ptr null, ptr %119, align 16, !tbaa !98
  %i.ard = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %126, i64 40
  %i.arf = getelementptr inbounds nuw i8, ptr %119, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ard, i8 0, i64 24, i1 false)
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !99
  store ptr %i.arg, ptr %i.are, align 8, !tbaa !99
  %i.arh = getelementptr inbounds nuw i8, ptr %119, i64 32 ; 2 uses
  %i.ari = load ptr, ptr %i.arh, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i321 = icmp eq ptr %i.ari, null
  br i1 %.not.i.i.not.i.i.i.i321, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i322, label %bb.nz

bb.nz:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i320
  %i.arj = getelementptr inbounds nuw i8, ptr %119, i64 16
  %i.ark = getelementptr inbounds nuw i8, ptr %126, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ard, ptr noundef nonnull align 8 dereferenceable(32) %i.arj, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.ari, ptr %i.ark, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.arh, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i322

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i322: ; preds = %bb.nz, %_ZN5arrow7compute9InputTypeD2Ev.exit.i320
  %i.arl = getelementptr inbounds nuw i8, ptr %126, i64 48
  %i.arm = load i64, ptr %i.alz, align 16
  store i64 %i.arm, ptr %i.arl, align 16
  %i.arn = getelementptr inbounds nuw i8, ptr %126, i64 56
  %i.aro = getelementptr inbounds nuw i8, ptr %119, i64 56 ; 2 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %119, i64 64
  %i.arq = load <2 x ptr>, ptr %i.aro, align 8, !tbaa !86
  store ptr null, ptr %i.arp, align 16, !tbaa !46
  store <2 x ptr> %i.arq, ptr %i.arn, align 8, !tbaa !86
  store ptr null, ptr %i.aro, align 8, !tbaa !101
  %i.arr = getelementptr inbounds nuw i8, ptr %126, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.arr, ptr noundef nonnull align 8 dereferenceable(20) %i.ame, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %125, ptr noundef nonnull align 8 dereferenceable(252) %i.aly, i32 noundef 41, ptr noundef nonnull %126)
          to label %bb.oa unwind label %bb.oh

bb.oa:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i322
  %i.ars = load ptr, ptr %125, align 8, !tbaa !102 ; 2 uses
  %.not.i.i323 = icmp eq ptr %i.ars, null
  br i1 %.not.i.i323, label %bb.oj, label %bb.ob, !prof !105

bb.ob:                                            ; preds = %bb.oa
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 1
  %i.aru = load i8, ptr %i.art, align 1, !tbaa !106, !range !115, !noundef !116
  %i.arv = trunc nuw i8 %i.aru to i1
  br i1 %i.arv, label %bb.oj, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %125) #20
  br label %bb.oj

bb.od:                                            ; preds = %bb.mh
  %i.arw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i278

bb.oe:                                            ; preds = %.noexc3.i.i284
  %i.arx = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

bb.of:                                            ; preds = %bb.mj
  %i.ary = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %124) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %123) #20
  br label %bb.og

bb.og:                                            ; preds = %bb.of, %bb.oe
  %.pn.i285 = phi { ptr, i32 } [ %i.ary, %bb.of ], [ %i.arx, %bb.oe ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %121) #20
  br label %.body.i282

.body.i282:                                       ; preds = %bb.og, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i281
  %.pn.pn.i283 = phi { ptr, i32 } [ %.pn.i285, %bb.og ], [ %i.amo, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i281 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %122) #20
  br label %.loopexit.i278

.loopexit.i278:                                   ; preds = %.body.i282, %bb.od
  %.pn.pn.pn.i279 = phi { ptr, i32 } [ %i.arw, %bb.od ], [ %.pn.pn.i283, %.body.i282 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #20
  br label %bb.oi

bb.oh:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i322
  %i.arz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %126) #20
  br label %bb.oi

bb.oi:                                            ; preds = %bb.oh, %.loopexit.i278
  %.pn10.i280 = phi { ptr, i32 } [ %i.arz, %bb.oh ], [ %.pn.pn.pn.i279, %.loopexit.i278 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %119) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #20
  br label %.body276

bb.oj:                                            ; preds = %bb.oc, %bb.ob, %bb.oa
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %126) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %119) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %121)
  call void @llvm.lifetime.end.p0(ptr nonnull %123)
  call void @llvm.lifetime.end.p0(ptr nonnull %124)
  call void @llvm.lifetime.end.p0(ptr nonnull %125)
  call void @llvm.lifetime.end.p0(ptr nonnull %126)
  %i.asa = load ptr, ptr %183, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %112)
  call void @llvm.lifetime.start.p0(ptr nonnull %114)
  call void @llvm.lifetime.start.p0(ptr nonnull %115)
  call void @llvm.lifetime.start.p0(ptr nonnull %116)
  call void @llvm.lifetime.start.p0(ptr nonnull %117)
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #20
  %i.asb = getelementptr inbounds nuw i8, ptr %110, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %110, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.asb, align 16, !tbaa !59
  %i.asc = getelementptr inbounds nuw i8, ptr %110, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.asc, i8 0, i64 20, i1 false)
  %i.asd = getelementptr inbounds nuw i8, ptr %110, i64 80
  store i8 1, ptr %i.asd, align 16, !tbaa !70
  %i.ase = getelementptr inbounds nuw i8, ptr %110, i64 84 ; 2 uses
  store i32 0, ptr %i.ase, align 4, !tbaa !74
  %i.asf = getelementptr inbounds nuw i8, ptr %110, i64 88
  store i32 0, ptr %i.asf, align 8, !tbaa !75
  %i.asg = getelementptr inbounds nuw i8, ptr %110, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_13LargeListTypeES4_E4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.asg, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %109)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %109, i32 noundef 36)
          to label %bb.ok unwind label %bb.qf

bb.ok:                                            ; preds = %bb.oj
  store i32 2, ptr %113, align 8, !tbaa !77
  %i.ash = getelementptr inbounds nuw i8, ptr %113, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ash, i8 0, i64 16, i1 false)
  %i.asi = getelementptr inbounds nuw i8, ptr %113, i64 24
  %i.asj = getelementptr inbounds nuw i8, ptr %113, i64 32
  %i.ask = load <2 x ptr>, ptr %109, align 16, !tbaa !86
  store <2 x ptr> %i.ask, ptr %i.asi, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %109)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %112, i8 0, i64 24, i1 false)
  %i.asl = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i332 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i329 ; 4 uses

.noexc3.i.i332:                                   ; preds = %bb.ok
  store ptr %i.asl, ptr %112, align 8, !tbaa !87
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 40 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %112, i64 16 ; 2 uses
  store ptr %i.asm, ptr %i.asn, align 8, !tbaa !90
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asl, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aso, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.asl, ptr noundef nonnull align 8 dereferenceable(40) %113)
  %i.asp = getelementptr inbounds nuw i8, ptr %112, i64 8 ; 2 uses
  store ptr %i.asm, ptr %i.asp, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %114, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.ol unwind label %bb.qg

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i329: ; preds = %bb.ok
  %i.asq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i330

bb.ol:                                            ; preds = %.noexc3.i.i332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %115, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %111, ptr noundef nonnull %112, ptr noundef nonnull %114, i1 noundef zeroext false, ptr noundef nonnull %115)
          to label %bb.om unwind label %bb.qh

bb.om:                                            ; preds = %bb.ol
  %i.asr = getelementptr inbounds nuw i8, ptr %111, i64 8
  %i.ass = getelementptr inbounds nuw i8, ptr %110, i64 8 ; 2 uses
  %i.ast = load <2 x ptr>, ptr %111, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %111, i8 0, i64 16, i1 false)
  %i.asu = load ptr, ptr %i.ass, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.ast, ptr %110, align 16, !tbaa !86
  %.not.i.i.i.i.i334 = icmp eq ptr %i.asu, null
  br i1 %.not.i.i.i.i.i334, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i338, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 8 ; 4 uses
  %i.asw = load atomic i64, ptr %i.asv acquire, align 8 ; 2 uses
  %i.asx = icmp eq i64 %i.asw, 4294967297
  %i.asy = trunc i64 %i.asw to i32                ; 2 uses
  br i1 %i.asx, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %bb.on
  store i32 0, ptr %i.asv, align 8, !tbaa !41
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asu, i64 12
  store i32 0, ptr %i.asz, align 4, !tbaa !43
  %i.ata = load ptr, ptr %i.asu, align 8, !tbaa !44
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 16
  %i.atc = load ptr, ptr %i.atb, align 8
  call void %i.atc(ptr noundef nonnull align 8 dereferenceable(16) %i.asu) #20, !inline_history !156
  %i.atd = load ptr, ptr %i.asu, align 8, !tbaa !44
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 24
  %i.atf = load ptr, ptr %i.ate, align 8
  call void %i.atf(ptr noundef nonnull align 8 dereferenceable(16) %i.asu) #20, !inline_history !156
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i338

bb.op:                                            ; preds = %bb.on
  %i.atg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i335 = icmp eq i8 %i.atg, 0
  br i1 %.not.i.i.i.i.i.i335, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.ath = add nsw i32 %i.asy, -1
  store i32 %i.ath, ptr %i.asv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i336

bb.or:                                            ; preds = %bb.op
  %i.ati = atomicrmw volatile add ptr %i.asv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i336

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i336: ; preds = %bb.or, %bb.oq
  %.0.i.i.i.i.i.i.i337 = phi i32 [ %i.asy, %bb.oq ], [ %i.ati, %bb.or ]
  %i.atj = icmp eq i32 %.0.i.i.i.i.i.i.i337, 1
  br i1 %i.atj, label %bb.os, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i338, !prof !56

bb.os:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i336
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.asu) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i338

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i338: ; preds = %bb.os, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i336, %bb.oo, %bb.om
  %i.atk = load ptr, ptr %i.asr, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i339 = icmp eq ptr %i.atk, null
  br i1 %.not.i.i.i339, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i343, label %bb.ot

bb.ot:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i338
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 8 ; 4 uses
  %i.atm = load atomic i64, ptr %i.atl acquire, align 8 ; 2 uses
  %i.atn = icmp eq i64 %i.atm, 4294967297
  %i.ato = trunc i64 %i.atm to i32                ; 2 uses
  br i1 %i.atn, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  store i32 0, ptr %i.atl, align 8, !tbaa !41
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atk, i64 12
  store i32 0, ptr %i.atp, align 4, !tbaa !43
  %i.atq = load ptr, ptr %i.atk, align 8, !tbaa !44
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 16
  %i.ats = load ptr, ptr %i.atr, align 8
  call void %i.ats(ptr noundef nonnull align 8 dereferenceable(16) %i.atk) #20, !inline_history !157
  %i.att = load ptr, ptr %i.atk, align 8, !tbaa !44
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 24
  %i.atv = load ptr, ptr %i.atu, align 8
  call void %i.atv(ptr noundef nonnull align 8 dereferenceable(16) %i.atk) #20, !inline_history !157
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i343

bb.ov:                                            ; preds = %bb.ot
  %i.atw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i340 = icmp eq i8 %i.atw, 0
  br i1 %.not.i.i.i.i340, label %bb.ox, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.atx = add nsw i32 %i.ato, -1
  store i32 %i.atx, ptr %i.atl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i341

bb.ox:                                            ; preds = %bb.ov
  %i.aty = atomicrmw volatile add ptr %i.atl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i341

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i341: ; preds = %bb.ox, %bb.ow
  %.0.i.i.i.i.i342 = phi i32 [ %i.ato, %bb.ow ], [ %i.aty, %bb.ox ]
  %i.atz = icmp eq i32 %.0.i.i.i.i.i342, 1
  br i1 %i.atz, label %bb.oy, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i343, !prof !56

bb.oy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i341
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.atk) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i343

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i343: ; preds = %bb.oy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i341, %bb.ou, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i338
  %i.aua = getelementptr inbounds nuw i8, ptr %115, i64 8
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i344 = icmp eq ptr %i.aub, null
  br i1 %.not.i.i12.i344, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i348, label %bb.oz

bb.oz:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i343
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 8 ; 4 uses
  %i.aud = load atomic i64, ptr %i.auc acquire, align 8 ; 2 uses
  %i.aue = icmp eq i64 %i.aud, 4294967297
  %i.auf = trunc i64 %i.aud to i32                ; 2 uses
  br i1 %i.aue, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  store i32 0, ptr %i.auc, align 8, !tbaa !41
  %i.aug = getelementptr inbounds nuw i8, ptr %i.aub, i64 12
  store i32 0, ptr %i.aug, align 4, !tbaa !43
  %i.auh = load ptr, ptr %i.aub, align 8, !tbaa !44
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 16
  %i.auj = load ptr, ptr %i.aui, align 8
  call void %i.auj(ptr noundef nonnull align 8 dereferenceable(16) %i.aub) #20, !inline_history !158
  %i.auk = load ptr, ptr %i.aub, align 8, !tbaa !44
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 24
  %i.aum = load ptr, ptr %i.aul, align 8
  call void %i.aum(ptr noundef nonnull align 8 dereferenceable(16) %i.aub) #20, !inline_history !158
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i348

bb.pb:                                            ; preds = %bb.oz
  %i.aun = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i345 = icmp eq i8 %i.aun, 0
  br i1 %.not.i.i.i13.i345, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.auo = add nsw i32 %i.auf, -1
  store i32 %i.auo, ptr %i.auc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i346

bb.pd:                                            ; preds = %bb.pb
  %i.aup = atomicrmw volatile add ptr %i.auc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i346

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i346: ; preds = %bb.pd, %bb.pc
  %.0.i.i.i.i15.i347 = phi i32 [ %i.auf, %bb.pc ], [ %i.aup, %bb.pd ]
  %i.auq = icmp eq i32 %.0.i.i.i.i15.i347, 1
  br i1 %i.auq, label %bb.pe, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i348, !prof !56

bb.pe:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i346
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aub) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i348

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i348: ; preds = %bb.pe, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i346, %bb.pa, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i343
  %i.aur = getelementptr inbounds nuw i8, ptr %114, i64 40
  %i.aus = load ptr, ptr %i.aur, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i349 = icmp eq ptr %i.aus, null
  br i1 %.not.i.i16.i349, label %_ZNSt14_Function_baseD2Ev.exit.i.i350, label %bb.pf

bb.pf:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i348
  %i.aut = getelementptr inbounds nuw i8, ptr %114, i64 24 ; 2 uses
  %i.auu = invoke noundef zeroext i1 %i.aus(ptr noundef nonnull align 8 dereferenceable(32) %i.aut, ptr noundef nonnull align 8 dereferenceable(32) %i.aut, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i350 unwind label %bb.pg ; 0 uses

bb.pg:                                            ; preds = %bb.pf
  %i.auv = landingpad { ptr, i32 }
          catch ptr null
  %i.auw = extractvalue { ptr, i32 } %i.auv, 0
  call void @__clang_call_terminate(ptr %i.auw) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i350:            ; preds = %bb.pf, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i348
  %i.aux = getelementptr inbounds nuw i8, ptr %114, i64 16
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i351 = icmp eq ptr %i.auy, null
  br i1 %.not.i.i.i17.i351, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i355, label %bb.ph

bb.ph:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i350
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 8 ; 4 uses
  %i.ava = load atomic i64, ptr %i.auz acquire, align 8 ; 2 uses
  %i.avb = icmp eq i64 %i.ava, 4294967297
  %i.avc = trunc i64 %i.ava to i32                ; 2 uses
  br i1 %i.avb, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  store i32 0, ptr %i.auz, align 8, !tbaa !41
  %i.avd = getelementptr inbounds nuw i8, ptr %i.auy, i64 12
  store i32 0, ptr %i.avd, align 4, !tbaa !43
  %i.ave = load ptr, ptr %i.auy, align 8, !tbaa !44
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 16
  %i.avg = load ptr, ptr %i.avf, align 8
  call void %i.avg(ptr noundef nonnull align 8 dereferenceable(16) %i.auy) #20, !inline_history !159
  %i.avh = load ptr, ptr %i.auy, align 8, !tbaa !44
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 24
  %i.avj = load ptr, ptr %i.avi, align 8
  call void %i.avj(ptr noundef nonnull align 8 dereferenceable(16) %i.auy) #20, !inline_history !159
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i355

bb.pj:                                            ; preds = %bb.ph
  %i.avk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i352 = icmp eq i8 %i.avk, 0
  br i1 %.not.i.i.i.i18.i352, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.avl = add nsw i32 %i.avc, -1
  store i32 %i.avl, ptr %i.auz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i353

bb.pl:                                            ; preds = %bb.pj
  %i.avm = atomicrmw volatile add ptr %i.auz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i353

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i353: ; preds = %bb.pl, %bb.pk
  %.0.i.i.i.i.i.i354 = phi i32 [ %i.avc, %bb.pk ], [ %i.avm, %bb.pl ]
  %i.avn = icmp eq i32 %.0.i.i.i.i.i.i354, 1
  br i1 %i.avn, label %bb.pm, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i355, !prof !56

bb.pm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i353
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.auy) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i355

_ZN5arrow7compute10OutputTypeD2Ev.exit.i355:      ; preds = %bb.pm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i353, %bb.pi, %_ZNSt14_Function_baseD2Ev.exit.i.i350
  %i.avo = load ptr, ptr %112, align 8, !tbaa !87
  %i.avp = load ptr, ptr %i.asp, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.avo, ptr noundef %i.avp)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i356 unwind label %bb.po

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i356: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i355
  %i.avq = load ptr, ptr %112, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i19.i357 = icmp eq ptr %i.avq, null
  br i1 %.not.i.i.i19.i357, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i358, label %bb.pn

bb.pn:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i356
  %i.avr = load ptr, ptr %i.asn, align 8, !tbaa !90
  %i.avs = ptrtoint ptr %i.avr to i64
  %i.avt = ptrtoint ptr %i.avq to i64
  %i.avu = sub i64 %i.avs, %i.avt
  call void @_ZdlPvm(ptr noundef nonnull %i.avq, i64 noundef %i.avu) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i358

bb.po:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i355
  %i.avv = landingpad { ptr, i32 }
          catch ptr null
  %i.avw = extractvalue { ptr, i32 } %i.avv, 0
  call void @__clang_call_terminate(ptr %i.avw) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i358: ; preds = %bb.pn, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i356
  %i.avx = load ptr, ptr %i.asj, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i359 = icmp eq ptr %i.avx, null
  br i1 %.not.i.i.i21.i359, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i363, label %bb.pp

bb.pp:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i358
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 8 ; 4 uses
  %i.avz = load atomic i64, ptr %i.avy acquire, align 8 ; 2 uses
  %i.awa = icmp eq i64 %i.avz, 4294967297
  %i.awb = trunc i64 %i.avz to i32                ; 2 uses
  br i1 %i.awa, label %bb.pq, label %bb.pr

bb.pq:                                            ; preds = %bb.pp
  store i32 0, ptr %i.avy, align 8, !tbaa !41
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avx, i64 12
  store i32 0, ptr %i.awc, align 4, !tbaa !43
  %i.awd = load ptr, ptr %i.avx, align 8, !tbaa !44
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 16
  %i.awf = load ptr, ptr %i.awe, align 8
  call void %i.awf(ptr noundef nonnull align 8 dereferenceable(16) %i.avx) #20, !inline_history !160
  %i.awg = load ptr, ptr %i.avx, align 8, !tbaa !44
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 24
  %i.awi = load ptr, ptr %i.awh, align 8
  call void %i.awi(ptr noundef nonnull align 8 dereferenceable(16) %i.avx) #20, !inline_history !160
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i363

bb.pr:                                            ; preds = %bb.pp
  %i.awj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i360 = icmp eq i8 %i.awj, 0
  br i1 %.not.i.i.i.i22.i360, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.awk = add nsw i32 %i.awb, -1
  store i32 %i.awk, ptr %i.avy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i361

bb.pt:                                            ; preds = %bb.pr
  %i.awl = atomicrmw volatile add ptr %i.avy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i361

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i361: ; preds = %bb.pt, %bb.ps
  %.0.i.i.i.i.i24.i362 = phi i32 [ %i.awb, %bb.ps ], [ %i.awl, %bb.pt ]
  %i.awm = icmp eq i32 %.0.i.i.i.i.i24.i362, 1
  br i1 %i.awm, label %bb.pu, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i363, !prof !56

bb.pu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i361
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avx) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i363

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i363: ; preds = %bb.pu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i361, %bb.pq, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i358
  %i.awn = getelementptr inbounds nuw i8, ptr %113, i64 16
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i364 = icmp eq ptr %i.awo, null
  br i1 %.not.i.i1.i.i364, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i368, label %bb.pv

bb.pv:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i363
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 8 ; 4 uses
  %i.awq = load atomic i64, ptr %i.awp acquire, align 8 ; 2 uses
  %i.awr = icmp eq i64 %i.awq, 4294967297
  %i.aws = trunc i64 %i.awq to i32                ; 2 uses
  br i1 %i.awr, label %bb.pw, label %bb.px

bb.pw:                                            ; preds = %bb.pv
  store i32 0, ptr %i.awp, align 8, !tbaa !41
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awo, i64 12
  store i32 0, ptr %i.awt, align 4, !tbaa !43
  %i.awu = load ptr, ptr %i.awo, align 8, !tbaa !44
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 16
  %i.aww = load ptr, ptr %i.awv, align 8
  call void %i.aww(ptr noundef nonnull align 8 dereferenceable(16) %i.awo) #20, !inline_history !161
  %i.awx = load ptr, ptr %i.awo, align 8, !tbaa !44
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 24
  %i.awz = load ptr, ptr %i.awy, align 8
  call void %i.awz(ptr noundef nonnull align 8 dereferenceable(16) %i.awo) #20, !inline_history !161
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i368

bb.px:                                            ; preds = %bb.pv
  %i.axa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i365 = icmp eq i8 %i.axa, 0
  br i1 %.not.i.i.i2.i.i365, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.axb = add nsw i32 %i.aws, -1
  store i32 %i.axb, ptr %i.awp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i366

bb.pz:                                            ; preds = %bb.px
  %i.axc = atomicrmw volatile add ptr %i.awp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i366

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i366: ; preds = %bb.pz, %bb.py
  %.0.i.i.i.i4.i.i367 = phi i32 [ %i.aws, %bb.py ], [ %i.axc, %bb.pz ]
  %i.axd = icmp eq i32 %.0.i.i.i.i4.i.i367, 1
  br i1 %i.axd, label %bb.qa, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i368, !prof !56

bb.qa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i366
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awo) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i368

_ZN5arrow7compute9InputTypeD2Ev.exit.i368:        ; preds = %bb.qa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i366, %bb.pw, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i363
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #20
  store i32 2, ptr %i.ase, align 4, !tbaa !74
  %i.axe = load <2 x ptr>, ptr %110, align 16, !tbaa !86
  store ptr null, ptr %i.ass, align 8, !tbaa !46
  store <2 x ptr> %i.axe, ptr %117, align 16, !tbaa !86
  store ptr null, ptr %110, align 16, !tbaa !98
  %i.axf = getelementptr inbounds nuw i8, ptr %117, i64 16 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %117, i64 40
  %i.axh = getelementptr inbounds nuw i8, ptr %110, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.axf, i8 0, i64 24, i1 false)
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !99
  store ptr %i.axi, ptr %i.axg, align 8, !tbaa !99
  %i.axj = getelementptr inbounds nuw i8, ptr %110, i64 32 ; 2 uses
  %i.axk = load ptr, ptr %i.axj, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i369 = icmp eq ptr %i.axk, null
  br i1 %.not.i.i.not.i.i.i.i369, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i370, label %bb.qb

bb.qb:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i368
  %i.axl = getelementptr inbounds nuw i8, ptr %110, i64 16
  %i.axm = getelementptr inbounds nuw i8, ptr %117, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.axf, ptr noundef nonnull align 8 dereferenceable(32) %i.axl, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.axk, ptr %i.axm, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.axj, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i370

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i370: ; preds = %bb.qb, %_ZN5arrow7compute9InputTypeD2Ev.exit.i368
  %i.axn = getelementptr inbounds nuw i8, ptr %117, i64 48
  %i.axo = load i64, ptr %i.asb, align 16
  store i64 %i.axo, ptr %i.axn, align 16
  %i.axp = getelementptr inbounds nuw i8, ptr %117, i64 56
  %i.axq = getelementptr inbounds nuw i8, ptr %110, i64 56 ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %110, i64 64
  %i.axs = load <2 x ptr>, ptr %i.axq, align 8, !tbaa !86
  store ptr null, ptr %i.axr, align 16, !tbaa !46
  store <2 x ptr> %i.axs, ptr %i.axp, align 8, !tbaa !86
  store ptr null, ptr %i.axq, align 8, !tbaa !101
  %i.axt = getelementptr inbounds nuw i8, ptr %117, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.axt, ptr noundef nonnull align 8 dereferenceable(20) %i.asg, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %116, ptr noundef nonnull align 8 dereferenceable(252) %i.asa, i32 noundef 36, ptr noundef nonnull %117)
          to label %bb.qc unwind label %bb.qj

bb.qc:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i370
  %i.axu = load ptr, ptr %116, align 8, !tbaa !102 ; 2 uses
  %.not.i.i371 = icmp eq ptr %i.axu, null
  br i1 %.not.i.i371, label %bb.ql, label %bb.qd, !prof !105

bb.qd:                                            ; preds = %bb.qc
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 1
  %i.axw = load i8, ptr %i.axv, align 1, !tbaa !106, !range !115, !noundef !116
  %i.axx = trunc nuw i8 %i.axw to i1
  br i1 %i.axx, label %bb.ql, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %116) #20
  br label %bb.ql

bb.qf:                                            ; preds = %bb.oj
  %i.axy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i326

bb.qg:                                            ; preds = %.noexc3.i.i332
  %i.axz = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qh:                                            ; preds = %bb.ol
  %i.aya = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %115) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %114) #20
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.qg
  %.pn.i333 = phi { ptr, i32 } [ %i.aya, %bb.qh ], [ %i.axz, %bb.qg ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %112) #20
  br label %.body.i330

.body.i330:                                       ; preds = %bb.qi, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i329
  %.pn.pn.i331 = phi { ptr, i32 } [ %.pn.i333, %bb.qi ], [ %i.asq, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i329 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %113) #20
  br label %.loopexit.i326

.loopexit.i326:                                   ; preds = %.body.i330, %bb.qf
  %.pn.pn.pn.i327 = phi { ptr, i32 } [ %i.axy, %bb.qf ], [ %.pn.pn.i331, %.body.i330 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #20
  br label %bb.qk

bb.qj:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i370
  %i.ayb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %117) #20
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qj, %.loopexit.i326
  %.pn10.i328 = phi { ptr, i32 } [ %i.ayb, %bb.qj ], [ %.pn.pn.pn.i327, %.loopexit.i326 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %110) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #20
  br label %.body276

bb.ql:                                            ; preds = %bb.qe, %bb.qd, %bb.qc
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %117) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %110) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %112)
  call void @llvm.lifetime.end.p0(ptr nonnull %114)
  call void @llvm.lifetime.end.p0(ptr nonnull %115)
  call void @llvm.lifetime.end.p0(ptr nonnull %116)
  call void @llvm.lifetime.end.p0(ptr nonnull %117)
  %i.ayc = load ptr, ptr %183, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %103)
  call void @llvm.lifetime.start.p0(ptr nonnull %105)
  call void @llvm.lifetime.start.p0(ptr nonnull %106)
  call void @llvm.lifetime.start.p0(ptr nonnull %107)
  call void @llvm.lifetime.start.p0(ptr nonnull %108)
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #20
  %i.ayd = getelementptr inbounds nuw i8, ptr %101, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %101, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.ayd, align 16, !tbaa !59
  %i.aye = getelementptr inbounds nuw i8, ptr %101, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aye, i8 0, i64 20, i1 false)
  %i.ayf = getelementptr inbounds nuw i8, ptr %101, i64 80
  store i8 1, ptr %i.ayf, align 16, !tbaa !70
  %i.ayg = getelementptr inbounds nuw i8, ptr %101, i64 84 ; 2 uses
  store i32 0, ptr %i.ayg, align 4, !tbaa !74
  %i.ayh = getelementptr inbounds nuw i8, ptr %101, i64 88
  store i32 0, ptr %i.ayh, align 8, !tbaa !75
  %i.ayi = getelementptr inbounds nuw i8, ptr %101, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_17LargeListViewTypeENS_13LargeListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.ayi, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %100)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %100, i32 noundef 42)
          to label %bb.qm unwind label %bb.sh

bb.qm:                                            ; preds = %bb.ql
  store i32 2, ptr %104, align 8, !tbaa !77
  %i.ayj = getelementptr inbounds nuw i8, ptr %104, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ayj, i8 0, i64 16, i1 false)
  %i.ayk = getelementptr inbounds nuw i8, ptr %104, i64 24
  %i.ayl = getelementptr inbounds nuw i8, ptr %104, i64 32
  %i.aym = load <2 x ptr>, ptr %100, align 16, !tbaa !86
  store <2 x ptr> %i.aym, ptr %i.ayk, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %100)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %103, i8 0, i64 24, i1 false)
  %i.ayn = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i380 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i377 ; 4 uses

.noexc3.i.i380:                                   ; preds = %bb.qm
  store ptr %i.ayn, ptr %103, align 8, !tbaa !87
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 40 ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %103, i64 16 ; 2 uses
  store ptr %i.ayo, ptr %i.ayp, align 8, !tbaa !90
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ayq, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ayn, ptr noundef nonnull align 8 dereferenceable(40) %104)
  %i.ayr = getelementptr inbounds nuw i8, ptr %103, i64 8 ; 2 uses
  store ptr %i.ayo, ptr %i.ayr, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %105, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.qn unwind label %bb.si

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i377: ; preds = %bb.qm
  %i.ays = landingpad { ptr, i32 }
          cleanup
  br label %.body.i378

bb.qn:                                            ; preds = %.noexc3.i.i380
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %106, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %102, ptr noundef nonnull %103, ptr noundef nonnull %105, i1 noundef zeroext false, ptr noundef nonnull %106)
          to label %bb.qo unwind label %bb.sj

bb.qo:                                            ; preds = %bb.qn
  %i.ayt = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.ayu = getelementptr inbounds nuw i8, ptr %101, i64 8 ; 2 uses
  %i.ayv = load <2 x ptr>, ptr %102, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %102, i8 0, i64 16, i1 false)
  %i.ayw = load ptr, ptr %i.ayu, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.ayv, ptr %101, align 16, !tbaa !86
  %.not.i.i.i.i.i382 = icmp eq ptr %i.ayw, null
  br i1 %.not.i.i.i.i.i382, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i386, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 8 ; 4 uses
  %i.ayy = load atomic i64, ptr %i.ayx acquire, align 8 ; 2 uses
  %i.ayz = icmp eq i64 %i.ayy, 4294967297
  %i.aza = trunc i64 %i.ayy to i32                ; 2 uses
  br i1 %i.ayz, label %bb.qq, label %bb.qr

bb.qq:                                            ; preds = %bb.qp
  store i32 0, ptr %i.ayx, align 8, !tbaa !41
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayw, i64 12
  store i32 0, ptr %i.azb, align 4, !tbaa !43
  %i.azc = load ptr, ptr %i.ayw, align 8, !tbaa !44
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 16
  %i.aze = load ptr, ptr %i.azd, align 8
  call void %i.aze(ptr noundef nonnull align 8 dereferenceable(16) %i.ayw) #20, !inline_history !162
  %i.azf = load ptr, ptr %i.ayw, align 8, !tbaa !44
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 24
  %i.azh = load ptr, ptr %i.azg, align 8
  call void %i.azh(ptr noundef nonnull align 8 dereferenceable(16) %i.ayw) #20, !inline_history !162
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i386

bb.qr:                                            ; preds = %bb.qp
  %i.azi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i383 = icmp eq i8 %i.azi, 0
  br i1 %.not.i.i.i.i.i.i383, label %bb.qt, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.azj = add nsw i32 %i.aza, -1
  store i32 %i.azj, ptr %i.ayx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i384

bb.qt:                                            ; preds = %bb.qr
  %i.azk = atomicrmw volatile add ptr %i.ayx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i384

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i384: ; preds = %bb.qt, %bb.qs
  %.0.i.i.i.i.i.i.i385 = phi i32 [ %i.aza, %bb.qs ], [ %i.azk, %bb.qt ]
  %i.azl = icmp eq i32 %.0.i.i.i.i.i.i.i385, 1
  br i1 %i.azl, label %bb.qu, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i386, !prof !56

bb.qu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i384
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ayw) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i386

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i386: ; preds = %bb.qu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i384, %bb.qq, %bb.qo
  %i.azm = load ptr, ptr %i.ayt, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i387 = icmp eq ptr %i.azm, null
  br i1 %.not.i.i.i387, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i391, label %bb.qv

bb.qv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i386
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 8 ; 4 uses
  %i.azo = load atomic i64, ptr %i.azn acquire, align 8 ; 2 uses
  %i.azp = icmp eq i64 %i.azo, 4294967297
  %i.azq = trunc i64 %i.azo to i32                ; 2 uses
  br i1 %i.azp, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  store i32 0, ptr %i.azn, align 8, !tbaa !41
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azm, i64 12
  store i32 0, ptr %i.azr, align 4, !tbaa !43
  %i.azs = load ptr, ptr %i.azm, align 8, !tbaa !44
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 16
  %i.azu = load ptr, ptr %i.azt, align 8
  call void %i.azu(ptr noundef nonnull align 8 dereferenceable(16) %i.azm) #20, !inline_history !163
  %i.azv = load ptr, ptr %i.azm, align 8, !tbaa !44
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 24
  %i.azx = load ptr, ptr %i.azw, align 8
  call void %i.azx(ptr noundef nonnull align 8 dereferenceable(16) %i.azm) #20, !inline_history !163
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i391

bb.qx:                                            ; preds = %bb.qv
  %i.azy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i388 = icmp eq i8 %i.azy, 0
  br i1 %.not.i.i.i.i388, label %bb.qz, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.azz = add nsw i32 %i.azq, -1
  store i32 %i.azz, ptr %i.azn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i389

bb.qz:                                            ; preds = %bb.qx
  %i.baa = atomicrmw volatile add ptr %i.azn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i389

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i389: ; preds = %bb.qz, %bb.qy
  %.0.i.i.i.i.i390 = phi i32 [ %i.azq, %bb.qy ], [ %i.baa, %bb.qz ]
  %i.bab = icmp eq i32 %.0.i.i.i.i.i390, 1
  br i1 %i.bab, label %bb.ra, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i391, !prof !56

bb.ra:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i389
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.azm) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i391

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i391: ; preds = %bb.ra, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i389, %bb.qw, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i386
  %i.bac = getelementptr inbounds nuw i8, ptr %106, i64 8
  %i.bad = load ptr, ptr %i.bac, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i392 = icmp eq ptr %i.bad, null
  br i1 %.not.i.i12.i392, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i396, label %bb.rb

bb.rb:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i391
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 8 ; 4 uses
  %i.baf = load atomic i64, ptr %i.bae acquire, align 8 ; 2 uses
  %i.bag = icmp eq i64 %i.baf, 4294967297
  %i.bah = trunc i64 %i.baf to i32                ; 2 uses
  br i1 %i.bag, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %bb.rb
  store i32 0, ptr %i.bae, align 8, !tbaa !41
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bad, i64 12
  store i32 0, ptr %i.bai, align 4, !tbaa !43
  %i.baj = load ptr, ptr %i.bad, align 8, !tbaa !44
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 16
  %i.bal = load ptr, ptr %i.bak, align 8
  call void %i.bal(ptr noundef nonnull align 8 dereferenceable(16) %i.bad) #20, !inline_history !164
  %i.bam = load ptr, ptr %i.bad, align 8, !tbaa !44
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bam, i64 24
  %i.bao = load ptr, ptr %i.ban, align 8
  call void %i.bao(ptr noundef nonnull align 8 dereferenceable(16) %i.bad) #20, !inline_history !164
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i396

bb.rd:                                            ; preds = %bb.rb
  %i.bap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i393 = icmp eq i8 %i.bap, 0
  br i1 %.not.i.i.i13.i393, label %bb.rf, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.baq = add nsw i32 %i.bah, -1
  store i32 %i.baq, ptr %i.bae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i394

bb.rf:                                            ; preds = %bb.rd
  %i.bar = atomicrmw volatile add ptr %i.bae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i394

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i394: ; preds = %bb.rf, %bb.re
  %.0.i.i.i.i15.i395 = phi i32 [ %i.bah, %bb.re ], [ %i.bar, %bb.rf ]
  %i.bas = icmp eq i32 %.0.i.i.i.i15.i395, 1
  br i1 %i.bas, label %bb.rg, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i396, !prof !56

bb.rg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i394
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bad) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i396

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i396: ; preds = %bb.rg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i394, %bb.rc, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i391
  %i.bat = getelementptr inbounds nuw i8, ptr %105, i64 40
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i397 = icmp eq ptr %i.bau, null
  br i1 %.not.i.i16.i397, label %_ZNSt14_Function_baseD2Ev.exit.i.i398, label %bb.rh

bb.rh:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i396
  %i.bav = getelementptr inbounds nuw i8, ptr %105, i64 24 ; 2 uses
  %i.baw = invoke noundef zeroext i1 %i.bau(ptr noundef nonnull align 8 dereferenceable(32) %i.bav, ptr noundef nonnull align 8 dereferenceable(32) %i.bav, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i398 unwind label %bb.ri ; 0 uses

bb.ri:                                            ; preds = %bb.rh
  %i.bax = landingpad { ptr, i32 }
          catch ptr null
  %i.bay = extractvalue { ptr, i32 } %i.bax, 0
  call void @__clang_call_terminate(ptr %i.bay) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i398:            ; preds = %bb.rh, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i396
  %i.baz = getelementptr inbounds nuw i8, ptr %105, i64 16
  %i.bba = load ptr, ptr %i.baz, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i399 = icmp eq ptr %i.bba, null
  br i1 %.not.i.i.i17.i399, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i403, label %bb.rj

bb.rj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i398
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 8 ; 4 uses
  %i.bbc = load atomic i64, ptr %i.bbb acquire, align 8 ; 2 uses
  %i.bbd = icmp eq i64 %i.bbc, 4294967297
  %i.bbe = trunc i64 %i.bbc to i32                ; 2 uses
  br i1 %i.bbd, label %bb.rk, label %bb.rl

bb.rk:                                            ; preds = %bb.rj
  store i32 0, ptr %i.bbb, align 8, !tbaa !41
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bba, i64 12
  store i32 0, ptr %i.bbf, align 4, !tbaa !43
  %i.bbg = load ptr, ptr %i.bba, align 8, !tbaa !44
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 16
  %i.bbi = load ptr, ptr %i.bbh, align 8
  call void %i.bbi(ptr noundef nonnull align 8 dereferenceable(16) %i.bba) #20, !inline_history !165
  %i.bbj = load ptr, ptr %i.bba, align 8, !tbaa !44
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 24
  %i.bbl = load ptr, ptr %i.bbk, align 8
  call void %i.bbl(ptr noundef nonnull align 8 dereferenceable(16) %i.bba) #20, !inline_history !165
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i403

bb.rl:                                            ; preds = %bb.rj
  %i.bbm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i400 = icmp eq i8 %i.bbm, 0
  br i1 %.not.i.i.i.i18.i400, label %bb.rn, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.bbn = add nsw i32 %i.bbe, -1
  store i32 %i.bbn, ptr %i.bbb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i401

bb.rn:                                            ; preds = %bb.rl
  %i.bbo = atomicrmw volatile add ptr %i.bbb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i401

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i401: ; preds = %bb.rn, %bb.rm
  %.0.i.i.i.i.i.i402 = phi i32 [ %i.bbe, %bb.rm ], [ %i.bbo, %bb.rn ]
  %i.bbp = icmp eq i32 %.0.i.i.i.i.i.i402, 1
  br i1 %i.bbp, label %bb.ro, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i403, !prof !56

bb.ro:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i401
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bba) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i403

_ZN5arrow7compute10OutputTypeD2Ev.exit.i403:      ; preds = %bb.ro, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i401, %bb.rk, %_ZNSt14_Function_baseD2Ev.exit.i.i398
  %i.bbq = load ptr, ptr %103, align 8, !tbaa !87
  %i.bbr = load ptr, ptr %i.ayr, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.bbq, ptr noundef %i.bbr)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i404 unwind label %bb.rq

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i404: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i403
  %i.bbs = load ptr, ptr %103, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i19.i405 = icmp eq ptr %i.bbs, null
  br i1 %.not.i.i.i19.i405, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i406, label %bb.rp

bb.rp:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i404
  %i.bbt = load ptr, ptr %i.ayp, align 8, !tbaa !90
  %i.bbu = ptrtoint ptr %i.bbt to i64
  %i.bbv = ptrtoint ptr %i.bbs to i64
  %i.bbw = sub i64 %i.bbu, %i.bbv
  call void @_ZdlPvm(ptr noundef nonnull %i.bbs, i64 noundef %i.bbw) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i406

bb.rq:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i403
  %i.bbx = landingpad { ptr, i32 }
          catch ptr null
  %i.bby = extractvalue { ptr, i32 } %i.bbx, 0
  call void @__clang_call_terminate(ptr %i.bby) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i406: ; preds = %bb.rp, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i404
  %i.bbz = load ptr, ptr %i.ayl, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i407 = icmp eq ptr %i.bbz, null
  br i1 %.not.i.i.i21.i407, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i411, label %bb.rr

bb.rr:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i406
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 8 ; 4 uses
  %i.bcb = load atomic i64, ptr %i.bca acquire, align 8 ; 2 uses
  %i.bcc = icmp eq i64 %i.bcb, 4294967297
  %i.bcd = trunc i64 %i.bcb to i32                ; 2 uses
  br i1 %i.bcc, label %bb.rs, label %bb.rt

bb.rs:                                            ; preds = %bb.rr
  store i32 0, ptr %i.bca, align 8, !tbaa !41
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bbz, i64 12
  store i32 0, ptr %i.bce, align 4, !tbaa !43
  %i.bcf = load ptr, ptr %i.bbz, align 8, !tbaa !44
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 16
  %i.bch = load ptr, ptr %i.bcg, align 8
  call void %i.bch(ptr noundef nonnull align 8 dereferenceable(16) %i.bbz) #20, !inline_history !166
  %i.bci = load ptr, ptr %i.bbz, align 8, !tbaa !44
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 24
  %i.bck = load ptr, ptr %i.bcj, align 8
  call void %i.bck(ptr noundef nonnull align 8 dereferenceable(16) %i.bbz) #20, !inline_history !166
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i411

bb.rt:                                            ; preds = %bb.rr
  %i.bcl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i408 = icmp eq i8 %i.bcl, 0
  br i1 %.not.i.i.i.i22.i408, label %bb.rv, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.bcm = add nsw i32 %i.bcd, -1
  store i32 %i.bcm, ptr %i.bca, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i409

bb.rv:                                            ; preds = %bb.rt
  %i.bcn = atomicrmw volatile add ptr %i.bca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i409

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i409: ; preds = %bb.rv, %bb.ru
  %.0.i.i.i.i.i24.i410 = phi i32 [ %i.bcd, %bb.ru ], [ %i.bcn, %bb.rv ]
  %i.bco = icmp eq i32 %.0.i.i.i.i.i24.i410, 1
  br i1 %i.bco, label %bb.rw, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i411, !prof !56

bb.rw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i409
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bbz) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i411

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i411: ; preds = %bb.rw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i409, %bb.rs, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i406
  %i.bcp = getelementptr inbounds nuw i8, ptr %104, i64 16
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i412 = icmp eq ptr %i.bcq, null
  br i1 %.not.i.i1.i.i412, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i416, label %bb.rx

bb.rx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i411
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 8 ; 4 uses
  %i.bcs = load atomic i64, ptr %i.bcr acquire, align 8 ; 2 uses
  %i.bct = icmp eq i64 %i.bcs, 4294967297
  %i.bcu = trunc i64 %i.bcs to i32                ; 2 uses
  br i1 %i.bct, label %bb.ry, label %bb.rz

bb.ry:                                            ; preds = %bb.rx
  store i32 0, ptr %i.bcr, align 8, !tbaa !41
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcq, i64 12
  store i32 0, ptr %i.bcv, align 4, !tbaa !43
  %i.bcw = load ptr, ptr %i.bcq, align 8, !tbaa !44
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcw, i64 16
  %i.bcy = load ptr, ptr %i.bcx, align 8
  call void %i.bcy(ptr noundef nonnull align 8 dereferenceable(16) %i.bcq) #20, !inline_history !167
  %i.bcz = load ptr, ptr %i.bcq, align 8, !tbaa !44
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 24
  %i.bdb = load ptr, ptr %i.bda, align 8
  call void %i.bdb(ptr noundef nonnull align 8 dereferenceable(16) %i.bcq) #20, !inline_history !167
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i416

bb.rz:                                            ; preds = %bb.rx
  %i.bdc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i413 = icmp eq i8 %i.bdc, 0
  br i1 %.not.i.i.i2.i.i413, label %bb.sb, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.bdd = add nsw i32 %i.bcu, -1
  store i32 %i.bdd, ptr %i.bcr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i414

bb.sb:                                            ; preds = %bb.rz
  %i.bde = atomicrmw volatile add ptr %i.bcr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i414

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i414: ; preds = %bb.sb, %bb.sa
  %.0.i.i.i.i4.i.i415 = phi i32 [ %i.bcu, %bb.sa ], [ %i.bde, %bb.sb ]
  %i.bdf = icmp eq i32 %.0.i.i.i.i4.i.i415, 1
  br i1 %i.bdf, label %bb.sc, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i416, !prof !56

bb.sc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i414
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bcq) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i416

_ZN5arrow7compute9InputTypeD2Ev.exit.i416:        ; preds = %bb.sc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i414, %bb.ry, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i411
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #20
  store i32 2, ptr %i.ayg, align 4, !tbaa !74
  %i.bdg = load <2 x ptr>, ptr %101, align 16, !tbaa !86
  store ptr null, ptr %i.ayu, align 8, !tbaa !46
  store <2 x ptr> %i.bdg, ptr %108, align 16, !tbaa !86
  store ptr null, ptr %101, align 16, !tbaa !98
  %i.bdh = getelementptr inbounds nuw i8, ptr %108, i64 16 ; 2 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %108, i64 40
  %i.bdj = getelementptr inbounds nuw i8, ptr %101, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bdh, i8 0, i64 24, i1 false)
  %i.bdk = load ptr, ptr %i.bdj, align 8, !tbaa !99
  store ptr %i.bdk, ptr %i.bdi, align 8, !tbaa !99
  %i.bdl = getelementptr inbounds nuw i8, ptr %101, i64 32 ; 2 uses
  %i.bdm = load ptr, ptr %i.bdl, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i417 = icmp eq ptr %i.bdm, null
  br i1 %.not.i.i.not.i.i.i.i417, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i418, label %bb.sd

bb.sd:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i416
  %i.bdn = getelementptr inbounds nuw i8, ptr %101, i64 16
  %i.bdo = getelementptr inbounds nuw i8, ptr %108, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bdh, ptr noundef nonnull align 8 dereferenceable(32) %i.bdn, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.bdm, ptr %i.bdo, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdl, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i418

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i418: ; preds = %bb.sd, %_ZN5arrow7compute9InputTypeD2Ev.exit.i416
  %i.bdp = getelementptr inbounds nuw i8, ptr %108, i64 48
  %i.bdq = load i64, ptr %i.ayd, align 16
  store i64 %i.bdq, ptr %i.bdp, align 16
  %i.bdr = getelementptr inbounds nuw i8, ptr %108, i64 56
  %i.bds = getelementptr inbounds nuw i8, ptr %101, i64 56 ; 2 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %101, i64 64
  %i.bdu = load <2 x ptr>, ptr %i.bds, align 8, !tbaa !86
  store ptr null, ptr %i.bdt, align 16, !tbaa !46
  store <2 x ptr> %i.bdu, ptr %i.bdr, align 8, !tbaa !86
  store ptr null, ptr %i.bds, align 8, !tbaa !101
  %i.bdv = getelementptr inbounds nuw i8, ptr %108, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bdv, ptr noundef nonnull align 8 dereferenceable(20) %i.ayi, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %107, ptr noundef nonnull align 8 dereferenceable(252) %i.ayc, i32 noundef 42, ptr noundef nonnull %108)
          to label %bb.se unwind label %bb.sl

bb.se:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i418
  %i.bdw = load ptr, ptr %107, align 8, !tbaa !102 ; 2 uses
  %.not.i.i419 = icmp eq ptr %i.bdw, null
  br i1 %.not.i.i419, label %bb.sn, label %bb.sf, !prof !105

bb.sf:                                            ; preds = %bb.se
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 1
  %i.bdy = load i8, ptr %i.bdx, align 1, !tbaa !106, !range !115, !noundef !116
  %i.bdz = trunc nuw i8 %i.bdy to i1
  br i1 %i.bdz, label %bb.sn, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %107) #20
  br label %bb.sn

bb.sh:                                            ; preds = %bb.ql
  %i.bea = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i374

bb.si:                                            ; preds = %.noexc3.i.i380
  %i.beb = landingpad { ptr, i32 }
          cleanup
  br label %bb.sk

bb.sj:                                            ; preds = %bb.qn
  %i.bec = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %106) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %105) #20
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.si
  %.pn.i381 = phi { ptr, i32 } [ %i.bec, %bb.sj ], [ %i.beb, %bb.si ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %103) #20
  br label %.body.i378

.body.i378:                                       ; preds = %bb.sk, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i377
  %.pn.pn.i379 = phi { ptr, i32 } [ %.pn.i381, %bb.sk ], [ %i.ays, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i377 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %104) #20
  br label %.loopexit.i374

.loopexit.i374:                                   ; preds = %.body.i378, %bb.sh
  %.pn.pn.pn.i375 = phi { ptr, i32 } [ %i.bea, %bb.sh ], [ %.pn.pn.i379, %.body.i378 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #20
  br label %bb.sm

bb.sl:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i418
  %i.bed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %108) #20
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %.loopexit.i374
  %.pn10.i376 = phi { ptr, i32 } [ %i.bed, %bb.sl ], [ %.pn.pn.pn.i375, %.loopexit.i374 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %101) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #20
  br label %.body276

bb.sn:                                            ; preds = %bb.sg, %bb.sf, %bb.se
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %108) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %101) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %103)
  call void @llvm.lifetime.end.p0(ptr nonnull %105)
  call void @llvm.lifetime.end.p0(ptr nonnull %106)
  call void @llvm.lifetime.end.p0(ptr nonnull %107)
  call void @llvm.lifetime.end.p0(ptr nonnull %108)
  %i.bee = load ptr, ptr %183, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %94)
  call void @llvm.lifetime.start.p0(ptr nonnull %96)
  call void @llvm.lifetime.start.p0(ptr nonnull %97)
  call void @llvm.lifetime.start.p0(ptr nonnull %98)
  call void @llvm.lifetime.start.p0(ptr nonnull %99)
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #20
  %i.bef = getelementptr inbounds nuw i8, ptr %92, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %92, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.bef, align 16, !tbaa !59
  %i.beg = getelementptr inbounds nuw i8, ptr %92, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.beg, i8 0, i64 20, i1 false)
  %i.beh = getelementptr inbounds nuw i8, ptr %92, i64 80
  store i8 1, ptr %i.beh, align 16, !tbaa !70
  %i.bei = getelementptr inbounds nuw i8, ptr %92, i64 84 ; 2 uses
  store i32 0, ptr %i.bei, align 4, !tbaa !74
  %i.bej = getelementptr inbounds nuw i8, ptr %92, i64 88
  store i32 0, ptr %i.bej, align 8, !tbaa !75
  %i.bek = getelementptr inbounds nuw i8, ptr %92, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118CastFixedToVarListINS_13LargeListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.bek, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %91)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %91, i32 noundef 32)
          to label %bb.so unwind label %bb.uj

bb.so:                                            ; preds = %bb.sn
  store i32 2, ptr %95, align 8, !tbaa !77
  %i.bel = getelementptr inbounds nuw i8, ptr %95, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bel, i8 0, i64 16, i1 false)
  %i.bem = getelementptr inbounds nuw i8, ptr %95, i64 24
  %i.ben = getelementptr inbounds nuw i8, ptr %95, i64 32
  %i.beo = load <2 x ptr>, ptr %91, align 16, !tbaa !86
  store <2 x ptr> %i.beo, ptr %i.bem, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %91)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %94, i8 0, i64 24, i1 false)
  %i.bep = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i428 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i425 ; 4 uses

.noexc3.i.i428:                                   ; preds = %bb.so
  store ptr %i.bep, ptr %94, align 8, !tbaa !87
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 40 ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %94, i64 16 ; 2 uses
  store ptr %i.beq, ptr %i.ber, align 8, !tbaa !90
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bep, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bes, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bep, ptr noundef nonnull align 8 dereferenceable(40) %95)
  %i.bet = getelementptr inbounds nuw i8, ptr %94, i64 8 ; 2 uses
  store ptr %i.beq, ptr %i.bet, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %96, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.sp unwind label %bb.uk

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i425: ; preds = %bb.so
  %i.beu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i426

bb.sp:                                            ; preds = %.noexc3.i.i428
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %97, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %93, ptr noundef nonnull %94, ptr noundef nonnull %96, i1 noundef zeroext false, ptr noundef nonnull %97)
          to label %bb.sq unwind label %bb.ul

bb.sq:                                            ; preds = %bb.sp
  %i.bev = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.bew = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  %i.bex = load <2 x ptr>, ptr %93, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %93, i8 0, i64 16, i1 false)
  %i.bey = load ptr, ptr %i.bew, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.bex, ptr %92, align 16, !tbaa !86
  %.not.i.i.i.i.i430 = icmp eq ptr %i.bey, null
  br i1 %.not.i.i.i.i.i430, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i434, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 8 ; 4 uses
  %i.bfa = load atomic i64, ptr %i.bez acquire, align 8 ; 2 uses
  %i.bfb = icmp eq i64 %i.bfa, 4294967297
  %i.bfc = trunc i64 %i.bfa to i32                ; 2 uses
  br i1 %i.bfb, label %bb.ss, label %bb.st

bb.ss:                                            ; preds = %bb.sr
  store i32 0, ptr %i.bez, align 8, !tbaa !41
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bey, i64 12
  store i32 0, ptr %i.bfd, align 4, !tbaa !43
  %i.bfe = load ptr, ptr %i.bey, align 8, !tbaa !44
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 16
  %i.bfg = load ptr, ptr %i.bff, align 8
  call void %i.bfg(ptr noundef nonnull align 8 dereferenceable(16) %i.bey) #20, !inline_history !168
  %i.bfh = load ptr, ptr %i.bey, align 8, !tbaa !44
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 24
  %i.bfj = load ptr, ptr %i.bfi, align 8
  call void %i.bfj(ptr noundef nonnull align 8 dereferenceable(16) %i.bey) #20, !inline_history !168
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i434

bb.st:                                            ; preds = %bb.sr
  %i.bfk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i431 = icmp eq i8 %i.bfk, 0
  br i1 %.not.i.i.i.i.i.i431, label %bb.sv, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.bfl = add nsw i32 %i.bfc, -1
  store i32 %i.bfl, ptr %i.bez, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i432

bb.sv:                                            ; preds = %bb.st
  %i.bfm = atomicrmw volatile add ptr %i.bez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i432

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i432: ; preds = %bb.sv, %bb.su
  %.0.i.i.i.i.i.i.i433 = phi i32 [ %i.bfc, %bb.su ], [ %i.bfm, %bb.sv ]
  %i.bfn = icmp eq i32 %.0.i.i.i.i.i.i.i433, 1
  br i1 %i.bfn, label %bb.sw, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i434, !prof !56

bb.sw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i432
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bey) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i434

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i434: ; preds = %bb.sw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i432, %bb.ss, %bb.sq
  %i.bfo = load ptr, ptr %i.bev, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i435 = icmp eq ptr %i.bfo, null
  br i1 %.not.i.i.i435, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i439, label %bb.sx

bb.sx:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i434
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 8 ; 4 uses
  %i.bfq = load atomic i64, ptr %i.bfp acquire, align 8 ; 2 uses
  %i.bfr = icmp eq i64 %i.bfq, 4294967297
  %i.bfs = trunc i64 %i.bfq to i32                ; 2 uses
  br i1 %i.bfr, label %bb.sy, label %bb.sz

bb.sy:                                            ; preds = %bb.sx
  store i32 0, ptr %i.bfp, align 8, !tbaa !41
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfo, i64 12
  store i32 0, ptr %i.bft, align 4, !tbaa !43
  %i.bfu = load ptr, ptr %i.bfo, align 8, !tbaa !44
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 16
  %i.bfw = load ptr, ptr %i.bfv, align 8
  call void %i.bfw(ptr noundef nonnull align 8 dereferenceable(16) %i.bfo) #20, !inline_history !169
  %i.bfx = load ptr, ptr %i.bfo, align 8, !tbaa !44
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 24
  %i.bfz = load ptr, ptr %i.bfy, align 8
  call void %i.bfz(ptr noundef nonnull align 8 dereferenceable(16) %i.bfo) #20, !inline_history !169
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i439

bb.sz:                                            ; preds = %bb.sx
  %i.bga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i436 = icmp eq i8 %i.bga, 0
  br i1 %.not.i.i.i.i436, label %bb.tb, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %i.bgb = add nsw i32 %i.bfs, -1
  store i32 %i.bgb, ptr %i.bfp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i437

bb.tb:                                            ; preds = %bb.sz
  %i.bgc = atomicrmw volatile add ptr %i.bfp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i437

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i437: ; preds = %bb.tb, %bb.ta
  %.0.i.i.i.i.i438 = phi i32 [ %i.bfs, %bb.ta ], [ %i.bgc, %bb.tb ]
  %i.bgd = icmp eq i32 %.0.i.i.i.i.i438, 1
  br i1 %i.bgd, label %bb.tc, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i439, !prof !56

bb.tc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i437
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bfo) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i439

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i439: ; preds = %bb.tc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i437, %bb.sy, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i434
  %i.bge = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i440 = icmp eq ptr %i.bgf, null
  br i1 %.not.i.i12.i440, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i444, label %bb.td

bb.td:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i439
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 8 ; 4 uses
  %i.bgh = load atomic i64, ptr %i.bgg acquire, align 8 ; 2 uses
  %i.bgi = icmp eq i64 %i.bgh, 4294967297
  %i.bgj = trunc i64 %i.bgh to i32                ; 2 uses
  br i1 %i.bgi, label %bb.te, label %bb.tf

bb.te:                                            ; preds = %bb.td
  store i32 0, ptr %i.bgg, align 8, !tbaa !41
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgf, i64 12
  store i32 0, ptr %i.bgk, align 4, !tbaa !43
  %i.bgl = load ptr, ptr %i.bgf, align 8, !tbaa !44
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 16
  %i.bgn = load ptr, ptr %i.bgm, align 8
  call void %i.bgn(ptr noundef nonnull align 8 dereferenceable(16) %i.bgf) #20, !inline_history !170
  %i.bgo = load ptr, ptr %i.bgf, align 8, !tbaa !44
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgo, i64 24
  %i.bgq = load ptr, ptr %i.bgp, align 8
  call void %i.bgq(ptr noundef nonnull align 8 dereferenceable(16) %i.bgf) #20, !inline_history !170
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i444

bb.tf:                                            ; preds = %bb.td
  %i.bgr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i441 = icmp eq i8 %i.bgr, 0
  br i1 %.not.i.i.i13.i441, label %bb.th, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.bgs = add nsw i32 %i.bgj, -1
  store i32 %i.bgs, ptr %i.bgg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i442

bb.th:                                            ; preds = %bb.tf
  %i.bgt = atomicrmw volatile add ptr %i.bgg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i442

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i442: ; preds = %bb.th, %bb.tg
  %.0.i.i.i.i15.i443 = phi i32 [ %i.bgj, %bb.tg ], [ %i.bgt, %bb.th ]
  %i.bgu = icmp eq i32 %.0.i.i.i.i15.i443, 1
  br i1 %i.bgu, label %bb.ti, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i444, !prof !56

bb.ti:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i442
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bgf) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i444

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i444: ; preds = %bb.ti, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i442, %bb.te, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i439
  %i.bgv = getelementptr inbounds nuw i8, ptr %96, i64 40
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i445 = icmp eq ptr %i.bgw, null
  br i1 %.not.i.i16.i445, label %_ZNSt14_Function_baseD2Ev.exit.i.i446, label %bb.tj

bb.tj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i444
  %i.bgx = getelementptr inbounds nuw i8, ptr %96, i64 24 ; 2 uses
  %i.bgy = invoke noundef zeroext i1 %i.bgw(ptr noundef nonnull align 8 dereferenceable(32) %i.bgx, ptr noundef nonnull align 8 dereferenceable(32) %i.bgx, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i446 unwind label %bb.tk ; 0 uses

bb.tk:                                            ; preds = %bb.tj
  %i.bgz = landingpad { ptr, i32 }
          catch ptr null
  %i.bha = extractvalue { ptr, i32 } %i.bgz, 0
  call void @__clang_call_terminate(ptr %i.bha) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i446:            ; preds = %bb.tj, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i444
  %i.bhb = getelementptr inbounds nuw i8, ptr %96, i64 16
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i447 = icmp eq ptr %i.bhc, null
  br i1 %.not.i.i.i17.i447, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i451, label %bb.tl

bb.tl:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i446
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhc, i64 8 ; 4 uses
  %i.bhe = load atomic i64, ptr %i.bhd acquire, align 8 ; 2 uses
  %i.bhf = icmp eq i64 %i.bhe, 4294967297
  %i.bhg = trunc i64 %i.bhe to i32                ; 2 uses
  br i1 %i.bhf, label %bb.tm, label %bb.tn

bb.tm:                                            ; preds = %bb.tl
  store i32 0, ptr %i.bhd, align 8, !tbaa !41
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhc, i64 12
  store i32 0, ptr %i.bhh, align 4, !tbaa !43
  %i.bhi = load ptr, ptr %i.bhc, align 8, !tbaa !44
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 16
  %i.bhk = load ptr, ptr %i.bhj, align 8
  call void %i.bhk(ptr noundef nonnull align 8 dereferenceable(16) %i.bhc) #20, !inline_history !171
  %i.bhl = load ptr, ptr %i.bhc, align 8, !tbaa !44
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 24
  %i.bhn = load ptr, ptr %i.bhm, align 8
  call void %i.bhn(ptr noundef nonnull align 8 dereferenceable(16) %i.bhc) #20, !inline_history !171
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i451

bb.tn:                                            ; preds = %bb.tl
  %i.bho = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i448 = icmp eq i8 %i.bho, 0
  br i1 %.not.i.i.i.i18.i448, label %bb.tp, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.bhp = add nsw i32 %i.bhg, -1
  store i32 %i.bhp, ptr %i.bhd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i449

bb.tp:                                            ; preds = %bb.tn
  %i.bhq = atomicrmw volatile add ptr %i.bhd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i449

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i449: ; preds = %bb.tp, %bb.to
  %.0.i.i.i.i.i.i450 = phi i32 [ %i.bhg, %bb.to ], [ %i.bhq, %bb.tp ]
  %i.bhr = icmp eq i32 %.0.i.i.i.i.i.i450, 1
  br i1 %i.bhr, label %bb.tq, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i451, !prof !56

bb.tq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i449
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bhc) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i451

_ZN5arrow7compute10OutputTypeD2Ev.exit.i451:      ; preds = %bb.tq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i449, %bb.tm, %_ZNSt14_Function_baseD2Ev.exit.i.i446
  %i.bhs = load ptr, ptr %94, align 8, !tbaa !87
  %i.bht = load ptr, ptr %i.bet, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.bhs, ptr noundef %i.bht)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i452 unwind label %bb.ts

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i452: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i451
  %i.bhu = load ptr, ptr %94, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i453 = icmp eq ptr %i.bhu, null
  br i1 %.not.i.i.i19.i453, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i454, label %bb.tr

bb.tr:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i452
  %i.bhv = load ptr, ptr %i.ber, align 8, !tbaa !90
  %i.bhw = ptrtoint ptr %i.bhv to i64
  %i.bhx = ptrtoint ptr %i.bhu to i64
  %i.bhy = sub i64 %i.bhw, %i.bhx
  call void @_ZdlPvm(ptr noundef nonnull %i.bhu, i64 noundef %i.bhy) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i454

bb.ts:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i451
  %i.bhz = landingpad { ptr, i32 }
          catch ptr null
  %i.bia = extractvalue { ptr, i32 } %i.bhz, 0
  call void @__clang_call_terminate(ptr %i.bia) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i454: ; preds = %bb.tr, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i452
  %i.bib = load ptr, ptr %i.ben, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i455 = icmp eq ptr %i.bib, null
  br i1 %.not.i.i.i21.i455, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i459, label %bb.tt

bb.tt:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i454
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 8 ; 4 uses
  %i.bid = load atomic i64, ptr %i.bic acquire, align 8 ; 2 uses
  %i.bie = icmp eq i64 %i.bid, 4294967297
  %i.bif = trunc i64 %i.bid to i32                ; 2 uses
  br i1 %i.bie, label %bb.tu, label %bb.tv

bb.tu:                                            ; preds = %bb.tt
  store i32 0, ptr %i.bic, align 8, !tbaa !41
  %i.big = getelementptr inbounds nuw i8, ptr %i.bib, i64 12
  store i32 0, ptr %i.big, align 4, !tbaa !43
  %i.bih = load ptr, ptr %i.bib, align 8, !tbaa !44
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 16
  %i.bij = load ptr, ptr %i.bii, align 8
  call void %i.bij(ptr noundef nonnull align 8 dereferenceable(16) %i.bib) #20, !inline_history !172
  %i.bik = load ptr, ptr %i.bib, align 8, !tbaa !44
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 24
  %i.bim = load ptr, ptr %i.bil, align 8
  call void %i.bim(ptr noundef nonnull align 8 dereferenceable(16) %i.bib) #20, !inline_history !172
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i459

bb.tv:                                            ; preds = %bb.tt
  %i.bin = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i456 = icmp eq i8 %i.bin, 0
  br i1 %.not.i.i.i.i22.i456, label %bb.tx, label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  %i.bio = add nsw i32 %i.bif, -1
  store i32 %i.bio, ptr %i.bic, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i457

bb.tx:                                            ; preds = %bb.tv
  %i.bip = atomicrmw volatile add ptr %i.bic, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i457

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i457: ; preds = %bb.tx, %bb.tw
  %.0.i.i.i.i.i24.i458 = phi i32 [ %i.bif, %bb.tw ], [ %i.bip, %bb.tx ]
  %i.biq = icmp eq i32 %.0.i.i.i.i.i24.i458, 1
  br i1 %i.biq, label %bb.ty, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i459, !prof !56

bb.ty:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i457
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bib) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i459

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i459: ; preds = %bb.ty, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i457, %bb.tu, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i454
  %i.bir = getelementptr inbounds nuw i8, ptr %95, i64 16
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i460 = icmp eq ptr %i.bis, null
  br i1 %.not.i.i1.i.i460, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i464, label %bb.tz

bb.tz:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i459
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 8 ; 4 uses
  %i.biu = load atomic i64, ptr %i.bit acquire, align 8 ; 2 uses
  %i.biv = icmp eq i64 %i.biu, 4294967297
  %i.biw = trunc i64 %i.biu to i32                ; 2 uses
  br i1 %i.biv, label %bb.ua, label %bb.ub

bb.ua:                                            ; preds = %bb.tz
  store i32 0, ptr %i.bit, align 8, !tbaa !41
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bis, i64 12
  store i32 0, ptr %i.bix, align 4, !tbaa !43
  %i.biy = load ptr, ptr %i.bis, align 8, !tbaa !44
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biy, i64 16
  %i.bja = load ptr, ptr %i.biz, align 8
  call void %i.bja(ptr noundef nonnull align 8 dereferenceable(16) %i.bis) #20, !inline_history !173
  %i.bjb = load ptr, ptr %i.bis, align 8, !tbaa !44
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bjb, i64 24
  %i.bjd = load ptr, ptr %i.bjc, align 8
  call void %i.bjd(ptr noundef nonnull align 8 dereferenceable(16) %i.bis) #20, !inline_history !173
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i464

bb.ub:                                            ; preds = %bb.tz
  %i.bje = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i461 = icmp eq i8 %i.bje, 0
  br i1 %.not.i.i.i2.i.i461, label %bb.ud, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  %i.bjf = add nsw i32 %i.biw, -1
  store i32 %i.bjf, ptr %i.bit, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i462

bb.ud:                                            ; preds = %bb.ub
  %i.bjg = atomicrmw volatile add ptr %i.bit, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i462

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i462: ; preds = %bb.ud, %bb.uc
  %.0.i.i.i.i4.i.i463 = phi i32 [ %i.biw, %bb.uc ], [ %i.bjg, %bb.ud ]
  %i.bjh = icmp eq i32 %.0.i.i.i.i4.i.i463, 1
  br i1 %i.bjh, label %bb.ue, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i464, !prof !56

bb.ue:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i462
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bis) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i464

_ZN5arrow7compute9InputTypeD2Ev.exit.i464:        ; preds = %bb.ue, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i462, %bb.ua, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i459
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #20
  store i32 2, ptr %i.bei, align 4, !tbaa !74
  %i.bji = load <2 x ptr>, ptr %92, align 16, !tbaa !86
  store ptr null, ptr %i.bew, align 8, !tbaa !46
  store <2 x ptr> %i.bji, ptr %99, align 16, !tbaa !86
  store ptr null, ptr %92, align 16, !tbaa !98
  %i.bjj = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 2 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %99, i64 40
  %i.bjl = getelementptr inbounds nuw i8, ptr %92, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bjj, i8 0, i64 24, i1 false)
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !99
  store ptr %i.bjm, ptr %i.bjk, align 8, !tbaa !99
  %i.bjn = getelementptr inbounds nuw i8, ptr %92, i64 32 ; 2 uses
  %i.bjo = load ptr, ptr %i.bjn, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i465 = icmp eq ptr %i.bjo, null
  br i1 %.not.i.i.not.i.i.i.i465, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i466, label %bb.uf

bb.uf:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i464
  %i.bjp = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.bjq = getelementptr inbounds nuw i8, ptr %99, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bjj, ptr noundef nonnull align 8 dereferenceable(32) %i.bjp, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.bjo, ptr %i.bjq, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjn, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i466

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i466: ; preds = %bb.uf, %_ZN5arrow7compute9InputTypeD2Ev.exit.i464
  %i.bjr = getelementptr inbounds nuw i8, ptr %99, i64 48
  %i.bjs = load i64, ptr %i.bef, align 16
  store i64 %i.bjs, ptr %i.bjr, align 16
  %i.bjt = getelementptr inbounds nuw i8, ptr %99, i64 56
  %i.bju = getelementptr inbounds nuw i8, ptr %92, i64 56 ; 2 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %92, i64 64
  %i.bjw = load <2 x ptr>, ptr %i.bju, align 8, !tbaa !86
  store ptr null, ptr %i.bjv, align 16, !tbaa !46
  store <2 x ptr> %i.bjw, ptr %i.bjt, align 8, !tbaa !86
  store ptr null, ptr %i.bju, align 8, !tbaa !101
  %i.bjx = getelementptr inbounds nuw i8, ptr %99, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bjx, ptr noundef nonnull align 8 dereferenceable(20) %i.bek, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %98, ptr noundef nonnull align 8 dereferenceable(252) %i.bee, i32 noundef 32, ptr noundef nonnull %99)
          to label %bb.ug unwind label %bb.un

bb.ug:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i466
  %i.bjy = load ptr, ptr %98, align 8, !tbaa !102 ; 2 uses
  %.not.i.i467 = icmp eq ptr %i.bjy, null
  br i1 %.not.i.i467, label %bb.up, label %bb.uh, !prof !105

bb.uh:                                            ; preds = %bb.ug
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 1
  %i.bka = load i8, ptr %i.bjz, align 1, !tbaa !106, !range !115, !noundef !116
  %i.bkb = trunc nuw i8 %i.bka to i1
  br i1 %i.bkb, label %bb.up, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %98) #20
  br label %bb.up

bb.uj:                                            ; preds = %bb.sn
  %i.bkc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i422

bb.uk:                                            ; preds = %.noexc3.i.i428
  %i.bkd = landingpad { ptr, i32 }
          cleanup
  br label %bb.um

bb.ul:                                            ; preds = %bb.sp
  %i.bke = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %97) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %96) #20
  br label %bb.um

bb.um:                                            ; preds = %bb.ul, %bb.uk
  %.pn.i429 = phi { ptr, i32 } [ %i.bke, %bb.ul ], [ %i.bkd, %bb.uk ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %94) #20
  br label %.body.i426

.body.i426:                                       ; preds = %bb.um, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i425
  %.pn.pn.i427 = phi { ptr, i32 } [ %.pn.i429, %bb.um ], [ %i.beu, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i425 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %95) #20
  br label %.loopexit.i422

.loopexit.i422:                                   ; preds = %.body.i426, %bb.uj
  %.pn.pn.pn.i423 = phi { ptr, i32 } [ %i.bkc, %bb.uj ], [ %.pn.pn.i427, %.body.i426 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #20
  br label %bb.uo

bb.un:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i466
  %i.bkf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %99) #20
  br label %bb.uo

bb.uo:                                            ; preds = %bb.un, %.loopexit.i422
  %.pn10.i424 = phi { ptr, i32 } [ %i.bkf, %bb.un ], [ %.pn.pn.pn.i423, %.loopexit.i422 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %92) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #20
  br label %.body276

bb.up:                                            ; preds = %bb.ui, %bb.uh, %bb.ug
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %99) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %92) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %94)
  call void @llvm.lifetime.end.p0(ptr nonnull %96)
  call void @llvm.lifetime.end.p0(ptr nonnull %97)
  call void @llvm.lifetime.end.p0(ptr nonnull %98)
  call void @llvm.lifetime.end.p0(ptr nonnull %99)
  call void @llvm.lifetime.start.p0(ptr nonnull %185) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 30, ptr %i.c, align 4, !tbaa !33
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.bkg = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #21
          to label %.noexc471 unwind label %bb.avj ; 6 uses

.noexc471:                                        ; preds = %bb.up
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 8
  store i32 1, ptr %i.bkh, align 8, !tbaa !41, !noalias !174
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkg, i64 12
  store i32 1, ptr %i.bki, align 4, !tbaa !43, !noalias !174
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bkg, align 8, !tbaa !44, !noalias !174
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bkg, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA9_KcNS0_4Type4typeEEEvPT_DpOT0_(ptr noundef nonnull %i.bkj, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.uq unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i470, !noalias !174

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i470: ; preds = %.noexc471
  %i.bkk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bkg, i64 noundef 272) #22, !noalias !174
  br label %.body472

bb.uq:                                            ; preds = %.noexc471
  %i.bkl = getelementptr inbounds nuw i8, ptr %185, i64 8 ; 3 uses
  store ptr %i.bkg, ptr %i.bkl, align 8, !tbaa !46, !alias.scope !174
  store ptr %i.bkj, ptr %185, align 16, !tbaa !50, !alias.scope !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %186, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.ur unwind label %bb.avk

bb.ur:                                            ; preds = %bb.uq
  invoke void @_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE(i32 noundef 30, ptr noundef nonnull %186, ptr noundef nonnull %i.bkj)
          to label %bb.us unwind label %bb.avl

bb.us:                                            ; preds = %bb.ur
  %i.bkm = getelementptr inbounds nuw i8, ptr %186, i64 40
  %i.bkn = load ptr, ptr %i.bkm, align 8, !tbaa !52 ; 2 uses
  %.not.i.i474 = icmp eq ptr %i.bkn, null
  br i1 %.not.i.i474, label %_ZNSt14_Function_baseD2Ev.exit.i475, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.bko = getelementptr inbounds nuw i8, ptr %186, i64 24 ; 2 uses
  %i.bkp = invoke noundef zeroext i1 %i.bkn(ptr noundef nonnull align 8 dereferenceable(32) %i.bko, ptr noundef nonnull align 8 dereferenceable(32) %i.bko, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i475 unwind label %bb.uu ; 0 uses

bb.uu:                                            ; preds = %bb.ut
  %i.bkq = landingpad { ptr, i32 }
          catch ptr null
  %i.bkr = extractvalue { ptr, i32 } %i.bkq, 0
  call void @__clang_call_terminate(ptr %i.bkr) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i475:              ; preds = %bb.ut, %bb.us
  %i.bks = getelementptr inbounds nuw i8, ptr %186, i64 16
  %i.bkt = load ptr, ptr %i.bks, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i476 = icmp eq ptr %i.bkt, null
  br i1 %.not.i.i.i476, label %_ZN5arrow7compute10OutputTypeD2Ev.exit480, label %bb.uv

bb.uv:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i475
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkt, i64 8 ; 4 uses
  %i.bkv = load atomic i64, ptr %i.bku acquire, align 8 ; 2 uses
  %i.bkw = icmp eq i64 %i.bkv, 4294967297
  %i.bkx = trunc i64 %i.bkv to i32                ; 2 uses
  br i1 %i.bkw, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  store i32 0, ptr %i.bku, align 8, !tbaa !41
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkt, i64 12
  store i32 0, ptr %i.bky, align 4, !tbaa !43
  %i.bkz = load ptr, ptr %i.bkt, align 8, !tbaa !44
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 16
  %i.blb = load ptr, ptr %i.bla, align 8
  call void %i.blb(ptr noundef nonnull align 8 dereferenceable(16) %i.bkt) #20, !inline_history !54
  %i.blc = load ptr, ptr %i.bkt, align 8, !tbaa !44
  %i.bld = getelementptr inbounds nuw i8, ptr %i.blc, i64 24
  %i.ble = load ptr, ptr %i.bld, align 8
  call void %i.ble(ptr noundef nonnull align 8 dereferenceable(16) %i.bkt) #20, !inline_history !54
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit480

bb.ux:                                            ; preds = %bb.uv
  %i.blf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i477 = icmp eq i8 %i.blf, 0
  br i1 %.not.i.i.i.i477, label %bb.uz, label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  %i.blg = add nsw i32 %i.bkx, -1
  store i32 %i.blg, ptr %i.bku, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i478

bb.uz:                                            ; preds = %bb.ux
  %i.blh = atomicrmw volatile add ptr %i.bku, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i478

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i478: ; preds = %bb.uz, %bb.uy
  %.0.i.i.i.i.i479 = phi i32 [ %i.bkx, %bb.uy ], [ %i.blh, %bb.uz ]
  %i.bli = icmp eq i32 %.0.i.i.i.i.i479, 1
  br i1 %i.bli, label %bb.va, label %_ZN5arrow7compute10OutputTypeD2Ev.exit480, !prof !56

bb.va:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i478
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bkt) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit480

_ZN5arrow7compute10OutputTypeD2Ev.exit480:        ; preds = %_ZNSt14_Function_baseD2Ev.exit.i475, %bb.uw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i478, %bb.va
  %i.blj = load ptr, ptr %185, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %85)
  call void @llvm.lifetime.start.p0(ptr nonnull %87)
  call void @llvm.lifetime.start.p0(ptr nonnull %88)
  call void @llvm.lifetime.start.p0(ptr nonnull %89)
  call void @llvm.lifetime.start.p0(ptr nonnull %90)
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #20
  %i.blk = getelementptr inbounds nuw i8, ptr %83, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %83, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.blk, align 16, !tbaa !59
  %i.bll = getelementptr inbounds nuw i8, ptr %83, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bll, i8 0, i64 20, i1 false)
  %i.blm = getelementptr inbounds nuw i8, ptr %83, i64 80
  store i8 1, ptr %i.blm, align 16, !tbaa !70
  %i.bln = getelementptr inbounds nuw i8, ptr %83, i64 84 ; 2 uses
  store i32 0, ptr %i.bln, align 4, !tbaa !74
  %i.blo = getelementptr inbounds nuw i8, ptr %83, i64 88
  store i32 0, ptr %i.blo, align 8, !tbaa !75
  %i.blp = getelementptr inbounds nuw i8, ptr %83, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_7MapTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.blp, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %82)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %82, i32 noundef 30)
          to label %bb.vb unwind label %bb.ww

bb.vb:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit480
  store i32 2, ptr %86, align 8, !tbaa !77
  %i.blq = getelementptr inbounds nuw i8, ptr %86, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.blq, i8 0, i64 16, i1 false)
  %i.blr = getelementptr inbounds nuw i8, ptr %86, i64 24
  %i.bls = getelementptr inbounds nuw i8, ptr %86, i64 32
  %i.blt = load <2 x ptr>, ptr %82, align 16, !tbaa !86
  store <2 x ptr> %i.blt, ptr %i.blr, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %82)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, i8 0, i64 24, i1 false)
  %i.blu = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i487 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i484 ; 4 uses

.noexc3.i.i487:                                   ; preds = %bb.vb
  store ptr %i.blu, ptr %85, align 8, !tbaa !87
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blu, i64 40 ; 2 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 2 uses
  store ptr %i.blv, ptr %i.blw, align 8, !tbaa !90
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blu, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.blx, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.blu, ptr noundef nonnull align 8 dereferenceable(40) %86)
  %i.bly = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 2 uses
  store ptr %i.blv, ptr %i.bly, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %87, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.vc unwind label %bb.wx

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i484: ; preds = %bb.vb
  %i.blz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i485

bb.vc:                                            ; preds = %.noexc3.i.i487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %88, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %84, ptr noundef nonnull %85, ptr noundef nonnull %87, i1 noundef zeroext false, ptr noundef nonnull %88)
          to label %bb.vd unwind label %bb.wy

bb.vd:                                            ; preds = %bb.vc
  %i.bma = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.bmb = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 2 uses
  %i.bmc = load <2 x ptr>, ptr %84, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, i8 0, i64 16, i1 false)
  %i.bmd = load ptr, ptr %i.bmb, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.bmc, ptr %83, align 16, !tbaa !86
  %.not.i.i.i.i.i489 = icmp eq ptr %i.bmd, null
  br i1 %.not.i.i.i.i.i489, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i493, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bmd, i64 8 ; 4 uses
  %i.bmf = load atomic i64, ptr %i.bme acquire, align 8 ; 2 uses
  %i.bmg = icmp eq i64 %i.bmf, 4294967297
  %i.bmh = trunc i64 %i.bmf to i32                ; 2 uses
  br i1 %i.bmg, label %bb.vf, label %bb.vg

bb.vf:                                            ; preds = %bb.ve
  store i32 0, ptr %i.bme, align 8, !tbaa !41
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmd, i64 12
  store i32 0, ptr %i.bmi, align 4, !tbaa !43
  %i.bmj = load ptr, ptr %i.bmd, align 8, !tbaa !44
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmj, i64 16
  %i.bml = load ptr, ptr %i.bmk, align 8
  call void %i.bml(ptr noundef nonnull align 8 dereferenceable(16) %i.bmd) #20, !inline_history !177
  %i.bmm = load ptr, ptr %i.bmd, align 8, !tbaa !44
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmm, i64 24
  %i.bmo = load ptr, ptr %i.bmn, align 8
  call void %i.bmo(ptr noundef nonnull align 8 dereferenceable(16) %i.bmd) #20, !inline_history !177
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i493

bb.vg:                                            ; preds = %bb.ve
  %i.bmp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i490 = icmp eq i8 %i.bmp, 0
  br i1 %.not.i.i.i.i.i.i490, label %bb.vi, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.bmq = add nsw i32 %i.bmh, -1
  store i32 %i.bmq, ptr %i.bme, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i491

bb.vi:                                            ; preds = %bb.vg
  %i.bmr = atomicrmw volatile add ptr %i.bme, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i491

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i491: ; preds = %bb.vi, %bb.vh
  %.0.i.i.i.i.i.i.i492 = phi i32 [ %i.bmh, %bb.vh ], [ %i.bmr, %bb.vi ]
  %i.bms = icmp eq i32 %.0.i.i.i.i.i.i.i492, 1
  br i1 %i.bms, label %bb.vj, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i493, !prof !56

bb.vj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i491
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bmd) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i493

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i493: ; preds = %bb.vj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i491, %bb.vf, %bb.vd
  %i.bmt = load ptr, ptr %i.bma, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i494 = icmp eq ptr %i.bmt, null
  br i1 %.not.i.i.i494, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i498, label %bb.vk

bb.vk:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i493
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmt, i64 8 ; 4 uses
  %i.bmv = load atomic i64, ptr %i.bmu acquire, align 8 ; 2 uses
  %i.bmw = icmp eq i64 %i.bmv, 4294967297
  %i.bmx = trunc i64 %i.bmv to i32                ; 2 uses
  br i1 %i.bmw, label %bb.vl, label %bb.vm

bb.vl:                                            ; preds = %bb.vk
  store i32 0, ptr %i.bmu, align 8, !tbaa !41
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmt, i64 12
  store i32 0, ptr %i.bmy, align 4, !tbaa !43
  %i.bmz = load ptr, ptr %i.bmt, align 8, !tbaa !44
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmz, i64 16
  %i.bnb = load ptr, ptr %i.bna, align 8
  call void %i.bnb(ptr noundef nonnull align 8 dereferenceable(16) %i.bmt) #20, !inline_history !178
  %i.bnc = load ptr, ptr %i.bmt, align 8, !tbaa !44
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bnc, i64 24
  %i.bne = load ptr, ptr %i.bnd, align 8
  call void %i.bne(ptr noundef nonnull align 8 dereferenceable(16) %i.bmt) #20, !inline_history !178
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i498

bb.vm:                                            ; preds = %bb.vk
  %i.bnf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i495 = icmp eq i8 %i.bnf, 0
  br i1 %.not.i.i.i.i495, label %bb.vo, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  %i.bng = add nsw i32 %i.bmx, -1
  store i32 %i.bng, ptr %i.bmu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i496

bb.vo:                                            ; preds = %bb.vm
  %i.bnh = atomicrmw volatile add ptr %i.bmu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i496

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i496: ; preds = %bb.vo, %bb.vn
  %.0.i.i.i.i.i497 = phi i32 [ %i.bmx, %bb.vn ], [ %i.bnh, %bb.vo ]
  %i.bni = icmp eq i32 %.0.i.i.i.i.i497, 1
  br i1 %i.bni, label %bb.vp, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i498, !prof !56

bb.vp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i496
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bmt) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i498

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i498: ; preds = %bb.vp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i496, %bb.vl, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i493
  %i.bnj = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.bnk = load ptr, ptr %i.bnj, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i499 = icmp eq ptr %i.bnk, null
  br i1 %.not.i.i12.i499, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i503, label %bb.vq

bb.vq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i498
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnk, i64 8 ; 4 uses
  %i.bnm = load atomic i64, ptr %i.bnl acquire, align 8 ; 2 uses
  %i.bnn = icmp eq i64 %i.bnm, 4294967297
  %i.bno = trunc i64 %i.bnm to i32                ; 2 uses
  br i1 %i.bnn, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %bb.vq
  store i32 0, ptr %i.bnl, align 8, !tbaa !41
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnk, i64 12
  store i32 0, ptr %i.bnp, align 4, !tbaa !43
  %i.bnq = load ptr, ptr %i.bnk, align 8, !tbaa !44
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnq, i64 16
  %i.bns = load ptr, ptr %i.bnr, align 8
  call void %i.bns(ptr noundef nonnull align 8 dereferenceable(16) %i.bnk) #20, !inline_history !179
  %i.bnt = load ptr, ptr %i.bnk, align 8, !tbaa !44
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnt, i64 24
  %i.bnv = load ptr, ptr %i.bnu, align 8
  call void %i.bnv(ptr noundef nonnull align 8 dereferenceable(16) %i.bnk) #20, !inline_history !179
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i503

bb.vs:                                            ; preds = %bb.vq
  %i.bnw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i500 = icmp eq i8 %i.bnw, 0
  br i1 %.not.i.i.i13.i500, label %bb.vu, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.bnx = add nsw i32 %i.bno, -1
  store i32 %i.bnx, ptr %i.bnl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i501

bb.vu:                                            ; preds = %bb.vs
  %i.bny = atomicrmw volatile add ptr %i.bnl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i501

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i501: ; preds = %bb.vu, %bb.vt
  %.0.i.i.i.i15.i502 = phi i32 [ %i.bno, %bb.vt ], [ %i.bny, %bb.vu ]
  %i.bnz = icmp eq i32 %.0.i.i.i.i15.i502, 1
  br i1 %i.bnz, label %bb.vv, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i503, !prof !56

bb.vv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i501
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bnk) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i503

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i503: ; preds = %bb.vv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i501, %bb.vr, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i498
  %i.boa = getelementptr inbounds nuw i8, ptr %87, i64 40
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i504 = icmp eq ptr %i.bob, null
  br i1 %.not.i.i16.i504, label %_ZNSt14_Function_baseD2Ev.exit.i.i505, label %bb.vw

bb.vw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i503
  %i.boc = getelementptr inbounds nuw i8, ptr %87, i64 24 ; 2 uses
  %i.bod = invoke noundef zeroext i1 %i.bob(ptr noundef nonnull align 8 dereferenceable(32) %i.boc, ptr noundef nonnull align 8 dereferenceable(32) %i.boc, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i505 unwind label %bb.vx ; 0 uses

bb.vx:                                            ; preds = %bb.vw
  %i.boe = landingpad { ptr, i32 }
          catch ptr null
  %i.bof = extractvalue { ptr, i32 } %i.boe, 0
  call void @__clang_call_terminate(ptr %i.bof) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i505:            ; preds = %bb.vw, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i503
  %i.bog = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i506 = icmp eq ptr %i.boh, null
  br i1 %.not.i.i.i17.i506, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i510, label %bb.vy

bb.vy:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i505
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 8 ; 4 uses
  %i.boj = load atomic i64, ptr %i.boi acquire, align 8 ; 2 uses
  %i.bok = icmp eq i64 %i.boj, 4294967297
  %i.bol = trunc i64 %i.boj to i32                ; 2 uses
  br i1 %i.bok, label %bb.vz, label %bb.wa

bb.vz:                                            ; preds = %bb.vy
  store i32 0, ptr %i.boi, align 8, !tbaa !41
  %i.bom = getelementptr inbounds nuw i8, ptr %i.boh, i64 12
  store i32 0, ptr %i.bom, align 4, !tbaa !43
  %i.bon = load ptr, ptr %i.boh, align 8, !tbaa !44
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 16
  %i.bop = load ptr, ptr %i.boo, align 8
  call void %i.bop(ptr noundef nonnull align 8 dereferenceable(16) %i.boh) #20, !inline_history !180
  %i.boq = load ptr, ptr %i.boh, align 8, !tbaa !44
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 24
  %i.bos = load ptr, ptr %i.bor, align 8
  call void %i.bos(ptr noundef nonnull align 8 dereferenceable(16) %i.boh) #20, !inline_history !180
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i510

bb.wa:                                            ; preds = %bb.vy
  %i.bot = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i507 = icmp eq i8 %i.bot, 0
  br i1 %.not.i.i.i.i18.i507, label %bb.wc, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.bou = add nsw i32 %i.bol, -1
  store i32 %i.bou, ptr %i.boi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i508

bb.wc:                                            ; preds = %bb.wa
  %i.bov = atomicrmw volatile add ptr %i.boi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i508

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i508: ; preds = %bb.wc, %bb.wb
  %.0.i.i.i.i.i.i509 = phi i32 [ %i.bol, %bb.wb ], [ %i.bov, %bb.wc ]
  %i.bow = icmp eq i32 %.0.i.i.i.i.i.i509, 1
  br i1 %i.bow, label %bb.wd, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i510, !prof !56

bb.wd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i508
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boh) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i510

_ZN5arrow7compute10OutputTypeD2Ev.exit.i510:      ; preds = %bb.wd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i508, %bb.vz, %_ZNSt14_Function_baseD2Ev.exit.i.i505
  %i.box = load ptr, ptr %85, align 8, !tbaa !87
  %i.boy = load ptr, ptr %i.bly, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.box, ptr noundef %i.boy)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i511 unwind label %bb.wf

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i511: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i510
  %i.boz = load ptr, ptr %85, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i512 = icmp eq ptr %i.boz, null
  br i1 %.not.i.i.i19.i512, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i513, label %bb.we

bb.we:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i511
  %i.bpa = load ptr, ptr %i.blw, align 8, !tbaa !90
  %i.bpb = ptrtoint ptr %i.bpa to i64
  %i.bpc = ptrtoint ptr %i.boz to i64
  %i.bpd = sub i64 %i.bpb, %i.bpc
  call void @_ZdlPvm(ptr noundef nonnull %i.boz, i64 noundef %i.bpd) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i513

bb.wf:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i510
  %i.bpe = landingpad { ptr, i32 }
          catch ptr null
  %i.bpf = extractvalue { ptr, i32 } %i.bpe, 0
  call void @__clang_call_terminate(ptr %i.bpf) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i513: ; preds = %bb.we, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i511
  %i.bpg = load ptr, ptr %i.bls, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i514 = icmp eq ptr %i.bpg, null
  br i1 %.not.i.i.i21.i514, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i518, label %bb.wg

bb.wg:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i513
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpg, i64 8 ; 4 uses
  %i.bpi = load atomic i64, ptr %i.bph acquire, align 8 ; 2 uses
  %i.bpj = icmp eq i64 %i.bpi, 4294967297
  %i.bpk = trunc i64 %i.bpi to i32                ; 2 uses
  br i1 %i.bpj, label %bb.wh, label %bb.wi

bb.wh:                                            ; preds = %bb.wg
  store i32 0, ptr %i.bph, align 8, !tbaa !41
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpg, i64 12
  store i32 0, ptr %i.bpl, align 4, !tbaa !43
  %i.bpm = load ptr, ptr %i.bpg, align 8, !tbaa !44
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 16
  %i.bpo = load ptr, ptr %i.bpn, align 8
  call void %i.bpo(ptr noundef nonnull align 8 dereferenceable(16) %i.bpg) #20, !inline_history !181
  %i.bpp = load ptr, ptr %i.bpg, align 8, !tbaa !44
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 24
  %i.bpr = load ptr, ptr %i.bpq, align 8
  call void %i.bpr(ptr noundef nonnull align 8 dereferenceable(16) %i.bpg) #20, !inline_history !181
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i518

bb.wi:                                            ; preds = %bb.wg
  %i.bps = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i515 = icmp eq i8 %i.bps, 0
  br i1 %.not.i.i.i.i22.i515, label %bb.wk, label %bb.wj

bb.wj:                                            ; preds = %bb.wi
  %i.bpt = add nsw i32 %i.bpk, -1
  store i32 %i.bpt, ptr %i.bph, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i516

bb.wk:                                            ; preds = %bb.wi
  %i.bpu = atomicrmw volatile add ptr %i.bph, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i516

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i516: ; preds = %bb.wk, %bb.wj
  %.0.i.i.i.i.i24.i517 = phi i32 [ %i.bpk, %bb.wj ], [ %i.bpu, %bb.wk ]
  %i.bpv = icmp eq i32 %.0.i.i.i.i.i24.i517, 1
  br i1 %i.bpv, label %bb.wl, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i518, !prof !56

bb.wl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i516
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bpg) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i518

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i518: ; preds = %bb.wl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i516, %bb.wh, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i513
  %i.bpw = getelementptr inbounds nuw i8, ptr %86, i64 16
  %i.bpx = load ptr, ptr %i.bpw, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i519 = icmp eq ptr %i.bpx, null
  br i1 %.not.i.i1.i.i519, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i523, label %bb.wm

bb.wm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i518
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpx, i64 8 ; 4 uses
  %i.bpz = load atomic i64, ptr %i.bpy acquire, align 8 ; 2 uses
  %i.bqa = icmp eq i64 %i.bpz, 4294967297
  %i.bqb = trunc i64 %i.bpz to i32                ; 2 uses
  br i1 %i.bqa, label %bb.wn, label %bb.wo

bb.wn:                                            ; preds = %bb.wm
  store i32 0, ptr %i.bpy, align 8, !tbaa !41
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bpx, i64 12
  store i32 0, ptr %i.bqc, align 4, !tbaa !43
  %i.bqd = load ptr, ptr %i.bpx, align 8, !tbaa !44
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 16
  %i.bqf = load ptr, ptr %i.bqe, align 8
  call void %i.bqf(ptr noundef nonnull align 8 dereferenceable(16) %i.bpx) #20, !inline_history !182
  %i.bqg = load ptr, ptr %i.bpx, align 8, !tbaa !44
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqg, i64 24
  %i.bqi = load ptr, ptr %i.bqh, align 8
  call void %i.bqi(ptr noundef nonnull align 8 dereferenceable(16) %i.bpx) #20, !inline_history !182
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i523

bb.wo:                                            ; preds = %bb.wm
  %i.bqj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i520 = icmp eq i8 %i.bqj, 0
  br i1 %.not.i.i.i2.i.i520, label %bb.wq, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.bqk = add nsw i32 %i.bqb, -1
  store i32 %i.bqk, ptr %i.bpy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i521

bb.wq:                                            ; preds = %bb.wo
  %i.bql = atomicrmw volatile add ptr %i.bpy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i521

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i521: ; preds = %bb.wq, %bb.wp
  %.0.i.i.i.i4.i.i522 = phi i32 [ %i.bqb, %bb.wp ], [ %i.bql, %bb.wq ]
  %i.bqm = icmp eq i32 %.0.i.i.i.i4.i.i522, 1
  br i1 %i.bqm, label %bb.wr, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i523, !prof !56

bb.wr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i521
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bpx) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i523

_ZN5arrow7compute9InputTypeD2Ev.exit.i523:        ; preds = %bb.wr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i521, %bb.wn, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i518
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  store i32 2, ptr %i.bln, align 4, !tbaa !74
  %i.bqn = load <2 x ptr>, ptr %83, align 16, !tbaa !86
  store ptr null, ptr %i.bmb, align 8, !tbaa !46
  store <2 x ptr> %i.bqn, ptr %90, align 16, !tbaa !86
  store ptr null, ptr %83, align 16, !tbaa !98
  %i.bqo = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 2 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %90, i64 40
  %i.bqq = getelementptr inbounds nuw i8, ptr %83, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bqo, i8 0, i64 24, i1 false)
  %i.bqr = load ptr, ptr %i.bqq, align 8, !tbaa !99
  store ptr %i.bqr, ptr %i.bqp, align 8, !tbaa !99
  %i.bqs = getelementptr inbounds nuw i8, ptr %83, i64 32 ; 2 uses
  %i.bqt = load ptr, ptr %i.bqs, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i524 = icmp eq ptr %i.bqt, null
  br i1 %.not.i.i.not.i.i.i.i524, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i525, label %bb.ws

bb.ws:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i523
  %i.bqu = getelementptr inbounds nuw i8, ptr %83, i64 16
  %i.bqv = getelementptr inbounds nuw i8, ptr %90, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bqo, ptr noundef nonnull align 8 dereferenceable(32) %i.bqu, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.bqt, ptr %i.bqv, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bqs, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i525

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i525: ; preds = %bb.ws, %_ZN5arrow7compute9InputTypeD2Ev.exit.i523
  %i.bqw = getelementptr inbounds nuw i8, ptr %90, i64 48
  %i.bqx = load i64, ptr %i.blk, align 16
  store i64 %i.bqx, ptr %i.bqw, align 16
  %i.bqy = getelementptr inbounds nuw i8, ptr %90, i64 56
  %i.bqz = getelementptr inbounds nuw i8, ptr %83, i64 56 ; 2 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %83, i64 64
  %i.brb = load <2 x ptr>, ptr %i.bqz, align 8, !tbaa !86
  store ptr null, ptr %i.bra, align 16, !tbaa !46
  store <2 x ptr> %i.brb, ptr %i.bqy, align 8, !tbaa !86
  store ptr null, ptr %i.bqz, align 8, !tbaa !101
  %i.brc = getelementptr inbounds nuw i8, ptr %90, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.brc, ptr noundef nonnull align 8 dereferenceable(20) %i.blp, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %89, ptr noundef nonnull align 8 dereferenceable(252) %i.blj, i32 noundef 30, ptr noundef nonnull %90)
          to label %bb.wt unwind label %bb.xa

bb.wt:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i525
  %i.brd = load ptr, ptr %89, align 8, !tbaa !102 ; 2 uses
  %.not.i.i526 = icmp eq ptr %i.brd, null
  br i1 %.not.i.i526, label %bb.xc, label %bb.wu, !prof !105

bb.wu:                                            ; preds = %bb.wt
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brd, i64 1
  %i.brf = load i8, ptr %i.bre, align 1, !tbaa !106, !range !115, !noundef !116
  %i.brg = trunc nuw i8 %i.brf to i1
  br i1 %i.brg, label %bb.xc, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %89) #20
  br label %bb.xc

bb.ww:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit480
  %i.brh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i481

bb.wx:                                            ; preds = %.noexc3.i.i487
  %i.bri = landingpad { ptr, i32 }
          cleanup
  br label %bb.wz

bb.wy:                                            ; preds = %bb.vc
  %i.brj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %88) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %87) #20
  br label %bb.wz

bb.wz:                                            ; preds = %bb.wy, %bb.wx
  %.pn.i488 = phi { ptr, i32 } [ %i.brj, %bb.wy ], [ %i.bri, %bb.wx ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %85) #20
  br label %.body.i485

.body.i485:                                       ; preds = %bb.wz, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i484
  %.pn.pn.i486 = phi { ptr, i32 } [ %.pn.i488, %bb.wz ], [ %i.blz, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i484 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %86) #20
  br label %.loopexit.i481

.loopexit.i481:                                   ; preds = %.body.i485, %bb.ww
  %.pn.pn.pn.i482 = phi { ptr, i32 } [ %i.brh, %bb.ww ], [ %.pn.pn.i486, %.body.i485 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  br label %bb.xb

bb.xa:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i525
  %i.brk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %90) #20
  br label %bb.xb

bb.xb:                                            ; preds = %bb.xa, %.loopexit.i481
  %.pn10.i483 = phi { ptr, i32 } [ %i.brk, %bb.xa ], [ %.pn.pn.pn.i482, %.loopexit.i481 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %83) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #20
  br label %.body527

bb.xc:                                            ; preds = %bb.wv, %bb.wu, %bb.wt
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %90) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %83) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %85)
  call void @llvm.lifetime.end.p0(ptr nonnull %87)
  call void @llvm.lifetime.end.p0(ptr nonnull %88)
  call void @llvm.lifetime.end.p0(ptr nonnull %89)
  call void @llvm.lifetime.end.p0(ptr nonnull %90)
  %i.brl = load ptr, ptr %181, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %76)
  call void @llvm.lifetime.start.p0(ptr nonnull %78)
  call void @llvm.lifetime.start.p0(ptr nonnull %79)
  call void @llvm.lifetime.start.p0(ptr nonnull %80)
  call void @llvm.lifetime.start.p0(ptr nonnull %81)
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #20
  %i.brm = getelementptr inbounds nuw i8, ptr %74, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %74, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.brm, align 16, !tbaa !59
  %i.brn = getelementptr inbounds nuw i8, ptr %74, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.brn, i8 0, i64 20, i1 false)
  %i.bro = getelementptr inbounds nuw i8, ptr %74, i64 80
  store i8 1, ptr %i.bro, align 16, !tbaa !70
  %i.brp = getelementptr inbounds nuw i8, ptr %74, i64 84 ; 2 uses
  store i32 0, ptr %i.brp, align 4, !tbaa !74
  %i.brq = getelementptr inbounds nuw i8, ptr %74, i64 88
  store i32 0, ptr %i.brq, align 8, !tbaa !75
  %i.brr = getelementptr inbounds nuw i8, ptr %74, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.brr, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %73)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %73, i32 noundef 30)
          to label %bb.xd unwind label %bb.yy

bb.xd:                                            ; preds = %bb.xc
  store i32 2, ptr %77, align 8, !tbaa !77
  %i.brs = getelementptr inbounds nuw i8, ptr %77, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.brs, i8 0, i64 16, i1 false)
  %i.brt = getelementptr inbounds nuw i8, ptr %77, i64 24
  %i.bru = getelementptr inbounds nuw i8, ptr %77, i64 32
  %i.brv = load <2 x ptr>, ptr %73, align 16, !tbaa !86
  store <2 x ptr> %i.brv, ptr %i.brt, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %73)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, i8 0, i64 24, i1 false)
  %i.brw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i535 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i532 ; 4 uses

.noexc3.i.i535:                                   ; preds = %bb.xd
  store ptr %i.brw, ptr %76, align 8, !tbaa !87
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brw, i64 40 ; 2 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  store ptr %i.brx, ptr %i.bry, align 8, !tbaa !90
  %i.brz = getelementptr inbounds nuw i8, ptr %i.brw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.brz, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.brw, ptr noundef nonnull align 8 dereferenceable(40) %77)
  %i.bsa = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  store ptr %i.brx, ptr %i.bsa, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %78, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.xe unwind label %bb.yz

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i532: ; preds = %bb.xd
  %i.bsb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i533

bb.xe:                                            ; preds = %.noexc3.i.i535
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %79, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %75, ptr noundef nonnull %76, ptr noundef nonnull %78, i1 noundef zeroext false, ptr noundef nonnull %79)
          to label %bb.xf unwind label %bb.za

bb.xf:                                            ; preds = %bb.xe
  %i.bsc = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.bsd = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.bse = load <2 x ptr>, ptr %75, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  %i.bsf = load ptr, ptr %i.bsd, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.bse, ptr %74, align 16, !tbaa !86
  %.not.i.i.i.i.i537 = icmp eq ptr %i.bsf, null
  br i1 %.not.i.i.i.i.i537, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i541, label %bb.xg

bb.xg:                                            ; preds = %bb.xf
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 8 ; 4 uses
  %i.bsh = load atomic i64, ptr %i.bsg acquire, align 8 ; 2 uses
  %i.bsi = icmp eq i64 %i.bsh, 4294967297
  %i.bsj = trunc i64 %i.bsh to i32                ; 2 uses
  br i1 %i.bsi, label %bb.xh, label %bb.xi

bb.xh:                                            ; preds = %bb.xg
  store i32 0, ptr %i.bsg, align 8, !tbaa !41
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsf, i64 12
  store i32 0, ptr %i.bsk, align 4, !tbaa !43
  %i.bsl = load ptr, ptr %i.bsf, align 8, !tbaa !44
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 16
  %i.bsn = load ptr, ptr %i.bsm, align 8
  call void %i.bsn(ptr noundef nonnull align 8 dereferenceable(16) %i.bsf) #20, !inline_history !183
  %i.bso = load ptr, ptr %i.bsf, align 8, !tbaa !44
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bso, i64 24
  %i.bsq = load ptr, ptr %i.bsp, align 8
  call void %i.bsq(ptr noundef nonnull align 8 dereferenceable(16) %i.bsf) #20, !inline_history !183
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i541

bb.xi:                                            ; preds = %bb.xg
  %i.bsr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i538 = icmp eq i8 %i.bsr, 0
  br i1 %.not.i.i.i.i.i.i538, label %bb.xk, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.bss = add nsw i32 %i.bsj, -1
  store i32 %i.bss, ptr %i.bsg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i539

bb.xk:                                            ; preds = %bb.xi
  %i.bst = atomicrmw volatile add ptr %i.bsg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i539

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i539: ; preds = %bb.xk, %bb.xj
  %.0.i.i.i.i.i.i.i540 = phi i32 [ %i.bsj, %bb.xj ], [ %i.bst, %bb.xk ]
  %i.bsu = icmp eq i32 %.0.i.i.i.i.i.i.i540, 1
  br i1 %i.bsu, label %bb.xl, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i541, !prof !56

bb.xl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i539
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bsf) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i541

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i541: ; preds = %bb.xl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i539, %bb.xh, %bb.xf
  %i.bsv = load ptr, ptr %i.bsc, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i542 = icmp eq ptr %i.bsv, null
  br i1 %.not.i.i.i542, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i546, label %bb.xm

bb.xm:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i541
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 8 ; 4 uses
  %i.bsx = load atomic i64, ptr %i.bsw acquire, align 8 ; 2 uses
  %i.bsy = icmp eq i64 %i.bsx, 4294967297
  %i.bsz = trunc i64 %i.bsx to i32                ; 2 uses
  br i1 %i.bsy, label %bb.xn, label %bb.xo

bb.xn:                                            ; preds = %bb.xm
  store i32 0, ptr %i.bsw, align 8, !tbaa !41
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsv, i64 12
  store i32 0, ptr %i.bta, align 4, !tbaa !43
  %i.btb = load ptr, ptr %i.bsv, align 8, !tbaa !44
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 16
  %i.btd = load ptr, ptr %i.btc, align 8
  call void %i.btd(ptr noundef nonnull align 8 dereferenceable(16) %i.bsv) #20, !inline_history !184
  %i.bte = load ptr, ptr %i.bsv, align 8, !tbaa !44
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 24
  %i.btg = load ptr, ptr %i.btf, align 8
  call void %i.btg(ptr noundef nonnull align 8 dereferenceable(16) %i.bsv) #20, !inline_history !184
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i546

bb.xo:                                            ; preds = %bb.xm
  %i.bth = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i543 = icmp eq i8 %i.bth, 0
  br i1 %.not.i.i.i.i543, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.bti = add nsw i32 %i.bsz, -1
  store i32 %i.bti, ptr %i.bsw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i544

bb.xq:                                            ; preds = %bb.xo
  %i.btj = atomicrmw volatile add ptr %i.bsw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i544

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i544: ; preds = %bb.xq, %bb.xp
  %.0.i.i.i.i.i545 = phi i32 [ %i.bsz, %bb.xp ], [ %i.btj, %bb.xq ]
  %i.btk = icmp eq i32 %.0.i.i.i.i.i545, 1
  br i1 %i.btk, label %bb.xr, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i546, !prof !56

bb.xr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i544
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bsv) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i546

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i546: ; preds = %bb.xr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i544, %bb.xn, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i541
  %i.btl = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.btm = load ptr, ptr %i.btl, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i547 = icmp eq ptr %i.btm, null
  br i1 %.not.i.i12.i547, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i551, label %bb.xs

bb.xs:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i546
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btm, i64 8 ; 4 uses
  %i.bto = load atomic i64, ptr %i.btn acquire, align 8 ; 2 uses
  %i.btp = icmp eq i64 %i.bto, 4294967297
  %i.btq = trunc i64 %i.bto to i32                ; 2 uses
  br i1 %i.btp, label %bb.xt, label %bb.xu

bb.xt:                                            ; preds = %bb.xs
  store i32 0, ptr %i.btn, align 8, !tbaa !41
  %i.btr = getelementptr inbounds nuw i8, ptr %i.btm, i64 12
  store i32 0, ptr %i.btr, align 4, !tbaa !43
  %i.bts = load ptr, ptr %i.btm, align 8, !tbaa !44
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bts, i64 16
  %i.btu = load ptr, ptr %i.btt, align 8
  call void %i.btu(ptr noundef nonnull align 8 dereferenceable(16) %i.btm) #20, !inline_history !185
  %i.btv = load ptr, ptr %i.btm, align 8, !tbaa !44
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btv, i64 24
  %i.btx = load ptr, ptr %i.btw, align 8
  call void %i.btx(ptr noundef nonnull align 8 dereferenceable(16) %i.btm) #20, !inline_history !185
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i551

bb.xu:                                            ; preds = %bb.xs
  %i.bty = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i548 = icmp eq i8 %i.bty, 0
  br i1 %.not.i.i.i13.i548, label %bb.xw, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.btz = add nsw i32 %i.btq, -1
  store i32 %i.btz, ptr %i.btn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i549

bb.xw:                                            ; preds = %bb.xu
  %i.bua = atomicrmw volatile add ptr %i.btn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i549

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i549: ; preds = %bb.xw, %bb.xv
  %.0.i.i.i.i15.i550 = phi i32 [ %i.btq, %bb.xv ], [ %i.bua, %bb.xw ]
  %i.bub = icmp eq i32 %.0.i.i.i.i15.i550, 1
  br i1 %i.bub, label %bb.xx, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i551, !prof !56

bb.xx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i549
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.btm) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i551

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i551: ; preds = %bb.xx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i549, %bb.xt, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i546
  %i.buc = getelementptr inbounds nuw i8, ptr %78, i64 40
  %i.bud = load ptr, ptr %i.buc, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i552 = icmp eq ptr %i.bud, null
  br i1 %.not.i.i16.i552, label %_ZNSt14_Function_baseD2Ev.exit.i.i553, label %bb.xy

bb.xy:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i551
  %i.bue = getelementptr inbounds nuw i8, ptr %78, i64 24 ; 2 uses
  %i.buf = invoke noundef zeroext i1 %i.bud(ptr noundef nonnull align 8 dereferenceable(32) %i.bue, ptr noundef nonnull align 8 dereferenceable(32) %i.bue, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i553 unwind label %bb.xz ; 0 uses

bb.xz:                                            ; preds = %bb.xy
  %i.bug = landingpad { ptr, i32 }
          catch ptr null
  %i.buh = extractvalue { ptr, i32 } %i.bug, 0
  call void @__clang_call_terminate(ptr %i.buh) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i553:            ; preds = %bb.xy, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i551
  %i.bui = getelementptr inbounds nuw i8, ptr %78, i64 16
  %i.buj = load ptr, ptr %i.bui, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i554 = icmp eq ptr %i.buj, null
  br i1 %.not.i.i.i17.i554, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i558, label %bb.ya

bb.ya:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i553
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 8 ; 4 uses
  %i.bul = load atomic i64, ptr %i.buk acquire, align 8 ; 2 uses
  %i.bum = icmp eq i64 %i.bul, 4294967297
  %i.bun = trunc i64 %i.bul to i32                ; 2 uses
  br i1 %i.bum, label %bb.yb, label %bb.yc

bb.yb:                                            ; preds = %bb.ya
  store i32 0, ptr %i.buk, align 8, !tbaa !41
  %i.buo = getelementptr inbounds nuw i8, ptr %i.buj, i64 12
  store i32 0, ptr %i.buo, align 4, !tbaa !43
  %i.bup = load ptr, ptr %i.buj, align 8, !tbaa !44
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bup, i64 16
  %i.bur = load ptr, ptr %i.buq, align 8
  call void %i.bur(ptr noundef nonnull align 8 dereferenceable(16) %i.buj) #20, !inline_history !186
  %i.bus = load ptr, ptr %i.buj, align 8, !tbaa !44
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 24
  %i.buu = load ptr, ptr %i.but, align 8
  call void %i.buu(ptr noundef nonnull align 8 dereferenceable(16) %i.buj) #20, !inline_history !186
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i558

bb.yc:                                            ; preds = %bb.ya
  %i.buv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i555 = icmp eq i8 %i.buv, 0
  br i1 %.not.i.i.i.i18.i555, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.buw = add nsw i32 %i.bun, -1
  store i32 %i.buw, ptr %i.buk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i556

bb.ye:                                            ; preds = %bb.yc
  %i.bux = atomicrmw volatile add ptr %i.buk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i556

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i556: ; preds = %bb.ye, %bb.yd
  %.0.i.i.i.i.i.i557 = phi i32 [ %i.bun, %bb.yd ], [ %i.bux, %bb.ye ]
  %i.buy = icmp eq i32 %.0.i.i.i.i.i.i557, 1
  br i1 %i.buy, label %bb.yf, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i558, !prof !56

bb.yf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i556
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.buj) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i558

_ZN5arrow7compute10OutputTypeD2Ev.exit.i558:      ; preds = %bb.yf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i556, %bb.yb, %_ZNSt14_Function_baseD2Ev.exit.i.i553
  %i.buz = load ptr, ptr %76, align 8, !tbaa !87
  %i.bva = load ptr, ptr %i.bsa, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.buz, ptr noundef %i.bva)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i559 unwind label %bb.yh

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i559: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i558
  %i.bvb = load ptr, ptr %76, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i560 = icmp eq ptr %i.bvb, null
  br i1 %.not.i.i.i19.i560, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i561, label %bb.yg

bb.yg:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i559
  %i.bvc = load ptr, ptr %i.bry, align 8, !tbaa !90
  %i.bvd = ptrtoint ptr %i.bvc to i64
  %i.bve = ptrtoint ptr %i.bvb to i64
  %i.bvf = sub i64 %i.bvd, %i.bve
  call void @_ZdlPvm(ptr noundef nonnull %i.bvb, i64 noundef %i.bvf) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i561

bb.yh:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i558
  %i.bvg = landingpad { ptr, i32 }
          catch ptr null
  %i.bvh = extractvalue { ptr, i32 } %i.bvg, 0
  call void @__clang_call_terminate(ptr %i.bvh) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i561: ; preds = %bb.yg, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i559
  %i.bvi = load ptr, ptr %i.bru, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i562 = icmp eq ptr %i.bvi, null
  br i1 %.not.i.i.i21.i562, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i566, label %bb.yi

bb.yi:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i561
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvi, i64 8 ; 4 uses
  %i.bvk = load atomic i64, ptr %i.bvj acquire, align 8 ; 2 uses
  %i.bvl = icmp eq i64 %i.bvk, 4294967297
  %i.bvm = trunc i64 %i.bvk to i32                ; 2 uses
  br i1 %i.bvl, label %bb.yj, label %bb.yk

bb.yj:                                            ; preds = %bb.yi
  store i32 0, ptr %i.bvj, align 8, !tbaa !41
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvi, i64 12
  store i32 0, ptr %i.bvn, align 4, !tbaa !43
  %i.bvo = load ptr, ptr %i.bvi, align 8, !tbaa !44
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvo, i64 16
  %i.bvq = load ptr, ptr %i.bvp, align 8
  call void %i.bvq(ptr noundef nonnull align 8 dereferenceable(16) %i.bvi) #20, !inline_history !187
  %i.bvr = load ptr, ptr %i.bvi, align 8, !tbaa !44
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 24
  %i.bvt = load ptr, ptr %i.bvs, align 8
  call void %i.bvt(ptr noundef nonnull align 8 dereferenceable(16) %i.bvi) #20, !inline_history !187
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i566

bb.yk:                                            ; preds = %bb.yi
  %i.bvu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i563 = icmp eq i8 %i.bvu, 0
  br i1 %.not.i.i.i.i22.i563, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.bvv = add nsw i32 %i.bvm, -1
  store i32 %i.bvv, ptr %i.bvj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i564

bb.ym:                                            ; preds = %bb.yk
  %i.bvw = atomicrmw volatile add ptr %i.bvj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i564

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i564: ; preds = %bb.ym, %bb.yl
  %.0.i.i.i.i.i24.i565 = phi i32 [ %i.bvm, %bb.yl ], [ %i.bvw, %bb.ym ]
  %i.bvx = icmp eq i32 %.0.i.i.i.i.i24.i565, 1
  br i1 %i.bvx, label %bb.yn, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i566, !prof !56

bb.yn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i564
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bvi) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i566

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i566: ; preds = %bb.yn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i564, %bb.yj, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i561
  %i.bvy = getelementptr inbounds nuw i8, ptr %77, i64 16
  %i.bvz = load ptr, ptr %i.bvy, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i567 = icmp eq ptr %i.bvz, null
  br i1 %.not.i.i1.i.i567, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i571, label %bb.yo

bb.yo:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i566
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvz, i64 8 ; 4 uses
  %i.bwb = load atomic i64, ptr %i.bwa acquire, align 8 ; 2 uses
  %i.bwc = icmp eq i64 %i.bwb, 4294967297
  %i.bwd = trunc i64 %i.bwb to i32                ; 2 uses
  br i1 %i.bwc, label %bb.yp, label %bb.yq

bb.yp:                                            ; preds = %bb.yo
  store i32 0, ptr %i.bwa, align 8, !tbaa !41
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bvz, i64 12
  store i32 0, ptr %i.bwe, align 4, !tbaa !43
  %i.bwf = load ptr, ptr %i.bvz, align 8, !tbaa !44
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 16
  %i.bwh = load ptr, ptr %i.bwg, align 8
  call void %i.bwh(ptr noundef nonnull align 8 dereferenceable(16) %i.bvz) #20, !inline_history !188
  %i.bwi = load ptr, ptr %i.bvz, align 8, !tbaa !44
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwi, i64 24
  %i.bwk = load ptr, ptr %i.bwj, align 8
  call void %i.bwk(ptr noundef nonnull align 8 dereferenceable(16) %i.bvz) #20, !inline_history !188
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i571

bb.yq:                                            ; preds = %bb.yo
  %i.bwl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i568 = icmp eq i8 %i.bwl, 0
  br i1 %.not.i.i.i2.i.i568, label %bb.ys, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.bwm = add nsw i32 %i.bwd, -1
  store i32 %i.bwm, ptr %i.bwa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i569

bb.ys:                                            ; preds = %bb.yq
  %i.bwn = atomicrmw volatile add ptr %i.bwa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i569

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i569: ; preds = %bb.ys, %bb.yr
  %.0.i.i.i.i4.i.i570 = phi i32 [ %i.bwd, %bb.yr ], [ %i.bwn, %bb.ys ]
  %i.bwo = icmp eq i32 %.0.i.i.i.i4.i.i570, 1
  br i1 %i.bwo, label %bb.yt, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i571, !prof !56

bb.yt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i569
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bvz) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i571

_ZN5arrow7compute9InputTypeD2Ev.exit.i571:        ; preds = %bb.yt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i569, %bb.yp, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i566
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #20
  store i32 2, ptr %i.brp, align 4, !tbaa !74
  %i.bwp = load <2 x ptr>, ptr %74, align 16, !tbaa !86
  store ptr null, ptr %i.bsd, align 8, !tbaa !46
  store <2 x ptr> %i.bwp, ptr %81, align 16, !tbaa !86
  store ptr null, ptr %74, align 16, !tbaa !98
  %i.bwq = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %81, i64 40
  %i.bws = getelementptr inbounds nuw i8, ptr %74, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bwq, i8 0, i64 24, i1 false)
  %i.bwt = load ptr, ptr %i.bws, align 8, !tbaa !99
  store ptr %i.bwt, ptr %i.bwr, align 8, !tbaa !99
  %i.bwu = getelementptr inbounds nuw i8, ptr %74, i64 32 ; 2 uses
  %i.bwv = load ptr, ptr %i.bwu, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i572 = icmp eq ptr %i.bwv, null
  br i1 %.not.i.i.not.i.i.i.i572, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i573, label %bb.yu

bb.yu:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i571
  %i.bww = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.bwx = getelementptr inbounds nuw i8, ptr %81, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bwq, ptr noundef nonnull align 8 dereferenceable(32) %i.bww, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.bwv, ptr %i.bwx, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bwu, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i573

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i573: ; preds = %bb.yu, %_ZN5arrow7compute9InputTypeD2Ev.exit.i571
  %i.bwy = getelementptr inbounds nuw i8, ptr %81, i64 48
  %i.bwz = load i64, ptr %i.brm, align 16
  store i64 %i.bwz, ptr %i.bwy, align 16
  %i.bxa = getelementptr inbounds nuw i8, ptr %81, i64 56
  %i.bxb = getelementptr inbounds nuw i8, ptr %74, i64 56 ; 2 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %74, i64 64
  %i.bxd = load <2 x ptr>, ptr %i.bxb, align 8, !tbaa !86
  store ptr null, ptr %i.bxc, align 16, !tbaa !46
  store <2 x ptr> %i.bxd, ptr %i.bxa, align 8, !tbaa !86
  store ptr null, ptr %i.bxb, align 8, !tbaa !101
  %i.bxe = getelementptr inbounds nuw i8, ptr %81, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bxe, ptr noundef nonnull align 8 dereferenceable(20) %i.brr, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %80, ptr noundef nonnull align 8 dereferenceable(252) %i.brl, i32 noundef 30, ptr noundef nonnull %81)
          to label %bb.yv unwind label %bb.zc

bb.yv:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i573
  %i.bxf = load ptr, ptr %80, align 8, !tbaa !102 ; 2 uses
  %.not.i.i574 = icmp eq ptr %i.bxf, null
  br i1 %.not.i.i574, label %bb.ze, label %bb.yw, !prof !105

bb.yw:                                            ; preds = %bb.yv
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxf, i64 1
  %i.bxh = load i8, ptr %i.bxg, align 1, !tbaa !106, !range !115, !noundef !116
  %i.bxi = trunc nuw i8 %i.bxh to i1
  br i1 %i.bxi, label %bb.ze, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %80) #20
  br label %bb.ze

bb.yy:                                            ; preds = %bb.xc
  %i.bxj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i529

bb.yz:                                            ; preds = %.noexc3.i.i535
  %i.bxk = landingpad { ptr, i32 }
          cleanup
  br label %bb.zb

bb.za:                                            ; preds = %bb.xe
  %i.bxl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %79) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %78) #20
  br label %bb.zb

bb.zb:                                            ; preds = %bb.za, %bb.yz
  %.pn.i536 = phi { ptr, i32 } [ %i.bxl, %bb.za ], [ %i.bxk, %bb.yz ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %76) #20
  br label %.body.i533

.body.i533:                                       ; preds = %bb.zb, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i532
  %.pn.pn.i534 = phi { ptr, i32 } [ %.pn.i536, %bb.zb ], [ %i.bsb, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i532 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %77) #20
  br label %.loopexit.i529

.loopexit.i529:                                   ; preds = %.body.i533, %bb.yy
  %.pn.pn.pn.i530 = phi { ptr, i32 } [ %i.bxj, %bb.yy ], [ %.pn.pn.i534, %.body.i533 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #20
  br label %bb.zd

bb.zc:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i573
  %i.bxm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %81) #20
  br label %bb.zd

bb.zd:                                            ; preds = %bb.zc, %.loopexit.i529
  %.pn10.i531 = phi { ptr, i32 } [ %i.bxm, %bb.zc ], [ %.pn.pn.pn.i530, %.loopexit.i529 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %74) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #20
  br label %.body527

bb.ze:                                            ; preds = %bb.yx, %bb.yw, %bb.yv
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %81) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %74) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %76)
  call void @llvm.lifetime.end.p0(ptr nonnull %78)
  call void @llvm.lifetime.end.p0(ptr nonnull %79)
  call void @llvm.lifetime.end.p0(ptr nonnull %80)
  call void @llvm.lifetime.end.p0(ptr nonnull %81)
  %i.bxn = load ptr, ptr %183, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %67)
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %70)
  call void @llvm.lifetime.start.p0(ptr nonnull %71)
  call void @llvm.lifetime.start.p0(ptr nonnull %72)
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #20
  %i.bxo = getelementptr inbounds nuw i8, ptr %65, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %65, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.bxo, align 16, !tbaa !59
  %i.bxp = getelementptr inbounds nuw i8, ptr %65, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bxp, i8 0, i64 20, i1 false)
  %i.bxq = getelementptr inbounds nuw i8, ptr %65, i64 80
  store i8 1, ptr %i.bxq, align 16, !tbaa !70
  %i.bxr = getelementptr inbounds nuw i8, ptr %65, i64 84 ; 2 uses
  store i32 0, ptr %i.bxr, align 4, !tbaa !74
  %i.bxs = getelementptr inbounds nuw i8, ptr %65, i64 88
  store i32 0, ptr %i.bxs, align 8, !tbaa !75
  %i.bxt = getelementptr inbounds nuw i8, ptr %65, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_13LargeListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.bxt, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %64)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %64, i32 noundef 30)
          to label %bb.zf unwind label %bb.aba

bb.zf:                                            ; preds = %bb.ze
  store i32 2, ptr %68, align 8, !tbaa !77
  %i.bxu = getelementptr inbounds nuw i8, ptr %68, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bxu, i8 0, i64 16, i1 false)
  %i.bxv = getelementptr inbounds nuw i8, ptr %68, i64 24
  %i.bxw = getelementptr inbounds nuw i8, ptr %68, i64 32
  %i.bxx = load <2 x ptr>, ptr %64, align 16, !tbaa !86
  store <2 x ptr> %i.bxx, ptr %i.bxv, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %64)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %67, i8 0, i64 24, i1 false)
  %i.bxy = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i583 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i580 ; 4 uses

.noexc3.i.i583:                                   ; preds = %bb.zf
  store ptr %i.bxy, ptr %67, align 8, !tbaa !87
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxy, i64 40 ; 2 uses
  %i.bya = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  store ptr %i.bxz, ptr %i.bya, align 8, !tbaa !90
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bxy, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.byb, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bxy, ptr noundef nonnull align 8 dereferenceable(40) %68)
  %i.byc = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  store ptr %i.bxz, ptr %i.byc, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %69, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.zg unwind label %bb.abb

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i580: ; preds = %bb.zf
  %i.byd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i581

bb.zg:                                            ; preds = %.noexc3.i.i583
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %70, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %66, ptr noundef nonnull %67, ptr noundef nonnull %69, i1 noundef zeroext false, ptr noundef nonnull %70)
          to label %bb.zh unwind label %bb.abc

bb.zh:                                            ; preds = %bb.zg
  %i.bye = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.byf = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  %i.byg = load <2 x ptr>, ptr %66, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, i8 0, i64 16, i1 false)
  %i.byh = load ptr, ptr %i.byf, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.byg, ptr %65, align 16, !tbaa !86
  %.not.i.i.i.i.i585 = icmp eq ptr %i.byh, null
  br i1 %.not.i.i.i.i.i585, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i589, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byh, i64 8 ; 4 uses
  %i.byj = load atomic i64, ptr %i.byi acquire, align 8 ; 2 uses
  %i.byk = icmp eq i64 %i.byj, 4294967297
  %i.byl = trunc i64 %i.byj to i32                ; 2 uses
  br i1 %i.byk, label %bb.zj, label %bb.zk

bb.zj:                                            ; preds = %bb.zi
  store i32 0, ptr %i.byi, align 8, !tbaa !41
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byh, i64 12
  store i32 0, ptr %i.bym, align 4, !tbaa !43
  %i.byn = load ptr, ptr %i.byh, align 8, !tbaa !44
  %i.byo = getelementptr inbounds nuw i8, ptr %i.byn, i64 16
  %i.byp = load ptr, ptr %i.byo, align 8
  call void %i.byp(ptr noundef nonnull align 8 dereferenceable(16) %i.byh) #20, !inline_history !189
  %i.byq = load ptr, ptr %i.byh, align 8, !tbaa !44
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byq, i64 24
  %i.bys = load ptr, ptr %i.byr, align 8
  call void %i.bys(ptr noundef nonnull align 8 dereferenceable(16) %i.byh) #20, !inline_history !189
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i589

bb.zk:                                            ; preds = %bb.zi
  %i.byt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i586 = icmp eq i8 %i.byt, 0
  br i1 %.not.i.i.i.i.i.i586, label %bb.zm, label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  %i.byu = add nsw i32 %i.byl, -1
  store i32 %i.byu, ptr %i.byi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i587

bb.zm:                                            ; preds = %bb.zk
  %i.byv = atomicrmw volatile add ptr %i.byi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i587

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i587: ; preds = %bb.zm, %bb.zl
  %.0.i.i.i.i.i.i.i588 = phi i32 [ %i.byl, %bb.zl ], [ %i.byv, %bb.zm ]
  %i.byw = icmp eq i32 %.0.i.i.i.i.i.i.i588, 1
  br i1 %i.byw, label %bb.zn, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i589, !prof !56

bb.zn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i587
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.byh) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i589

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i589: ; preds = %bb.zn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i587, %bb.zj, %bb.zh
  %i.byx = load ptr, ptr %i.bye, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i590 = icmp eq ptr %i.byx, null
  br i1 %.not.i.i.i590, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i594, label %bb.zo

bb.zo:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i589
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 8 ; 4 uses
  %i.byz = load atomic i64, ptr %i.byy acquire, align 8 ; 2 uses
  %i.bza = icmp eq i64 %i.byz, 4294967297
  %i.bzb = trunc i64 %i.byz to i32                ; 2 uses
  br i1 %i.bza, label %bb.zp, label %bb.zq

bb.zp:                                            ; preds = %bb.zo
  store i32 0, ptr %i.byy, align 8, !tbaa !41
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.byx, i64 12
  store i32 0, ptr %i.bzc, align 4, !tbaa !43
  %i.bzd = load ptr, ptr %i.byx, align 8, !tbaa !44
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bzd, i64 16
  %i.bzf = load ptr, ptr %i.bze, align 8
  call void %i.bzf(ptr noundef nonnull align 8 dereferenceable(16) %i.byx) #20, !inline_history !190
  %i.bzg = load ptr, ptr %i.byx, align 8, !tbaa !44
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bzg, i64 24
  %i.bzi = load ptr, ptr %i.bzh, align 8
  call void %i.bzi(ptr noundef nonnull align 8 dereferenceable(16) %i.byx) #20, !inline_history !190
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i594

bb.zq:                                            ; preds = %bb.zo
  %i.bzj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i591 = icmp eq i8 %i.bzj, 0
  br i1 %.not.i.i.i.i591, label %bb.zs, label %bb.zr

bb.zr:                                            ; preds = %bb.zq
  %i.bzk = add nsw i32 %i.bzb, -1
  store i32 %i.bzk, ptr %i.byy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i592

bb.zs:                                            ; preds = %bb.zq
  %i.bzl = atomicrmw volatile add ptr %i.byy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i592

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i592: ; preds = %bb.zs, %bb.zr
  %.0.i.i.i.i.i593 = phi i32 [ %i.bzb, %bb.zr ], [ %i.bzl, %bb.zs ]
  %i.bzm = icmp eq i32 %.0.i.i.i.i.i593, 1
  br i1 %i.bzm, label %bb.zt, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i594, !prof !56

bb.zt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i592
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.byx) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i594

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i594: ; preds = %bb.zt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i592, %bb.zp, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i589
  %i.bzn = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.bzo = load ptr, ptr %i.bzn, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i595 = icmp eq ptr %i.bzo, null
  br i1 %.not.i.i12.i595, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i599, label %bb.zu

bb.zu:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i594
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bzo, i64 8 ; 4 uses
  %i.bzq = load atomic i64, ptr %i.bzp acquire, align 8 ; 2 uses
  %i.bzr = icmp eq i64 %i.bzq, 4294967297
  %i.bzs = trunc i64 %i.bzq to i32                ; 2 uses
  br i1 %i.bzr, label %bb.zv, label %bb.zw

bb.zv:                                            ; preds = %bb.zu
  store i32 0, ptr %i.bzp, align 8, !tbaa !41
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.bzo, i64 12
  store i32 0, ptr %i.bzt, align 4, !tbaa !43
  %i.bzu = load ptr, ptr %i.bzo, align 8, !tbaa !44
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.bzu, i64 16
  %i.bzw = load ptr, ptr %i.bzv, align 8
  call void %i.bzw(ptr noundef nonnull align 8 dereferenceable(16) %i.bzo) #20, !inline_history !191
  %i.bzx = load ptr, ptr %i.bzo, align 8, !tbaa !44
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzx, i64 24
  %i.bzz = load ptr, ptr %i.bzy, align 8
  call void %i.bzz(ptr noundef nonnull align 8 dereferenceable(16) %i.bzo) #20, !inline_history !191
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i599

bb.zw:                                            ; preds = %bb.zu
  %i.caa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i596 = icmp eq i8 %i.caa, 0
  br i1 %.not.i.i.i13.i596, label %bb.zy, label %bb.zx

bb.zx:                                            ; preds = %bb.zw
  %i.cab = add nsw i32 %i.bzs, -1
  store i32 %i.cab, ptr %i.bzp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i597

bb.zy:                                            ; preds = %bb.zw
  %i.cac = atomicrmw volatile add ptr %i.bzp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i597

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i597: ; preds = %bb.zy, %bb.zx
  %.0.i.i.i.i15.i598 = phi i32 [ %i.bzs, %bb.zx ], [ %i.cac, %bb.zy ]
  %i.cad = icmp eq i32 %.0.i.i.i.i15.i598, 1
  br i1 %i.cad, label %bb.zz, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i599, !prof !56

bb.zz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i597
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bzo) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i599

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i599: ; preds = %bb.zz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i597, %bb.zv, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i594
  %i.cae = getelementptr inbounds nuw i8, ptr %69, i64 40
  %i.caf = load ptr, ptr %i.cae, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i600 = icmp eq ptr %i.caf, null
  br i1 %.not.i.i16.i600, label %_ZNSt14_Function_baseD2Ev.exit.i.i601, label %bb.aaa

bb.aaa:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i599
  %i.cag = getelementptr inbounds nuw i8, ptr %69, i64 24 ; 2 uses
  %i.cah = invoke noundef zeroext i1 %i.caf(ptr noundef nonnull align 8 dereferenceable(32) %i.cag, ptr noundef nonnull align 8 dereferenceable(32) %i.cag, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i601 unwind label %bb.aab ; 0 uses

bb.aab:                                           ; preds = %bb.aaa
  %i.cai = landingpad { ptr, i32 }
          catch ptr null
  %i.caj = extractvalue { ptr, i32 } %i.cai, 0
  call void @__clang_call_terminate(ptr %i.caj) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i601:            ; preds = %bb.aaa, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i599
  %i.cak = getelementptr inbounds nuw i8, ptr %69, i64 16
  %i.cal = load ptr, ptr %i.cak, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i602 = icmp eq ptr %i.cal, null
  br i1 %.not.i.i.i17.i602, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i606, label %bb.aac

bb.aac:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i601
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cal, i64 8 ; 4 uses
  %i.can = load atomic i64, ptr %i.cam acquire, align 8 ; 2 uses
  %i.cao = icmp eq i64 %i.can, 4294967297
  %i.cap = trunc i64 %i.can to i32                ; 2 uses
  br i1 %i.cao, label %bb.aad, label %bb.aae

bb.aad:                                           ; preds = %bb.aac
  store i32 0, ptr %i.cam, align 8, !tbaa !41
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cal, i64 12
  store i32 0, ptr %i.caq, align 4, !tbaa !43
  %i.car = load ptr, ptr %i.cal, align 8, !tbaa !44
  %i.cas = getelementptr inbounds nuw i8, ptr %i.car, i64 16
  %i.cat = load ptr, ptr %i.cas, align 8
  call void %i.cat(ptr noundef nonnull align 8 dereferenceable(16) %i.cal) #20, !inline_history !192
  %i.cau = load ptr, ptr %i.cal, align 8, !tbaa !44
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cau, i64 24
  %i.caw = load ptr, ptr %i.cav, align 8
  call void %i.caw(ptr noundef nonnull align 8 dereferenceable(16) %i.cal) #20, !inline_history !192
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i606

bb.aae:                                           ; preds = %bb.aac
  %i.cax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i603 = icmp eq i8 %i.cax, 0
  br i1 %.not.i.i.i.i18.i603, label %bb.aag, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  %i.cay = add nsw i32 %i.cap, -1
  store i32 %i.cay, ptr %i.cam, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i604

bb.aag:                                           ; preds = %bb.aae
  %i.caz = atomicrmw volatile add ptr %i.cam, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i604

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i604: ; preds = %bb.aag, %bb.aaf
  %.0.i.i.i.i.i.i605 = phi i32 [ %i.cap, %bb.aaf ], [ %i.caz, %bb.aag ]
  %i.cba = icmp eq i32 %.0.i.i.i.i.i.i605, 1
  br i1 %i.cba, label %bb.aah, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i606, !prof !56

bb.aah:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i604
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cal) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i606

_ZN5arrow7compute10OutputTypeD2Ev.exit.i606:      ; preds = %bb.aah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i604, %bb.aad, %_ZNSt14_Function_baseD2Ev.exit.i.i601
  %i.cbb = load ptr, ptr %67, align 8, !tbaa !87
  %i.cbc = load ptr, ptr %i.byc, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.cbb, ptr noundef %i.cbc)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i607 unwind label %bb.aaj

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i607: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i606
  %i.cbd = load ptr, ptr %67, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i608 = icmp eq ptr %i.cbd, null
  br i1 %.not.i.i.i19.i608, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i609, label %bb.aai

bb.aai:                                           ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i607
  %i.cbe = load ptr, ptr %i.bya, align 8, !tbaa !90
  %i.cbf = ptrtoint ptr %i.cbe to i64
  %i.cbg = ptrtoint ptr %i.cbd to i64
  %i.cbh = sub i64 %i.cbf, %i.cbg
  call void @_ZdlPvm(ptr noundef nonnull %i.cbd, i64 noundef %i.cbh) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i609

bb.aaj:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i606
  %i.cbi = landingpad { ptr, i32 }
          catch ptr null
  %i.cbj = extractvalue { ptr, i32 } %i.cbi, 0
  call void @__clang_call_terminate(ptr %i.cbj) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i609: ; preds = %bb.aai, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i607
  %i.cbk = load ptr, ptr %i.bxw, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i610 = icmp eq ptr %i.cbk, null
  br i1 %.not.i.i.i21.i610, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i614, label %bb.aak

bb.aak:                                           ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i609
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbk, i64 8 ; 4 uses
  %i.cbm = load atomic i64, ptr %i.cbl acquire, align 8 ; 2 uses
  %i.cbn = icmp eq i64 %i.cbm, 4294967297
  %i.cbo = trunc i64 %i.cbm to i32                ; 2 uses
  br i1 %i.cbn, label %bb.aal, label %bb.aam

bb.aal:                                           ; preds = %bb.aak
  store i32 0, ptr %i.cbl, align 8, !tbaa !41
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbk, i64 12
  store i32 0, ptr %i.cbp, align 4, !tbaa !43
  %i.cbq = load ptr, ptr %i.cbk, align 8, !tbaa !44
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbq, i64 16
  %i.cbs = load ptr, ptr %i.cbr, align 8
  call void %i.cbs(ptr noundef nonnull align 8 dereferenceable(16) %i.cbk) #20, !inline_history !193
  %i.cbt = load ptr, ptr %i.cbk, align 8, !tbaa !44
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbt, i64 24
  %i.cbv = load ptr, ptr %i.cbu, align 8
  call void %i.cbv(ptr noundef nonnull align 8 dereferenceable(16) %i.cbk) #20, !inline_history !193
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i614

bb.aam:                                           ; preds = %bb.aak
  %i.cbw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i611 = icmp eq i8 %i.cbw, 0
  br i1 %.not.i.i.i.i22.i611, label %bb.aao, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.cbx = add nsw i32 %i.cbo, -1
  store i32 %i.cbx, ptr %i.cbl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i612

bb.aao:                                           ; preds = %bb.aam
  %i.cby = atomicrmw volatile add ptr %i.cbl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i612

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i612: ; preds = %bb.aao, %bb.aan
  %.0.i.i.i.i.i24.i613 = phi i32 [ %i.cbo, %bb.aan ], [ %i.cby, %bb.aao ]
  %i.cbz = icmp eq i32 %.0.i.i.i.i.i24.i613, 1
  br i1 %i.cbz, label %bb.aap, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i614, !prof !56

bb.aap:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i612
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cbk) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i614

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i614: ; preds = %bb.aap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i612, %bb.aal, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i609
  %i.cca = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.ccb = load ptr, ptr %i.cca, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i615 = icmp eq ptr %i.ccb, null
  br i1 %.not.i.i1.i.i615, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i619, label %bb.aaq

bb.aaq:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i614
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.ccb, i64 8 ; 4 uses
  %i.ccd = load atomic i64, ptr %i.ccc acquire, align 8 ; 2 uses
  %i.cce = icmp eq i64 %i.ccd, 4294967297
  %i.ccf = trunc i64 %i.ccd to i32                ; 2 uses
  br i1 %i.cce, label %bb.aar, label %bb.aas

bb.aar:                                           ; preds = %bb.aaq
  store i32 0, ptr %i.ccc, align 8, !tbaa !41
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.ccb, i64 12
  store i32 0, ptr %i.ccg, align 4, !tbaa !43
  %i.cch = load ptr, ptr %i.ccb, align 8, !tbaa !44
  %i.cci = getelementptr inbounds nuw i8, ptr %i.cch, i64 16
  %i.ccj = load ptr, ptr %i.cci, align 8
  call void %i.ccj(ptr noundef nonnull align 8 dereferenceable(16) %i.ccb) #20, !inline_history !194
  %i.cck = load ptr, ptr %i.ccb, align 8, !tbaa !44
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cck, i64 24
  %i.ccm = load ptr, ptr %i.ccl, align 8
  call void %i.ccm(ptr noundef nonnull align 8 dereferenceable(16) %i.ccb) #20, !inline_history !194
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i619

bb.aas:                                           ; preds = %bb.aaq
  %i.ccn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i616 = icmp eq i8 %i.ccn, 0
  br i1 %.not.i.i.i2.i.i616, label %bb.aau, label %bb.aat

bb.aat:                                           ; preds = %bb.aas
  %i.cco = add nsw i32 %i.ccf, -1
  store i32 %i.cco, ptr %i.ccc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i617

bb.aau:                                           ; preds = %bb.aas
  %i.ccp = atomicrmw volatile add ptr %i.ccc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i617

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i617: ; preds = %bb.aau, %bb.aat
  %.0.i.i.i.i4.i.i618 = phi i32 [ %i.ccf, %bb.aat ], [ %i.ccp, %bb.aau ]
  %i.ccq = icmp eq i32 %.0.i.i.i.i4.i.i618, 1
  br i1 %i.ccq, label %bb.aav, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i619, !prof !56

bb.aav:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i617
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ccb) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i619

_ZN5arrow7compute9InputTypeD2Ev.exit.i619:        ; preds = %bb.aav, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i617, %bb.aar, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i614
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #20
  store i32 2, ptr %i.bxr, align 4, !tbaa !74
  %i.ccr = load <2 x ptr>, ptr %65, align 16, !tbaa !86
  store ptr null, ptr %i.byf, align 8, !tbaa !46
  store <2 x ptr> %i.ccr, ptr %72, align 16, !tbaa !86
  store ptr null, ptr %65, align 16, !tbaa !98
  %i.ccs = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.cct = getelementptr inbounds nuw i8, ptr %72, i64 40
  %i.ccu = getelementptr inbounds nuw i8, ptr %65, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ccs, i8 0, i64 24, i1 false)
  %i.ccv = load ptr, ptr %i.ccu, align 8, !tbaa !99
  store ptr %i.ccv, ptr %i.cct, align 8, !tbaa !99
  %i.ccw = getelementptr inbounds nuw i8, ptr %65, i64 32 ; 2 uses
  %i.ccx = load ptr, ptr %i.ccw, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i620 = icmp eq ptr %i.ccx, null
  br i1 %.not.i.i.not.i.i.i.i620, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i621, label %bb.aaw

bb.aaw:                                           ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i619
  %i.ccy = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.ccz = getelementptr inbounds nuw i8, ptr %72, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ccs, ptr noundef nonnull align 8 dereferenceable(32) %i.ccy, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.ccx, ptr %i.ccz, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ccw, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i621

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i621: ; preds = %bb.aaw, %_ZN5arrow7compute9InputTypeD2Ev.exit.i619
  %i.cda = getelementptr inbounds nuw i8, ptr %72, i64 48
  %i.cdb = load i64, ptr %i.bxo, align 16
  store i64 %i.cdb, ptr %i.cda, align 16
  %i.cdc = getelementptr inbounds nuw i8, ptr %72, i64 56
  %i.cdd = getelementptr inbounds nuw i8, ptr %65, i64 56 ; 2 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %65, i64 64
  %i.cdf = load <2 x ptr>, ptr %i.cdd, align 8, !tbaa !86
  store ptr null, ptr %i.cde, align 16, !tbaa !46
  store <2 x ptr> %i.cdf, ptr %i.cdc, align 8, !tbaa !86
  store ptr null, ptr %i.cdd, align 8, !tbaa !101
  %i.cdg = getelementptr inbounds nuw i8, ptr %72, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cdg, ptr noundef nonnull align 8 dereferenceable(20) %i.bxt, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %71, ptr noundef nonnull align 8 dereferenceable(252) %i.bxn, i32 noundef 30, ptr noundef nonnull %72)
          to label %bb.aax unwind label %bb.abe

bb.aax:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i621
  %i.cdh = load ptr, ptr %71, align 8, !tbaa !102 ; 2 uses
  %.not.i.i622 = icmp eq ptr %i.cdh, null
  br i1 %.not.i.i622, label %bb.abg, label %bb.aay, !prof !105

bb.aay:                                           ; preds = %bb.aax
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 1
  %i.cdj = load i8, ptr %i.cdi, align 1, !tbaa !106, !range !115, !noundef !116
  %i.cdk = trunc nuw i8 %i.cdj to i1
  br i1 %i.cdk, label %bb.abg, label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %71) #20
  br label %bb.abg

bb.aba:                                           ; preds = %bb.ze
  %i.cdl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i577

bb.abb:                                           ; preds = %.noexc3.i.i583
  %i.cdm = landingpad { ptr, i32 }
          cleanup
  br label %bb.abd

bb.abc:                                           ; preds = %bb.zg
  %i.cdn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %70) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %69) #20
  br label %bb.abd

bb.abd:                                           ; preds = %bb.abc, %bb.abb
  %.pn.i584 = phi { ptr, i32 } [ %i.cdn, %bb.abc ], [ %i.cdm, %bb.abb ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %67) #20
  br label %.body.i581

.body.i581:                                       ; preds = %bb.abd, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i580
  %.pn.pn.i582 = phi { ptr, i32 } [ %.pn.i584, %bb.abd ], [ %i.byd, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i580 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %68) #20
  br label %.loopexit.i577

.loopexit.i577:                                   ; preds = %.body.i581, %bb.aba
  %.pn.pn.pn.i578 = phi { ptr, i32 } [ %i.cdl, %bb.aba ], [ %.pn.pn.i582, %.body.i581 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #20
  br label %bb.abf

bb.abe:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i621
  %i.cdo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %72) #20
  br label %bb.abf

bb.abf:                                           ; preds = %bb.abe, %.loopexit.i577
  %.pn10.i579 = phi { ptr, i32 } [ %i.cdo, %bb.abe ], [ %.pn.pn.pn.i578, %.loopexit.i577 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %65) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #20
  br label %.body527

bb.abg:                                           ; preds = %bb.aaz, %bb.aay, %bb.aax
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %72) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %65) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %67)
  call void @llvm.lifetime.end.p0(ptr nonnull %69)
  call void @llvm.lifetime.end.p0(ptr nonnull %70)
  call void @llvm.lifetime.end.p0(ptr nonnull %71)
  call void @llvm.lifetime.end.p0(ptr nonnull %72)
  call void @llvm.lifetime.start.p0(ptr nonnull %187) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 32, ptr %i.d, align 4, !tbaa !33
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.cdp = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #21
          to label %.noexc626 unwind label %bb.avm ; 6 uses

.noexc626:                                        ; preds = %bb.abg
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdp, i64 8
  store i32 1, ptr %i.cdq, align 8, !tbaa !41, !noalias !195
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdp, i64 12
  store i32 1, ptr %i.cdr, align 4, !tbaa !43, !noalias !195
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cdp, align 8, !tbaa !44, !noalias !195
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdp, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA21_KcNS0_4Type4typeEEEvPT_DpOT0_(ptr noundef nonnull %i.cds, ptr noundef nonnull align 1 dereferenceable(21) @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.abh unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i625, !noalias !195

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i625: ; preds = %.noexc626
  %i.cdt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cdp, i64 noundef 272) #22, !noalias !195
  br label %.body627

bb.abh:                                           ; preds = %.noexc626
  %i.cdu = getelementptr inbounds nuw i8, ptr %187, i64 8 ; 3 uses
  store ptr %i.cdp, ptr %i.cdu, align 8, !tbaa !46, !alias.scope !195
  store ptr %i.cds, ptr %187, align 16, !tbaa !50, !alias.scope !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %188, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.abi unwind label %bb.avn

bb.abi:                                           ; preds = %bb.abh
  invoke void @_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE(i32 noundef 32, ptr noundef nonnull %188, ptr noundef nonnull %i.cds)
          to label %bb.abj unwind label %bb.avo

bb.abj:                                           ; preds = %bb.abi
  %i.cdv = getelementptr inbounds nuw i8, ptr %188, i64 40
  %i.cdw = load ptr, ptr %i.cdv, align 8, !tbaa !52 ; 2 uses
  %.not.i.i629 = icmp eq ptr %i.cdw, null
  br i1 %.not.i.i629, label %_ZNSt14_Function_baseD2Ev.exit.i630, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.cdx = getelementptr inbounds nuw i8, ptr %188, i64 24 ; 2 uses
  %i.cdy = invoke noundef zeroext i1 %i.cdw(ptr noundef nonnull align 8 dereferenceable(32) %i.cdx, ptr noundef nonnull align 8 dereferenceable(32) %i.cdx, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i630 unwind label %bb.abl ; 0 uses

bb.abl:                                           ; preds = %bb.abk
  %i.cdz = landingpad { ptr, i32 }
          catch ptr null
  %i.cea = extractvalue { ptr, i32 } %i.cdz, 0
  call void @__clang_call_terminate(ptr %i.cea) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i630:              ; preds = %bb.abk, %bb.abj
  %i.ceb = getelementptr inbounds nuw i8, ptr %188, i64 16
  %i.cec = load ptr, ptr %i.ceb, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i631 = icmp eq ptr %i.cec, null
  br i1 %.not.i.i.i631, label %_ZN5arrow7compute10OutputTypeD2Ev.exit635, label %bb.abm

bb.abm:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i630
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cec, i64 8 ; 4 uses
  %i.cee = load atomic i64, ptr %i.ced acquire, align 8 ; 2 uses
  %i.cef = icmp eq i64 %i.cee, 4294967297
  %i.ceg = trunc i64 %i.cee to i32                ; 2 uses
  br i1 %i.cef, label %bb.abn, label %bb.abo

bb.abn:                                           ; preds = %bb.abm
  store i32 0, ptr %i.ced, align 8, !tbaa !41
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.cec, i64 12
  store i32 0, ptr %i.ceh, align 4, !tbaa !43
  %i.cei = load ptr, ptr %i.cec, align 8, !tbaa !44
  %i.cej = getelementptr inbounds nuw i8, ptr %i.cei, i64 16
  %i.cek = load ptr, ptr %i.cej, align 8
  call void %i.cek(ptr noundef nonnull align 8 dereferenceable(16) %i.cec) #20, !inline_history !54
  %i.cel = load ptr, ptr %i.cec, align 8, !tbaa !44
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cel, i64 24
  %i.cen = load ptr, ptr %i.cem, align 8
  call void %i.cen(ptr noundef nonnull align 8 dereferenceable(16) %i.cec) #20, !inline_history !54
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit635

bb.abo:                                           ; preds = %bb.abm
  %i.ceo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i632 = icmp eq i8 %i.ceo, 0
  br i1 %.not.i.i.i.i632, label %bb.abq, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %i.cep = add nsw i32 %i.ceg, -1
  store i32 %i.cep, ptr %i.ced, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i633

bb.abq:                                           ; preds = %bb.abo
  %i.ceq = atomicrmw volatile add ptr %i.ced, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i633

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i633: ; preds = %bb.abq, %bb.abp
  %.0.i.i.i.i.i634 = phi i32 [ %i.ceg, %bb.abp ], [ %i.ceq, %bb.abq ]
  %i.cer = icmp eq i32 %.0.i.i.i.i.i634, 1
  br i1 %i.cer, label %bb.abr, label %_ZN5arrow7compute10OutputTypeD2Ev.exit635, !prof !56

bb.abr:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i633
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cec) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit635

_ZN5arrow7compute10OutputTypeD2Ev.exit635:        ; preds = %_ZNSt14_Function_baseD2Ev.exit.i630, %bb.abn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i633, %bb.abr
  %i.ces = load ptr, ptr %187, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  call void @llvm.lifetime.start.p0(ptr nonnull %60)
  call void @llvm.lifetime.start.p0(ptr nonnull %61)
  call void @llvm.lifetime.start.p0(ptr nonnull %62)
  call void @llvm.lifetime.start.p0(ptr nonnull %63)
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #20
  %i.cet = getelementptr inbounds nuw i8, ptr %56, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %56, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.cet, align 16, !tbaa !59
  %i.ceu = getelementptr inbounds nuw i8, ptr %56, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ceu, i8 0, i64 20, i1 false)
  %i.cev = getelementptr inbounds nuw i8, ptr %56, i64 80
  store i8 1, ptr %i.cev, align 16, !tbaa !70
  %i.cew = getelementptr inbounds nuw i8, ptr %56, i64 84 ; 2 uses
  store i32 0, ptr %i.cew, align 4, !tbaa !74
  %i.cex = getelementptr inbounds nuw i8, ptr %56, i64 88
  store i32 0, ptr %i.cex, align 8, !tbaa !75
  %i.cey = getelementptr inbounds nuw i8, ptr %56, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_113CastFixedList4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.cey, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %55, i32 noundef 32)
          to label %bb.abs unwind label %bb.adn

bb.abs:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit635
  store i32 2, ptr %59, align 8, !tbaa !77
  %i.cez = getelementptr inbounds nuw i8, ptr %59, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cez, i8 0, i64 16, i1 false)
  %i.cfa = getelementptr inbounds nuw i8, ptr %59, i64 24
  %i.cfb = getelementptr inbounds nuw i8, ptr %59, i64 32
  %i.cfc = load <2 x ptr>, ptr %55, align 16, !tbaa !86
  store <2 x ptr> %i.cfc, ptr %i.cfa, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %55)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  %i.cfd = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i642 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i639 ; 4 uses

.noexc3.i.i642:                                   ; preds = %bb.abs
  store ptr %i.cfd, ptr %58, align 8, !tbaa !87
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cfd, i64 40 ; 2 uses
  %i.cff = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  store ptr %i.cfe, ptr %i.cff, align 8, !tbaa !90
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cfd, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cfg, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.cfd, ptr noundef nonnull align 8 dereferenceable(40) %59)
  %i.cfh = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  store ptr %i.cfe, ptr %i.cfh, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %60, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.abt unwind label %bb.ado

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i639: ; preds = %bb.abs
  %i.cfi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i640

bb.abt:                                           ; preds = %.noexc3.i.i642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %57, ptr noundef nonnull %58, ptr noundef nonnull %60, i1 noundef zeroext false, ptr noundef nonnull %61)
          to label %bb.abu unwind label %bb.adp

bb.abu:                                           ; preds = %bb.abt
  %i.cfj = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.cfk = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  %i.cfl = load <2 x ptr>, ptr %57, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  %i.cfm = load ptr, ptr %i.cfk, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.cfl, ptr %56, align 16, !tbaa !86
  %.not.i.i.i.i.i644 = icmp eq ptr %i.cfm, null
  br i1 %.not.i.i.i.i.i644, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i648, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8 ; 4 uses
  %i.cfo = load atomic i64, ptr %i.cfn acquire, align 8 ; 2 uses
  %i.cfp = icmp eq i64 %i.cfo, 4294967297
  %i.cfq = trunc i64 %i.cfo to i32                ; 2 uses
  br i1 %i.cfp, label %bb.abw, label %bb.abx

bb.abw:                                           ; preds = %bb.abv
  store i32 0, ptr %i.cfn, align 8, !tbaa !41
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfm, i64 12
  store i32 0, ptr %i.cfr, align 4, !tbaa !43
  %i.cfs = load ptr, ptr %i.cfm, align 8, !tbaa !44
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cfs, i64 16
  %i.cfu = load ptr, ptr %i.cft, align 8
  call void %i.cfu(ptr noundef nonnull align 8 dereferenceable(16) %i.cfm) #20, !inline_history !198
  %i.cfv = load ptr, ptr %i.cfm, align 8, !tbaa !44
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfv, i64 24
  %i.cfx = load ptr, ptr %i.cfw, align 8
  call void %i.cfx(ptr noundef nonnull align 8 dereferenceable(16) %i.cfm) #20, !inline_history !198
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i648

bb.abx:                                           ; preds = %bb.abv
  %i.cfy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i645 = icmp eq i8 %i.cfy, 0
  br i1 %.not.i.i.i.i.i.i645, label %bb.abz, label %bb.aby

bb.aby:                                           ; preds = %bb.abx
  %i.cfz = add nsw i32 %i.cfq, -1
  store i32 %i.cfz, ptr %i.cfn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i646

bb.abz:                                           ; preds = %bb.abx
  %i.cga = atomicrmw volatile add ptr %i.cfn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i646

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i646: ; preds = %bb.abz, %bb.aby
  %.0.i.i.i.i.i.i.i647 = phi i32 [ %i.cfq, %bb.aby ], [ %i.cga, %bb.abz ]
  %i.cgb = icmp eq i32 %.0.i.i.i.i.i.i.i647, 1
  br i1 %i.cgb, label %bb.aca, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i648, !prof !56

bb.aca:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i646
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cfm) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i648

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i648: ; preds = %bb.aca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i646, %bb.abw, %bb.abu
  %i.cgc = load ptr, ptr %i.cfj, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i649 = icmp eq ptr %i.cgc, null
  br i1 %.not.i.i.i649, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i653, label %bb.acb

bb.acb:                                           ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i648
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.cgc, i64 8 ; 4 uses
  %i.cge = load atomic i64, ptr %i.cgd acquire, align 8 ; 2 uses
  %i.cgf = icmp eq i64 %i.cge, 4294967297
  %i.cgg = trunc i64 %i.cge to i32                ; 2 uses
  br i1 %i.cgf, label %bb.acc, label %bb.acd

bb.acc:                                           ; preds = %bb.acb
  store i32 0, ptr %i.cgd, align 8, !tbaa !41
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cgc, i64 12
  store i32 0, ptr %i.cgh, align 4, !tbaa !43
  %i.cgi = load ptr, ptr %i.cgc, align 8, !tbaa !44
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cgi, i64 16
  %i.cgk = load ptr, ptr %i.cgj, align 8
  call void %i.cgk(ptr noundef nonnull align 8 dereferenceable(16) %i.cgc) #20, !inline_history !199
  %i.cgl = load ptr, ptr %i.cgc, align 8, !tbaa !44
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cgl, i64 24
  %i.cgn = load ptr, ptr %i.cgm, align 8
  call void %i.cgn(ptr noundef nonnull align 8 dereferenceable(16) %i.cgc) #20, !inline_history !199
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i653

bb.acd:                                           ; preds = %bb.acb
  %i.cgo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i650 = icmp eq i8 %i.cgo, 0
  br i1 %.not.i.i.i.i650, label %bb.acf, label %bb.ace

bb.ace:                                           ; preds = %bb.acd
  %i.cgp = add nsw i32 %i.cgg, -1
  store i32 %i.cgp, ptr %i.cgd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i651

bb.acf:                                           ; preds = %bb.acd
  %i.cgq = atomicrmw volatile add ptr %i.cgd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i651

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i651: ; preds = %bb.acf, %bb.ace
  %.0.i.i.i.i.i652 = phi i32 [ %i.cgg, %bb.ace ], [ %i.cgq, %bb.acf ]
  %i.cgr = icmp eq i32 %.0.i.i.i.i.i652, 1
  br i1 %i.cgr, label %bb.acg, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i653, !prof !56

bb.acg:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i651
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cgc) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i653

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i653: ; preds = %bb.acg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i651, %bb.acc, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i648
  %i.cgs = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.cgt = load ptr, ptr %i.cgs, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i654 = icmp eq ptr %i.cgt, null
  br i1 %.not.i.i12.i654, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i658, label %bb.ach

bb.ach:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i653
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cgt, i64 8 ; 4 uses
  %i.cgv = load atomic i64, ptr %i.cgu acquire, align 8 ; 2 uses
  %i.cgw = icmp eq i64 %i.cgv, 4294967297
  %i.cgx = trunc i64 %i.cgv to i32                ; 2 uses
  br i1 %i.cgw, label %bb.aci, label %bb.acj

bb.aci:                                           ; preds = %bb.ach
  store i32 0, ptr %i.cgu, align 8, !tbaa !41
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.cgt, i64 12
  store i32 0, ptr %i.cgy, align 4, !tbaa !43
  %i.cgz = load ptr, ptr %i.cgt, align 8, !tbaa !44
  %i.cha = getelementptr inbounds nuw i8, ptr %i.cgz, i64 16
  %i.chb = load ptr, ptr %i.cha, align 8
  call void %i.chb(ptr noundef nonnull align 8 dereferenceable(16) %i.cgt) #20, !inline_history !200
  %i.chc = load ptr, ptr %i.cgt, align 8, !tbaa !44
  %i.chd = getelementptr inbounds nuw i8, ptr %i.chc, i64 24
  %i.che = load ptr, ptr %i.chd, align 8
  call void %i.che(ptr noundef nonnull align 8 dereferenceable(16) %i.cgt) #20, !inline_history !200
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i658

bb.acj:                                           ; preds = %bb.ach
  %i.chf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i655 = icmp eq i8 %i.chf, 0
  br i1 %.not.i.i.i13.i655, label %bb.acl, label %bb.ack

bb.ack:                                           ; preds = %bb.acj
  %i.chg = add nsw i32 %i.cgx, -1
  store i32 %i.chg, ptr %i.cgu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i656

bb.acl:                                           ; preds = %bb.acj
  %i.chh = atomicrmw volatile add ptr %i.cgu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i656

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i656: ; preds = %bb.acl, %bb.ack
  %.0.i.i.i.i15.i657 = phi i32 [ %i.cgx, %bb.ack ], [ %i.chh, %bb.acl ]
  %i.chi = icmp eq i32 %.0.i.i.i.i15.i657, 1
  br i1 %i.chi, label %bb.acm, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i658, !prof !56

bb.acm:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i656
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cgt) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i658

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i658: ; preds = %bb.acm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i656, %bb.aci, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i653
  %i.chj = getelementptr inbounds nuw i8, ptr %60, i64 40
  %i.chk = load ptr, ptr %i.chj, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i659 = icmp eq ptr %i.chk, null
  br i1 %.not.i.i16.i659, label %_ZNSt14_Function_baseD2Ev.exit.i.i660, label %bb.acn

bb.acn:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i658
  %i.chl = getelementptr inbounds nuw i8, ptr %60, i64 24 ; 2 uses
  %i.chm = invoke noundef zeroext i1 %i.chk(ptr noundef nonnull align 8 dereferenceable(32) %i.chl, ptr noundef nonnull align 8 dereferenceable(32) %i.chl, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i660 unwind label %bb.aco ; 0 uses

bb.aco:                                           ; preds = %bb.acn
  %i.chn = landingpad { ptr, i32 }
          catch ptr null
  %i.cho = extractvalue { ptr, i32 } %i.chn, 0
  call void @__clang_call_terminate(ptr %i.cho) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i660:            ; preds = %bb.acn, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i658
  %i.chp = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.chq = load ptr, ptr %i.chp, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i661 = icmp eq ptr %i.chq, null
  br i1 %.not.i.i.i17.i661, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i665, label %bb.acp

bb.acp:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i660
  %i.chr = getelementptr inbounds nuw i8, ptr %i.chq, i64 8 ; 4 uses
  %i.chs = load atomic i64, ptr %i.chr acquire, align 8 ; 2 uses
  %i.cht = icmp eq i64 %i.chs, 4294967297
  %i.chu = trunc i64 %i.chs to i32                ; 2 uses
  br i1 %i.cht, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %bb.acp
  store i32 0, ptr %i.chr, align 8, !tbaa !41
  %i.chv = getelementptr inbounds nuw i8, ptr %i.chq, i64 12
  store i32 0, ptr %i.chv, align 4, !tbaa !43
  %i.chw = load ptr, ptr %i.chq, align 8, !tbaa !44
  %i.chx = getelementptr inbounds nuw i8, ptr %i.chw, i64 16
  %i.chy = load ptr, ptr %i.chx, align 8
  call void %i.chy(ptr noundef nonnull align 8 dereferenceable(16) %i.chq) #20, !inline_history !201
  %i.chz = load ptr, ptr %i.chq, align 8, !tbaa !44
  %i.cia = getelementptr inbounds nuw i8, ptr %i.chz, i64 24
  %i.cib = load ptr, ptr %i.cia, align 8
  call void %i.cib(ptr noundef nonnull align 8 dereferenceable(16) %i.chq) #20, !inline_history !201
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i665

bb.acr:                                           ; preds = %bb.acp
  %i.cic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i662 = icmp eq i8 %i.cic, 0
  br i1 %.not.i.i.i.i18.i662, label %bb.act, label %bb.acs

bb.acs:                                           ; preds = %bb.acr
  %i.cid = add nsw i32 %i.chu, -1
  store i32 %i.cid, ptr %i.chr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i663

bb.act:                                           ; preds = %bb.acr
  %i.cie = atomicrmw volatile add ptr %i.chr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i663

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i663: ; preds = %bb.act, %bb.acs
  %.0.i.i.i.i.i.i664 = phi i32 [ %i.chu, %bb.acs ], [ %i.cie, %bb.act ]
  %i.cif = icmp eq i32 %.0.i.i.i.i.i.i664, 1
  br i1 %i.cif, label %bb.acu, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i665, !prof !56

bb.acu:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i663
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.chq) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i665

_ZN5arrow7compute10OutputTypeD2Ev.exit.i665:      ; preds = %bb.acu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i663, %bb.acq, %_ZNSt14_Function_baseD2Ev.exit.i.i660
  %i.cig = load ptr, ptr %58, align 8, !tbaa !87
  %i.cih = load ptr, ptr %i.cfh, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.cig, ptr noundef %i.cih)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i666 unwind label %bb.acw

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i666: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i665
  %i.cii = load ptr, ptr %58, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i667 = icmp eq ptr %i.cii, null
  br i1 %.not.i.i.i19.i667, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i668, label %bb.acv

bb.acv:                                           ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i666
  %i.cij = load ptr, ptr %i.cff, align 8, !tbaa !90
  %i.cik = ptrtoint ptr %i.cij to i64
  %i.cil = ptrtoint ptr %i.cii to i64
  %i.cim = sub i64 %i.cik, %i.cil
  call void @_ZdlPvm(ptr noundef nonnull %i.cii, i64 noundef %i.cim) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i668

bb.acw:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i665
  %i.cin = landingpad { ptr, i32 }
          catch ptr null
  %i.cio = extractvalue { ptr, i32 } %i.cin, 0
  call void @__clang_call_terminate(ptr %i.cio) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i668: ; preds = %bb.acv, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i666
  %i.cip = load ptr, ptr %i.cfb, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i669 = icmp eq ptr %i.cip, null
  br i1 %.not.i.i.i21.i669, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i673, label %bb.acx

bb.acx:                                           ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i668
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cip, i64 8 ; 4 uses
  %i.cir = load atomic i64, ptr %i.ciq acquire, align 8 ; 2 uses
  %i.cis = icmp eq i64 %i.cir, 4294967297
  %i.cit = trunc i64 %i.cir to i32                ; 2 uses
  br i1 %i.cis, label %bb.acy, label %bb.acz

bb.acy:                                           ; preds = %bb.acx
  store i32 0, ptr %i.ciq, align 8, !tbaa !41
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.cip, i64 12
  store i32 0, ptr %i.ciu, align 4, !tbaa !43
  %i.civ = load ptr, ptr %i.cip, align 8, !tbaa !44
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.civ, i64 16
  %i.cix = load ptr, ptr %i.ciw, align 8
  call void %i.cix(ptr noundef nonnull align 8 dereferenceable(16) %i.cip) #20, !inline_history !202
  %i.ciy = load ptr, ptr %i.cip, align 8, !tbaa !44
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciy, i64 24
  %i.cja = load ptr, ptr %i.ciz, align 8
  call void %i.cja(ptr noundef nonnull align 8 dereferenceable(16) %i.cip) #20, !inline_history !202
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i673

bb.acz:                                           ; preds = %bb.acx
  %i.cjb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i670 = icmp eq i8 %i.cjb, 0
  br i1 %.not.i.i.i.i22.i670, label %bb.adb, label %bb.ada

bb.ada:                                           ; preds = %bb.acz
  %i.cjc = add nsw i32 %i.cit, -1
  store i32 %i.cjc, ptr %i.ciq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i671

bb.adb:                                           ; preds = %bb.acz
  %i.cjd = atomicrmw volatile add ptr %i.ciq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i671

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i671: ; preds = %bb.adb, %bb.ada
  %.0.i.i.i.i.i24.i672 = phi i32 [ %i.cit, %bb.ada ], [ %i.cjd, %bb.adb ]
  %i.cje = icmp eq i32 %.0.i.i.i.i.i24.i672, 1
  br i1 %i.cje, label %bb.adc, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i673, !prof !56

bb.adc:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i671
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cip) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i673

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i673: ; preds = %bb.adc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i671, %bb.acy, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i668
  %i.cjf = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.cjg = load ptr, ptr %i.cjf, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i674 = icmp eq ptr %i.cjg, null
  br i1 %.not.i.i1.i.i674, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i678, label %bb.add

bb.add:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i673
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cjg, i64 8 ; 4 uses
  %i.cji = load atomic i64, ptr %i.cjh acquire, align 8 ; 2 uses
  %i.cjj = icmp eq i64 %i.cji, 4294967297
  %i.cjk = trunc i64 %i.cji to i32                ; 2 uses
  br i1 %i.cjj, label %bb.ade, label %bb.adf

bb.ade:                                           ; preds = %bb.add
  store i32 0, ptr %i.cjh, align 8, !tbaa !41
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cjg, i64 12
  store i32 0, ptr %i.cjl, align 4, !tbaa !43
  %i.cjm = load ptr, ptr %i.cjg, align 8, !tbaa !44
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cjm, i64 16
  %i.cjo = load ptr, ptr %i.cjn, align 8
  call void %i.cjo(ptr noundef nonnull align 8 dereferenceable(16) %i.cjg) #20, !inline_history !203
  %i.cjp = load ptr, ptr %i.cjg, align 8, !tbaa !44
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjp, i64 24
  %i.cjr = load ptr, ptr %i.cjq, align 8
  call void %i.cjr(ptr noundef nonnull align 8 dereferenceable(16) %i.cjg) #20, !inline_history !203
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i678

bb.adf:                                           ; preds = %bb.add
  %i.cjs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i675 = icmp eq i8 %i.cjs, 0
  br i1 %.not.i.i.i2.i.i675, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.cjt = add nsw i32 %i.cjk, -1
  store i32 %i.cjt, ptr %i.cjh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i676

bb.adh:                                           ; preds = %bb.adf
  %i.cju = atomicrmw volatile add ptr %i.cjh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i676

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i676: ; preds = %bb.adh, %bb.adg
  %.0.i.i.i.i4.i.i677 = phi i32 [ %i.cjk, %bb.adg ], [ %i.cju, %bb.adh ]
  %i.cjv = icmp eq i32 %.0.i.i.i.i4.i.i677, 1
  br i1 %i.cjv, label %bb.adi, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i678, !prof !56

bb.adi:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i676
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cjg) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i678

_ZN5arrow7compute9InputTypeD2Ev.exit.i678:        ; preds = %bb.adi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i676, %bb.ade, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i673
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20
  store i32 2, ptr %i.cew, align 4, !tbaa !74
  %i.cjw = load <2 x ptr>, ptr %56, align 16, !tbaa !86
  store ptr null, ptr %i.cfk, align 8, !tbaa !46
  store <2 x ptr> %i.cjw, ptr %63, align 16, !tbaa !86
  store ptr null, ptr %56, align 16, !tbaa !98
  %i.cjx = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.cjy = getelementptr inbounds nuw i8, ptr %63, i64 40
  %i.cjz = getelementptr inbounds nuw i8, ptr %56, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cjx, i8 0, i64 24, i1 false)
  %i.cka = load ptr, ptr %i.cjz, align 8, !tbaa !99
  store ptr %i.cka, ptr %i.cjy, align 8, !tbaa !99
  %i.ckb = getelementptr inbounds nuw i8, ptr %56, i64 32 ; 2 uses
  %i.ckc = load ptr, ptr %i.ckb, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i679 = icmp eq ptr %i.ckc, null
  br i1 %.not.i.i.not.i.i.i.i679, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i680, label %bb.adj

bb.adj:                                           ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i678
  %i.ckd = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.cke = getelementptr inbounds nuw i8, ptr %63, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cjx, ptr noundef nonnull align 8 dereferenceable(32) %i.ckd, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.ckc, ptr %i.cke, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ckb, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i680

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i680: ; preds = %bb.adj, %_ZN5arrow7compute9InputTypeD2Ev.exit.i678
  %i.ckf = getelementptr inbounds nuw i8, ptr %63, i64 48
  %i.ckg = load i64, ptr %i.cet, align 16
  store i64 %i.ckg, ptr %i.ckf, align 16
  %i.ckh = getelementptr inbounds nuw i8, ptr %63, i64 56
  %i.cki = getelementptr inbounds nuw i8, ptr %56, i64 56 ; 2 uses
  %i.ckj = getelementptr inbounds nuw i8, ptr %56, i64 64
  %i.ckk = load <2 x ptr>, ptr %i.cki, align 8, !tbaa !86
  store ptr null, ptr %i.ckj, align 16, !tbaa !46
  store <2 x ptr> %i.ckk, ptr %i.ckh, align 8, !tbaa !86
  store ptr null, ptr %i.cki, align 8, !tbaa !101
  %i.ckl = getelementptr inbounds nuw i8, ptr %63, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ckl, ptr noundef nonnull align 8 dereferenceable(20) %i.cey, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %62, ptr noundef nonnull align 8 dereferenceable(252) %i.ces, i32 noundef 32, ptr noundef nonnull %63)
          to label %bb.adk unwind label %bb.adr

bb.adk:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i680
  %i.ckm = load ptr, ptr %62, align 8, !tbaa !102 ; 2 uses
  %.not.i.i681 = icmp eq ptr %i.ckm, null
  br i1 %.not.i.i681, label %bb.adt, label %bb.adl, !prof !105

bb.adl:                                           ; preds = %bb.adk
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.ckm, i64 1
  %i.cko = load i8, ptr %i.ckn, align 1, !tbaa !106, !range !115, !noundef !116
  %i.ckp = trunc nuw i8 %i.cko to i1
  br i1 %i.ckp, label %bb.adt, label %bb.adm

bb.adm:                                           ; preds = %bb.adl
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %62) #20
  br label %bb.adt

bb.adn:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit635
  %i.ckq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i636

bb.ado:                                           ; preds = %.noexc3.i.i642
  %i.ckr = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

bb.adp:                                           ; preds = %bb.abt
  %i.cks = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %61) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %60) #20
  br label %bb.adq

bb.adq:                                           ; preds = %bb.adp, %bb.ado
  %.pn.i643 = phi { ptr, i32 } [ %i.cks, %bb.adp ], [ %i.ckr, %bb.ado ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %58) #20
  br label %.body.i640

.body.i640:                                       ; preds = %bb.adq, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i639
  %.pn.pn.i641 = phi { ptr, i32 } [ %.pn.i643, %bb.adq ], [ %i.cfi, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i639 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %59) #20
  br label %.loopexit.i636

.loopexit.i636:                                   ; preds = %.body.i640, %bb.adn
  %.pn.pn.pn.i637 = phi { ptr, i32 } [ %i.ckq, %bb.adn ], [ %.pn.pn.i641, %.body.i640 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20
  br label %bb.ads

bb.adr:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i680
  %i.ckt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %63) #20
  br label %bb.ads

bb.ads:                                           ; preds = %bb.adr, %.loopexit.i636
  %.pn10.i638 = phi { ptr, i32 } [ %i.ckt, %bb.adr ], [ %.pn.pn.pn.i637, %.loopexit.i636 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %56) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  br label %.body682

bb.adt:                                           ; preds = %bb.adm, %bb.adl, %bb.adk
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %63) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %56) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %58)
  call void @llvm.lifetime.end.p0(ptr nonnull %60)
  call void @llvm.lifetime.end.p0(ptr nonnull %61)
  call void @llvm.lifetime.end.p0(ptr nonnull %62)
  call void @llvm.lifetime.end.p0(ptr nonnull %63)
  %i.cku = load ptr, ptr %187, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  %i.ckv = getelementptr inbounds nuw i8, ptr %47, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %47, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.ckv, align 16, !tbaa !59
  %i.ckw = getelementptr inbounds nuw i8, ptr %47, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ckw, i8 0, i64 20, i1 false)
  %i.ckx = getelementptr inbounds nuw i8, ptr %47, i64 80
  store i8 1, ptr %i.ckx, align 16, !tbaa !70
  %i.cky = getelementptr inbounds nuw i8, ptr %47, i64 84 ; 2 uses
  store i32 0, ptr %i.cky, align 4, !tbaa !74
  %i.ckz = getelementptr inbounds nuw i8, ptr %47, i64 88
  store i32 0, ptr %i.ckz, align 8, !tbaa !75
  %i.cla = getelementptr inbounds nuw i8, ptr %47, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.cla, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %46, i32 noundef 25)
          to label %bb.adu unwind label %bb.afp

bb.adu:                                           ; preds = %bb.adt
  store i32 2, ptr %50, align 8, !tbaa !77
  %i.clb = getelementptr inbounds nuw i8, ptr %50, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.clb, i8 0, i64 16, i1 false)
  %i.clc = getelementptr inbounds nuw i8, ptr %50, i64 24
  %i.cld = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.cle = load <2 x ptr>, ptr %46, align 16, !tbaa !86
  store <2 x ptr> %i.cle, ptr %i.clc, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %i.clf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i690 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i687 ; 4 uses

.noexc3.i.i690:                                   ; preds = %bb.adu
  store ptr %i.clf, ptr %49, align 8, !tbaa !87
  %i.clg = getelementptr inbounds nuw i8, ptr %i.clf, i64 40 ; 2 uses
  %i.clh = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  store ptr %i.clg, ptr %i.clh, align 8, !tbaa !90
  %i.cli = getelementptr inbounds nuw i8, ptr %i.clf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cli, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.clf, ptr noundef nonnull align 8 dereferenceable(40) %50)
  %i.clj = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  store ptr %i.clg, ptr %i.clj, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %51, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.adv unwind label %bb.afq

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i687: ; preds = %bb.adu
  %i.clk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i688

bb.adv:                                           ; preds = %.noexc3.i.i690
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %48, ptr noundef nonnull %49, ptr noundef nonnull %51, i1 noundef zeroext false, ptr noundef nonnull %52)
          to label %bb.adw unwind label %bb.afr

bb.adw:                                           ; preds = %bb.adv
  %i.cll = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.clm = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.cln = load <2 x ptr>, ptr %48, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, i8 0, i64 16, i1 false)
  %i.clo = load ptr, ptr %i.clm, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.cln, ptr %47, align 16, !tbaa !86
  %.not.i.i.i.i.i692 = icmp eq ptr %i.clo, null
  br i1 %.not.i.i.i.i.i692, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i696, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.clp = getelementptr inbounds nuw i8, ptr %i.clo, i64 8 ; 4 uses
  %i.clq = load atomic i64, ptr %i.clp acquire, align 8 ; 2 uses
  %i.clr = icmp eq i64 %i.clq, 4294967297
  %i.cls = trunc i64 %i.clq to i32                ; 2 uses
  br i1 %i.clr, label %bb.ady, label %bb.adz

bb.ady:                                           ; preds = %bb.adx
  store i32 0, ptr %i.clp, align 8, !tbaa !41
  %i.clt = getelementptr inbounds nuw i8, ptr %i.clo, i64 12
  store i32 0, ptr %i.clt, align 4, !tbaa !43
  %i.clu = load ptr, ptr %i.clo, align 8, !tbaa !44
  %i.clv = getelementptr inbounds nuw i8, ptr %i.clu, i64 16
  %i.clw = load ptr, ptr %i.clv, align 8
  call void %i.clw(ptr noundef nonnull align 8 dereferenceable(16) %i.clo) #20, !inline_history !204
  %i.clx = load ptr, ptr %i.clo, align 8, !tbaa !44
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clx, i64 24
  %i.clz = load ptr, ptr %i.cly, align 8
  call void %i.clz(ptr noundef nonnull align 8 dereferenceable(16) %i.clo) #20, !inline_history !204
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i696

bb.adz:                                           ; preds = %bb.adx
  %i.cma = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i693 = icmp eq i8 %i.cma, 0
  br i1 %.not.i.i.i.i.i.i693, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.cmb = add nsw i32 %i.cls, -1
  store i32 %i.cmb, ptr %i.clp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i694

bb.aeb:                                           ; preds = %bb.adz
  %i.cmc = atomicrmw volatile add ptr %i.clp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i694

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i694: ; preds = %bb.aeb, %bb.aea
  %.0.i.i.i.i.i.i.i695 = phi i32 [ %i.cls, %bb.aea ], [ %i.cmc, %bb.aeb ]
  %i.cmd = icmp eq i32 %.0.i.i.i.i.i.i.i695, 1
  br i1 %i.cmd, label %bb.aec, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i696, !prof !56

bb.aec:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i694
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.clo) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i696

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i696: ; preds = %bb.aec, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i694, %bb.ady, %bb.adw
  %i.cme = load ptr, ptr %i.cll, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i697 = icmp eq ptr %i.cme, null
  br i1 %.not.i.i.i697, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i701, label %bb.aed

bb.aed:                                           ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i696
  %i.cmf = getelementptr inbounds nuw i8, ptr %i.cme, i64 8 ; 4 uses
  %i.cmg = load atomic i64, ptr %i.cmf acquire, align 8 ; 2 uses
  %i.cmh = icmp eq i64 %i.cmg, 4294967297
  %i.cmi = trunc i64 %i.cmg to i32                ; 2 uses
  br i1 %i.cmh, label %bb.aee, label %bb.aef

bb.aee:                                           ; preds = %bb.aed
  store i32 0, ptr %i.cmf, align 8, !tbaa !41
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.cme, i64 12
  store i32 0, ptr %i.cmj, align 4, !tbaa !43
  %i.cmk = load ptr, ptr %i.cme, align 8, !tbaa !44
  %i.cml = getelementptr inbounds nuw i8, ptr %i.cmk, i64 16
  %i.cmm = load ptr, ptr %i.cml, align 8
  call void %i.cmm(ptr noundef nonnull align 8 dereferenceable(16) %i.cme) #20, !inline_history !205
  %i.cmn = load ptr, ptr %i.cme, align 8, !tbaa !44
  %i.cmo = getelementptr inbounds nuw i8, ptr %i.cmn, i64 24
  %i.cmp = load ptr, ptr %i.cmo, align 8
  call void %i.cmp(ptr noundef nonnull align 8 dereferenceable(16) %i.cme) #20, !inline_history !205
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i701

bb.aef:                                           ; preds = %bb.aed
  %i.cmq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i698 = icmp eq i8 %i.cmq, 0
  br i1 %.not.i.i.i.i698, label %bb.aeh, label %bb.aeg

bb.aeg:                                           ; preds = %bb.aef
  %i.cmr = add nsw i32 %i.cmi, -1
  store i32 %i.cmr, ptr %i.cmf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i699

bb.aeh:                                           ; preds = %bb.aef
  %i.cms = atomicrmw volatile add ptr %i.cmf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i699

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i699: ; preds = %bb.aeh, %bb.aeg
  %.0.i.i.i.i.i700 = phi i32 [ %i.cmi, %bb.aeg ], [ %i.cms, %bb.aeh ]
  %i.cmt = icmp eq i32 %.0.i.i.i.i.i700, 1
  br i1 %i.cmt, label %bb.aei, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i701, !prof !56

bb.aei:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i699
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cme) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i701

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i701: ; preds = %bb.aei, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i699, %bb.aee, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i696
  %i.cmu = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.cmv = load ptr, ptr %i.cmu, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i702 = icmp eq ptr %i.cmv, null
  br i1 %.not.i.i12.i702, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i706, label %bb.aej

bb.aej:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i701
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmv, i64 8 ; 4 uses
  %i.cmx = load atomic i64, ptr %i.cmw acquire, align 8 ; 2 uses
  %i.cmy = icmp eq i64 %i.cmx, 4294967297
  %i.cmz = trunc i64 %i.cmx to i32                ; 2 uses
  br i1 %i.cmy, label %bb.aek, label %bb.ael

bb.aek:                                           ; preds = %bb.aej
  store i32 0, ptr %i.cmw, align 8, !tbaa !41
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmv, i64 12
  store i32 0, ptr %i.cna, align 4, !tbaa !43
  %i.cnb = load ptr, ptr %i.cmv, align 8, !tbaa !44
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cnb, i64 16
  %i.cnd = load ptr, ptr %i.cnc, align 8
  call void %i.cnd(ptr noundef nonnull align 8 dereferenceable(16) %i.cmv) #20, !inline_history !206
  %i.cne = load ptr, ptr %i.cmv, align 8, !tbaa !44
  %i.cnf = getelementptr inbounds nuw i8, ptr %i.cne, i64 24
  %i.cng = load ptr, ptr %i.cnf, align 8
  call void %i.cng(ptr noundef nonnull align 8 dereferenceable(16) %i.cmv) #20, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i706

bb.ael:                                           ; preds = %bb.aej
  %i.cnh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i703 = icmp eq i8 %i.cnh, 0
  br i1 %.not.i.i.i13.i703, label %bb.aen, label %bb.aem

bb.aem:                                           ; preds = %bb.ael
  %i.cni = add nsw i32 %i.cmz, -1
  store i32 %i.cni, ptr %i.cmw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i704

bb.aen:                                           ; preds = %bb.ael
  %i.cnj = atomicrmw volatile add ptr %i.cmw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i704

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i704: ; preds = %bb.aen, %bb.aem
  %.0.i.i.i.i15.i705 = phi i32 [ %i.cmz, %bb.aem ], [ %i.cnj, %bb.aen ]
  %i.cnk = icmp eq i32 %.0.i.i.i.i15.i705, 1
  br i1 %i.cnk, label %bb.aeo, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i706, !prof !56

bb.aeo:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i704
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cmv) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i706

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i706: ; preds = %bb.aeo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i704, %bb.aek, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i701
  %i.cnl = getelementptr inbounds nuw i8, ptr %51, i64 40
  %i.cnm = load ptr, ptr %i.cnl, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i707 = icmp eq ptr %i.cnm, null
  br i1 %.not.i.i16.i707, label %_ZNSt14_Function_baseD2Ev.exit.i.i708, label %bb.aep

bb.aep:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i706
  %i.cnn = getelementptr inbounds nuw i8, ptr %51, i64 24 ; 2 uses
  %i.cno = invoke noundef zeroext i1 %i.cnm(ptr noundef nonnull align 8 dereferenceable(32) %i.cnn, ptr noundef nonnull align 8 dereferenceable(32) %i.cnn, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i708 unwind label %bb.aeq ; 0 uses

bb.aeq:                                           ; preds = %bb.aep
  %i.cnp = landingpad { ptr, i32 }
          catch ptr null
  %i.cnq = extractvalue { ptr, i32 } %i.cnp, 0
  call void @__clang_call_terminate(ptr %i.cnq) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i708:            ; preds = %bb.aep, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i706
  %i.cnr = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.cns = load ptr, ptr %i.cnr, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i709 = icmp eq ptr %i.cns, null
  br i1 %.not.i.i.i17.i709, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i713, label %bb.aer

bb.aer:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i708
  %i.cnt = getelementptr inbounds nuw i8, ptr %i.cns, i64 8 ; 4 uses
  %i.cnu = load atomic i64, ptr %i.cnt acquire, align 8 ; 2 uses
  %i.cnv = icmp eq i64 %i.cnu, 4294967297
  %i.cnw = trunc i64 %i.cnu to i32                ; 2 uses
  br i1 %i.cnv, label %bb.aes, label %bb.aet

bb.aes:                                           ; preds = %bb.aer
  store i32 0, ptr %i.cnt, align 8, !tbaa !41
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.cns, i64 12
  store i32 0, ptr %i.cnx, align 4, !tbaa !43
  %i.cny = load ptr, ptr %i.cns, align 8, !tbaa !44
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.cny, i64 16
  %i.coa = load ptr, ptr %i.cnz, align 8
  call void %i.coa(ptr noundef nonnull align 8 dereferenceable(16) %i.cns) #20, !inline_history !207
  %i.cob = load ptr, ptr %i.cns, align 8, !tbaa !44
  %i.coc = getelementptr inbounds nuw i8, ptr %i.cob, i64 24
  %i.cod = load ptr, ptr %i.coc, align 8
  call void %i.cod(ptr noundef nonnull align 8 dereferenceable(16) %i.cns) #20, !inline_history !207
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i713

bb.aet:                                           ; preds = %bb.aer
  %i.coe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i710 = icmp eq i8 %i.coe, 0
  br i1 %.not.i.i.i.i18.i710, label %bb.aev, label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet
  %i.cof = add nsw i32 %i.cnw, -1
  store i32 %i.cof, ptr %i.cnt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i711

bb.aev:                                           ; preds = %bb.aet
  %i.cog = atomicrmw volatile add ptr %i.cnt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i711

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i711: ; preds = %bb.aev, %bb.aeu
  %.0.i.i.i.i.i.i712 = phi i32 [ %i.cnw, %bb.aeu ], [ %i.cog, %bb.aev ]
  %i.coh = icmp eq i32 %.0.i.i.i.i.i.i712, 1
  br i1 %i.coh, label %bb.aew, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i713, !prof !56

bb.aew:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i711
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cns) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i713

_ZN5arrow7compute10OutputTypeD2Ev.exit.i713:      ; preds = %bb.aew, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i711, %bb.aes, %_ZNSt14_Function_baseD2Ev.exit.i.i708
  %i.coi = load ptr, ptr %49, align 8, !tbaa !87
  %i.coj = load ptr, ptr %i.clj, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.coi, ptr noundef %i.coj)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i714 unwind label %bb.aey

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i714: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i713
  %i.cok = load ptr, ptr %49, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i715 = icmp eq ptr %i.cok, null
  br i1 %.not.i.i.i19.i715, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i716, label %bb.aex

bb.aex:                                           ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i714
  %i.col = load ptr, ptr %i.clh, align 8, !tbaa !90
  %i.com = ptrtoint ptr %i.col to i64
  %i.con = ptrtoint ptr %i.cok to i64
  %i.coo = sub i64 %i.com, %i.con
  call void @_ZdlPvm(ptr noundef nonnull %i.cok, i64 noundef %i.coo) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i716

bb.aey:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i713
  %i.cop = landingpad { ptr, i32 }
          catch ptr null
  %i.coq = extractvalue { ptr, i32 } %i.cop, 0
  call void @__clang_call_terminate(ptr %i.coq) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i716: ; preds = %bb.aex, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i714
  %i.cor = load ptr, ptr %i.cld, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i717 = icmp eq ptr %i.cor, null
  br i1 %.not.i.i.i21.i717, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i721, label %bb.aez

bb.aez:                                           ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i716
  %i.cos = getelementptr inbounds nuw i8, ptr %i.cor, i64 8 ; 4 uses
  %i.cot = load atomic i64, ptr %i.cos acquire, align 8 ; 2 uses
  %i.cou = icmp eq i64 %i.cot, 4294967297
  %i.cov = trunc i64 %i.cot to i32                ; 2 uses
  br i1 %i.cou, label %bb.afa, label %bb.afb

bb.afa:                                           ; preds = %bb.aez
  store i32 0, ptr %i.cos, align 8, !tbaa !41
  %i.cow = getelementptr inbounds nuw i8, ptr %i.cor, i64 12
  store i32 0, ptr %i.cow, align 4, !tbaa !43
  %i.cox = load ptr, ptr %i.cor, align 8, !tbaa !44
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cox, i64 16
  %i.coz = load ptr, ptr %i.coy, align 8
  call void %i.coz(ptr noundef nonnull align 8 dereferenceable(16) %i.cor) #20, !inline_history !208
  %i.cpa = load ptr, ptr %i.cor, align 8, !tbaa !44
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.cpa, i64 24
  %i.cpc = load ptr, ptr %i.cpb, align 8
  call void %i.cpc(ptr noundef nonnull align 8 dereferenceable(16) %i.cor) #20, !inline_history !208
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i721

bb.afb:                                           ; preds = %bb.aez
  %i.cpd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i718 = icmp eq i8 %i.cpd, 0
  br i1 %.not.i.i.i.i22.i718, label %bb.afd, label %bb.afc

bb.afc:                                           ; preds = %bb.afb
  %i.cpe = add nsw i32 %i.cov, -1
  store i32 %i.cpe, ptr %i.cos, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i719

bb.afd:                                           ; preds = %bb.afb
  %i.cpf = atomicrmw volatile add ptr %i.cos, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i719

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i719: ; preds = %bb.afd, %bb.afc
  %.0.i.i.i.i.i24.i720 = phi i32 [ %i.cov, %bb.afc ], [ %i.cpf, %bb.afd ]
  %i.cpg = icmp eq i32 %.0.i.i.i.i.i24.i720, 1
  br i1 %i.cpg, label %bb.afe, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i721, !prof !56

bb.afe:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i719
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cor) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i721

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i721: ; preds = %bb.afe, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i719, %bb.afa, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i716
  %i.cph = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.cpi = load ptr, ptr %i.cph, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i722 = icmp eq ptr %i.cpi, null
  br i1 %.not.i.i1.i.i722, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i726, label %bb.aff

bb.aff:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i721
  %i.cpj = getelementptr inbounds nuw i8, ptr %i.cpi, i64 8 ; 4 uses
  %i.cpk = load atomic i64, ptr %i.cpj acquire, align 8 ; 2 uses
  %i.cpl = icmp eq i64 %i.cpk, 4294967297
  %i.cpm = trunc i64 %i.cpk to i32                ; 2 uses
  br i1 %i.cpl, label %bb.afg, label %bb.afh

bb.afg:                                           ; preds = %bb.aff
  store i32 0, ptr %i.cpj, align 8, !tbaa !41
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cpi, i64 12
  store i32 0, ptr %i.cpn, align 4, !tbaa !43
  %i.cpo = load ptr, ptr %i.cpi, align 8, !tbaa !44
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpo, i64 16
  %i.cpq = load ptr, ptr %i.cpp, align 8
  call void %i.cpq(ptr noundef nonnull align 8 dereferenceable(16) %i.cpi) #20, !inline_history !209
  %i.cpr = load ptr, ptr %i.cpi, align 8, !tbaa !44
  %i.cps = getelementptr inbounds nuw i8, ptr %i.cpr, i64 24
  %i.cpt = load ptr, ptr %i.cps, align 8
  call void %i.cpt(ptr noundef nonnull align 8 dereferenceable(16) %i.cpi) #20, !inline_history !209
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i726

bb.afh:                                           ; preds = %bb.aff
  %i.cpu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i723 = icmp eq i8 %i.cpu, 0
  br i1 %.not.i.i.i2.i.i723, label %bb.afj, label %bb.afi

bb.afi:                                           ; preds = %bb.afh
  %i.cpv = add nsw i32 %i.cpm, -1
  store i32 %i.cpv, ptr %i.cpj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i724

bb.afj:                                           ; preds = %bb.afh
  %i.cpw = atomicrmw volatile add ptr %i.cpj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i724

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i724: ; preds = %bb.afj, %bb.afi
  %.0.i.i.i.i4.i.i725 = phi i32 [ %i.cpm, %bb.afi ], [ %i.cpw, %bb.afj ]
  %i.cpx = icmp eq i32 %.0.i.i.i.i4.i.i725, 1
  br i1 %i.cpx, label %bb.afk, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i726, !prof !56

bb.afk:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i724
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cpi) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i726

_ZN5arrow7compute9InputTypeD2Ev.exit.i726:        ; preds = %bb.afk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i724, %bb.afg, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i721
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  store i32 2, ptr %i.cky, align 4, !tbaa !74
  %i.cpy = load <2 x ptr>, ptr %47, align 16, !tbaa !86
  store ptr null, ptr %i.clm, align 8, !tbaa !46
  store <2 x ptr> %i.cpy, ptr %54, align 16, !tbaa !86
  store ptr null, ptr %47, align 16, !tbaa !98
  %i.cpz = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.cqa = getelementptr inbounds nuw i8, ptr %54, i64 40
  %i.cqb = getelementptr inbounds nuw i8, ptr %47, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cpz, i8 0, i64 24, i1 false)
  %i.cqc = load ptr, ptr %i.cqb, align 8, !tbaa !99
  store ptr %i.cqc, ptr %i.cqa, align 8, !tbaa !99
  %i.cqd = getelementptr inbounds nuw i8, ptr %47, i64 32 ; 2 uses
  %i.cqe = load ptr, ptr %i.cqd, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i727 = icmp eq ptr %i.cqe, null
  br i1 %.not.i.i.not.i.i.i.i727, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i728, label %bb.afl

bb.afl:                                           ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i726
  %i.cqf = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.cqg = getelementptr inbounds nuw i8, ptr %54, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cpz, ptr noundef nonnull align 8 dereferenceable(32) %i.cqf, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.cqe, ptr %i.cqg, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cqd, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i728

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i728: ; preds = %bb.afl, %_ZN5arrow7compute9InputTypeD2Ev.exit.i726
  %i.cqh = getelementptr inbounds nuw i8, ptr %54, i64 48
  %i.cqi = load i64, ptr %i.ckv, align 16
  store i64 %i.cqi, ptr %i.cqh, align 16
  %i.cqj = getelementptr inbounds nuw i8, ptr %54, i64 56
  %i.cqk = getelementptr inbounds nuw i8, ptr %47, i64 56 ; 2 uses
  %i.cql = getelementptr inbounds nuw i8, ptr %47, i64 64
  %i.cqm = load <2 x ptr>, ptr %i.cqk, align 8, !tbaa !86
  store ptr null, ptr %i.cql, align 16, !tbaa !46
  store <2 x ptr> %i.cqm, ptr %i.cqj, align 8, !tbaa !86
  store ptr null, ptr %i.cqk, align 8, !tbaa !101
  %i.cqn = getelementptr inbounds nuw i8, ptr %54, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cqn, ptr noundef nonnull align 8 dereferenceable(20) %i.cla, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %53, ptr noundef nonnull align 8 dereferenceable(252) %i.cku, i32 noundef 25, ptr noundef nonnull %54)
          to label %bb.afm unwind label %bb.aft

bb.afm:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i728
  %i.cqo = load ptr, ptr %53, align 8, !tbaa !102 ; 2 uses
  %.not.i.i729 = icmp eq ptr %i.cqo, null
  br i1 %.not.i.i729, label %bb.afv, label %bb.afn, !prof !105

bb.afn:                                           ; preds = %bb.afm
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 1
  %i.cqq = load i8, ptr %i.cqp, align 1, !tbaa !106, !range !115, !noundef !116
  %i.cqr = trunc nuw i8 %i.cqq to i1
  br i1 %i.cqr, label %bb.afv, label %bb.afo

bb.afo:                                           ; preds = %bb.afn
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #20
  br label %bb.afv

bb.afp:                                           ; preds = %bb.adt
  %i.cqs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i684

bb.afq:                                           ; preds = %.noexc3.i.i690
  %i.cqt = landingpad { ptr, i32 }
          cleanup
  br label %bb.afs

bb.afr:                                           ; preds = %bb.adv
  %i.cqu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %52) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %51) #20
  br label %bb.afs

bb.afs:                                           ; preds = %bb.afr, %bb.afq
  %.pn.i691 = phi { ptr, i32 } [ %i.cqu, %bb.afr ], [ %i.cqt, %bb.afq ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #20
  br label %.body.i688

.body.i688:                                       ; preds = %bb.afs, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i687
  %.pn.pn.i689 = phi { ptr, i32 } [ %.pn.i691, %bb.afs ], [ %i.clk, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i687 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %50) #20
  br label %.loopexit.i684

.loopexit.i684:                                   ; preds = %.body.i688, %bb.afp
  %.pn.pn.pn.i685 = phi { ptr, i32 } [ %i.cqs, %bb.afp ], [ %.pn.pn.i689, %.body.i688 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  br label %bb.afu

bb.aft:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i728
  %i.cqv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %54) #20
  br label %bb.afu

bb.afu:                                           ; preds = %bb.aft, %.loopexit.i684
  %.pn10.i686 = phi { ptr, i32 } [ %i.cqv, %bb.aft ], [ %.pn.pn.pn.i685, %.loopexit.i684 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %47) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  br label %.body682

bb.afv:                                           ; preds = %bb.afo, %bb.afn, %bb.afm
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %54) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %47) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  call void @llvm.lifetime.end.p0(ptr nonnull %54)
  %i.cqw = load ptr, ptr %187, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %i.cqx = getelementptr inbounds nuw i8, ptr %38, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %38, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.cqx, align 16, !tbaa !59
  %i.cqy = getelementptr inbounds nuw i8, ptr %38, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cqy, i8 0, i64 20, i1 false)
  %i.cqz = getelementptr inbounds nuw i8, ptr %38, i64 80
  store i8 1, ptr %i.cqz, align 16, !tbaa !70
  %i.cra = getelementptr inbounds nuw i8, ptr %38, i64 84 ; 2 uses
  store i32 0, ptr %i.cra, align 4, !tbaa !74
  %i.crb = getelementptr inbounds nuw i8, ptr %38, i64 88
  store i32 0, ptr %i.crb, align 8, !tbaa !75
  %i.crc = getelementptr inbounds nuw i8, ptr %38, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_12ListViewTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.crc, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %37, i32 noundef 41)
          to label %bb.afw unwind label %bb.ahr

bb.afw:                                           ; preds = %bb.afv
  store i32 2, ptr %41, align 8, !tbaa !77
  %i.crd = getelementptr inbounds nuw i8, ptr %41, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.crd, i8 0, i64 16, i1 false)
  %i.cre = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.crf = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.crg = load <2 x ptr>, ptr %37, align 16, !tbaa !86
  store <2 x ptr> %i.crg, ptr %i.cre, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %i.crh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i738 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i735 ; 4 uses

.noexc3.i.i738:                                   ; preds = %bb.afw
  store ptr %i.crh, ptr %40, align 8, !tbaa !87
  %i.cri = getelementptr inbounds nuw i8, ptr %i.crh, i64 40 ; 2 uses
  %i.crj = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  store ptr %i.cri, ptr %i.crj, align 8, !tbaa !90
  %i.crk = getelementptr inbounds nuw i8, ptr %i.crh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.crk, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.crh, ptr noundef nonnull align 8 dereferenceable(40) %41)
  %i.crl = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  store ptr %i.cri, ptr %i.crl, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %42, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.afx unwind label %bb.ahs

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i735: ; preds = %bb.afw
  %i.crm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i736

bb.afx:                                           ; preds = %.noexc3.i.i738
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %39, ptr noundef nonnull %40, ptr noundef nonnull %42, i1 noundef zeroext false, ptr noundef nonnull %43)
          to label %bb.afy unwind label %bb.aht

bb.afy:                                           ; preds = %bb.afx
  %i.crn = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.cro = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.crp = load <2 x ptr>, ptr %39, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %i.crq = load ptr, ptr %i.cro, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.crp, ptr %38, align 16, !tbaa !86
  %.not.i.i.i.i.i740 = icmp eq ptr %i.crq, null
  br i1 %.not.i.i.i.i.i740, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i744, label %bb.afz

bb.afz:                                           ; preds = %bb.afy
  %i.crr = getelementptr inbounds nuw i8, ptr %i.crq, i64 8 ; 4 uses
  %i.crs = load atomic i64, ptr %i.crr acquire, align 8 ; 2 uses
  %i.crt = icmp eq i64 %i.crs, 4294967297
  %i.cru = trunc i64 %i.crs to i32                ; 2 uses
  br i1 %i.crt, label %bb.aga, label %bb.agb

bb.aga:                                           ; preds = %bb.afz
  store i32 0, ptr %i.crr, align 8, !tbaa !41
  %i.crv = getelementptr inbounds nuw i8, ptr %i.crq, i64 12
  store i32 0, ptr %i.crv, align 4, !tbaa !43
  %i.crw = load ptr, ptr %i.crq, align 8, !tbaa !44
  %i.crx = getelementptr inbounds nuw i8, ptr %i.crw, i64 16
  %i.cry = load ptr, ptr %i.crx, align 8
  call void %i.cry(ptr noundef nonnull align 8 dereferenceable(16) %i.crq) #20, !inline_history !210
  %i.crz = load ptr, ptr %i.crq, align 8, !tbaa !44
  %i.csa = getelementptr inbounds nuw i8, ptr %i.crz, i64 24
  %i.csb = load ptr, ptr %i.csa, align 8
  call void %i.csb(ptr noundef nonnull align 8 dereferenceable(16) %i.crq) #20, !inline_history !210
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i744

bb.agb:                                           ; preds = %bb.afz
  %i.csc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i741 = icmp eq i8 %i.csc, 0
  br i1 %.not.i.i.i.i.i.i741, label %bb.agd, label %bb.agc

bb.agc:                                           ; preds = %bb.agb
  %i.csd = add nsw i32 %i.cru, -1
  store i32 %i.csd, ptr %i.crr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i742

bb.agd:                                           ; preds = %bb.agb
  %i.cse = atomicrmw volatile add ptr %i.crr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i742

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i742: ; preds = %bb.agd, %bb.agc
  %.0.i.i.i.i.i.i.i743 = phi i32 [ %i.cru, %bb.agc ], [ %i.cse, %bb.agd ]
  %i.csf = icmp eq i32 %.0.i.i.i.i.i.i.i743, 1
  br i1 %i.csf, label %bb.age, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i744, !prof !56

bb.age:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i742
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.crq) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i744

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i744: ; preds = %bb.age, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i742, %bb.aga, %bb.afy
  %i.csg = load ptr, ptr %i.crn, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i745 = icmp eq ptr %i.csg, null
  br i1 %.not.i.i.i745, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i749, label %bb.agf

bb.agf:                                           ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i744
  %i.csh = getelementptr inbounds nuw i8, ptr %i.csg, i64 8 ; 4 uses
  %i.csi = load atomic i64, ptr %i.csh acquire, align 8 ; 2 uses
  %i.csj = icmp eq i64 %i.csi, 4294967297
  %i.csk = trunc i64 %i.csi to i32                ; 2 uses
  br i1 %i.csj, label %bb.agg, label %bb.agh

bb.agg:                                           ; preds = %bb.agf
  store i32 0, ptr %i.csh, align 8, !tbaa !41
  %i.csl = getelementptr inbounds nuw i8, ptr %i.csg, i64 12
  store i32 0, ptr %i.csl, align 4, !tbaa !43
  %i.csm = load ptr, ptr %i.csg, align 8, !tbaa !44
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csm, i64 16
  %i.cso = load ptr, ptr %i.csn, align 8
  call void %i.cso(ptr noundef nonnull align 8 dereferenceable(16) %i.csg) #20, !inline_history !211
  %i.csp = load ptr, ptr %i.csg, align 8, !tbaa !44
  %i.csq = getelementptr inbounds nuw i8, ptr %i.csp, i64 24
  %i.csr = load ptr, ptr %i.csq, align 8
  call void %i.csr(ptr noundef nonnull align 8 dereferenceable(16) %i.csg) #20, !inline_history !211
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i749

bb.agh:                                           ; preds = %bb.agf
  %i.css = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i746 = icmp eq i8 %i.css, 0
  br i1 %.not.i.i.i.i746, label %bb.agj, label %bb.agi

bb.agi:                                           ; preds = %bb.agh
  %i.cst = add nsw i32 %i.csk, -1
  store i32 %i.cst, ptr %i.csh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i747

bb.agj:                                           ; preds = %bb.agh
  %i.csu = atomicrmw volatile add ptr %i.csh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i747

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i747: ; preds = %bb.agj, %bb.agi
  %.0.i.i.i.i.i748 = phi i32 [ %i.csk, %bb.agi ], [ %i.csu, %bb.agj ]
  %i.csv = icmp eq i32 %.0.i.i.i.i.i748, 1
  br i1 %i.csv, label %bb.agk, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i749, !prof !56

bb.agk:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i747
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.csg) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i749

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i749: ; preds = %bb.agk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i747, %bb.agg, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i744
  %i.csw = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.csx = load ptr, ptr %i.csw, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i750 = icmp eq ptr %i.csx, null
  br i1 %.not.i.i12.i750, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i754, label %bb.agl

bb.agl:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i749
  %i.csy = getelementptr inbounds nuw i8, ptr %i.csx, i64 8 ; 4 uses
  %i.csz = load atomic i64, ptr %i.csy acquire, align 8 ; 2 uses
  %i.cta = icmp eq i64 %i.csz, 4294967297
  %i.ctb = trunc i64 %i.csz to i32                ; 2 uses
  br i1 %i.cta, label %bb.agm, label %bb.agn

bb.agm:                                           ; preds = %bb.agl
  store i32 0, ptr %i.csy, align 8, !tbaa !41
  %i.ctc = getelementptr inbounds nuw i8, ptr %i.csx, i64 12
  store i32 0, ptr %i.ctc, align 4, !tbaa !43
  %i.ctd = load ptr, ptr %i.csx, align 8, !tbaa !44
  %i.cte = getelementptr inbounds nuw i8, ptr %i.ctd, i64 16
  %i.ctf = load ptr, ptr %i.cte, align 8
  call void %i.ctf(ptr noundef nonnull align 8 dereferenceable(16) %i.csx) #20, !inline_history !212
  %i.ctg = load ptr, ptr %i.csx, align 8, !tbaa !44
  %i.cth = getelementptr inbounds nuw i8, ptr %i.ctg, i64 24
  %i.cti = load ptr, ptr %i.cth, align 8
  call void %i.cti(ptr noundef nonnull align 8 dereferenceable(16) %i.csx) #20, !inline_history !212
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i754

bb.agn:                                           ; preds = %bb.agl
  %i.ctj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i751 = icmp eq i8 %i.ctj, 0
  br i1 %.not.i.i.i13.i751, label %bb.agp, label %bb.ago

bb.ago:                                           ; preds = %bb.agn
  %i.ctk = add nsw i32 %i.ctb, -1
  store i32 %i.ctk, ptr %i.csy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i752

bb.agp:                                           ; preds = %bb.agn
  %i.ctl = atomicrmw volatile add ptr %i.csy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i752

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i752: ; preds = %bb.agp, %bb.ago
  %.0.i.i.i.i15.i753 = phi i32 [ %i.ctb, %bb.ago ], [ %i.ctl, %bb.agp ]
  %i.ctm = icmp eq i32 %.0.i.i.i.i15.i753, 1
  br i1 %i.ctm, label %bb.agq, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i754, !prof !56

bb.agq:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i752
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.csx) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i754

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i754: ; preds = %bb.agq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i752, %bb.agm, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i749
  %i.ctn = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.cto = load ptr, ptr %i.ctn, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i755 = icmp eq ptr %i.cto, null
  br i1 %.not.i.i16.i755, label %_ZNSt14_Function_baseD2Ev.exit.i.i756, label %bb.agr

bb.agr:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i754
  %i.ctp = getelementptr inbounds nuw i8, ptr %42, i64 24 ; 2 uses
  %i.ctq = invoke noundef zeroext i1 %i.cto(ptr noundef nonnull align 8 dereferenceable(32) %i.ctp, ptr noundef nonnull align 8 dereferenceable(32) %i.ctp, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i756 unwind label %bb.ags ; 0 uses

bb.ags:                                           ; preds = %bb.agr
  %i.ctr = landingpad { ptr, i32 }
          catch ptr null
  %i.cts = extractvalue { ptr, i32 } %i.ctr, 0
  call void @__clang_call_terminate(ptr %i.cts) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i756:            ; preds = %bb.agr, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i754
  %i.ctt = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.ctu = load ptr, ptr %i.ctt, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i757 = icmp eq ptr %i.ctu, null
  br i1 %.not.i.i.i17.i757, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i761, label %bb.agt

bb.agt:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i756
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.ctu, i64 8 ; 4 uses
  %i.ctw = load atomic i64, ptr %i.ctv acquire, align 8 ; 2 uses
  %i.ctx = icmp eq i64 %i.ctw, 4294967297
  %i.cty = trunc i64 %i.ctw to i32                ; 2 uses
  br i1 %i.ctx, label %bb.agu, label %bb.agv

bb.agu:                                           ; preds = %bb.agt
  store i32 0, ptr %i.ctv, align 8, !tbaa !41
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.ctu, i64 12
  store i32 0, ptr %i.ctz, align 4, !tbaa !43
  %i.cua = load ptr, ptr %i.ctu, align 8, !tbaa !44
  %i.cub = getelementptr inbounds nuw i8, ptr %i.cua, i64 16
  %i.cuc = load ptr, ptr %i.cub, align 8
  call void %i.cuc(ptr noundef nonnull align 8 dereferenceable(16) %i.ctu) #20, !inline_history !213
  %i.cud = load ptr, ptr %i.ctu, align 8, !tbaa !44
  %i.cue = getelementptr inbounds nuw i8, ptr %i.cud, i64 24
  %i.cuf = load ptr, ptr %i.cue, align 8
  call void %i.cuf(ptr noundef nonnull align 8 dereferenceable(16) %i.ctu) #20, !inline_history !213
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i761

bb.agv:                                           ; preds = %bb.agt
  %i.cug = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i758 = icmp eq i8 %i.cug, 0
  br i1 %.not.i.i.i.i18.i758, label %bb.agx, label %bb.agw

bb.agw:                                           ; preds = %bb.agv
  %i.cuh = add nsw i32 %i.cty, -1
  store i32 %i.cuh, ptr %i.ctv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i759

bb.agx:                                           ; preds = %bb.agv
  %i.cui = atomicrmw volatile add ptr %i.ctv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i759

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i759: ; preds = %bb.agx, %bb.agw
  %.0.i.i.i.i.i.i760 = phi i32 [ %i.cty, %bb.agw ], [ %i.cui, %bb.agx ]
  %i.cuj = icmp eq i32 %.0.i.i.i.i.i.i760, 1
  br i1 %i.cuj, label %bb.agy, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i761, !prof !56

bb.agy:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i759
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ctu) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i761

_ZN5arrow7compute10OutputTypeD2Ev.exit.i761:      ; preds = %bb.agy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i759, %bb.agu, %_ZNSt14_Function_baseD2Ev.exit.i.i756
  %i.cuk = load ptr, ptr %40, align 8, !tbaa !87
  %i.cul = load ptr, ptr %i.crl, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.cuk, ptr noundef %i.cul)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i762 unwind label %bb.aha

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i762: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i761
  %i.cum = load ptr, ptr %40, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i763 = icmp eq ptr %i.cum, null
  br i1 %.not.i.i.i19.i763, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i764, label %bb.agz

bb.agz:                                           ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i762
  %i.cun = load ptr, ptr %i.crj, align 8, !tbaa !90
  %i.cuo = ptrtoint ptr %i.cun to i64
  %i.cup = ptrtoint ptr %i.cum to i64
  %i.cuq = sub i64 %i.cuo, %i.cup
  call void @_ZdlPvm(ptr noundef nonnull %i.cum, i64 noundef %i.cuq) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i764

bb.aha:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i761
  %i.cur = landingpad { ptr, i32 }
          catch ptr null
  %i.cus = extractvalue { ptr, i32 } %i.cur, 0
  call void @__clang_call_terminate(ptr %i.cus) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i764: ; preds = %bb.agz, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i762
  %i.cut = load ptr, ptr %i.crf, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i765 = icmp eq ptr %i.cut, null
  br i1 %.not.i.i.i21.i765, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i769, label %bb.ahb

bb.ahb:                                           ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i764
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.cut, i64 8 ; 4 uses
  %i.cuv = load atomic i64, ptr %i.cuu acquire, align 8 ; 2 uses
  %i.cuw = icmp eq i64 %i.cuv, 4294967297
  %i.cux = trunc i64 %i.cuv to i32                ; 2 uses
  br i1 %i.cuw, label %bb.ahc, label %bb.ahd

bb.ahc:                                           ; preds = %bb.ahb
  store i32 0, ptr %i.cuu, align 8, !tbaa !41
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.cut, i64 12
  store i32 0, ptr %i.cuy, align 4, !tbaa !43
  %i.cuz = load ptr, ptr %i.cut, align 8, !tbaa !44
  %i.cva = getelementptr inbounds nuw i8, ptr %i.cuz, i64 16
  %i.cvb = load ptr, ptr %i.cva, align 8
  call void %i.cvb(ptr noundef nonnull align 8 dereferenceable(16) %i.cut) #20, !inline_history !214
  %i.cvc = load ptr, ptr %i.cut, align 8, !tbaa !44
  %i.cvd = getelementptr inbounds nuw i8, ptr %i.cvc, i64 24
  %i.cve = load ptr, ptr %i.cvd, align 8
  call void %i.cve(ptr noundef nonnull align 8 dereferenceable(16) %i.cut) #20, !inline_history !214
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i769

bb.ahd:                                           ; preds = %bb.ahb
  %i.cvf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i766 = icmp eq i8 %i.cvf, 0
  br i1 %.not.i.i.i.i22.i766, label %bb.ahf, label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd
  %i.cvg = add nsw i32 %i.cux, -1
  store i32 %i.cvg, ptr %i.cuu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i767

bb.ahf:                                           ; preds = %bb.ahd
  %i.cvh = atomicrmw volatile add ptr %i.cuu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i767

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i767: ; preds = %bb.ahf, %bb.ahe
  %.0.i.i.i.i.i24.i768 = phi i32 [ %i.cux, %bb.ahe ], [ %i.cvh, %bb.ahf ]
  %i.cvi = icmp eq i32 %.0.i.i.i.i.i24.i768, 1
  br i1 %i.cvi, label %bb.ahg, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i769, !prof !56

bb.ahg:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i767
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cut) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i769

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i769: ; preds = %bb.ahg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i767, %bb.ahc, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i764
  %i.cvj = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.cvk = load ptr, ptr %i.cvj, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i770 = icmp eq ptr %i.cvk, null
  br i1 %.not.i.i1.i.i770, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i774, label %bb.ahh

bb.ahh:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i769
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cvk, i64 8 ; 4 uses
  %i.cvm = load atomic i64, ptr %i.cvl acquire, align 8 ; 2 uses
  %i.cvn = icmp eq i64 %i.cvm, 4294967297
  %i.cvo = trunc i64 %i.cvm to i32                ; 2 uses
  br i1 %i.cvn, label %bb.ahi, label %bb.ahj

bb.ahi:                                           ; preds = %bb.ahh
  store i32 0, ptr %i.cvl, align 8, !tbaa !41
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvk, i64 12
  store i32 0, ptr %i.cvp, align 4, !tbaa !43
  %i.cvq = load ptr, ptr %i.cvk, align 8, !tbaa !44
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvq, i64 16
  %i.cvs = load ptr, ptr %i.cvr, align 8
  call void %i.cvs(ptr noundef nonnull align 8 dereferenceable(16) %i.cvk) #20, !inline_history !215
  %i.cvt = load ptr, ptr %i.cvk, align 8, !tbaa !44
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.cvt, i64 24
  %i.cvv = load ptr, ptr %i.cvu, align 8
  call void %i.cvv(ptr noundef nonnull align 8 dereferenceable(16) %i.cvk) #20, !inline_history !215
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i774

bb.ahj:                                           ; preds = %bb.ahh
  %i.cvw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i771 = icmp eq i8 %i.cvw, 0
  br i1 %.not.i.i.i2.i.i771, label %bb.ahl, label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  %i.cvx = add nsw i32 %i.cvo, -1
  store i32 %i.cvx, ptr %i.cvl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i772

bb.ahl:                                           ; preds = %bb.ahj
  %i.cvy = atomicrmw volatile add ptr %i.cvl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i772

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i772: ; preds = %bb.ahl, %bb.ahk
  %.0.i.i.i.i4.i.i773 = phi i32 [ %i.cvo, %bb.ahk ], [ %i.cvy, %bb.ahl ]
  %i.cvz = icmp eq i32 %.0.i.i.i.i4.i.i773, 1
  br i1 %i.cvz, label %bb.ahm, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i774, !prof !56

bb.ahm:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i772
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cvk) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i774

_ZN5arrow7compute9InputTypeD2Ev.exit.i774:        ; preds = %bb.ahm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i772, %bb.ahi, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i769
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  store i32 2, ptr %i.cra, align 4, !tbaa !74
  %i.cwa = load <2 x ptr>, ptr %38, align 16, !tbaa !86
  store ptr null, ptr %i.cro, align 8, !tbaa !46
  store <2 x ptr> %i.cwa, ptr %45, align 16, !tbaa !86
  store ptr null, ptr %38, align 16, !tbaa !98
  %i.cwb = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.cwc = getelementptr inbounds nuw i8, ptr %45, i64 40
  %i.cwd = getelementptr inbounds nuw i8, ptr %38, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cwb, i8 0, i64 24, i1 false)
  %i.cwe = load ptr, ptr %i.cwd, align 8, !tbaa !99
  store ptr %i.cwe, ptr %i.cwc, align 8, !tbaa !99
  %i.cwf = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 2 uses
  %i.cwg = load ptr, ptr %i.cwf, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i775 = icmp eq ptr %i.cwg, null
  br i1 %.not.i.i.not.i.i.i.i775, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i776, label %bb.ahn

bb.ahn:                                           ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i774
  %i.cwh = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.cwi = getelementptr inbounds nuw i8, ptr %45, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cwb, ptr noundef nonnull align 8 dereferenceable(32) %i.cwh, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.cwg, ptr %i.cwi, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cwf, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i776

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i776: ; preds = %bb.ahn, %_ZN5arrow7compute9InputTypeD2Ev.exit.i774
  %i.cwj = getelementptr inbounds nuw i8, ptr %45, i64 48
  %i.cwk = load i64, ptr %i.cqx, align 16
  store i64 %i.cwk, ptr %i.cwj, align 16
  %i.cwl = getelementptr inbounds nuw i8, ptr %45, i64 56
  %i.cwm = getelementptr inbounds nuw i8, ptr %38, i64 56 ; 2 uses
  %i.cwn = getelementptr inbounds nuw i8, ptr %38, i64 64
  %i.cwo = load <2 x ptr>, ptr %i.cwm, align 8, !tbaa !86
  store ptr null, ptr %i.cwn, align 16, !tbaa !46
  store <2 x ptr> %i.cwo, ptr %i.cwl, align 8, !tbaa !86
  store ptr null, ptr %i.cwm, align 8, !tbaa !101
  %i.cwp = getelementptr inbounds nuw i8, ptr %45, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cwp, ptr noundef nonnull align 8 dereferenceable(20) %i.crc, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %44, ptr noundef nonnull align 8 dereferenceable(252) %i.cqw, i32 noundef 41, ptr noundef nonnull %45)
          to label %bb.aho unwind label %bb.ahv

bb.aho:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i776
  %i.cwq = load ptr, ptr %44, align 8, !tbaa !102 ; 2 uses
  %.not.i.i777 = icmp eq ptr %i.cwq, null
  br i1 %.not.i.i777, label %bb.ahx, label %bb.ahp, !prof !105

bb.ahp:                                           ; preds = %bb.aho
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cwq, i64 1
  %i.cws = load i8, ptr %i.cwr, align 1, !tbaa !106, !range !115, !noundef !116
  %i.cwt = trunc nuw i8 %i.cws to i1
  br i1 %i.cwt, label %bb.ahx, label %bb.ahq

bb.ahq:                                           ; preds = %bb.ahp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #20
  br label %bb.ahx

bb.ahr:                                           ; preds = %bb.afv
  %i.cwu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i732

bb.ahs:                                           ; preds = %.noexc3.i.i738
  %i.cwv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahu

bb.aht:                                           ; preds = %bb.afx
  %i.cww = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %43) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %42) #20
  br label %bb.ahu

bb.ahu:                                           ; preds = %bb.aht, %bb.ahs
  %.pn.i739 = phi { ptr, i32 } [ %i.cww, %bb.aht ], [ %i.cwv, %bb.ahs ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %40) #20
  br label %.body.i736

.body.i736:                                       ; preds = %bb.ahu, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i735
  %.pn.pn.i737 = phi { ptr, i32 } [ %.pn.i739, %bb.ahu ], [ %i.crm, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i735 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %41) #20
  br label %.loopexit.i732

.loopexit.i732:                                   ; preds = %.body.i736, %bb.ahr
  %.pn.pn.pn.i733 = phi { ptr, i32 } [ %i.cwu, %bb.ahr ], [ %.pn.pn.i737, %.body.i736 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.ahw

bb.ahv:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i776
  %i.cwx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %45) #20
  br label %bb.ahw

bb.ahw:                                           ; preds = %bb.ahv, %.loopexit.i732
  %.pn10.i734 = phi { ptr, i32 } [ %i.cwx, %bb.ahv ], [ %.pn.pn.pn.i733, %.loopexit.i732 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  br label %.body682

bb.ahx:                                           ; preds = %bb.ahq, %bb.ahp, %bb.aho
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %45) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  %i.cwy = load ptr, ptr %187, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.cwz = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %29, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.cwz, align 16, !tbaa !59
  %i.cxa = getelementptr inbounds nuw i8, ptr %29, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cxa, i8 0, i64 20, i1 false)
  %i.cxb = getelementptr inbounds nuw i8, ptr %29, i64 80
  store i8 1, ptr %i.cxb, align 16, !tbaa !70
  %i.cxc = getelementptr inbounds nuw i8, ptr %29, i64 84 ; 2 uses
  store i32 0, ptr %i.cxc, align 4, !tbaa !74
  %i.cxd = getelementptr inbounds nuw i8, ptr %29, i64 88
  store i32 0, ptr %i.cxd, align 8, !tbaa !75
  %i.cxe = getelementptr inbounds nuw i8, ptr %29, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_13LargeListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.cxe, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %28, i32 noundef 36)
          to label %bb.ahy unwind label %bb.ajt

bb.ahy:                                           ; preds = %bb.ahx
  store i32 2, ptr %32, align 8, !tbaa !77
  %i.cxf = getelementptr inbounds nuw i8, ptr %32, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cxf, i8 0, i64 16, i1 false)
  %i.cxg = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.cxh = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.cxi = load <2 x ptr>, ptr %28, align 16, !tbaa !86
  store <2 x ptr> %i.cxi, ptr %i.cxg, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.cxj = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i786 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i783 ; 4 uses

.noexc3.i.i786:                                   ; preds = %bb.ahy
  store ptr %i.cxj, ptr %31, align 8, !tbaa !87
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cxj, i64 40 ; 2 uses
  %i.cxl = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  store ptr %i.cxk, ptr %i.cxl, align 8, !tbaa !90
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cxj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cxm, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.cxj, ptr noundef nonnull align 8 dereferenceable(40) %32)
  %i.cxn = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store ptr %i.cxk, ptr %i.cxn, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %33, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.ahz unwind label %bb.aju

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i783: ; preds = %bb.ahy
  %i.cxo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i784

bb.ahz:                                           ; preds = %.noexc3.i.i786
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %30, ptr noundef nonnull %31, ptr noundef nonnull %33, i1 noundef zeroext false, ptr noundef nonnull %34)
          to label %bb.aia unwind label %bb.ajv

bb.aia:                                           ; preds = %bb.ahz
  %i.cxp = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.cxq = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.cxr = load <2 x ptr>, ptr %30, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %i.cxs = load ptr, ptr %i.cxq, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.cxr, ptr %29, align 16, !tbaa !86
  %.not.i.i.i.i.i788 = icmp eq ptr %i.cxs, null
  br i1 %.not.i.i.i.i.i788, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i792, label %bb.aib

bb.aib:                                           ; preds = %bb.aia
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cxs, i64 8 ; 4 uses
  %i.cxu = load atomic i64, ptr %i.cxt acquire, align 8 ; 2 uses
  %i.cxv = icmp eq i64 %i.cxu, 4294967297
  %i.cxw = trunc i64 %i.cxu to i32                ; 2 uses
  br i1 %i.cxv, label %bb.aic, label %bb.aid

bb.aic:                                           ; preds = %bb.aib
  store i32 0, ptr %i.cxt, align 8, !tbaa !41
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cxs, i64 12
  store i32 0, ptr %i.cxx, align 4, !tbaa !43
  %i.cxy = load ptr, ptr %i.cxs, align 8, !tbaa !44
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cxy, i64 16
  %i.cya = load ptr, ptr %i.cxz, align 8
  call void %i.cya(ptr noundef nonnull align 8 dereferenceable(16) %i.cxs) #20, !inline_history !216
  %i.cyb = load ptr, ptr %i.cxs, align 8, !tbaa !44
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.cyb, i64 24
  %i.cyd = load ptr, ptr %i.cyc, align 8
  call void %i.cyd(ptr noundef nonnull align 8 dereferenceable(16) %i.cxs) #20, !inline_history !216
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i792

bb.aid:                                           ; preds = %bb.aib
  %i.cye = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i789 = icmp eq i8 %i.cye, 0
  br i1 %.not.i.i.i.i.i.i789, label %bb.aif, label %bb.aie

bb.aie:                                           ; preds = %bb.aid
  %i.cyf = add nsw i32 %i.cxw, -1
  store i32 %i.cyf, ptr %i.cxt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i790

bb.aif:                                           ; preds = %bb.aid
  %i.cyg = atomicrmw volatile add ptr %i.cxt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i790

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i790: ; preds = %bb.aif, %bb.aie
  %.0.i.i.i.i.i.i.i791 = phi i32 [ %i.cxw, %bb.aie ], [ %i.cyg, %bb.aif ]
  %i.cyh = icmp eq i32 %.0.i.i.i.i.i.i.i791, 1
  br i1 %i.cyh, label %bb.aig, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i792, !prof !56

bb.aig:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i790
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cxs) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i792

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i792: ; preds = %bb.aig, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i790, %bb.aic, %bb.aia
  %i.cyi = load ptr, ptr %i.cxp, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i793 = icmp eq ptr %i.cyi, null
  br i1 %.not.i.i.i793, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i797, label %bb.aih

bb.aih:                                           ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i792
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cyi, i64 8 ; 4 uses
  %i.cyk = load atomic i64, ptr %i.cyj acquire, align 8 ; 2 uses
  %i.cyl = icmp eq i64 %i.cyk, 4294967297
  %i.cym = trunc i64 %i.cyk to i32                ; 2 uses
  br i1 %i.cyl, label %bb.aii, label %bb.aij

bb.aii:                                           ; preds = %bb.aih
  store i32 0, ptr %i.cyj, align 8, !tbaa !41
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cyi, i64 12
  store i32 0, ptr %i.cyn, align 4, !tbaa !43
  %i.cyo = load ptr, ptr %i.cyi, align 8, !tbaa !44
  %i.cyp = getelementptr inbounds nuw i8, ptr %i.cyo, i64 16
  %i.cyq = load ptr, ptr %i.cyp, align 8
  call void %i.cyq(ptr noundef nonnull align 8 dereferenceable(16) %i.cyi) #20, !inline_history !217
  %i.cyr = load ptr, ptr %i.cyi, align 8, !tbaa !44
  %i.cys = getelementptr inbounds nuw i8, ptr %i.cyr, i64 24
  %i.cyt = load ptr, ptr %i.cys, align 8
  call void %i.cyt(ptr noundef nonnull align 8 dereferenceable(16) %i.cyi) #20, !inline_history !217
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i797

bb.aij:                                           ; preds = %bb.aih
  %i.cyu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i794 = icmp eq i8 %i.cyu, 0
  br i1 %.not.i.i.i.i794, label %bb.ail, label %bb.aik

bb.aik:                                           ; preds = %bb.aij
  %i.cyv = add nsw i32 %i.cym, -1
  store i32 %i.cyv, ptr %i.cyj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i795

bb.ail:                                           ; preds = %bb.aij
  %i.cyw = atomicrmw volatile add ptr %i.cyj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i795

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i795: ; preds = %bb.ail, %bb.aik
  %.0.i.i.i.i.i796 = phi i32 [ %i.cym, %bb.aik ], [ %i.cyw, %bb.ail ]
  %i.cyx = icmp eq i32 %.0.i.i.i.i.i796, 1
  br i1 %i.cyx, label %bb.aim, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i797, !prof !56

bb.aim:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i795
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cyi) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i797

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i797: ; preds = %bb.aim, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i795, %bb.aii, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i792
  %i.cyy = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.cyz = load ptr, ptr %i.cyy, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i798 = icmp eq ptr %i.cyz, null
  br i1 %.not.i.i12.i798, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i802, label %bb.ain

bb.ain:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i797
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cyz, i64 8 ; 4 uses
  %i.czb = load atomic i64, ptr %i.cza acquire, align 8 ; 2 uses
  %i.czc = icmp eq i64 %i.czb, 4294967297
  %i.czd = trunc i64 %i.czb to i32                ; 2 uses
  br i1 %i.czc, label %bb.aio, label %bb.aip

bb.aio:                                           ; preds = %bb.ain
  store i32 0, ptr %i.cza, align 8, !tbaa !41
  %i.cze = getelementptr inbounds nuw i8, ptr %i.cyz, i64 12
  store i32 0, ptr %i.cze, align 4, !tbaa !43
  %i.czf = load ptr, ptr %i.cyz, align 8, !tbaa !44
  %i.czg = getelementptr inbounds nuw i8, ptr %i.czf, i64 16
  %i.czh = load ptr, ptr %i.czg, align 8
  call void %i.czh(ptr noundef nonnull align 8 dereferenceable(16) %i.cyz) #20, !inline_history !218
  %i.czi = load ptr, ptr %i.cyz, align 8, !tbaa !44
  %i.czj = getelementptr inbounds nuw i8, ptr %i.czi, i64 24
  %i.czk = load ptr, ptr %i.czj, align 8
  call void %i.czk(ptr noundef nonnull align 8 dereferenceable(16) %i.cyz) #20, !inline_history !218
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i802

bb.aip:                                           ; preds = %bb.ain
  %i.czl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i799 = icmp eq i8 %i.czl, 0
  br i1 %.not.i.i.i13.i799, label %bb.air, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  %i.czm = add nsw i32 %i.czd, -1
  store i32 %i.czm, ptr %i.cza, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i800

bb.air:                                           ; preds = %bb.aip
  %i.czn = atomicrmw volatile add ptr %i.cza, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i800

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i800: ; preds = %bb.air, %bb.aiq
  %.0.i.i.i.i15.i801 = phi i32 [ %i.czd, %bb.aiq ], [ %i.czn, %bb.air ]
  %i.czo = icmp eq i32 %.0.i.i.i.i15.i801, 1
  br i1 %i.czo, label %bb.ais, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i802, !prof !56

bb.ais:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i800
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cyz) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i802

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i802: ; preds = %bb.ais, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i800, %bb.aio, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i797
  %i.czp = getelementptr inbounds nuw i8, ptr %33, i64 40
  %i.czq = load ptr, ptr %i.czp, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i803 = icmp eq ptr %i.czq, null
  br i1 %.not.i.i16.i803, label %_ZNSt14_Function_baseD2Ev.exit.i.i804, label %bb.ait

bb.ait:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i802
  %i.czr = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  %i.czs = invoke noundef zeroext i1 %i.czq(ptr noundef nonnull align 8 dereferenceable(32) %i.czr, ptr noundef nonnull align 8 dereferenceable(32) %i.czr, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i804 unwind label %bb.aiu ; 0 uses

bb.aiu:                                           ; preds = %bb.ait
  %i.czt = landingpad { ptr, i32 }
          catch ptr null
  %i.czu = extractvalue { ptr, i32 } %i.czt, 0
  call void @__clang_call_terminate(ptr %i.czu) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i804:            ; preds = %bb.ait, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i802
  %i.czv = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.czw = load ptr, ptr %i.czv, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i805 = icmp eq ptr %i.czw, null
  br i1 %.not.i.i.i17.i805, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i809, label %bb.aiv

bb.aiv:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i804
  %i.czx = getelementptr inbounds nuw i8, ptr %i.czw, i64 8 ; 4 uses
  %i.czy = load atomic i64, ptr %i.czx acquire, align 8 ; 2 uses
  %i.czz = icmp eq i64 %i.czy, 4294967297
  %i.daa = trunc i64 %i.czy to i32                ; 2 uses
  br i1 %i.czz, label %bb.aiw, label %bb.aix

bb.aiw:                                           ; preds = %bb.aiv
  store i32 0, ptr %i.czx, align 8, !tbaa !41
  %i.dab = getelementptr inbounds nuw i8, ptr %i.czw, i64 12
  store i32 0, ptr %i.dab, align 4, !tbaa !43
  %i.dac = load ptr, ptr %i.czw, align 8, !tbaa !44
  %i.dad = getelementptr inbounds nuw i8, ptr %i.dac, i64 16
  %i.dae = load ptr, ptr %i.dad, align 8
  call void %i.dae(ptr noundef nonnull align 8 dereferenceable(16) %i.czw) #20, !inline_history !219
  %i.daf = load ptr, ptr %i.czw, align 8, !tbaa !44
  %i.dag = getelementptr inbounds nuw i8, ptr %i.daf, i64 24
  %i.dah = load ptr, ptr %i.dag, align 8
  call void %i.dah(ptr noundef nonnull align 8 dereferenceable(16) %i.czw) #20, !inline_history !219
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i809

bb.aix:                                           ; preds = %bb.aiv
  %i.dai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i806 = icmp eq i8 %i.dai, 0
  br i1 %.not.i.i.i.i18.i806, label %bb.aiz, label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix
  %i.daj = add nsw i32 %i.daa, -1
  store i32 %i.daj, ptr %i.czx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i807

bb.aiz:                                           ; preds = %bb.aix
  %i.dak = atomicrmw volatile add ptr %i.czx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i807

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i807: ; preds = %bb.aiz, %bb.aiy
  %.0.i.i.i.i.i.i808 = phi i32 [ %i.daa, %bb.aiy ], [ %i.dak, %bb.aiz ]
  %i.dal = icmp eq i32 %.0.i.i.i.i.i.i808, 1
  br i1 %i.dal, label %bb.aja, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i809, !prof !56

bb.aja:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i807
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.czw) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i809

_ZN5arrow7compute10OutputTypeD2Ev.exit.i809:      ; preds = %bb.aja, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i807, %bb.aiw, %_ZNSt14_Function_baseD2Ev.exit.i.i804
  %i.dam = load ptr, ptr %31, align 8, !tbaa !87
  %i.dan = load ptr, ptr %i.cxn, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.dam, ptr noundef %i.dan)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i810 unwind label %bb.ajc

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i810: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i809
  %i.dao = load ptr, ptr %31, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i811 = icmp eq ptr %i.dao, null
  br i1 %.not.i.i.i19.i811, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i812, label %bb.ajb

bb.ajb:                                           ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i810
  %i.dap = load ptr, ptr %i.cxl, align 8, !tbaa !90
  %i.daq = ptrtoint ptr %i.dap to i64
  %i.dar = ptrtoint ptr %i.dao to i64
  %i.das = sub i64 %i.daq, %i.dar
  call void @_ZdlPvm(ptr noundef nonnull %i.dao, i64 noundef %i.das) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i812

bb.ajc:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i809
  %i.dat = landingpad { ptr, i32 }
          catch ptr null
  %i.dau = extractvalue { ptr, i32 } %i.dat, 0
  call void @__clang_call_terminate(ptr %i.dau) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i812: ; preds = %bb.ajb, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i810
  %i.dav = load ptr, ptr %i.cxh, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i813 = icmp eq ptr %i.dav, null
  br i1 %.not.i.i.i21.i813, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i817, label %bb.ajd

bb.ajd:                                           ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i812
  %i.daw = getelementptr inbounds nuw i8, ptr %i.dav, i64 8 ; 4 uses
  %i.dax = load atomic i64, ptr %i.daw acquire, align 8 ; 2 uses
  %i.day = icmp eq i64 %i.dax, 4294967297
  %i.daz = trunc i64 %i.dax to i32                ; 2 uses
  br i1 %i.day, label %bb.aje, label %bb.ajf

bb.aje:                                           ; preds = %bb.ajd
  store i32 0, ptr %i.daw, align 8, !tbaa !41
  %i.dba = getelementptr inbounds nuw i8, ptr %i.dav, i64 12
  store i32 0, ptr %i.dba, align 4, !tbaa !43
  %i.dbb = load ptr, ptr %i.dav, align 8, !tbaa !44
  %i.dbc = getelementptr inbounds nuw i8, ptr %i.dbb, i64 16
  %i.dbd = load ptr, ptr %i.dbc, align 8
  call void %i.dbd(ptr noundef nonnull align 8 dereferenceable(16) %i.dav) #20, !inline_history !220
  %i.dbe = load ptr, ptr %i.dav, align 8, !tbaa !44
  %i.dbf = getelementptr inbounds nuw i8, ptr %i.dbe, i64 24
  %i.dbg = load ptr, ptr %i.dbf, align 8
  call void %i.dbg(ptr noundef nonnull align 8 dereferenceable(16) %i.dav) #20, !inline_history !220
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i817

bb.ajf:                                           ; preds = %bb.ajd
  %i.dbh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i814 = icmp eq i8 %i.dbh, 0
  br i1 %.not.i.i.i.i22.i814, label %bb.ajh, label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajf
  %i.dbi = add nsw i32 %i.daz, -1
  store i32 %i.dbi, ptr %i.daw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i815

bb.ajh:                                           ; preds = %bb.ajf
  %i.dbj = atomicrmw volatile add ptr %i.daw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i815

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i815: ; preds = %bb.ajh, %bb.ajg
  %.0.i.i.i.i.i24.i816 = phi i32 [ %i.daz, %bb.ajg ], [ %i.dbj, %bb.ajh ]
  %i.dbk = icmp eq i32 %.0.i.i.i.i.i24.i816, 1
  br i1 %i.dbk, label %bb.aji, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i817, !prof !56

bb.aji:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i815
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dav) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i817

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i817: ; preds = %bb.aji, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i815, %bb.aje, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i812
  %i.dbl = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.dbm = load ptr, ptr %i.dbl, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i818 = icmp eq ptr %i.dbm, null
  br i1 %.not.i.i1.i.i818, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i822, label %bb.ajj

bb.ajj:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i817
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.dbm, i64 8 ; 4 uses
  %i.dbo = load atomic i64, ptr %i.dbn acquire, align 8 ; 2 uses
  %i.dbp = icmp eq i64 %i.dbo, 4294967297
  %i.dbq = trunc i64 %i.dbo to i32                ; 2 uses
  br i1 %i.dbp, label %bb.ajk, label %bb.ajl

bb.ajk:                                           ; preds = %bb.ajj
  store i32 0, ptr %i.dbn, align 8, !tbaa !41
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbm, i64 12
  store i32 0, ptr %i.dbr, align 4, !tbaa !43
  %i.dbs = load ptr, ptr %i.dbm, align 8, !tbaa !44
  %i.dbt = getelementptr inbounds nuw i8, ptr %i.dbs, i64 16
  %i.dbu = load ptr, ptr %i.dbt, align 8
  call void %i.dbu(ptr noundef nonnull align 8 dereferenceable(16) %i.dbm) #20, !inline_history !221
  %i.dbv = load ptr, ptr %i.dbm, align 8, !tbaa !44
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.dbv, i64 24
  %i.dbx = load ptr, ptr %i.dbw, align 8
  call void %i.dbx(ptr noundef nonnull align 8 dereferenceable(16) %i.dbm) #20, !inline_history !221
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i822

bb.ajl:                                           ; preds = %bb.ajj
  %i.dby = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i819 = icmp eq i8 %i.dby, 0
  br i1 %.not.i.i.i2.i.i819, label %bb.ajn, label %bb.ajm

bb.ajm:                                           ; preds = %bb.ajl
  %i.dbz = add nsw i32 %i.dbq, -1
  store i32 %i.dbz, ptr %i.dbn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i820

bb.ajn:                                           ; preds = %bb.ajl
  %i.dca = atomicrmw volatile add ptr %i.dbn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i820

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i820: ; preds = %bb.ajn, %bb.ajm
  %.0.i.i.i.i4.i.i821 = phi i32 [ %i.dbq, %bb.ajm ], [ %i.dca, %bb.ajn ]
  %i.dcb = icmp eq i32 %.0.i.i.i.i4.i.i821, 1
  br i1 %i.dcb, label %bb.ajo, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i822, !prof !56

bb.ajo:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i820
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dbm) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i822

_ZN5arrow7compute9InputTypeD2Ev.exit.i822:        ; preds = %bb.ajo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i820, %bb.ajk, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i817
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  store i32 2, ptr %i.cxc, align 4, !tbaa !74
  %i.dcc = load <2 x ptr>, ptr %29, align 16, !tbaa !86
  store ptr null, ptr %i.cxq, align 8, !tbaa !46
  store <2 x ptr> %i.dcc, ptr %36, align 16, !tbaa !86
  store ptr null, ptr %29, align 16, !tbaa !98
  %i.dcd = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.dce = getelementptr inbounds nuw i8, ptr %36, i64 40
  %i.dcf = getelementptr inbounds nuw i8, ptr %29, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dcd, i8 0, i64 24, i1 false)
  %i.dcg = load ptr, ptr %i.dcf, align 8, !tbaa !99
  store ptr %i.dcg, ptr %i.dce, align 8, !tbaa !99
  %i.dch = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %i.dci = load ptr, ptr %i.dch, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i823 = icmp eq ptr %i.dci, null
  br i1 %.not.i.i.not.i.i.i.i823, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i824, label %bb.ajp

bb.ajp:                                           ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i822
  %i.dcj = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.dck = getelementptr inbounds nuw i8, ptr %36, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dcd, ptr noundef nonnull align 8 dereferenceable(32) %i.dcj, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.dci, ptr %i.dck, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dch, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i824

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i824: ; preds = %bb.ajp, %_ZN5arrow7compute9InputTypeD2Ev.exit.i822
  %i.dcl = getelementptr inbounds nuw i8, ptr %36, i64 48
  %i.dcm = load i64, ptr %i.cwz, align 16
  store i64 %i.dcm, ptr %i.dcl, align 16
  %i.dcn = getelementptr inbounds nuw i8, ptr %36, i64 56
  %i.dco = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 2 uses
  %i.dcp = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.dcq = load <2 x ptr>, ptr %i.dco, align 8, !tbaa !86
  store ptr null, ptr %i.dcp, align 16, !tbaa !46
  store <2 x ptr> %i.dcq, ptr %i.dcn, align 8, !tbaa !86
  store ptr null, ptr %i.dco, align 8, !tbaa !101
  %i.dcr = getelementptr inbounds nuw i8, ptr %36, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dcr, ptr noundef nonnull align 8 dereferenceable(20) %i.cxe, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %35, ptr noundef nonnull align 8 dereferenceable(252) %i.cwy, i32 noundef 36, ptr noundef nonnull %36)
          to label %bb.ajq unwind label %bb.ajx

bb.ajq:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i824
  %i.dcs = load ptr, ptr %35, align 8, !tbaa !102 ; 2 uses
  %.not.i.i825 = icmp eq ptr %i.dcs, null
  br i1 %.not.i.i825, label %bb.ajz, label %bb.ajr, !prof !105

bb.ajr:                                           ; preds = %bb.ajq
  %i.dct = getelementptr inbounds nuw i8, ptr %i.dcs, i64 1
  %i.dcu = load i8, ptr %i.dct, align 1, !tbaa !106, !range !115, !noundef !116
  %i.dcv = trunc nuw i8 %i.dcu to i1
  br i1 %i.dcv, label %bb.ajz, label %bb.ajs

bb.ajs:                                           ; preds = %bb.ajr
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %35) #20
  br label %bb.ajz

bb.ajt:                                           ; preds = %bb.ahx
  %i.dcw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i780

bb.aju:                                           ; preds = %.noexc3.i.i786
  %i.dcx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajw

bb.ajv:                                           ; preds = %bb.ahz
  %i.dcy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %34) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %33) #20
  br label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv, %bb.aju
  %.pn.i787 = phi { ptr, i32 } [ %i.dcy, %bb.ajv ], [ %i.dcx, %bb.aju ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #20
  br label %.body.i784

.body.i784:                                       ; preds = %bb.ajw, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i783
  %.pn.pn.i785 = phi { ptr, i32 } [ %.pn.i787, %bb.ajw ], [ %i.cxo, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i783 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %32) #20
  br label %.loopexit.i780

.loopexit.i780:                                   ; preds = %.body.i784, %bb.ajt
  %.pn.pn.pn.i781 = phi { ptr, i32 } [ %i.dcw, %bb.ajt ], [ %.pn.pn.i785, %.body.i784 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %bb.ajy

bb.ajx:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i824
  %i.dcz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %36) #20
  br label %bb.ajy

bb.ajy:                                           ; preds = %bb.ajx, %.loopexit.i780
  %.pn10.i782 = phi { ptr, i32 } [ %i.dcz, %bb.ajx ], [ %.pn.pn.pn.i781, %.loopexit.i780 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %.body682

bb.ajz:                                           ; preds = %bb.ajs, %bb.ajr, %bb.ajq
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %36) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %i.dda = load ptr, ptr %187, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.ddb = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %20, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.ddb, align 16, !tbaa !59
  %i.ddc = getelementptr inbounds nuw i8, ptr %20, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ddc, i8 0, i64 20, i1 false)
  %i.ddd = getelementptr inbounds nuw i8, ptr %20, i64 80
  store i8 1, ptr %i.ddd, align 16, !tbaa !70
  %i.dde = getelementptr inbounds nuw i8, ptr %20, i64 84 ; 2 uses
  store i32 0, ptr %i.dde, align 4, !tbaa !74
  %i.ddf = getelementptr inbounds nuw i8, ptr %20, i64 88
  store i32 0, ptr %i.ddf, align 8, !tbaa !75
  %i.ddg = getelementptr inbounds nuw i8, ptr %20, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_17LargeListViewTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.ddg, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %19, i32 noundef 42)
          to label %bb.aka unwind label %bb.alv

bb.aka:                                           ; preds = %bb.ajz
  store i32 2, ptr %23, align 8, !tbaa !77
  %i.ddh = getelementptr inbounds nuw i8, ptr %23, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ddh, i8 0, i64 16, i1 false)
  %i.ddi = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ddj = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ddk = load <2 x ptr>, ptr %19, align 16, !tbaa !86
  store <2 x ptr> %i.ddk, ptr %i.ddi, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.ddl = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i834 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i831 ; 4 uses

.noexc3.i.i834:                                   ; preds = %bb.aka
  store ptr %i.ddl, ptr %22, align 8, !tbaa !87
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.ddl, i64 40 ; 2 uses
  %i.ddn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.ddm, ptr %i.ddn, align 8, !tbaa !90
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.ddl, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ddo, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ddl, ptr noundef nonnull align 8 dereferenceable(40) %23)
  %i.ddp = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr %i.ddm, ptr %i.ddp, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %24, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.akb unwind label %bb.alw

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i831: ; preds = %bb.aka
  %i.ddq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i832

bb.akb:                                           ; preds = %.noexc3.i.i834
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %21, ptr noundef nonnull %22, ptr noundef nonnull %24, i1 noundef zeroext false, ptr noundef nonnull %25)
          to label %bb.akc unwind label %bb.alx

bb.akc:                                           ; preds = %bb.akb
  %i.ddr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.dds = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ddt = load <2 x ptr>, ptr %21, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.ddu = load ptr, ptr %i.dds, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.ddt, ptr %20, align 16, !tbaa !86
  %.not.i.i.i.i.i836 = icmp eq ptr %i.ddu, null
  br i1 %.not.i.i.i.i.i836, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i840, label %bb.akd

bb.akd:                                           ; preds = %bb.akc
  %i.ddv = getelementptr inbounds nuw i8, ptr %i.ddu, i64 8 ; 4 uses
  %i.ddw = load atomic i64, ptr %i.ddv acquire, align 8 ; 2 uses
  %i.ddx = icmp eq i64 %i.ddw, 4294967297
  %i.ddy = trunc i64 %i.ddw to i32                ; 2 uses
  br i1 %i.ddx, label %bb.ake, label %bb.akf

bb.ake:                                           ; preds = %bb.akd
  store i32 0, ptr %i.ddv, align 8, !tbaa !41
  %i.ddz = getelementptr inbounds nuw i8, ptr %i.ddu, i64 12
  store i32 0, ptr %i.ddz, align 4, !tbaa !43
  %i.dea = load ptr, ptr %i.ddu, align 8, !tbaa !44
  %i.deb = getelementptr inbounds nuw i8, ptr %i.dea, i64 16
  %i.dec = load ptr, ptr %i.deb, align 8
  call void %i.dec(ptr noundef nonnull align 8 dereferenceable(16) %i.ddu) #20, !inline_history !222
  %i.ded = load ptr, ptr %i.ddu, align 8, !tbaa !44
  %i.dee = getelementptr inbounds nuw i8, ptr %i.ded, i64 24
  %i.def = load ptr, ptr %i.dee, align 8
  call void %i.def(ptr noundef nonnull align 8 dereferenceable(16) %i.ddu) #20, !inline_history !222
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i840

bb.akf:                                           ; preds = %bb.akd
  %i.deg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i837 = icmp eq i8 %i.deg, 0
  br i1 %.not.i.i.i.i.i.i837, label %bb.akh, label %bb.akg

bb.akg:                                           ; preds = %bb.akf
  %i.deh = add nsw i32 %i.ddy, -1
  store i32 %i.deh, ptr %i.ddv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i838

bb.akh:                                           ; preds = %bb.akf
  %i.dei = atomicrmw volatile add ptr %i.ddv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i838

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i838: ; preds = %bb.akh, %bb.akg
  %.0.i.i.i.i.i.i.i839 = phi i32 [ %i.ddy, %bb.akg ], [ %i.dei, %bb.akh ]
  %i.dej = icmp eq i32 %.0.i.i.i.i.i.i.i839, 1
  br i1 %i.dej, label %bb.aki, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i840, !prof !56

bb.aki:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i838
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ddu) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i840

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i840: ; preds = %bb.aki, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i838, %bb.ake, %bb.akc
  %i.dek = load ptr, ptr %i.ddr, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i841 = icmp eq ptr %i.dek, null
  br i1 %.not.i.i.i841, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i845, label %bb.akj

bb.akj:                                           ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i840
  %i.del = getelementptr inbounds nuw i8, ptr %i.dek, i64 8 ; 4 uses
  %i.dem = load atomic i64, ptr %i.del acquire, align 8 ; 2 uses
  %i.den = icmp eq i64 %i.dem, 4294967297
  %i.deo = trunc i64 %i.dem to i32                ; 2 uses
  br i1 %i.den, label %bb.akk, label %bb.akl

bb.akk:                                           ; preds = %bb.akj
  store i32 0, ptr %i.del, align 8, !tbaa !41
  %i.dep = getelementptr inbounds nuw i8, ptr %i.dek, i64 12
  store i32 0, ptr %i.dep, align 4, !tbaa !43
  %i.deq = load ptr, ptr %i.dek, align 8, !tbaa !44
  %i.der = getelementptr inbounds nuw i8, ptr %i.deq, i64 16
  %i.des = load ptr, ptr %i.der, align 8
  call void %i.des(ptr noundef nonnull align 8 dereferenceable(16) %i.dek) #20, !inline_history !223
  %i.det = load ptr, ptr %i.dek, align 8, !tbaa !44
  %i.deu = getelementptr inbounds nuw i8, ptr %i.det, i64 24
  %i.dev = load ptr, ptr %i.deu, align 8
  call void %i.dev(ptr noundef nonnull align 8 dereferenceable(16) %i.dek) #20, !inline_history !223
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i845

bb.akl:                                           ; preds = %bb.akj
  %i.dew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i842 = icmp eq i8 %i.dew, 0
  br i1 %.not.i.i.i.i842, label %bb.akn, label %bb.akm

bb.akm:                                           ; preds = %bb.akl
  %i.dex = add nsw i32 %i.deo, -1
  store i32 %i.dex, ptr %i.del, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i843

bb.akn:                                           ; preds = %bb.akl
  %i.dey = atomicrmw volatile add ptr %i.del, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i843

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i843: ; preds = %bb.akn, %bb.akm
  %.0.i.i.i.i.i844 = phi i32 [ %i.deo, %bb.akm ], [ %i.dey, %bb.akn ]
  %i.dez = icmp eq i32 %.0.i.i.i.i.i844, 1
  br i1 %i.dez, label %bb.ako, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i845, !prof !56

bb.ako:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i843
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dek) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i845

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i845: ; preds = %bb.ako, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i843, %bb.akk, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i840
  %i.dfa = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.dfb = load ptr, ptr %i.dfa, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i846 = icmp eq ptr %i.dfb, null
  br i1 %.not.i.i12.i846, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i850, label %bb.akp

bb.akp:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i845
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.dfb, i64 8 ; 4 uses
  %i.dfd = load atomic i64, ptr %i.dfc acquire, align 8 ; 2 uses
  %i.dfe = icmp eq i64 %i.dfd, 4294967297
  %i.dff = trunc i64 %i.dfd to i32                ; 2 uses
  br i1 %i.dfe, label %bb.akq, label %bb.akr

bb.akq:                                           ; preds = %bb.akp
  store i32 0, ptr %i.dfc, align 8, !tbaa !41
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dfb, i64 12
  store i32 0, ptr %i.dfg, align 4, !tbaa !43
  %i.dfh = load ptr, ptr %i.dfb, align 8, !tbaa !44
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.dfh, i64 16
  %i.dfj = load ptr, ptr %i.dfi, align 8
  call void %i.dfj(ptr noundef nonnull align 8 dereferenceable(16) %i.dfb) #20, !inline_history !224
  %i.dfk = load ptr, ptr %i.dfb, align 8, !tbaa !44
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dfk, i64 24
  %i.dfm = load ptr, ptr %i.dfl, align 8
  call void %i.dfm(ptr noundef nonnull align 8 dereferenceable(16) %i.dfb) #20, !inline_history !224
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i850

bb.akr:                                           ; preds = %bb.akp
  %i.dfn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i847 = icmp eq i8 %i.dfn, 0
  br i1 %.not.i.i.i13.i847, label %bb.akt, label %bb.aks

bb.aks:                                           ; preds = %bb.akr
  %i.dfo = add nsw i32 %i.dff, -1
  store i32 %i.dfo, ptr %i.dfc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i848

bb.akt:                                           ; preds = %bb.akr
  %i.dfp = atomicrmw volatile add ptr %i.dfc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i848

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i848: ; preds = %bb.akt, %bb.aks
  %.0.i.i.i.i15.i849 = phi i32 [ %i.dff, %bb.aks ], [ %i.dfp, %bb.akt ]
  %i.dfq = icmp eq i32 %.0.i.i.i.i15.i849, 1
  br i1 %i.dfq, label %bb.aku, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i850, !prof !56

bb.aku:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i848
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dfb) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i850

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i850: ; preds = %bb.aku, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i848, %bb.akq, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i845
  %i.dfr = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.dfs = load ptr, ptr %i.dfr, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i851 = icmp eq ptr %i.dfs, null
  br i1 %.not.i.i16.i851, label %_ZNSt14_Function_baseD2Ev.exit.i.i852, label %bb.akv

bb.akv:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i850
  %i.dft = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  %i.dfu = invoke noundef zeroext i1 %i.dfs(ptr noundef nonnull align 8 dereferenceable(32) %i.dft, ptr noundef nonnull align 8 dereferenceable(32) %i.dft, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i852 unwind label %bb.akw ; 0 uses

bb.akw:                                           ; preds = %bb.akv
  %i.dfv = landingpad { ptr, i32 }
          catch ptr null
  %i.dfw = extractvalue { ptr, i32 } %i.dfv, 0
  call void @__clang_call_terminate(ptr %i.dfw) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i852:            ; preds = %bb.akv, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i850
  %i.dfx = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.dfy = load ptr, ptr %i.dfx, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i853 = icmp eq ptr %i.dfy, null
  br i1 %.not.i.i.i17.i853, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i857, label %bb.akx

bb.akx:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i852
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.dfy, i64 8 ; 4 uses
  %i.dga = load atomic i64, ptr %i.dfz acquire, align 8 ; 2 uses
  %i.dgb = icmp eq i64 %i.dga, 4294967297
  %i.dgc = trunc i64 %i.dga to i32                ; 2 uses
  br i1 %i.dgb, label %bb.aky, label %bb.akz

bb.aky:                                           ; preds = %bb.akx
  store i32 0, ptr %i.dfz, align 8, !tbaa !41
  %i.dgd = getelementptr inbounds nuw i8, ptr %i.dfy, i64 12
  store i32 0, ptr %i.dgd, align 4, !tbaa !43
  %i.dge = load ptr, ptr %i.dfy, align 8, !tbaa !44
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.dge, i64 16
  %i.dgg = load ptr, ptr %i.dgf, align 8
  call void %i.dgg(ptr noundef nonnull align 8 dereferenceable(16) %i.dfy) #20, !inline_history !225
  %i.dgh = load ptr, ptr %i.dfy, align 8, !tbaa !44
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dgh, i64 24
  %i.dgj = load ptr, ptr %i.dgi, align 8
  call void %i.dgj(ptr noundef nonnull align 8 dereferenceable(16) %i.dfy) #20, !inline_history !225
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i857

bb.akz:                                           ; preds = %bb.akx
  %i.dgk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i854 = icmp eq i8 %i.dgk, 0
  br i1 %.not.i.i.i.i18.i854, label %bb.alb, label %bb.ala

bb.ala:                                           ; preds = %bb.akz
  %i.dgl = add nsw i32 %i.dgc, -1
  store i32 %i.dgl, ptr %i.dfz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i855

bb.alb:                                           ; preds = %bb.akz
  %i.dgm = atomicrmw volatile add ptr %i.dfz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i855

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i855: ; preds = %bb.alb, %bb.ala
  %.0.i.i.i.i.i.i856 = phi i32 [ %i.dgc, %bb.ala ], [ %i.dgm, %bb.alb ]
  %i.dgn = icmp eq i32 %.0.i.i.i.i.i.i856, 1
  br i1 %i.dgn, label %bb.alc, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i857, !prof !56

bb.alc:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i855
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dfy) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i857

_ZN5arrow7compute10OutputTypeD2Ev.exit.i857:      ; preds = %bb.alc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i855, %bb.aky, %_ZNSt14_Function_baseD2Ev.exit.i.i852
  %i.dgo = load ptr, ptr %22, align 8, !tbaa !87
  %i.dgp = load ptr, ptr %i.ddp, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.dgo, ptr noundef %i.dgp)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i858 unwind label %bb.ale

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i858: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i857
  %i.dgq = load ptr, ptr %22, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i859 = icmp eq ptr %i.dgq, null
  br i1 %.not.i.i.i19.i859, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i860, label %bb.ald

bb.ald:                                           ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i858
  %i.dgr = load ptr, ptr %i.ddn, align 8, !tbaa !90
  %i.dgs = ptrtoint ptr %i.dgr to i64
  %i.dgt = ptrtoint ptr %i.dgq to i64
  %i.dgu = sub i64 %i.dgs, %i.dgt
  call void @_ZdlPvm(ptr noundef nonnull %i.dgq, i64 noundef %i.dgu) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i860

bb.ale:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i857
  %i.dgv = landingpad { ptr, i32 }
          catch ptr null
  %i.dgw = extractvalue { ptr, i32 } %i.dgv, 0
  call void @__clang_call_terminate(ptr %i.dgw) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i860: ; preds = %bb.ald, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i858
  %i.dgx = load ptr, ptr %i.ddj, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i861 = icmp eq ptr %i.dgx, null
  br i1 %.not.i.i.i21.i861, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i865, label %bb.alf

bb.alf:                                           ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i860
  %i.dgy = getelementptr inbounds nuw i8, ptr %i.dgx, i64 8 ; 4 uses
  %i.dgz = load atomic i64, ptr %i.dgy acquire, align 8 ; 2 uses
  %i.dha = icmp eq i64 %i.dgz, 4294967297
  %i.dhb = trunc i64 %i.dgz to i32                ; 2 uses
  br i1 %i.dha, label %bb.alg, label %bb.alh

bb.alg:                                           ; preds = %bb.alf
  store i32 0, ptr %i.dgy, align 8, !tbaa !41
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dgx, i64 12
  store i32 0, ptr %i.dhc, align 4, !tbaa !43
  %i.dhd = load ptr, ptr %i.dgx, align 8, !tbaa !44
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dhd, i64 16
  %i.dhf = load ptr, ptr %i.dhe, align 8
  call void %i.dhf(ptr noundef nonnull align 8 dereferenceable(16) %i.dgx) #20, !inline_history !226
  %i.dhg = load ptr, ptr %i.dgx, align 8, !tbaa !44
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.dhg, i64 24
  %i.dhi = load ptr, ptr %i.dhh, align 8
  call void %i.dhi(ptr noundef nonnull align 8 dereferenceable(16) %i.dgx) #20, !inline_history !226
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i865

bb.alh:                                           ; preds = %bb.alf
  %i.dhj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i862 = icmp eq i8 %i.dhj, 0
  br i1 %.not.i.i.i.i22.i862, label %bb.alj, label %bb.ali

bb.ali:                                           ; preds = %bb.alh
  %i.dhk = add nsw i32 %i.dhb, -1
  store i32 %i.dhk, ptr %i.dgy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i863

bb.alj:                                           ; preds = %bb.alh
  %i.dhl = atomicrmw volatile add ptr %i.dgy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i863

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i863: ; preds = %bb.alj, %bb.ali
  %.0.i.i.i.i.i24.i864 = phi i32 [ %i.dhb, %bb.ali ], [ %i.dhl, %bb.alj ]
  %i.dhm = icmp eq i32 %.0.i.i.i.i.i24.i864, 1
  br i1 %i.dhm, label %bb.alk, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i865, !prof !56

bb.alk:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i863
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dgx) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i865

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i865: ; preds = %bb.alk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i863, %bb.alg, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i860
  %i.dhn = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.dho = load ptr, ptr %i.dhn, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i866 = icmp eq ptr %i.dho, null
  br i1 %.not.i.i1.i.i866, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i870, label %bb.all

bb.all:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i865
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dho, i64 8 ; 4 uses
  %i.dhq = load atomic i64, ptr %i.dhp acquire, align 8 ; 2 uses
  %i.dhr = icmp eq i64 %i.dhq, 4294967297
  %i.dhs = trunc i64 %i.dhq to i32                ; 2 uses
  br i1 %i.dhr, label %bb.alm, label %bb.aln

bb.alm:                                           ; preds = %bb.all
  store i32 0, ptr %i.dhp, align 8, !tbaa !41
  %i.dht = getelementptr inbounds nuw i8, ptr %i.dho, i64 12
  store i32 0, ptr %i.dht, align 4, !tbaa !43
  %i.dhu = load ptr, ptr %i.dho, align 8, !tbaa !44
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.dhu, i64 16
  %i.dhw = load ptr, ptr %i.dhv, align 8
  call void %i.dhw(ptr noundef nonnull align 8 dereferenceable(16) %i.dho) #20, !inline_history !227
  %i.dhx = load ptr, ptr %i.dho, align 8, !tbaa !44
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.dhx, i64 24
  %i.dhz = load ptr, ptr %i.dhy, align 8
  call void %i.dhz(ptr noundef nonnull align 8 dereferenceable(16) %i.dho) #20, !inline_history !227
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i870

bb.aln:                                           ; preds = %bb.all
  %i.dia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i867 = icmp eq i8 %i.dia, 0
  br i1 %.not.i.i.i2.i.i867, label %bb.alp, label %bb.alo

bb.alo:                                           ; preds = %bb.aln
  %i.dib = add nsw i32 %i.dhs, -1
  store i32 %i.dib, ptr %i.dhp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i868

bb.alp:                                           ; preds = %bb.aln
  %i.dic = atomicrmw volatile add ptr %i.dhp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i868

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i868: ; preds = %bb.alp, %bb.alo
  %.0.i.i.i.i4.i.i869 = phi i32 [ %i.dhs, %bb.alo ], [ %i.dic, %bb.alp ]
  %i.did = icmp eq i32 %.0.i.i.i.i4.i.i869, 1
  br i1 %i.did, label %bb.alq, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i870, !prof !56

bb.alq:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i868
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dho) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i870

_ZN5arrow7compute9InputTypeD2Ev.exit.i870:        ; preds = %bb.alq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i868, %bb.alm, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i865
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  store i32 2, ptr %i.dde, align 4, !tbaa !74
  %i.die = load <2 x ptr>, ptr %20, align 16, !tbaa !86
  store ptr null, ptr %i.dds, align 8, !tbaa !46
  store <2 x ptr> %i.die, ptr %27, align 16, !tbaa !86
  store ptr null, ptr %20, align 16, !tbaa !98
  %i.dif = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.dig = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.dih = getelementptr inbounds nuw i8, ptr %20, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dif, i8 0, i64 24, i1 false)
  %i.dii = load ptr, ptr %i.dih, align 8, !tbaa !99
  store ptr %i.dii, ptr %i.dig, align 8, !tbaa !99
  %i.dij = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.dik = load ptr, ptr %i.dij, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i871 = icmp eq ptr %i.dik, null
  br i1 %.not.i.i.not.i.i.i.i871, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i872, label %bb.alr

bb.alr:                                           ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i870
  %i.dil = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dim = getelementptr inbounds nuw i8, ptr %27, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dif, ptr noundef nonnull align 8 dereferenceable(32) %i.dil, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.dik, ptr %i.dim, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dij, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i872

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i872: ; preds = %bb.alr, %_ZN5arrow7compute9InputTypeD2Ev.exit.i870
  %i.din = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.dio = load i64, ptr %i.ddb, align 16
  store i64 %i.dio, ptr %i.din, align 16
  %i.dip = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.diq = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.dis = load <2 x ptr>, ptr %i.diq, align 8, !tbaa !86
  store ptr null, ptr %i.dir, align 16, !tbaa !46
  store <2 x ptr> %i.dis, ptr %i.dip, align 8, !tbaa !86
  store ptr null, ptr %i.diq, align 8, !tbaa !101
  %i.dit = getelementptr inbounds nuw i8, ptr %27, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dit, ptr noundef nonnull align 8 dereferenceable(20) %i.ddg, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %26, ptr noundef nonnull align 8 dereferenceable(252) %i.dda, i32 noundef 42, ptr noundef nonnull %27)
          to label %bb.als unwind label %bb.alz

bb.als:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i872
  %i.diu = load ptr, ptr %26, align 8, !tbaa !102 ; 2 uses
  %.not.i.i873 = icmp eq ptr %i.diu, null
  br i1 %.not.i.i873, label %bb.amb, label %bb.alt, !prof !105

bb.alt:                                           ; preds = %bb.als
  %i.div = getelementptr inbounds nuw i8, ptr %i.diu, i64 1
  %i.diw = load i8, ptr %i.div, align 1, !tbaa !106, !range !115, !noundef !116
  %i.dix = trunc nuw i8 %i.diw to i1
  br i1 %i.dix, label %bb.amb, label %bb.alu

bb.alu:                                           ; preds = %bb.alt
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #20
  br label %bb.amb

bb.alv:                                           ; preds = %bb.ajz
  %i.diy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i828

bb.alw:                                           ; preds = %.noexc3.i.i834
  %i.diz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aly

bb.alx:                                           ; preds = %bb.akb
  %i.dja = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %24) #20
  br label %bb.aly

bb.aly:                                           ; preds = %bb.alx, %bb.alw
  %.pn.i835 = phi { ptr, i32 } [ %i.dja, %bb.alx ], [ %i.diz, %bb.alw ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #20
  br label %.body.i832

.body.i832:                                       ; preds = %bb.aly, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i831
  %.pn.pn.i833 = phi { ptr, i32 } [ %.pn.i835, %bb.aly ], [ %i.ddq, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i831 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %23) #20
  br label %.loopexit.i828

.loopexit.i828:                                   ; preds = %.body.i832, %bb.alv
  %.pn.pn.pn.i829 = phi { ptr, i32 } [ %i.diy, %bb.alv ], [ %.pn.pn.i833, %.body.i832 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.ama

bb.alz:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i872
  %i.djb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %27) #20
  br label %bb.ama

bb.ama:                                           ; preds = %bb.alz, %.loopexit.i828
  %.pn10.i830 = phi { ptr, i32 } [ %i.djb, %bb.alz ], [ %.pn.pn.pn.i829, %.loopexit.i828 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.body682

bb.amb:                                           ; preds = %bb.alu, %bb.alt, %bb.als
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %27) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.djc = load ptr, ptr %187, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.djd = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %11, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.djd, align 16, !tbaa !59
  %i.dje = getelementptr inbounds nuw i8, ptr %11, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dje, i8 0, i64 20, i1 false)
  %i.djf = getelementptr inbounds nuw i8, ptr %11, i64 80
  store i8 1, ptr %i.djf, align 16, !tbaa !70
  %i.djg = getelementptr inbounds nuw i8, ptr %11, i64 84 ; 2 uses
  store i32 0, ptr %i.djg, align 4, !tbaa !74
  %i.djh = getelementptr inbounds nuw i8, ptr %11, i64 88
  store i32 0, ptr %i.djh, align 8, !tbaa !75
  %i.dji = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.dji, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %10, i32 noundef 30)
          to label %bb.amc unwind label %bb.anx

bb.amc:                                           ; preds = %bb.amb
  store i32 2, ptr %14, align 8, !tbaa !77
  %i.djj = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.djj, i8 0, i64 16, i1 false)
  %i.djk = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.djl = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.djm = load <2 x ptr>, ptr %10, align 16, !tbaa !86
  store <2 x ptr> %i.djm, ptr %i.djk, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.djn = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i882 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i879 ; 4 uses

.noexc3.i.i882:                                   ; preds = %bb.amc
  store ptr %i.djn, ptr %13, align 8, !tbaa !87
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 40 ; 2 uses
  %i.djp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.djo, ptr %i.djp, align 8, !tbaa !90
  %i.djq = getelementptr inbounds nuw i8, ptr %i.djn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.djq, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.djn, ptr noundef nonnull align 8 dereferenceable(40) %14)
  %i.djr = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.djo, ptr %i.djr, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.amd unwind label %bb.any

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i879: ; preds = %bb.amc
  %i.djs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i880

bb.amd:                                           ; preds = %.noexc3.i.i882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %12, ptr noundef nonnull %13, ptr noundef nonnull %15, i1 noundef zeroext false, ptr noundef nonnull %16)
          to label %bb.ame unwind label %bb.anz

bb.ame:                                           ; preds = %bb.amd
  %i.djt = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dju = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.djv = load <2 x ptr>, ptr %12, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.djw = load ptr, ptr %i.dju, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.djv, ptr %11, align 16, !tbaa !86
  %.not.i.i.i.i.i884 = icmp eq ptr %i.djw, null
  br i1 %.not.i.i.i.i.i884, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i888, label %bb.amf

bb.amf:                                           ; preds = %bb.ame
  %i.djx = getelementptr inbounds nuw i8, ptr %i.djw, i64 8 ; 4 uses
  %i.djy = load atomic i64, ptr %i.djx acquire, align 8 ; 2 uses
  %i.djz = icmp eq i64 %i.djy, 4294967297
  %i.dka = trunc i64 %i.djy to i32                ; 2 uses
  br i1 %i.djz, label %bb.amg, label %bb.amh

bb.amg:                                           ; preds = %bb.amf
  store i32 0, ptr %i.djx, align 8, !tbaa !41
  %i.dkb = getelementptr inbounds nuw i8, ptr %i.djw, i64 12
  store i32 0, ptr %i.dkb, align 4, !tbaa !43
  %i.dkc = load ptr, ptr %i.djw, align 8, !tbaa !44
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.dkc, i64 16
  %i.dke = load ptr, ptr %i.dkd, align 8
  call void %i.dke(ptr noundef nonnull align 8 dereferenceable(16) %i.djw) #20, !inline_history !228
  %i.dkf = load ptr, ptr %i.djw, align 8, !tbaa !44
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dkf, i64 24
  %i.dkh = load ptr, ptr %i.dkg, align 8
  call void %i.dkh(ptr noundef nonnull align 8 dereferenceable(16) %i.djw) #20, !inline_history !228
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i888

bb.amh:                                           ; preds = %bb.amf
  %i.dki = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i885 = icmp eq i8 %i.dki, 0
  br i1 %.not.i.i.i.i.i.i885, label %bb.amj, label %bb.ami

bb.ami:                                           ; preds = %bb.amh
  %i.dkj = add nsw i32 %i.dka, -1
  store i32 %i.dkj, ptr %i.djx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i886

bb.amj:                                           ; preds = %bb.amh
  %i.dkk = atomicrmw volatile add ptr %i.djx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i886

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i886: ; preds = %bb.amj, %bb.ami
  %.0.i.i.i.i.i.i.i887 = phi i32 [ %i.dka, %bb.ami ], [ %i.dkk, %bb.amj ]
  %i.dkl = icmp eq i32 %.0.i.i.i.i.i.i.i887, 1
  br i1 %i.dkl, label %bb.amk, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i888, !prof !56

bb.amk:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i886
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.djw) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i888

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i888: ; preds = %bb.amk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i886, %bb.amg, %bb.ame
  %i.dkm = load ptr, ptr %i.djt, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i889 = icmp eq ptr %i.dkm, null
  br i1 %.not.i.i.i889, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i893, label %bb.aml

bb.aml:                                           ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i888
  %i.dkn = getelementptr inbounds nuw i8, ptr %i.dkm, i64 8 ; 4 uses
  %i.dko = load atomic i64, ptr %i.dkn acquire, align 8 ; 2 uses
  %i.dkp = icmp eq i64 %i.dko, 4294967297
  %i.dkq = trunc i64 %i.dko to i32                ; 2 uses
  br i1 %i.dkp, label %bb.amm, label %bb.amn

bb.amm:                                           ; preds = %bb.aml
  store i32 0, ptr %i.dkn, align 8, !tbaa !41
  %i.dkr = getelementptr inbounds nuw i8, ptr %i.dkm, i64 12
  store i32 0, ptr %i.dkr, align 4, !tbaa !43
  %i.dks = load ptr, ptr %i.dkm, align 8, !tbaa !44
  %i.dkt = getelementptr inbounds nuw i8, ptr %i.dks, i64 16
  %i.dku = load ptr, ptr %i.dkt, align 8
  call void %i.dku(ptr noundef nonnull align 8 dereferenceable(16) %i.dkm) #20, !inline_history !229
  %i.dkv = load ptr, ptr %i.dkm, align 8, !tbaa !44
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dkv, i64 24
  %i.dkx = load ptr, ptr %i.dkw, align 8
  call void %i.dkx(ptr noundef nonnull align 8 dereferenceable(16) %i.dkm) #20, !inline_history !229
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i893

bb.amn:                                           ; preds = %bb.aml
  %i.dky = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i890 = icmp eq i8 %i.dky, 0
  br i1 %.not.i.i.i.i890, label %bb.amp, label %bb.amo

bb.amo:                                           ; preds = %bb.amn
  %i.dkz = add nsw i32 %i.dkq, -1
  store i32 %i.dkz, ptr %i.dkn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i891

bb.amp:                                           ; preds = %bb.amn
  %i.dla = atomicrmw volatile add ptr %i.dkn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i891

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i891: ; preds = %bb.amp, %bb.amo
  %.0.i.i.i.i.i892 = phi i32 [ %i.dkq, %bb.amo ], [ %i.dla, %bb.amp ]
  %i.dlb = icmp eq i32 %.0.i.i.i.i.i892, 1
  br i1 %i.dlb, label %bb.amq, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i893, !prof !56

bb.amq:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i891
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dkm) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i893

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i893: ; preds = %bb.amq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i891, %bb.amm, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i888
  %i.dlc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dld = load ptr, ptr %i.dlc, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i894 = icmp eq ptr %i.dld, null
  br i1 %.not.i.i12.i894, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i898, label %bb.amr

bb.amr:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i893
  %i.dle = getelementptr inbounds nuw i8, ptr %i.dld, i64 8 ; 4 uses
  %i.dlf = load atomic i64, ptr %i.dle acquire, align 8 ; 2 uses
  %i.dlg = icmp eq i64 %i.dlf, 4294967297
  %i.dlh = trunc i64 %i.dlf to i32                ; 2 uses
  br i1 %i.dlg, label %bb.ams, label %bb.amt

bb.ams:                                           ; preds = %bb.amr
  store i32 0, ptr %i.dle, align 8, !tbaa !41
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dld, i64 12
  store i32 0, ptr %i.dli, align 4, !tbaa !43
  %i.dlj = load ptr, ptr %i.dld, align 8, !tbaa !44
  %i.dlk = getelementptr inbounds nuw i8, ptr %i.dlj, i64 16
  %i.dll = load ptr, ptr %i.dlk, align 8
  call void %i.dll(ptr noundef nonnull align 8 dereferenceable(16) %i.dld) #20, !inline_history !230
  %i.dlm = load ptr, ptr %i.dld, align 8, !tbaa !44
  %i.dln = getelementptr inbounds nuw i8, ptr %i.dlm, i64 24
  %i.dlo = load ptr, ptr %i.dln, align 8
  call void %i.dlo(ptr noundef nonnull align 8 dereferenceable(16) %i.dld) #20, !inline_history !230
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i898

bb.amt:                                           ; preds = %bb.amr
  %i.dlp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i895 = icmp eq i8 %i.dlp, 0
  br i1 %.not.i.i.i13.i895, label %bb.amv, label %bb.amu

bb.amu:                                           ; preds = %bb.amt
  %i.dlq = add nsw i32 %i.dlh, -1
  store i32 %i.dlq, ptr %i.dle, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i896

bb.amv:                                           ; preds = %bb.amt
  %i.dlr = atomicrmw volatile add ptr %i.dle, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i896

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i896: ; preds = %bb.amv, %bb.amu
  %.0.i.i.i.i15.i897 = phi i32 [ %i.dlh, %bb.amu ], [ %i.dlr, %bb.amv ]
  %i.dls = icmp eq i32 %.0.i.i.i.i15.i897, 1
  br i1 %i.dls, label %bb.amw, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i898, !prof !56

bb.amw:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i896
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dld) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i898

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i898: ; preds = %bb.amw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i896, %bb.ams, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i893
  %i.dlt = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.dlu = load ptr, ptr %i.dlt, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i899 = icmp eq ptr %i.dlu, null
  br i1 %.not.i.i16.i899, label %_ZNSt14_Function_baseD2Ev.exit.i.i900, label %bb.amx

bb.amx:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i898
  %i.dlv = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.dlw = invoke noundef zeroext i1 %i.dlu(ptr noundef nonnull align 8 dereferenceable(32) %i.dlv, ptr noundef nonnull align 8 dereferenceable(32) %i.dlv, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i900 unwind label %bb.amy ; 0 uses

bb.amy:                                           ; preds = %bb.amx
  %i.dlx = landingpad { ptr, i32 }
          catch ptr null
  %i.dly = extractvalue { ptr, i32 } %i.dlx, 0
  call void @__clang_call_terminate(ptr %i.dly) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i900:            ; preds = %bb.amx, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i898
  %i.dlz = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.dma = load ptr, ptr %i.dlz, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i901 = icmp eq ptr %i.dma, null
  br i1 %.not.i.i.i17.i901, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i905, label %bb.amz

bb.amz:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i900
  %i.dmb = getelementptr inbounds nuw i8, ptr %i.dma, i64 8 ; 4 uses
  %i.dmc = load atomic i64, ptr %i.dmb acquire, align 8 ; 2 uses
  %i.dmd = icmp eq i64 %i.dmc, 4294967297
  %i.dme = trunc i64 %i.dmc to i32                ; 2 uses
  br i1 %i.dmd, label %bb.ana, label %bb.anb

bb.ana:                                           ; preds = %bb.amz
  store i32 0, ptr %i.dmb, align 8, !tbaa !41
  %i.dmf = getelementptr inbounds nuw i8, ptr %i.dma, i64 12
  store i32 0, ptr %i.dmf, align 4, !tbaa !43
  %i.dmg = load ptr, ptr %i.dma, align 8, !tbaa !44
  %i.dmh = getelementptr inbounds nuw i8, ptr %i.dmg, i64 16
  %i.dmi = load ptr, ptr %i.dmh, align 8
  call void %i.dmi(ptr noundef nonnull align 8 dereferenceable(16) %i.dma) #20, !inline_history !231
  %i.dmj = load ptr, ptr %i.dma, align 8, !tbaa !44
  %i.dmk = getelementptr inbounds nuw i8, ptr %i.dmj, i64 24
  %i.dml = load ptr, ptr %i.dmk, align 8
  call void %i.dml(ptr noundef nonnull align 8 dereferenceable(16) %i.dma) #20, !inline_history !231
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i905

bb.anb:                                           ; preds = %bb.amz
  %i.dmm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i902 = icmp eq i8 %i.dmm, 0
  br i1 %.not.i.i.i.i18.i902, label %bb.and, label %bb.anc

bb.anc:                                           ; preds = %bb.anb
  %i.dmn = add nsw i32 %i.dme, -1
  store i32 %i.dmn, ptr %i.dmb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i903

bb.and:                                           ; preds = %bb.anb
  %i.dmo = atomicrmw volatile add ptr %i.dmb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i903

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i903: ; preds = %bb.and, %bb.anc
  %.0.i.i.i.i.i.i904 = phi i32 [ %i.dme, %bb.anc ], [ %i.dmo, %bb.and ]
  %i.dmp = icmp eq i32 %.0.i.i.i.i.i.i904, 1
  br i1 %i.dmp, label %bb.ane, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i905, !prof !56

bb.ane:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i903
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dma) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i905

_ZN5arrow7compute10OutputTypeD2Ev.exit.i905:      ; preds = %bb.ane, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i903, %bb.ana, %_ZNSt14_Function_baseD2Ev.exit.i.i900
  %i.dmq = load ptr, ptr %13, align 8, !tbaa !87
  %i.dmr = load ptr, ptr %i.djr, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.dmq, ptr noundef %i.dmr)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i906 unwind label %bb.ang

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i906: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i905
  %i.dms = load ptr, ptr %13, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i19.i907 = icmp eq ptr %i.dms, null
  br i1 %.not.i.i.i19.i907, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i908, label %bb.anf

bb.anf:                                           ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i906
  %i.dmt = load ptr, ptr %i.djp, align 8, !tbaa !90
  %i.dmu = ptrtoint ptr %i.dmt to i64
  %i.dmv = ptrtoint ptr %i.dms to i64
  %i.dmw = sub i64 %i.dmu, %i.dmv
  call void @_ZdlPvm(ptr noundef nonnull %i.dms, i64 noundef %i.dmw) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i908

bb.ang:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i905
  %i.dmx = landingpad { ptr, i32 }
          catch ptr null
  %i.dmy = extractvalue { ptr, i32 } %i.dmx, 0
  call void @__clang_call_terminate(ptr %i.dmy) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i908: ; preds = %bb.anf, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i906
  %i.dmz = load ptr, ptr %i.djl, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i909 = icmp eq ptr %i.dmz, null
  br i1 %.not.i.i.i21.i909, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i913, label %bb.anh

bb.anh:                                           ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i908
  %i.dna = getelementptr inbounds nuw i8, ptr %i.dmz, i64 8 ; 4 uses
  %i.dnb = load atomic i64, ptr %i.dna acquire, align 8 ; 2 uses
  %i.dnc = icmp eq i64 %i.dnb, 4294967297
  %i.dnd = trunc i64 %i.dnb to i32                ; 2 uses
  br i1 %i.dnc, label %bb.ani, label %bb.anj

bb.ani:                                           ; preds = %bb.anh
  store i32 0, ptr %i.dna, align 8, !tbaa !41
  %i.dne = getelementptr inbounds nuw i8, ptr %i.dmz, i64 12
  store i32 0, ptr %i.dne, align 4, !tbaa !43
  %i.dnf = load ptr, ptr %i.dmz, align 8, !tbaa !44
  %i.dng = getelementptr inbounds nuw i8, ptr %i.dnf, i64 16
  %i.dnh = load ptr, ptr %i.dng, align 8
  call void %i.dnh(ptr noundef nonnull align 8 dereferenceable(16) %i.dmz) #20, !inline_history !232
  %i.dni = load ptr, ptr %i.dmz, align 8, !tbaa !44
  %i.dnj = getelementptr inbounds nuw i8, ptr %i.dni, i64 24
  %i.dnk = load ptr, ptr %i.dnj, align 8
  call void %i.dnk(ptr noundef nonnull align 8 dereferenceable(16) %i.dmz) #20, !inline_history !232
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i913

bb.anj:                                           ; preds = %bb.anh
  %i.dnl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i910 = icmp eq i8 %i.dnl, 0
  br i1 %.not.i.i.i.i22.i910, label %bb.anl, label %bb.ank

bb.ank:                                           ; preds = %bb.anj
  %i.dnm = add nsw i32 %i.dnd, -1
  store i32 %i.dnm, ptr %i.dna, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i911

bb.anl:                                           ; preds = %bb.anj
  %i.dnn = atomicrmw volatile add ptr %i.dna, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i911

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i911: ; preds = %bb.anl, %bb.ank
  %.0.i.i.i.i.i24.i912 = phi i32 [ %i.dnd, %bb.ank ], [ %i.dnn, %bb.anl ]
  %i.dno = icmp eq i32 %.0.i.i.i.i.i24.i912, 1
  br i1 %i.dno, label %bb.anm, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i913, !prof !56

bb.anm:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i911
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dmz) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i913

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i913: ; preds = %bb.anm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i911, %bb.ani, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i908
  %i.dnp = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dnq = load ptr, ptr %i.dnp, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i914 = icmp eq ptr %i.dnq, null
  br i1 %.not.i.i1.i.i914, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i918, label %bb.ann

bb.ann:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i913
  %i.dnr = getelementptr inbounds nuw i8, ptr %i.dnq, i64 8 ; 4 uses
  %i.dns = load atomic i64, ptr %i.dnr acquire, align 8 ; 2 uses
  %i.dnt = icmp eq i64 %i.dns, 4294967297
  %i.dnu = trunc i64 %i.dns to i32                ; 2 uses
  br i1 %i.dnt, label %bb.ano, label %bb.anp

bb.ano:                                           ; preds = %bb.ann
  store i32 0, ptr %i.dnr, align 8, !tbaa !41
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.dnq, i64 12
  store i32 0, ptr %i.dnv, align 4, !tbaa !43
  %i.dnw = load ptr, ptr %i.dnq, align 8, !tbaa !44
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dnw, i64 16
  %i.dny = load ptr, ptr %i.dnx, align 8
  call void %i.dny(ptr noundef nonnull align 8 dereferenceable(16) %i.dnq) #20, !inline_history !233
  %i.dnz = load ptr, ptr %i.dnq, align 8, !tbaa !44
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnz, i64 24
  %i.dob = load ptr, ptr %i.doa, align 8
  call void %i.dob(ptr noundef nonnull align 8 dereferenceable(16) %i.dnq) #20, !inline_history !233
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i918

bb.anp:                                           ; preds = %bb.ann
  %i.doc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i915 = icmp eq i8 %i.doc, 0
  br i1 %.not.i.i.i2.i.i915, label %bb.anr, label %bb.anq

bb.anq:                                           ; preds = %bb.anp
  %i.dod = add nsw i32 %i.dnu, -1
  store i32 %i.dod, ptr %i.dnr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i916

bb.anr:                                           ; preds = %bb.anp
  %i.doe = atomicrmw volatile add ptr %i.dnr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i916

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i916: ; preds = %bb.anr, %bb.anq
  %.0.i.i.i.i4.i.i917 = phi i32 [ %i.dnu, %bb.anq ], [ %i.doe, %bb.anr ]
  %i.dof = icmp eq i32 %.0.i.i.i.i4.i.i917, 1
  br i1 %i.dof, label %bb.ans, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i918, !prof !56

bb.ans:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i916
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dnq) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i918

_ZN5arrow7compute9InputTypeD2Ev.exit.i918:        ; preds = %bb.ans, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i916, %bb.ano, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i913
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  store i32 2, ptr %i.djg, align 4, !tbaa !74
  %i.dog = load <2 x ptr>, ptr %11, align 16, !tbaa !86
  store ptr null, ptr %i.dju, align 8, !tbaa !46
  store <2 x ptr> %i.dog, ptr %18, align 16, !tbaa !86
  store ptr null, ptr %11, align 16, !tbaa !98
  %i.doh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.doi = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.doj = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.doh, i8 0, i64 24, i1 false)
  %i.dok = load ptr, ptr %i.doj, align 8, !tbaa !99
  store ptr %i.dok, ptr %i.doi, align 8, !tbaa !99
  %i.dol = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.dom = load ptr, ptr %i.dol, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i919 = icmp eq ptr %i.dom, null
  br i1 %.not.i.i.not.i.i.i.i919, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i920, label %bb.ant

bb.ant:                                           ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i918
  %i.don = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.doo = getelementptr inbounds nuw i8, ptr %18, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.doh, ptr noundef nonnull align 8 dereferenceable(32) %i.don, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.dom, ptr %i.doo, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dol, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i920

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i920: ; preds = %bb.ant, %_ZN5arrow7compute9InputTypeD2Ev.exit.i918
  %i.dop = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.doq = load i64, ptr %i.djd, align 16
  store i64 %i.doq, ptr %i.dop, align 16
  %i.dor = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.dos = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  %i.dot = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.dou = load <2 x ptr>, ptr %i.dos, align 8, !tbaa !86
  store ptr null, ptr %i.dot, align 16, !tbaa !46
  store <2 x ptr> %i.dou, ptr %i.dor, align 8, !tbaa !86
  store ptr null, ptr %i.dos, align 8, !tbaa !101
  %i.dov = getelementptr inbounds nuw i8, ptr %18, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dov, ptr noundef nonnull align 8 dereferenceable(20) %i.dji, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %17, ptr noundef nonnull align 8 dereferenceable(252) %i.djc, i32 noundef 30, ptr noundef nonnull %18)
          to label %bb.anu unwind label %bb.aob

bb.anu:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i920
  %i.dow = load ptr, ptr %17, align 8, !tbaa !102 ; 2 uses
  %.not.i.i921 = icmp eq ptr %i.dow, null
  br i1 %.not.i.i921, label %bb.aod, label %bb.anv, !prof !105

bb.anv:                                           ; preds = %bb.anu
  %i.dox = getelementptr inbounds nuw i8, ptr %i.dow, i64 1
  %i.doy = load i8, ptr %i.dox, align 1, !tbaa !106, !range !115, !noundef !116
  %i.doz = trunc nuw i8 %i.doy to i1
  br i1 %i.doz, label %bb.aod, label %bb.anw

bb.anw:                                           ; preds = %bb.anv
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #20
  br label %bb.aod

bb.anx:                                           ; preds = %bb.amb
  %i.dpa = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i876

bb.any:                                           ; preds = %.noexc3.i.i882
  %i.dpb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aoa

bb.anz:                                           ; preds = %bb.amd
  %i.dpc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #20
  br label %bb.aoa

bb.aoa:                                           ; preds = %bb.anz, %bb.any
  %.pn.i883 = phi { ptr, i32 } [ %i.dpc, %bb.anz ], [ %i.dpb, %bb.any ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #20
  br label %.body.i880

.body.i880:                                       ; preds = %bb.aoa, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i879
  %.pn.pn.i881 = phi { ptr, i32 } [ %.pn.i883, %bb.aoa ], [ %i.djs, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i879 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #20
  br label %.loopexit.i876

.loopexit.i876:                                   ; preds = %.body.i880, %bb.anx
  %.pn.pn.pn.i877 = phi { ptr, i32 } [ %i.dpa, %bb.anx ], [ %.pn.pn.i881, %.body.i880 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.aoc

bb.aob:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i920
  %i.dpd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %18) #20
  br label %bb.aoc

bb.aoc:                                           ; preds = %bb.aob, %.loopexit.i876
  %.pn10.i878 = phi { ptr, i32 } [ %i.dpd, %bb.aob ], [ %.pn.pn.pn.i877, %.loopexit.i876 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %.body682

bb.aod:                                           ; preds = %bb.anw, %bb.anv, %bb.anu
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %18) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 26, ptr %i.e, align 4, !tbaa !33
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.dpe = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #21
          to label %.noexc925 unwind label %bb.avp ; 6 uses

.noexc925:                                        ; preds = %bb.aod
  %i.dpf = getelementptr inbounds nuw i8, ptr %i.dpe, i64 8
  store i32 1, ptr %i.dpf, align 8, !tbaa !41, !noalias !234
  %i.dpg = getelementptr inbounds nuw i8, ptr %i.dpe, i64 12
  store i32 1, ptr %i.dpg, align 4, !tbaa !43, !noalias !234
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dpe, align 8, !tbaa !44, !noalias !234
  %i.dph = getelementptr inbounds nuw i8, ptr %i.dpe, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA12_KcNS0_4Type4typeEEEvPT_DpOT0_(ptr noundef nonnull %i.dph, ptr noundef nonnull align 1 dereferenceable(12) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.aoe unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i924, !noalias !234

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i924: ; preds = %.noexc925
  %i.dpi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dpe, i64 noundef 272) #22, !noalias !234
  br label %.body926

bb.aoe:                                           ; preds = %.noexc925
  %i.dpj = getelementptr inbounds nuw i8, ptr %189, i64 8 ; 3 uses
  store ptr %i.dpe, ptr %i.dpj, align 8, !tbaa !46, !alias.scope !234
  store ptr %i.dph, ptr %189, align 16, !tbaa !50, !alias.scope !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %190, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.aof unwind label %bb.avq

bb.aof:                                           ; preds = %bb.aoe
  invoke void @_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE(i32 noundef 26, ptr noundef nonnull %190, ptr noundef nonnull %i.dph)
          to label %bb.aog unwind label %bb.avr

bb.aog:                                           ; preds = %bb.aof
  %i.dpk = getelementptr inbounds nuw i8, ptr %190, i64 40
  %i.dpl = load ptr, ptr %i.dpk, align 8, !tbaa !52 ; 2 uses
  %.not.i.i928 = icmp eq ptr %i.dpl, null
  br i1 %.not.i.i928, label %_ZNSt14_Function_baseD2Ev.exit.i929, label %bb.aoh

bb.aoh:                                           ; preds = %bb.aog
  %i.dpm = getelementptr inbounds nuw i8, ptr %190, i64 24 ; 2 uses
  %i.dpn = invoke noundef zeroext i1 %i.dpl(ptr noundef nonnull align 8 dereferenceable(32) %i.dpm, ptr noundef nonnull align 8 dereferenceable(32) %i.dpm, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i929 unwind label %bb.aoi ; 0 uses

bb.aoi:                                           ; preds = %bb.aoh
  %i.dpo = landingpad { ptr, i32 }
          catch ptr null
  %i.dpp = extractvalue { ptr, i32 } %i.dpo, 0
  call void @__clang_call_terminate(ptr %i.dpp) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i929:              ; preds = %bb.aoh, %bb.aog
  %i.dpq = getelementptr inbounds nuw i8, ptr %190, i64 16
  %i.dpr = load ptr, ptr %i.dpq, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i930 = icmp eq ptr %i.dpr, null
  br i1 %.not.i.i.i930, label %_ZN5arrow7compute10OutputTypeD2Ev.exit934, label %bb.aoj

bb.aoj:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i929
  %i.dps = getelementptr inbounds nuw i8, ptr %i.dpr, i64 8 ; 4 uses
  %i.dpt = load atomic i64, ptr %i.dps acquire, align 8 ; 2 uses
  %i.dpu = icmp eq i64 %i.dpt, 4294967297
  %i.dpv = trunc i64 %i.dpt to i32                ; 2 uses
  br i1 %i.dpu, label %bb.aok, label %bb.aol

bb.aok:                                           ; preds = %bb.aoj
  store i32 0, ptr %i.dps, align 8, !tbaa !41
  %i.dpw = getelementptr inbounds nuw i8, ptr %i.dpr, i64 12
  store i32 0, ptr %i.dpw, align 4, !tbaa !43
  %i.dpx = load ptr, ptr %i.dpr, align 8, !tbaa !44
  %i.dpy = getelementptr inbounds nuw i8, ptr %i.dpx, i64 16
  %i.dpz = load ptr, ptr %i.dpy, align 8
  call void %i.dpz(ptr noundef nonnull align 8 dereferenceable(16) %i.dpr) #20, !inline_history !54
  %i.dqa = load ptr, ptr %i.dpr, align 8, !tbaa !44
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dqa, i64 24
  %i.dqc = load ptr, ptr %i.dqb, align 8
  call void %i.dqc(ptr noundef nonnull align 8 dereferenceable(16) %i.dpr) #20, !inline_history !54
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit934

bb.aol:                                           ; preds = %bb.aoj
  %i.dqd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i931 = icmp eq i8 %i.dqd, 0
  br i1 %.not.i.i.i.i931, label %bb.aon, label %bb.aom

bb.aom:                                           ; preds = %bb.aol
  %i.dqe = add nsw i32 %i.dpv, -1
  store i32 %i.dqe, ptr %i.dps, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i932

bb.aon:                                           ; preds = %bb.aol
  %i.dqf = atomicrmw volatile add ptr %i.dps, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i932

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i932: ; preds = %bb.aon, %bb.aom
  %.0.i.i.i.i.i933 = phi i32 [ %i.dpv, %bb.aom ], [ %i.dqf, %bb.aon ]
  %i.dqg = icmp eq i32 %.0.i.i.i.i.i933, 1
  br i1 %i.dqg, label %bb.aoo, label %_ZN5arrow7compute10OutputTypeD2Ev.exit934, !prof !56

bb.aoo:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i932
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dpr) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit934

_ZN5arrow7compute10OutputTypeD2Ev.exit934:        ; preds = %_ZNSt14_Function_baseD2Ev.exit.i929, %bb.aok, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i932, %bb.aoo
  %i.dqh = load ptr, ptr %189, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.dqi = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %2, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.dqi, align 16, !tbaa !59
  %i.dqj = getelementptr inbounds nuw i8, ptr %2, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dqj, i8 0, i64 20, i1 false)
  %i.dqk = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i8 1, ptr %i.dqk, align 16, !tbaa !70
  %i.dql = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  store i32 0, ptr %i.dql, align 4, !tbaa !74
  %i.dqm = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 0, ptr %i.dqm, align 8, !tbaa !75
  %i.dqn = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110CastStruct4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.dqn, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %1, i32 noundef 26)
          to label %bb.aop unwind label %bb.aqk

bb.aop:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit934
  store i32 2, ptr %5, align 8, !tbaa !77
  %i.dqo = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dqo, i8 0, i64 16, i1 false)
  %i.dqp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dqq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dqr = load <2 x ptr>, ptr %1, align 16, !tbaa !86
  store <2 x ptr> %i.dqr, ptr %i.dqp, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.dqs = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc3.i.i941 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i938 ; 4 uses

.noexc3.i.i941:                                   ; preds = %bb.aop
  store ptr %i.dqs, ptr %4, align 8, !tbaa !87
  %i.dqt = getelementptr inbounds nuw i8, ptr %i.dqs, i64 40 ; 2 uses
  %i.dqu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.dqt, ptr %i.dqu, align 8, !tbaa !90
  %i.dqv = getelementptr inbounds nuw i8, ptr %i.dqs, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dqv, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.dqs, ptr noundef nonnull align 8 dereferenceable(40) %5)
  %i.dqw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.dqt, ptr %i.dqw, align 8, !tbaa !91
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.aoq unwind label %bb.aql

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i938: ; preds = %bb.aop
  %i.dqx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i939

bb.aoq:                                           ; preds = %.noexc3.i.i941
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %3, ptr noundef nonnull %4, ptr noundef nonnull %6, i1 noundef zeroext false, ptr noundef nonnull %7)
          to label %bb.aor unwind label %bb.aqm

bb.aor:                                           ; preds = %bb.aoq
  %i.dqy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dqz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dra = load <2 x ptr>, ptr %3, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.drb = load ptr, ptr %i.dqz, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.dra, ptr %2, align 16, !tbaa !86
  %.not.i.i.i.i.i943 = icmp eq ptr %i.drb, null
  br i1 %.not.i.i.i.i.i943, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i947, label %bb.aos

bb.aos:                                           ; preds = %bb.aor
  %i.drc = getelementptr inbounds nuw i8, ptr %i.drb, i64 8 ; 4 uses
  %i.drd = load atomic i64, ptr %i.drc acquire, align 8 ; 2 uses
  %i.dre = icmp eq i64 %i.drd, 4294967297
  %i.drf = trunc i64 %i.drd to i32                ; 2 uses
  br i1 %i.dre, label %bb.aot, label %bb.aou

bb.aot:                                           ; preds = %bb.aos
  store i32 0, ptr %i.drc, align 8, !tbaa !41
  %i.drg = getelementptr inbounds nuw i8, ptr %i.drb, i64 12
  store i32 0, ptr %i.drg, align 4, !tbaa !43
  %i.drh = load ptr, ptr %i.drb, align 8, !tbaa !44
  %i.dri = getelementptr inbounds nuw i8, ptr %i.drh, i64 16
  %i.drj = load ptr, ptr %i.dri, align 8
  call void %i.drj(ptr noundef nonnull align 8 dereferenceable(16) %i.drb) #20, !inline_history !237
  %i.drk = load ptr, ptr %i.drb, align 8, !tbaa !44
  %i.drl = getelementptr inbounds nuw i8, ptr %i.drk, i64 24
  %i.drm = load ptr, ptr %i.drl, align 8
  call void %i.drm(ptr noundef nonnull align 8 dereferenceable(16) %i.drb) #20, !inline_history !237
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i947

bb.aou:                                           ; preds = %bb.aos
  %i.drn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i944 = icmp eq i8 %i.drn, 0
  br i1 %.not.i.i.i.i.i.i944, label %bb.aow, label %bb.aov

bb.aov:                                           ; preds = %bb.aou
  %i.dro = add nsw i32 %i.drf, -1
  store i32 %i.dro, ptr %i.drc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i945

bb.aow:                                           ; preds = %bb.aou
  %i.drp = atomicrmw volatile add ptr %i.drc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i945

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i945: ; preds = %bb.aow, %bb.aov
  %.0.i.i.i.i.i.i.i946 = phi i32 [ %i.drf, %bb.aov ], [ %i.drp, %bb.aow ]
  %i.drq = icmp eq i32 %.0.i.i.i.i.i.i.i946, 1
  br i1 %i.drq, label %bb.aox, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i947, !prof !56

bb.aox:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i945
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.drb) #20
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i947

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i947: ; preds = %bb.aox, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i945, %bb.aot, %bb.aor
  %i.drr = load ptr, ptr %i.dqy, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i948 = icmp eq ptr %i.drr, null
  br i1 %.not.i.i.i948, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i952, label %bb.aoy

bb.aoy:                                           ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i947
  %i.drs = getelementptr inbounds nuw i8, ptr %i.drr, i64 8 ; 4 uses
  %i.drt = load atomic i64, ptr %i.drs acquire, align 8 ; 2 uses
  %i.dru = icmp eq i64 %i.drt, 4294967297
  %i.drv = trunc i64 %i.drt to i32                ; 2 uses
  br i1 %i.dru, label %bb.aoz, label %bb.apa

bb.aoz:                                           ; preds = %bb.aoy
  store i32 0, ptr %i.drs, align 8, !tbaa !41
  %i.drw = getelementptr inbounds nuw i8, ptr %i.drr, i64 12
  store i32 0, ptr %i.drw, align 4, !tbaa !43
  %i.drx = load ptr, ptr %i.drr, align 8, !tbaa !44
  %i.dry = getelementptr inbounds nuw i8, ptr %i.drx, i64 16
  %i.drz = load ptr, ptr %i.dry, align 8
  call void %i.drz(ptr noundef nonnull align 8 dereferenceable(16) %i.drr) #20, !inline_history !238
  %i.dsa = load ptr, ptr %i.drr, align 8, !tbaa !44
  %i.dsb = getelementptr inbounds nuw i8, ptr %i.dsa, i64 24
  %i.dsc = load ptr, ptr %i.dsb, align 8
  call void %i.dsc(ptr noundef nonnull align 8 dereferenceable(16) %i.drr) #20, !inline_history !238
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i952

bb.apa:                                           ; preds = %bb.aoy
  %i.dsd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i949 = icmp eq i8 %i.dsd, 0
  br i1 %.not.i.i.i.i949, label %bb.apc, label %bb.apb

bb.apb:                                           ; preds = %bb.apa
  %i.dse = add nsw i32 %i.drv, -1
  store i32 %i.dse, ptr %i.drs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i950

bb.apc:                                           ; preds = %bb.apa
  %i.dsf = atomicrmw volatile add ptr %i.drs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i950

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i950: ; preds = %bb.apc, %bb.apb
  %.0.i.i.i.i.i951 = phi i32 [ %i.drv, %bb.apb ], [ %i.dsf, %bb.apc ]
  %i.dsg = icmp eq i32 %.0.i.i.i.i.i951, 1
  br i1 %i.dsg, label %bb.apd, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i952, !prof !56

bb.apd:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i950
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.drr) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i952

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i952: ; preds = %bb.apd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i950, %bb.aoz, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i947
  %i.dsh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dsi = load ptr, ptr %i.dsh, align 8, !tbaa !46 ; 8 uses
  %.not.i.i12.i953 = icmp eq ptr %i.dsi, null
  br i1 %.not.i.i12.i953, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i957, label %bb.ape

bb.ape:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i952
  %i.dsj = getelementptr inbounds nuw i8, ptr %i.dsi, i64 8 ; 4 uses
  %i.dsk = load atomic i64, ptr %i.dsj acquire, align 8 ; 2 uses
  %i.dsl = icmp eq i64 %i.dsk, 4294967297
  %i.dsm = trunc i64 %i.dsk to i32                ; 2 uses
  br i1 %i.dsl, label %bb.apf, label %bb.apg

bb.apf:                                           ; preds = %bb.ape
  store i32 0, ptr %i.dsj, align 8, !tbaa !41
  %i.dsn = getelementptr inbounds nuw i8, ptr %i.dsi, i64 12
  store i32 0, ptr %i.dsn, align 4, !tbaa !43
  %i.dso = load ptr, ptr %i.dsi, align 8, !tbaa !44
  %i.dsp = getelementptr inbounds nuw i8, ptr %i.dso, i64 16
  %i.dsq = load ptr, ptr %i.dsp, align 8
  call void %i.dsq(ptr noundef nonnull align 8 dereferenceable(16) %i.dsi) #20, !inline_history !239
  %i.dsr = load ptr, ptr %i.dsi, align 8, !tbaa !44
  %i.dss = getelementptr inbounds nuw i8, ptr %i.dsr, i64 24
  %i.dst = load ptr, ptr %i.dss, align 8
  call void %i.dst(ptr noundef nonnull align 8 dereferenceable(16) %i.dsi) #20, !inline_history !239
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i957

bb.apg:                                           ; preds = %bb.ape
  %i.dsu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i13.i954 = icmp eq i8 %i.dsu, 0
  br i1 %.not.i.i.i13.i954, label %bb.api, label %bb.aph

bb.aph:                                           ; preds = %bb.apg
  %i.dsv = add nsw i32 %i.dsm, -1
  store i32 %i.dsv, ptr %i.dsj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i955

bb.api:                                           ; preds = %bb.apg
  %i.dsw = atomicrmw volatile add ptr %i.dsj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i955

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i955: ; preds = %bb.api, %bb.aph
  %.0.i.i.i.i15.i956 = phi i32 [ %i.dsm, %bb.aph ], [ %i.dsw, %bb.api ]
  %i.dsx = icmp eq i32 %.0.i.i.i.i15.i956, 1
  br i1 %i.dsx, label %bb.apj, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i957, !prof !56

bb.apj:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i955
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dsi) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i957

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i957: ; preds = %bb.apj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i955, %bb.apf, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i952
  %i.dsy = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dsz = load ptr, ptr %i.dsy, align 8, !tbaa !52 ; 2 uses
  %.not.i.i16.i958 = icmp eq ptr %i.dsz, null
  br i1 %.not.i.i16.i958, label %_ZNSt14_Function_baseD2Ev.exit.i.i959, label %bb.apk

bb.apk:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i957
  %i.dta = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.dtb = invoke noundef zeroext i1 %i.dsz(ptr noundef nonnull align 8 dereferenceable(32) %i.dta, ptr noundef nonnull align 8 dereferenceable(32) %i.dta, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i959 unwind label %bb.apl ; 0 uses

bb.apl:                                           ; preds = %bb.apk
  %i.dtc = landingpad { ptr, i32 }
          catch ptr null
  %i.dtd = extractvalue { ptr, i32 } %i.dtc, 0
  call void @__clang_call_terminate(ptr %i.dtd) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i959:            ; preds = %bb.apk, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i957
  %i.dte = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dtf = load ptr, ptr %i.dte, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i17.i960 = icmp eq ptr %i.dtf, null
  br i1 %.not.i.i.i17.i960, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i964, label %bb.apm

bb.apm:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i959
  %i.dtg = getelementptr inbounds nuw i8, ptr %i.dtf, i64 8 ; 4 uses
  %i.dth = load atomic i64, ptr %i.dtg acquire, align 8 ; 2 uses
  %i.dti = icmp eq i64 %i.dth, 4294967297
  %i.dtj = trunc i64 %i.dth to i32                ; 2 uses
  br i1 %i.dti, label %bb.apn, label %bb.apo

bb.apn:                                           ; preds = %bb.apm
  store i32 0, ptr %i.dtg, align 8, !tbaa !41
  %i.dtk = getelementptr inbounds nuw i8, ptr %i.dtf, i64 12
  store i32 0, ptr %i.dtk, align 4, !tbaa !43
  %i.dtl = load ptr, ptr %i.dtf, align 8, !tbaa !44
  %i.dtm = getelementptr inbounds nuw i8, ptr %i.dtl, i64 16
  %i.dtn = load ptr, ptr %i.dtm, align 8
  call void %i.dtn(ptr noundef nonnull align 8 dereferenceable(16) %i.dtf) #20, !inline_history !240
  %i.dto = load ptr, ptr %i.dtf, align 8, !tbaa !44
  %i.dtp = getelementptr inbounds nuw i8, ptr %i.dto, i64 24
  %i.dtq = load ptr, ptr %i.dtp, align 8
  call void %i.dtq(ptr noundef nonnull align 8 dereferenceable(16) %i.dtf) #20, !inline_history !240
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i964

bb.apo:                                           ; preds = %bb.apm
  %i.dtr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i18.i961 = icmp eq i8 %i.dtr, 0
  br i1 %.not.i.i.i.i18.i961, label %bb.apq, label %bb.app

bb.app:                                           ; preds = %bb.apo
  %i.dts = add nsw i32 %i.dtj, -1
  store i32 %i.dts, ptr %i.dtg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i962

bb.apq:                                           ; preds = %bb.apo
  %i.dtt = atomicrmw volatile add ptr %i.dtg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i962

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i962: ; preds = %bb.apq, %bb.app
  %.0.i.i.i.i.i.i963 = phi i32 [ %i.dtj, %bb.app ], [ %i.dtt, %bb.apq ]
  %i.dtu = icmp eq i32 %.0.i.i.i.i.i.i963, 1
  br i1 %i.dtu, label %bb.apr, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i964, !prof !56

bb.apr:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i962
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dtf) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i964

_ZN5arrow7compute10OutputTypeD2Ev.exit.i964:      ; preds = %bb.apr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i962, %bb.apn, %_ZNSt14_Function_baseD2Ev.exit.i.i959
  %i.dtv = load ptr, ptr %4, align 8, !tbaa !87
  %i.dtw = load ptr, ptr %i.dqw, align 8, !tbaa !91
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.dtv, ptr noundef %i.dtw)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i965 unwind label %bb.apt

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i965: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i964
  %i.dtx = load ptr, ptr %4, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i19.i966 = icmp eq ptr %i.dtx, null
  br i1 %.not.i.i.i19.i966, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i967, label %bb.aps

bb.aps:                                           ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i965
  %i.dty = load ptr, ptr %i.dqu, align 8, !tbaa !90
  %i.dtz = ptrtoint ptr %i.dty to i64
  %i.dua = ptrtoint ptr %i.dtx to i64
  %i.dub = sub i64 %i.dtz, %i.dua
  call void @_ZdlPvm(ptr noundef nonnull %i.dtx, i64 noundef %i.dub) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i967

bb.apt:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i964
  %i.duc = landingpad { ptr, i32 }
          catch ptr null
  %i.dud = extractvalue { ptr, i32 } %i.duc, 0
  call void @__clang_call_terminate(ptr %i.dud) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i967: ; preds = %bb.aps, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i965
  %i.due = load ptr, ptr %i.dqq, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i21.i968 = icmp eq ptr %i.due, null
  br i1 %.not.i.i.i21.i968, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i972, label %bb.apu

bb.apu:                                           ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i967
  %i.duf = getelementptr inbounds nuw i8, ptr %i.due, i64 8 ; 4 uses
  %i.dug = load atomic i64, ptr %i.duf acquire, align 8 ; 2 uses
  %i.duh = icmp eq i64 %i.dug, 4294967297
  %i.dui = trunc i64 %i.dug to i32                ; 2 uses
  br i1 %i.duh, label %bb.apv, label %bb.apw

bb.apv:                                           ; preds = %bb.apu
  store i32 0, ptr %i.duf, align 8, !tbaa !41
  %i.duj = getelementptr inbounds nuw i8, ptr %i.due, i64 12
  store i32 0, ptr %i.duj, align 4, !tbaa !43
  %i.duk = load ptr, ptr %i.due, align 8, !tbaa !44
  %i.dul = getelementptr inbounds nuw i8, ptr %i.duk, i64 16
  %i.dum = load ptr, ptr %i.dul, align 8
  call void %i.dum(ptr noundef nonnull align 8 dereferenceable(16) %i.due) #20, !inline_history !241
  %i.dun = load ptr, ptr %i.due, align 8, !tbaa !44
  %i.duo = getelementptr inbounds nuw i8, ptr %i.dun, i64 24
  %i.dup = load ptr, ptr %i.duo, align 8
  call void %i.dup(ptr noundef nonnull align 8 dereferenceable(16) %i.due) #20, !inline_history !241
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i972

bb.apw:                                           ; preds = %bb.apu
  %i.duq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i22.i969 = icmp eq i8 %i.duq, 0
  br i1 %.not.i.i.i.i22.i969, label %bb.apy, label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  %i.dur = add nsw i32 %i.dui, -1
  store i32 %i.dur, ptr %i.duf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i970

bb.apy:                                           ; preds = %bb.apw
  %i.dus = atomicrmw volatile add ptr %i.duf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i970

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i970: ; preds = %bb.apy, %bb.apx
  %.0.i.i.i.i.i24.i971 = phi i32 [ %i.dui, %bb.apx ], [ %i.dus, %bb.apy ]
  %i.dut = icmp eq i32 %.0.i.i.i.i.i24.i971, 1
  br i1 %i.dut, label %bb.apz, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i972, !prof !56

bb.apz:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i970
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.due) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i972

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i972: ; preds = %bb.apz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i970, %bb.apv, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i967
  %i.duu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.duv = load ptr, ptr %i.duu, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i.i973 = icmp eq ptr %i.duv, null
  br i1 %.not.i.i1.i.i973, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i977, label %bb.aqa

bb.aqa:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i972
  %i.duw = getelementptr inbounds nuw i8, ptr %i.duv, i64 8 ; 4 uses
  %i.dux = load atomic i64, ptr %i.duw acquire, align 8 ; 2 uses
  %i.duy = icmp eq i64 %i.dux, 4294967297
  %i.duz = trunc i64 %i.dux to i32                ; 2 uses
  br i1 %i.duy, label %bb.aqb, label %bb.aqc

bb.aqb:                                           ; preds = %bb.aqa
  store i32 0, ptr %i.duw, align 8, !tbaa !41
  %i.dva = getelementptr inbounds nuw i8, ptr %i.duv, i64 12
  store i32 0, ptr %i.dva, align 4, !tbaa !43
  %i.dvb = load ptr, ptr %i.duv, align 8, !tbaa !44
  %i.dvc = getelementptr inbounds nuw i8, ptr %i.dvb, i64 16
  %i.dvd = load ptr, ptr %i.dvc, align 8
  call void %i.dvd(ptr noundef nonnull align 8 dereferenceable(16) %i.duv) #20, !inline_history !242
  %i.dve = load ptr, ptr %i.duv, align 8, !tbaa !44
  %i.dvf = getelementptr inbounds nuw i8, ptr %i.dve, i64 24
  %i.dvg = load ptr, ptr %i.dvf, align 8
  call void %i.dvg(ptr noundef nonnull align 8 dereferenceable(16) %i.duv) #20, !inline_history !242
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i977

bb.aqc:                                           ; preds = %bb.aqa
  %i.dvh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2.i.i974 = icmp eq i8 %i.dvh, 0
  br i1 %.not.i.i.i2.i.i974, label %bb.aqe, label %bb.aqd

bb.aqd:                                           ; preds = %bb.aqc
  %i.dvi = add nsw i32 %i.duz, -1
  store i32 %i.dvi, ptr %i.duw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i975

bb.aqe:                                           ; preds = %bb.aqc
  %i.dvj = atomicrmw volatile add ptr %i.duw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i975

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i975: ; preds = %bb.aqe, %bb.aqd
  %.0.i.i.i.i4.i.i976 = phi i32 [ %i.duz, %bb.aqd ], [ %i.dvj, %bb.aqe ]
  %i.dvk = icmp eq i32 %.0.i.i.i.i4.i.i976, 1
  br i1 %i.dvk, label %bb.aqf, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i977, !prof !56

bb.aqf:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i975
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.duv) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i977

_ZN5arrow7compute9InputTypeD2Ev.exit.i977:        ; preds = %bb.aqf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i975, %bb.aqb, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i972
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store i32 2, ptr %i.dql, align 4, !tbaa !74
  %i.dvl = load <2 x ptr>, ptr %2, align 16, !tbaa !86
  store ptr null, ptr %i.dqz, align 8, !tbaa !46
  store <2 x ptr> %i.dvl, ptr %9, align 16, !tbaa !86
  store ptr null, ptr %2, align 16, !tbaa !98
  %i.dvm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dvn = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dvo = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dvm, i8 0, i64 24, i1 false)
  %i.dvp = load ptr, ptr %i.dvo, align 8, !tbaa !99
  store ptr %i.dvp, ptr %i.dvn, align 8, !tbaa !99
  %i.dvq = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dvr = load ptr, ptr %i.dvq, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i.i.i978 = icmp eq ptr %i.dvr, null
  br i1 %.not.i.i.not.i.i.i.i978, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i979, label %bb.aqg

bb.aqg:                                           ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i977
  %i.dvs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dvt = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dvm, ptr noundef nonnull align 8 dereferenceable(32) %i.dvs, i64 16, i1 false), !tbaa.struct !100
  store ptr %i.dvr, ptr %i.dvt, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dvq, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i979

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i979: ; preds = %bb.aqg, %_ZN5arrow7compute9InputTypeD2Ev.exit.i977
  %i.dvu = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.dvv = load i64, ptr %i.dqi, align 16
  store i64 %i.dvv, ptr %i.dvu, align 16
  %i.dvw = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.dvx = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.dvy = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dvz = load <2 x ptr>, ptr %i.dvx, align 8, !tbaa !86
  store ptr null, ptr %i.dvy, align 16, !tbaa !46
  store <2 x ptr> %i.dvz, ptr %i.dvw, align 8, !tbaa !86
  store ptr null, ptr %i.dvx, align 8, !tbaa !101
  %i.dwa = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dwa, ptr noundef nonnull align 8 dereferenceable(20) %i.dqn, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(252) %i.dqh, i32 noundef 26, ptr noundef nonnull %9)
          to label %bb.aqh unwind label %bb.aqo

bb.aqh:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i979
  %i.dwb = load ptr, ptr %8, align 8, !tbaa !102  ; 2 uses
  %.not.i.i980 = icmp eq ptr %i.dwb, null
  br i1 %.not.i.i980, label %bb.aqq, label %bb.aqi, !prof !105

bb.aqi:                                           ; preds = %bb.aqh
  %i.dwc = getelementptr inbounds nuw i8, ptr %i.dwb, i64 1
  %i.dwd = load i8, ptr %i.dwc, align 1, !tbaa !106, !range !115, !noundef !116
  %i.dwe = trunc nuw i8 %i.dwd to i1
  br i1 %i.dwe, label %bb.aqq, label %bb.aqj

bb.aqj:                                           ; preds = %bb.aqi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %bb.aqq

bb.aqk:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit934
  %i.dwf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i935

bb.aql:                                           ; preds = %.noexc3.i.i941
  %i.dwg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqn

bb.aqm:                                           ; preds = %bb.aoq
  %i.dwh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #20
  br label %bb.aqn

bb.aqn:                                           ; preds = %bb.aqm, %bb.aql
  %.pn.i942 = phi { ptr, i32 } [ %i.dwh, %bb.aqm ], [ %i.dwg, %bb.aql ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  br label %.body.i939

.body.i939:                                       ; preds = %bb.aqn, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i938
  %.pn.pn.i940 = phi { ptr, i32 } [ %.pn.i942, %bb.aqn ], [ %i.dqx, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i938 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #20
  br label %.loopexit.i935

.loopexit.i935:                                   ; preds = %.body.i939, %bb.aqk
  %.pn.pn.pn.i936 = phi { ptr, i32 } [ %i.dwf, %bb.aqk ], [ %.pn.pn.i940, %.body.i939 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.aqp

bb.aqo:                                           ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit.i979
  %i.dwi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %9) #20
  br label %bb.aqp

bb.aqp:                                           ; preds = %bb.aqo, %.loopexit.i935
  %.pn10.i937 = phi { ptr, i32 } [ %i.dwi, %bb.aqo ], [ %.pn.pn.pn.i936, %.loopexit.i935 ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body981

bb.aqq:                                           ; preds = %bb.aqj, %bb.aqi, %bb.aqh
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %9) #20
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i32 29, ptr %i.f, align 4, !tbaa !33
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.dwj = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #21
          to label %.noexc984 unwind label %bb.avs ; 6 uses

.noexc984:                                        ; preds = %bb.aqq
  %i.dwk = getelementptr inbounds nuw i8, ptr %i.dwj, i64 8
  store i32 1, ptr %i.dwk, align 8, !tbaa !41, !noalias !243
  %i.dwl = getelementptr inbounds nuw i8, ptr %i.dwj, i64 12
  store i32 1, ptr %i.dwl, align 4, !tbaa !43, !noalias !243
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dwj, align 8, !tbaa !44, !noalias !243
  %i.dwm = getelementptr inbounds nuw i8, ptr %i.dwj, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA16_KcNS0_4Type4typeEEEvPT_DpOT0_(ptr noundef nonnull %i.dwm, ptr noundef nonnull align 1 dereferenceable(16) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.aqr unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i983, !noalias !243

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i983: ; preds = %.noexc984
  %i.dwn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dwj, i64 noundef 272) #22, !noalias !243
  br label %.body985

bb.aqr:                                           ; preds = %.noexc984
  %i.dwo = getelementptr inbounds nuw i8, ptr %191, i64 8 ; 3 uses
  store ptr %i.dwj, ptr %i.dwo, align 8, !tbaa !46, !alias.scope !243
  store ptr %i.dwm, ptr %191, align 16, !tbaa !50, !alias.scope !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %192, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.aqs unwind label %bb.avt

bb.aqs:                                           ; preds = %bb.aqr
  invoke void @_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE(i32 noundef 29, ptr noundef nonnull %192, ptr noundef nonnull %i.dwm)
          to label %bb.aqt unwind label %bb.avu

bb.aqt:                                           ; preds = %bb.aqs
  %i.dwp = getelementptr inbounds nuw i8, ptr %192, i64 40
  %i.dwq = load ptr, ptr %i.dwp, align 8, !tbaa !52 ; 2 uses
  %.not.i.i988 = icmp eq ptr %i.dwq, null
  br i1 %.not.i.i988, label %_ZNSt14_Function_baseD2Ev.exit.i989, label %bb.aqu

bb.aqu:                                           ; preds = %bb.aqt
  %i.dwr = getelementptr inbounds nuw i8, ptr %192, i64 24 ; 2 uses
  %i.dws = invoke noundef zeroext i1 %i.dwq(ptr noundef nonnull align 8 dereferenceable(32) %i.dwr, ptr noundef nonnull align 8 dereferenceable(32) %i.dwr, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i989 unwind label %bb.aqv ; 0 uses

bb.aqv:                                           ; preds = %bb.aqu
  %i.dwt = landingpad { ptr, i32 }
          catch ptr null
  %i.dwu = extractvalue { ptr, i32 } %i.dwt, 0
  call void @__clang_call_terminate(ptr %i.dwu) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i989:              ; preds = %bb.aqu, %bb.aqt
  %i.dwv = getelementptr inbounds nuw i8, ptr %192, i64 16
  %i.dww = load ptr, ptr %i.dwv, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i990 = icmp eq ptr %i.dww, null
  br i1 %.not.i.i.i990, label %_ZN5arrow7compute10OutputTypeD2Ev.exit994, label %bb.aqw

bb.aqw:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i989
  %i.dwx = getelementptr inbounds nuw i8, ptr %i.dww, i64 8 ; 4 uses
  %i.dwy = load atomic i64, ptr %i.dwx acquire, align 8 ; 2 uses
  %i.dwz = icmp eq i64 %i.dwy, 4294967297
  %i.dxa = trunc i64 %i.dwy to i32                ; 2 uses
  br i1 %i.dwz, label %bb.aqx, label %bb.aqy

bb.aqx:                                           ; preds = %bb.aqw
  store i32 0, ptr %i.dwx, align 8, !tbaa !41
  %i.dxb = getelementptr inbounds nuw i8, ptr %i.dww, i64 12
  store i32 0, ptr %i.dxb, align 4, !tbaa !43
  %i.dxc = load ptr, ptr %i.dww, align 8, !tbaa !44
  %i.dxd = getelementptr inbounds nuw i8, ptr %i.dxc, i64 16
  %i.dxe = load ptr, ptr %i.dxd, align 8
  call void %i.dxe(ptr noundef nonnull align 8 dereferenceable(16) %i.dww) #20, !inline_history !54
  %i.dxf = load ptr, ptr %i.dww, align 8, !tbaa !44
  %i.dxg = getelementptr inbounds nuw i8, ptr %i.dxf, i64 24
  %i.dxh = load ptr, ptr %i.dxg, align 8
  call void %i.dxh(ptr noundef nonnull align 8 dereferenceable(16) %i.dww) #20, !inline_history !54
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit994

bb.aqy:                                           ; preds = %bb.aqw
  %i.dxi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i991 = icmp eq i8 %i.dxi, 0
  br i1 %.not.i.i.i.i991, label %bb.ara, label %bb.aqz

bb.aqz:                                           ; preds = %bb.aqy
  %i.dxj = add nsw i32 %i.dxa, -1
  store i32 %i.dxj, ptr %i.dwx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i992

bb.ara:                                           ; preds = %bb.aqy
  %i.dxk = atomicrmw volatile add ptr %i.dwx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i992

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i992: ; preds = %bb.ara, %bb.aqz
  %.0.i.i.i.i.i993 = phi i32 [ %i.dxa, %bb.aqz ], [ %i.dxk, %bb.ara ]
  %i.dxl = icmp eq i32 %.0.i.i.i.i.i993, 1
  br i1 %i.dxl, label %bb.arb, label %_ZN5arrow7compute10OutputTypeD2Ev.exit994, !prof !56

bb.arb:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i992
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dww) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit994

_ZN5arrow7compute10OutputTypeD2Ev.exit994:        ; preds = %_ZNSt14_Function_baseD2Ev.exit.i989, %bb.aqx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i992, %bb.arb
  call void @llvm.lifetime.start.p0(ptr nonnull %193) #20
  %i.dxm = getelementptr inbounds nuw i8, ptr %193, i64 8
  %i.dxn = load ptr, ptr %i.l, align 8, !tbaa !46 ; 2 uses
  %i.dxo = load <2 x ptr>, ptr %181, align 16, !tbaa !86
  store <2 x ptr> %i.dxo, ptr %193, align 16, !tbaa !86
  %.not.i.i.i995 = icmp eq ptr %i.dxn, null
  br i1 %.not.i.i.i995, label %_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEC2ERKS4_.exit, label %bb.arc

bb.arc:                                           ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit994
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !43
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !259
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !259
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.156") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow6BufferE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !43
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !450
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !450
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !43
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !432
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !432
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6BufferD0Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow6Buffer17device_sync_eventEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.167") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.156", align 16 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow6BufferE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !451
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 1, ptr %i.b, align 1, !tbaa !355
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !435
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !424
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.e, align 8, !tbaa !452
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !449
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  invoke void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.156") align 8 %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load <2 x ptr>, ptr %3, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !46   ; 8 uses
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !86
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !43
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20, !inline_history !438
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20, !inline_history !438
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, !prof !56

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !436
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !439 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !442, !range !115, !noundef !116
  store i8 %i.af, ptr %i.b, align 1, !tbaa !355
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(25) %i.ad)
          to label %bb.i unwind label %bb.q, !inline_history !448

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  store i8 %i.aj, ptr %i.f, align 8, !tbaa !449
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !46  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.al, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !43
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20, !inline_history !450
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20, !inline_history !450
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  ret void

bb.p:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.ba, %bb.p ]
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #20
  resume { ptr, i32 } %.pn
}

declare void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind writable sret(%"class.arrow::Result.181") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

declare void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.64") align 8, ptr noundef nonnull align 8 dereferenceable(120), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread, !prof !105

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !43
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !453
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !453
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit, !prof !56

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread, !prof !380

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E:bb.a
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #20
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1263 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #20, !inline_history !1265
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !55
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE) #20
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

declare void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #3

declare void @_ZN5arrow12ArrayBuilder13UnsafeSetNullEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #3

declare void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int64TypeEE12AppendValuesEPKllPKhl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1132, !noalias !1266 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !44, !noalias !1266
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1266
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !1266, !inline_history !1136
  %i.g = add nsw i64 %i.f, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit15.thread

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !44, !noalias !1266
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1266
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !1136
  %.pr = load ptr, ptr %6, align 8, !tbaa !102    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = shl i64 %3, 3                            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1126
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1139
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %2, i64 %i.m, i1 false)
  %i.s = load i64, ptr %i.p, align 8, !tbaa !1139
  %i.t = add nsw i64 %i.s, %i.m
  store i64 %i.t, ptr %i.p, align 8, !tbaa !1139
  %i.u = icmp eq ptr %4, null
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i64 %3, 0
  br i1 %i.v, label %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i, label %bb.e

._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !1269
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1126
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1138
  call void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3, ptr noundef %i.x, i64 noundef %i.z)
  %i.aa = call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3)
  %i.ab = sub i64 %3, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1269
  %i.ae = add nsw i64 %i.ab, %i.ad                ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !1269
  %i.af = load i64, ptr %i.y, align 8, !tbaa !1138
  %i.ag = add nsw i64 %i.af, %3
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !1138
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i: ; preds = %bb.e, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i
  %i.ah = phi i64 [ %.pre.i, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i ], [ %i.ae, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1179
  %i.ak = add nsw i64 %i.aj, %3
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !1179
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !1234
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i
  store ptr null, ptr %0, align 8, !tbaa !102, !alias.scope !1270
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit
  ret void
}

declare void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.64") align 8, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow13BufferBuilder6FinishEb(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.82", align 16 ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %3, i1 noundef zeroext %2)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.e

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !102    ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b, !prof !105

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %i.c = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %.not.i7 = icmp eq ptr %i.c, null
  br i1 %.not.i7, label %bb.f, label %bb.c, !prof !105

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !106, !range !115, !noundef !116
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.g

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  store ptr null, ptr %0, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <2 x ptr>, ptr %3, align 16, !tbaa !86
  store <2 x ptr> %i.i, ptr %i.h, align 8, !tbaa !86
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46 ; 8 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.j, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !43
  %i.o = load ptr, ptr %.pre, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #20, !inline_history !432
  %i.r = load ptr, ptr %.pre, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #20, !inline_history !432
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.j ], [ %i.w, %bb.k ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %4 = alloca %"class.std::__shared_ptr.83", align 16 ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Result.275", align 8 ; 12 uses
  %7 = alloca %"class.std::unique_ptr.279", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1139
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.b, i1 noundef zeroext %3)
  %i.c = load ptr, ptr %5, align 8, !tbaa !102    ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.a, label %bb.aj

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.e = load i64, ptr %i.a, align 8, !tbaa !1139
  %.not = icmp eq i64 %i.e, 0
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !1244 ; 7 uses
  br i1 %.not, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.pre35, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !452  ; 2 uses
  %.not.i26 = icmp eq i64 %i.g, 0
  br i1 %.not.i26, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.pre35, i64 9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !355, !range !115, !noundef !116
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %.pre35, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !115
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !105
  %i.o = getelementptr inbounds nuw i8, ptr %.pre35, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !105
  %i.r = getelementptr inbounds nuw i8, ptr %.pre35, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !424  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  %i.u = sub nsw i64 %i.g, %i.s
  call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 0, i64 %i.u, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !1244
  br label %_ZN5arrow6Buffer11ZeroPaddingEv.exit

_ZN5arrow6Buffer11ZeroPaddingEv.exit:             ; preds = %bb.c, %bb.b, %bb.a
  %i.v = phi ptr [ %.pre, %bb.c ], [ %.pre35, %bb.b ], [ %.pre35, %bb.a ] ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !312
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !46   ; 4 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSINS0_15ResizableBufferEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6Buffer11ZeroPaddingEv.exit
  %.not7.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !46
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.af = phi ptr [ %i.z, %bb.d ], [ %i.z, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ag, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !43
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #20, !inline_history !1273
end_hunk_2
