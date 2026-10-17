Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/compiler?download=true
inline.NumInlined: 6910
inline.NumDeleted: 1940
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN12_GLOBAL__N_116FunctionCompiler28compileAtomicCompareExchangeEjmjN8WasmEdge4LLVM4TypeES3_b:_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit
  %i.y = call ptr @LLVMConstInt(ptr noundef %i.x, i64 noundef %2, i32 noundef 0) #17, !noalias !8259
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !8260
  %i.aa = call ptr @LLVMBuildAdd(ptr noundef %i.z, ptr noundef %i.u, ptr noundef %i.y, ptr noundef nonnull @.str.13) #17, !noalias !8260
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit
  %.sroa.031.0 = phi ptr [ %i.u, %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit ], [ %i.aa, %bb.a ] ; 2 uses
  %i.ab = ptrtoint ptr %.sroa.031.0 to i64
  %i.ac = load i64, ptr %4, align 8, !tbaa !71
  %i.ad = inttoptr i64 %i.ac to ptr
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler33compileAtomicCheckOffsetAlignmentEN8WasmEdge4LLVM5ValueENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 %i.ab, ptr %i.ad) #17
  %i.ae = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !71
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !100
  store i64 %i.aj, ptr %13, align 8, !tbaa !100
  call void @_ZN8WasmEdge4LLVM8Compiler14CompileContext9getMemoryERNS0_7BuilderENS0_5ValueEj(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %12, ptr noundef nonnull align 8 dereferenceable(456) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i32 noundef %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !8261
  store ptr %.sroa.031.0, ptr %i.a, align 8, !tbaa !100, !noalias !8261
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !8261
  %i.al = load ptr, ptr %12, align 8, !tbaa !100, !noalias !8261
  %i.am = call ptr @LLVMBuildInBoundsGEP2(ptr noundef %i.ak, ptr noundef %i.ah, ptr noundef %i.al, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull @.str.13) #17, !noalias !8261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !8261
  %i.an = load ptr, ptr %4, align 8, !tbaa !70, !noalias !8262
  %i.ao = call ptr @LLVMPointerType(ptr noundef %i.an, i32 noundef 0) #17, !noalias !8262
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !8263
  %i.aq = call ptr @LLVMBuildBitCast(ptr noundef %i.ap, ptr noundef %i.am, ptr noundef %i.ao, ptr noundef nonnull @.str.13) #17, !noalias !8263
  %i.ar = load i64, ptr %9, align 8, !tbaa !100
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i64, ptr %6, align 8, !tbaa !100
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !8264
  %i.aw = call ptr @LLVMBuildAtomicCmpXchg(ptr noundef %i.av, ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.au, i32 noundef 7, i32 noundef 7, i32 noundef 0) #17, !noalias !8264 ; 2 uses
  %i.ax = shl nuw i32 1, %3
  call void @LLVMSetAlignment(ptr noundef %i.aw, i32 noundef %i.ax) #17
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !8265
  %i.az = call ptr @LLVMBuildExtractValue(ptr noundef %i.ay, ptr noundef %i.aw, i32 noundef 0, ptr noundef nonnull @.str.13) #17, !noalias !8265 ; 2 uses
  %i.ba = inttoptr i64 %.0.val to ptr             ; 2 uses
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !50 ; 2 uses
  br i1 %5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bc = call ptr @LLVMBuildSExt(ptr noundef %i.bb, ptr noundef %i.az, ptr noundef %i.ba, ptr noundef nonnull @.str.13) #17, !noalias !8266
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bd = call ptr @LLVMBuildZExt(ptr noundef %i.bb, ptr noundef %i.az, ptr noundef %i.ba, ptr noundef nonnull @.str.13) #17, !noalias !8267
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi ptr [ %i.bd, %bb.d ], [ %i.bc, %bb.c ]
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  store ptr %.sink, ptr %i.bf, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void
}

declare ptr @LLVMBuildBr(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @LLVMGetUndef(ptr noundef) local_unnamed_addr #9

declare ptr @LLVMBuildAtomicRMW(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @LLVMSetOrdering(ptr noundef, i32 noundef) local_unnamed_addr #9

declare ptr @LLVMBuildAtomicCmpXchg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @LLVMSetWeak(ptr noundef, i32 noundef) local_unnamed_addr #9

declare ptr @LLVMBuildPhi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @LLVMAddIncoming(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare ptr @LLVMInt1TypeInContext(ptr noundef) local_unnamed_addr #9

declare ptr @LLVMBuildICmp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @LLVMBuildCondBr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE17_M_realloc_insertIJS5_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !203    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

_ZNKSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %3, align 8, !tbaa !212
  store ptr null, ptr %3, align 8, !tbaa !212
  %i.s = load ptr, ptr %2, align 8, !tbaa !142
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !232
  %i.v = insertelement <4 x ptr> poison, ptr %i.r, i64 0
  %i.w = insertelement <4 x ptr> %i.v, ptr %i.s, i64 1
  %i.x = shufflevector <2 x ptr> %i.u, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.y = shufflevector <4 x ptr> %i.w, <4 x ptr> %i.x, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.y, ptr %i.q, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8276)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !53, !alias.scope !8276
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !212, !alias.scope !8276
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !53, !alias.scope !8275
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !232, !alias.scope !8276
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !232, !alias.scope !8275
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false), !alias.scope !8276
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !8271

_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.af, %.lr.ph.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.an, %.lr.ph.i.i.i18 ], [ %i.ag, %_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 3 uses
  %.0911.i.i.i20 = phi ptr [ %i.am, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8278)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !53, !alias.scope !8278
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !212, !alias.scope !8278
  store <2 x ptr> %i.ai, ptr %.012.i.i.i19, align 8, !tbaa !53, !alias.scope !8277
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !232, !alias.scope !8278
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !232, !alias.scope !8277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !8278
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !8271

_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ag, %_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.an, %.lr.ph.i.i.i18 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt5tupleIJSt6vectorIN8WasmEdge4LLVM5ValueESaIS4_EENS3_10BasicBlockEEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit23
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !205
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #19
  br label %_ZNSt12_Vector_baseISt5tupleIJSt6vectorIN8WasmEdge4LLVM5ValueESaIS4_EENS3_10BasicBlockEEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt5tupleIJSt6vectorIN8WasmEdge4LLVM5ValueESaIS4_EENS3_10BasicBlockEEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorISt5tupleIJS_IN8WasmEdge4LLVM5ValueESaIS3_EENS2_10BasicBlockEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit23, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !203
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !204
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !142    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.j = load ptr, ptr %0, align 8, !tbaa !142    ; 14 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE11_M_allocateEm.exit.i, !prof !218

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.s, i1 false), !tbaa !100
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #19
  br label %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !142
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.t, ptr %i.h, align 8, !tbaa !141
  br label %_ZSt22__uninitialized_copy_aIPN8WasmEdge4LLVM5ValueES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.g, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPN8WasmEdge4LLVM5ValueES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 8
  %i.z = sub i64 %i.e, %i.l
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.g, 9223372036854775804      ; 3 uses
  %i.aa = and i64 %i.g, 3
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ae ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.c, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep44, align 8, !tbaa !100
  %wide.load45 = load <2 x i64>, ptr %i.af, align 8, !tbaa !100
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !100
  store <2 x i64> %wide.load45, ptr %i.ag, align 8, !tbaa !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !8279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPN8WasmEdge4LLVM5ValueES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader70

.lr.ph.i.i.i.i.i.preheader70:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader70, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader70 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader70 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader70 ] ; 2 uses
  %i.ai = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !100
  store i64 %i.ai, ptr %.0811.i.i.i.i.i, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN8WasmEdge4LLVM5ValueES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, !llvm.loop !8280

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.x ; 2 uses
  %i.ao = ashr exact i64 %i.x, 3                  ; 6 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPN8WasmEdge4LLVM5ValueES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check51 = icmp ult i64 %i.ao, 8
  %i.aq = sub i64 %i.e, %i.l
  %diff.check53 = icmp ugt i64 %i.aq, -32
  %or.cond68 = or i1 %min.iters.check51, %diff.check53
  br i1 %or.cond68, label %.lr.ph.i.i.i.i.i26.preheader69, label %vector.ph54

vector.ph54:                                      ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %n.vec55 = and i64 %i.ao, 9223372036854775804   ; 3 uses
  %i.ar = and i64 %i.ao, 3
  %i.as = shl i64 %n.vec55, 3                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.j, i64 %i.as
  %i.au = getelementptr i8, ptr %i.c, i64 %i.as
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next62, %vector.body56 ] ; 2 uses
  %i.av = shl i64 %index57, 3                     ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.j, i64 %i.av ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.c, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load60 = load <2 x i64>, ptr %next.gep59, align 8, !tbaa !100
  %wide.load61 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !100
  %i.ax = getelementptr i8, ptr %next.gep58, i64 16
  store <2 x i64> %wide.load60, ptr %next.gep58, align 8, !tbaa !100
  store <2 x i64> %wide.load61, ptr %i.ax, align 8, !tbaa !100
  %index.next62 = add nuw i64 %index57, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next62, %n.vec55
  br i1 %i.ay, label %middle.block63, label %vector.body56, !llvm.loop !8281

middle.block63:                                   ; preds = %vector.body56
  %cmp.n64 = icmp eq i64 %i.ao, %n.vec55
  br i1 %cmp.n64, label %_ZSt4copyIPN8WasmEdge4LLVM5ValueES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i26.preheader69

.lr.ph.i.i.i.i.i26.preheader69:                   ; preds = %.lr.ph.i.i.i.i.i26.preheader, %middle.block63
  %.012.i.i.i.i.i27.ph = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ar, %middle.block63 ]
  %.0811.i.i.i.i.i28.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.at, %middle.block63 ]
  %.0910.i.i.i.i.i29.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.au, %middle.block63 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader69, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader69 ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader69 ] ; 2 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i26.preheader69 ] ; 2 uses
  %i.az = load i64, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !100
  store i64 %i.az, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !100
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  %i.bc = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.bd = icmp samesign ugt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPN8WasmEdge4LLVM5ValueES3_ET0_T_S5_S4_.exit, !llvm.loop !8282

_ZSt4copyIPN8WasmEdge4LLVM5ValueES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i26, %middle.block63, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN8WasmEdge4LLVM5ValueES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN8WasmEdge4LLVM5ValueES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.v, %_ZSt4copyIPN8WasmEdge4LLVM5ValueES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN8WasmEdge4LLVM5ValueES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %i.be = load i64, ptr %.0810.i.i.i.i, align 8, !tbaa !100
  store i64 %i.be, ptr %.011.i.i.i.i, align 8, !tbaa !100
  %i.bf = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN8WasmEdge4LLVM5ValueES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !8283

_ZSt22__uninitialized_copy_aIPN8WasmEdge4LLVM5ValueES3_S2_ET0_T_S5_S4_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %middle.block, %bb.g, %_ZSt4copyIPN8WasmEdge4LLVM5ValueES3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.bh = phi ptr [ %i.j, %middle.block ], [ %2, %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPN8WasmEdge4LLVM5ValueES3_ET0_T_S5_S4_.exit ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !143
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPN8WasmEdge4LLVM5ValueES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIN8WasmEdge7ErrCode5ValueESt4pairIKS2_NS0_4LLVM10BasicBlockEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS2_RS6_EEES3_INS9_14_Node_iteratorIS7_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 10 uses
  store ptr null, ptr %i.a, align 8, !tbaa !211
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %1, align 4, !tbaa !28     ; 6 uses
  store i32 %i.c, ptr %i.b, align 8, !tbaa !8286
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %2, align 8, !tbaa !212
  store i64 %i.e, ptr %i.d, align 8, !tbaa !212
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !237  ; 2 uses
  %.not.not = icmp eq i64 %i.g, 0
  br i1 %.not.not, label %bb.b, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  %i.h = zext i32 %i.c to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !181  ; 5 uses
  %i.k = urem i64 %i.h, %i.j                      ; 5 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !238  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.critedge18, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.025.0.in = phi ptr [ %i.o, %bb.b ], [ %.sroa.025.0, %bb.d ]
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8, !tbaa !211 ; 4 uses
  %.not = icmp eq ptr %.sroa.025.0, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %i.r = icmp eq i32 %i.c, %i.q
  br i1 %i.r, label %_ZNKSt10_HashtableIN8WasmEdge7ErrCode5ValueESt4pairIKS2_NS0_4LLVM10BasicBlockEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit, label %bb.c, !llvm.loop !8284

.critedge:                                        ; preds = %bb.c
  %i.s = zext i32 %i.c to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !181  ; 2 uses
  %i.v = urem i64 %i.s, %i.u
end_hunk_0
