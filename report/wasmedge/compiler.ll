Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/compiler?download=true
inline.NumInlined: 6910
inline.NumDeleted: 1940
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN12_GLOBAL__N_116FunctionCompiler24compileVectorVectorUAvgrEN8WasmEdge4LLVM4TypeE:_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit.i
  %i.ai = icmp eq i32 %i.ah, 8
  %_ZN8WasmEdge4LLVM4Core12X86SSE2PAvgBE.val.i.i.i = load i32, ptr @_ZN8WasmEdge4LLVM4Core12X86SSE2PAvgBE, align 4, !noalias !6738
  %_ZN8WasmEdge4LLVM4Core12X86SSE2PAvgWE.val.i.i.i = load i32, ptr @_ZN8WasmEdge4LLVM4Core12X86SSE2PAvgWE, align 4, !noalias !6738
  %.0.i.i.i = select i1 %i.ai, i32 %_ZN8WasmEdge4LLVM4Core12X86SSE2PAvgBE.val.i.i.i, i32 %_ZN8WasmEdge4LLVM4Core12X86SSE2PAvgWE.val.i.i.i ; 2 uses
  %i.aj = icmp ne i32 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !6738
  store i64 %i.af, ptr %3, align 8, !tbaa !100, !noalias !6738
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ae, ptr %i.ak, align 8, !tbaa !100, !noalias !6738
  store ptr %3, ptr %2, align 8, !tbaa !234, !noalias !6738
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.al, align 8, !tbaa !235, !noalias !6738
  call void @_ZN8WasmEdge4LLVM7Builder15createIntrinsicEjN5cxx204spanIKNS0_4TypeELm18446744073709551615EEENS3_IKNS0_5ValueELm18446744073709551615EEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %.0.i.i.i, ptr null, i64 0, ptr noundef nonnull byval(%"struct.cxx20::span.146") align 8 %2, ptr noundef nonnull @.str.13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !6738
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !100, !noalias !6740
  br label %_ZZN12_GLOBAL__N_116FunctionCompiler24compileVectorVectorUAvgrEN8WasmEdge4LLVM4TypeEENKUlT_T0_E_clINS2_5ValueES8_EES8_S4_S5_.exit.i

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit.i
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !108, !noalias !6741
  %i.an = tail call ptr @LLVMBuildZExt(ptr noundef %i.am, ptr noundef %i.z, ptr noundef %i.i, ptr noundef nonnull @.str.13) #17, !noalias !6741
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !108, !noalias !6742
  %i.ap = tail call ptr @LLVMBuildZExt(ptr noundef %i.ao, ptr noundef %i.t, ptr noundef %i.i, ptr noundef nonnull @.str.13) #17, !noalias !6742
  %i.aq = tail call noundef i32 @LLVMGetVectorSize(ptr noundef %i.i) #17, !noalias !6738
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6743)
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !67, !noalias !6744
  %i.at = tail call ptr @LLVMInt1TypeInContext(ptr noundef %i.as) #17, !noalias !6744
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6745)
  %i.au = tail call ptr @LLVMConstInt(ptr noundef %i.at, i64 noundef 1, i32 noundef 0) #17, !noalias !6746
  store ptr %i.au, ptr %5, align 8, !tbaa !99, !alias.scope !6747, !noalias !6738
  call void @_ZN8WasmEdge4LLVM7Builder17createVectorSplatEjNS0_5ValueEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.aq, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr noundef nonnull @.str.13) #17, !noalias !6738
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !108, !noalias !6748
  %i.aw = load ptr, ptr %4, align 8, !tbaa !100, !noalias !6748
  %i.ax = call ptr @LLVMBuildZExt(ptr noundef %i.av, ptr noundef %i.aw, ptr noundef %i.i, ptr noundef nonnull @.str.13) #17, !noalias !6748 ; 2 uses
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !108, !noalias !6749
  %i.az = call ptr @LLVMBuildAdd(ptr noundef %i.ay, ptr noundef %i.an, ptr noundef %i.ap, ptr noundef nonnull @.str.13) #17, !noalias !6749
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !108, !noalias !6750
  %i.bb = call ptr @LLVMBuildAdd(ptr noundef %i.ba, ptr noundef %i.az, ptr noundef %i.ax, ptr noundef nonnull @.str.13) #17, !noalias !6750
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !108, !noalias !6751
  %i.bd = call ptr @LLVMBuildLShr(ptr noundef %i.bc, ptr noundef %i.bb, ptr noundef %i.ax, ptr noundef nonnull @.str.13) #17, !noalias !6751
  call void @llvm.experimental.noalias.scope.decl(metadata !6752)
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !108, !noalias !6753
  %i.bf = call ptr @LLVMBuildTrunc(ptr noundef %i.be, ptr noundef %i.bd, ptr noundef %i.r, ptr noundef nonnull @.str.13) #17, !noalias !6753 ; 2 uses
  store ptr %i.bf, ptr %6, align 8, !tbaa !99, !alias.scope !6753
  br label %_ZZN12_GLOBAL__N_116FunctionCompiler24compileVectorVectorUAvgrEN8WasmEdge4LLVM4TypeEENKUlT_T0_E_clINS2_5ValueES8_EES8_S4_S5_.exit.i

_ZZN12_GLOBAL__N_116FunctionCompiler24compileVectorVectorUAvgrEN8WasmEdge4LLVM4TypeEENKUlT_T0_E_clINS2_5ValueES8_EES8_S4_S5_.exit.i: ; preds = %bb.b, %bb.a
  %i.bg = phi ptr [ %.pre.i, %bb.a ], [ %i.bf, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bh = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 176
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !71
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !108, !noalias !6740
  %i.bm = call ptr @LLVMBuildBitCast(ptr noundef %i.bl, ptr noundef %i.bg, ptr noundef %i.bk, ptr noundef nonnull @.str.13) #17, !noalias !6740
  %i.bn = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !143 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %.not.i.i.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZZN12_GLOBAL__N_116FunctionCompiler24compileVectorVectorUAvgrEN8WasmEdge4LLVM4TypeEENKUlT_T0_E_clINS2_5ValueES8_EES8_S4_S5_.exit.i
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !100
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.br, ptr %i.n, align 8, !tbaa !143
  br label %_ZN12_GLOBAL__N_116FunctionCompiler21compileVectorVectorOpIZNS0_24compileVectorVectorUAvgrEN8WasmEdge4LLVM4TypeEEUlT_T0_E_EEvS4_OS5_.exit

bb.d:                                             ; preds = %_ZZN12_GLOBAL__N_116FunctionCompiler24compileVectorVectorUAvgrEN8WasmEdge4LLVM4TypeEENKUlT_T0_E_clINS2_5ValueES8_EES8_S4_S5_.exit.i
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !142 ; 7 uses
  %i.bt = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 4 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.e, label %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #20 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv
  store i64 %i.bn, ptr %i.ce, align 8, !tbaa !100
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cf = add i64 %i.bt, -8
  %i.cg = sub i64 %i.cf, %i.bu                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ci, 4611686018427387900     ; 3 uses
  %i.cj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cd, i64 %i.cj  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bs, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cd, i64 %i.cm ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.bs, i64 %i.cm ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6754)
  call void @llvm.experimental.noalias.scope.decl(metadata !6755)
  %i.cn = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep8, align 8, !tbaa !100, !alias.scope !6755, !noalias !6754
  %wide.load9 = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !100, !alias.scope !6755, !noalias !6754
  %i.co = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !100, !alias.scope !6754, !noalias !6755
  store <2 x ptr> %wide.load9, ptr %i.co, align 8, !tbaa !100, !alias.scope !6754, !noalias !6755
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !100, !alias.scope !6755, !noalias !6754
  store <2 x ptr> splat (ptr null), ptr %i.cn, align 8, !tbaa !100, !alias.scope !6755, !noalias !6754
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !6728

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.preheader11:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6754)
  call void @llvm.experimental.noalias.scope.decl(metadata !6755)
  %i.cq = load ptr, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !6755, !noalias !6754
  store ptr %i.cq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !6754, !noalias !6755
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !6755, !noalias !6754
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.bo
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6729

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cd, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ck, %middle.block ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.cd, ptr %i.l, align 8, !tbaa !142
  store ptr %i.ct, ptr %i.n, align 8, !tbaa !143
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.cu, ptr %i.bp, align 8, !tbaa !141
  br label %_ZN12_GLOBAL__N_116FunctionCompiler21compileVectorVectorOpIZNS0_24compileVectorVectorUAvgrEN8WasmEdge4LLVM4TypeEEUlT_T0_E_EEvS4_OS5_.exit

_ZN12_GLOBAL__N_116FunctionCompiler21compileVectorVectorOpIZNS0_24compileVectorVectorUAvgrEN8WasmEdge4LLVM4TypeEEUlT_T0_E_EEvS4_OS5_.exit: ; preds = %bb.c, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtendEN8WasmEdge4LLVM4TypeEbb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !70, !noalias !6778
  %i.b = tail call ptr @LLVMGetElementType(ptr noundef %i.a) #17, !noalias !6778 ; 2 uses
  %i.c = tail call ptr @LLVMGetTypeContext(ptr noundef %i.b) #17, !noalias !6779
  %i.d = tail call noundef i32 @LLVMGetIntTypeWidth(ptr noundef %i.b) #17, !noalias !6779
  %i.e = shl i32 %i.d, 1
  %i.f = tail call ptr @LLVMIntTypeInContext(ptr noundef %i.c, i32 noundef %i.e) #17, !noalias !6779
  %i.g = load ptr, ptr %1, align 8, !tbaa !70, !noalias !6780
  %i.h = tail call noundef i32 @LLVMGetVectorSize(ptr noundef %i.g) #17, !noalias !6780
  %i.i = tail call ptr @LLVMVectorType(ptr noundef %i.f, i32 noundef %i.h) #17, !noalias !6781 ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !70
  %i.k = tail call noundef i32 @LLVMGetVectorSize(ptr noundef %i.j) #17
  %i.l = lshr i32 %i.k, 1                         ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i32 %i.l to i64                ; 3 uses
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 8 uses
  %5 = ptrtoaddr ptr %i.o to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.m
  store i32 0, ptr %i.o, align 4, !tbaa !63
  %i.q = getelementptr i8, ptr %i.o, i64 4        ; 3 uses
  %i.r = add nsw i64 %i.m, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.preheader, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %bb.b
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.r, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, %bb.b
  %.0.i.i.i.i.i45 = phi ptr [ %i.t, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit ], [ %i.q, %bb.b ] ; 3 uses
  %i.u = ptrtoaddr ptr %.0.i.i.i.i.i45 to i64
  %6 = select i1 %3, i32 0, i32 %i.l              ; 3 uses
  %i.v = add i64 %i.u, -4
  %i.w = sub i64 %i.v, %5                         ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 4 uses
  %i.z = trunc i64 %n.vec to i32
  %i.aa = add i32 %6, %i.z
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ad = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !63
  store <4 x i32> %step.add, ptr %i.ae, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !6764

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit, label %.lr.ph.i.preheader47

.lr.ph.i.preheader47:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ %6, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader47, %.lr.ph.i
  %.07.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader47 ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader47 ] ; 2 uses
  store i32 %.07.i, ptr %.sroa.02.06.i, align 4, !tbaa !63
  %i.ag = add i32 %.07.i, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %.0.i.i.i.i.i45
  br i1 %.not.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !6765

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %i.ai = ptrtoint ptr %.0.i.i.i.i.i45 to i64
  %i.aj = ptrtoint ptr %i.p to i64
  br label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit, %bb.a
  %.0.i.i.i.i.i40 = phi i64 [ 0, %bb.a ], [ %i.ai, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit ]
  %.sroa.027.039 = phi ptr [ null, %bb.a ], [ %i.o, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit ] ; 4 uses
  %.sroa.11.038 = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !232
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !100
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %1, align 8, !tbaa !71
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !108, !noalias !6782
  %i.at = tail call ptr @LLVMBuildBitCast(ptr noundef %i.as, ptr noundef %i.ap, ptr noundef %i.ar, ptr noundef nonnull @.str.13) #17, !noalias !6782 ; 2 uses
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !108, !noalias !50 ; 2 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit
  %i.av = tail call ptr @LLVMBuildSExt(ptr noundef %i.au, ptr noundef %i.at, ptr noundef %i.i, ptr noundef nonnull @.str.13) #17, !noalias !6783
  br label %bb.e

bb.d:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit
  %i.aw = tail call ptr @LLVMBuildZExt(ptr noundef %i.au, ptr noundef %i.at, ptr noundef %i.i, ptr noundef nonnull @.str.13) #17, !noalias !6784
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.020.0 = phi ptr [ %i.av, %bb.c ], [ %i.aw, %bb.d ]
  %i.ax = tail call ptr @LLVMGetUndef(ptr noundef %i.i) #17, !noalias !6785
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = ptrtoint ptr %.sroa.027.039 to i64      ; 2 uses
  %i.ba = sub i64 %.0.i.i.i.i.i40, %i.az
  %i.bb = ashr exact i64 %i.ba, 2
  call void @_ZN8WasmEdge4LLVM5Value16getConstVector32ERNS0_7ContextEN5cxx204spanIKjLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr %.sroa.027.039, i64 %i.bb) #17
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !108, !noalias !6786
  %i.bd = load ptr, ptr %4, align 8, !tbaa !100, !noalias !6786
  %i.be = call ptr @LLVMBuildShuffleVector(ptr noundef %i.bc, ptr noundef %.sroa.020.0, ptr noundef %i.ax, ptr noundef %i.bd, ptr noundef nonnull @.str.13) #17, !noalias !6786
  %i.bf = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 176
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !71
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !108, !noalias !6787
  %i.bk = call ptr @LLVMBuildBitCast(ptr noundef %i.bj, ptr noundef %i.be, ptr noundef %i.bi, ptr noundef nonnull @.str.13) #17, !noalias !6787
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !232
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !100
  %.not.i.i.i = icmp eq ptr %.sroa.027.039, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = sub i64 %.sroa.11.038, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.027.039, i64 noundef %i.bn) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler22compileVectorVectorMulEN8WasmEdge4LLVM4TypeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, i64 %.0.val) unnamed_addr #0 align 2 {
_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %.in, align 8, !tbaa !232, !noalias !6809
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100, !noalias !6809
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.e, ptr %i.d, align 8, !tbaa !143, !noalias !6809
  %i.h = inttoptr i64 %.0.val to ptr              ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !108, !noalias !6810
  %i.j = tail call ptr @LLVMBuildBitCast(ptr noundef %i.i, ptr noundef %i.g, ptr noundef %i.h, ptr noundef nonnull @.str.13) #17, !noalias !6810
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !232, !noalias !6811
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !100, !noalias !6811
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.l, ptr %i.d, align 8, !tbaa !143, !noalias !6811
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !108, !noalias !6812
  %i.p = tail call ptr @LLVMBuildBitCast(ptr noundef %i.o, ptr noundef %i.n, ptr noundef %i.h, ptr noundef nonnull @.str.13) #17, !noalias !6812
  %.val2.val.i = load ptr, ptr %i.a, align 8, !tbaa !108, !noalias !6813
  %i.q = tail call ptr @LLVMBuildMul(ptr noundef %.val2.val.i, ptr noundef %i.p, ptr noundef %i.j, ptr noundef nonnull @.str.13) #17, !noalias !6814
  %i.r = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.t = load i64, ptr %i.s, align 8, !tbaa !71
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !108, !noalias !6815
  %i.w = tail call ptr @LLVMBuildBitCast(ptr noundef %i.v, ptr noundef %i.q, ptr noundef %i.u, ptr noundef nonnull @.str.13) #17, !noalias !6815
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !143  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !141
  %.not.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit.i
  store i64 %i.x, ptr %i.y, align 8, !tbaa !100
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !143
  br label %_ZN12_GLOBAL__N_116FunctionCompiler21compileVectorVectorOpIZNS0_22compileVectorVectorMulEN8WasmEdge4LLVM4TypeEEUlT_T0_E_EEvS4_OS5_.exit

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit.i
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !142 ; 7 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.c, label %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #20 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i64 %i.x, ptr %i.ao, align 8, !tbaa !100
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ap = add i64 %i.ad, -8
  %i.aq = sub i64 %i.ap, %i.ae                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.an, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.ac, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.ac, i64 %i.aw ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6817)
  %i.ax = getelementptr i8, ptr %next.gep4, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep4, align 8, !tbaa !100, !alias.scope !6817, !noalias !6816
  %wide.load5 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !100, !alias.scope !6817, !noalias !6816
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !100, !alias.scope !6816, !noalias !6817
  store <2 x ptr> %wide.load5, ptr %i.ay, align 8, !tbaa !100, !alias.scope !6816, !noalias !6817
  store <2 x ptr> splat (ptr null), ptr %next.gep4, align 8, !tbaa !100, !alias.scope !6817, !noalias !6816
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !100, !alias.scope !6817, !noalias !6816
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !6807

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.preheader7:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6817)
  %i.ba = load ptr, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !6817, !noalias !6816
  store ptr %i.ba, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !6816, !noalias !6817
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !6817, !noalias !6816
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.y
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6808

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.an, ptr %i.b, align 8, !tbaa !142
  store ptr %i.bd, ptr %i.d, align 8, !tbaa !143
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.be, ptr %i.z, align 8, !tbaa !141
  br label %_ZN12_GLOBAL__N_116FunctionCompiler21compileVectorVectorOpIZNS0_22compileVectorVectorMulEN8WasmEdge4LLVM4TypeEEUlT_T0_E_EEvS4_OS5_.exit

_ZN12_GLOBAL__N_116FunctionCompiler21compileVectorVectorOpIZNS0_22compileVectorVectorMulEN8WasmEdge4LLVM4TypeEEUlT_T0_E_EEvS4_OS5_.exit: ; preds = %bb.a, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtMulEN8WasmEdge4LLVM4TypeEbb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %5 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !70, !noalias !6865
  %i.b = tail call ptr @LLVMGetElementType(ptr noundef %i.a) #17, !noalias !6865 ; 2 uses
  %i.c = tail call ptr @LLVMGetTypeContext(ptr noundef %i.b) #17, !noalias !6866
  %i.d = tail call noundef i32 @LLVMGetIntTypeWidth(ptr noundef %i.b) #17, !noalias !6866
  %i.e = shl i32 %i.d, 1
  %i.f = tail call ptr @LLVMIntTypeInContext(ptr noundef %i.c, i32 noundef %i.e) #17, !noalias !6866
  %i.g = load ptr, ptr %1, align 8, !tbaa !70, !noalias !6867
  %i.h = tail call noundef i32 @LLVMGetVectorSize(ptr noundef %i.g) #17, !noalias !6867
  %i.i = tail call ptr @LLVMVectorType(ptr noundef %i.f, i32 noundef %i.h) #17, !noalias !6868 ; 6 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !70
  %i.k = tail call noundef i32 @LLVMGetVectorSize(ptr noundef %i.j) #17
  %i.l = lshr i32 %i.k, 1                         ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i32 %i.l to i64                ; 3 uses
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 8 uses
  %6 = ptrtoaddr ptr %i.o to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.m
  store i32 0, ptr %i.o, align 4, !tbaa !63
  %i.q = getelementptr i8, ptr %i.o, i64 4        ; 3 uses
  %i.r = add nsw i64 %i.m, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.preheader, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %bb.b
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.r, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, %bb.b
  %.0.i.i.i.i.i53 = phi ptr [ %i.t, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit ], [ %i.q, %bb.b ] ; 3 uses
  %i.u = ptrtoaddr ptr %.0.i.i.i.i.i53 to i64
  %7 = select i1 %3, i32 0, i32 %i.l              ; 3 uses
  %i.v = add i64 %i.u, -4
  %i.w = sub i64 %i.v, %6                         ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 4 uses
  %i.z = trunc i64 %n.vec to i32
  %i.aa = add i32 %7, %i.z
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ad = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !63
  store <4 x i32> %step.add, ptr %i.ae, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !6826

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit, label %.lr.ph.i.preheader70

.lr.ph.i.preheader70:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ %7, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader70, %.lr.ph.i
  %.07.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader70 ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader70 ] ; 2 uses
  store i32 %.07.i, ptr %.sroa.02.06.i, align 4, !tbaa !63
  %i.ag = add i32 %.07.i, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %.0.i.i.i.i.i53
  br i1 %.not.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !6827

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %i.ai = ptrtoint ptr %.0.i.i.i.i.i53 to i64
  %i.aj = ptrtoint ptr %i.p to i64
  br label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit, %bb.a
  %.0.i.i.i.i.i44 = phi i64 [ 0, %bb.a ], [ %i.ai, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit ]
  %.sroa.13.043 = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit ]
  %.sroa.0.042 = phi ptr [ null, %bb.a ], [ %i.o, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit.loopexit ] ; 5 uses
  %i.ak = load i64, ptr %1, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %.in, align 8, !tbaa !232, !noalias !6869
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !100, !noalias !6869
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !143, !noalias !6869
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 8 uses
  %i.as = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !108, !noalias !6870
  %i.au = tail call ptr @LLVMBuildBitCast(ptr noundef %i.at, ptr noundef %i.aq, ptr noundef %i.as, ptr noundef nonnull @.str.13) #17, !noalias !6870 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !108, !noalias !6871 ; 2 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit
  %i.aw = tail call ptr @LLVMBuildSExt(ptr noundef %i.av, ptr noundef %i.au, ptr noundef %i.i, ptr noundef nonnull @.str.13) #17, !noalias !6872
  br label %_ZZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtMulEN8WasmEdge4LLVM4TypeEbbENKUlNS2_5ValueEE_clES4_.exit

bb.d:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_T0_.exit
  %i.ax = tail call ptr @LLVMBuildZExt(ptr noundef %i.av, ptr noundef %i.au, ptr noundef %i.i, ptr noundef nonnull @.str.13) #17, !noalias !6873
  br label %_ZZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtMulEN8WasmEdge4LLVM4TypeEbbENKUlNS2_5ValueEE_clES4_.exit

_ZZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtMulEN8WasmEdge4LLVM4TypeEbbENKUlNS2_5ValueEE_clES4_.exit: ; preds = %bb.c, %bb.d
  %storemerge.i = phi ptr [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  %i.ay = tail call ptr @LLVMGetUndef(ptr noundef %i.i) #17, !noalias !6874
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = ptrtoint ptr %.sroa.0.042 to i64        ; 2 uses
  %i.bb = sub i64 %.0.i.i.i.i.i44, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2                 ; 2 uses
  call void @_ZN8WasmEdge4LLVM5Value16getConstVector32ERNS0_7ContextEN5cxx204spanIKjLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr %.sroa.0.042, i64 %i.bc) #17, !noalias !6871
  %i.bd = load ptr, ptr %i.ar, align 8, !tbaa !108, !noalias !6875
  %i.be = load ptr, ptr %5, align 8, !tbaa !100, !noalias !6875
  %i.bf = call ptr @LLVMBuildShuffleVector(ptr noundef %i.bd, ptr noundef %storemerge.i, ptr noundef %i.ay, ptr noundef %i.be, ptr noundef nonnull @.str.13) #17, !noalias !6875
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !232, !noalias !6876
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !100, !noalias !6876
  %i.bj = inttoptr i64 %i.bi to ptr
  store ptr %i.bh, ptr %i.an, align 8, !tbaa !143, !noalias !6876
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !108, !noalias !6877
  %i.bl = call ptr @LLVMBuildBitCast(ptr noundef %i.bk, ptr noundef %i.bj, ptr noundef %i.as, ptr noundef nonnull @.str.13) #17, !noalias !6877 ; 2 uses
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !108, !noalias !6878 ; 2 uses
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtMulEN8WasmEdge4LLVM4TypeEbbENKUlNS2_5ValueEE_clES4_.exit
  %i.bn = call ptr @LLVMBuildSExt(ptr noundef %i.bm, ptr noundef %i.bl, ptr noundef %i.i, ptr noundef nonnull @.str.13) #17, !noalias !6879
  br label %_ZZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtMulEN8WasmEdge4LLVM4TypeEbbENKUlNS2_5ValueEE_clES4_.exit12

bb.f:                                             ; preds = %_ZZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtMulEN8WasmEdge4LLVM4TypeEbbENKUlNS2_5ValueEE_clES4_.exit
  %i.bo = call ptr @LLVMBuildZExt(ptr noundef %i.bm, ptr noundef %i.bl, ptr noundef %i.i, ptr noundef nonnull @.str.13) #17, !noalias !6880
  br label %_ZZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtMulEN8WasmEdge4LLVM4TypeEbbENKUlNS2_5ValueEE_clES4_.exit12

_ZZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtMulEN8WasmEdge4LLVM4TypeEbbENKUlNS2_5ValueEE_clES4_.exit12: ; preds = %bb.e, %bb.f
  %storemerge.i11 = phi ptr [ %i.bo, %bb.f ], [ %i.bn, %bb.e ]
  %i.bp = call ptr @LLVMGetUndef(ptr noundef %i.i) #17, !noalias !6881
  call void @_ZN8WasmEdge4LLVM5Value16getConstVector32ERNS0_7ContextEN5cxx204spanIKjLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr %.sroa.0.042, i64 %i.bc) #17, !noalias !6878
  %i.bq = load ptr, ptr %i.ar, align 8, !tbaa !108, !noalias !6882
  %i.br = load ptr, ptr %4, align 8, !tbaa !100, !noalias !6882
  %i.bs = call ptr @LLVMBuildShuffleVector(ptr noundef %i.bq, ptr noundef %storemerge.i11, ptr noundef %i.bp, ptr noundef %i.br, ptr noundef nonnull @.str.13) #17, !noalias !6882
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bt = load ptr, ptr %i.ar, align 8, !tbaa !108, !noalias !6883
  %i.bu = call ptr @LLVMBuildMul(ptr noundef %i.bt, ptr noundef %i.bf, ptr noundef %i.bs, ptr noundef nonnull @.str.13) #17, !noalias !6883
  %i.bv = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 176
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !71
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !108, !noalias !6884
  %i.ca = call ptr @LLVMBuildBitCast(ptr noundef %i.bz, ptr noundef %i.bu, ptr noundef %i.by, ptr noundef nonnull @.str.13) #17, !noalias !6884
  %i.cb = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cc = load ptr, ptr %i.an, align 8, !tbaa !143 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !141
  %.not.i.i = icmp eq ptr %i.cc, %i.ce
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtMulEN8WasmEdge4LLVM4TypeEbbENKUlNS2_5ValueEE_clES4_.exit12
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !100
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cf, ptr %i.an, align 8, !tbaa !143
  br label %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit

bb.h:                                             ; preds = %_ZZN12_GLOBAL__N_116FunctionCompiler19compileVectorExtMulEN8WasmEdge4LLVM4TypeEbbENKUlNS2_5ValueEE_clES4_.exit12
  %i.cg = load ptr, ptr %i.al, align 8, !tbaa !142 ; 7 uses
  %i.ch = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 4 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.i, label %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.cl = ashr exact i64 %i.cj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.cm, i64 1152921504606846975)
  %i.cp = select i1 %i.cn, i64 1152921504606846975, i64 %i.co ; 3 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.cp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #20 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj
  store i64 %i.cb, ptr %i.cs, align 8, !tbaa !100
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.cc
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ct = add i64 %i.ch, -8
  %i.cu = sub i64 %i.ct, %i.ci                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.cu, 24
  br i1 %min.iters.check56, label %.lr.ph.i.i.i.i.i.i.preheader69, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec58 = and i64 %i.cw, 4611686018427387900   ; 3 uses
  %i.cx = shl i64 %n.vec58, 3                     ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cr, i64 %i.cx  ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cg, i64 %i.cx
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next64, %vector.body59 ] ; 2 uses
  %i.da = shl i64 %index60, 3                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.cr, i64 %i.da ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.cg, i64 %i.da ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6885)
  call void @llvm.experimental.noalias.scope.decl(metadata !6886)
  %i.db = getelementptr i8, ptr %next.gep62, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep62, align 8, !tbaa !100, !alias.scope !6886, !noalias !6885
  %wide.load63 = load <2 x ptr>, ptr %i.db, align 8, !tbaa !100, !alias.scope !6886, !noalias !6885
  %i.dc = getelementptr i8, ptr %next.gep61, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep61, align 8, !tbaa !100, !alias.scope !6885, !noalias !6886
  store <2 x ptr> %wide.load63, ptr %i.dc, align 8, !tbaa !100, !alias.scope !6885, !noalias !6886
  store <2 x ptr> splat (ptr null), ptr %next.gep62, align 8, !tbaa !100, !alias.scope !6886, !noalias !6885
  store <2 x ptr> splat (ptr null), ptr %i.db, align 8, !tbaa !100, !alias.scope !6886, !noalias !6885
  %index.next64 = add nuw i64 %index60, 4         ; 2 uses
  %i.dd = icmp eq i64 %index.next64, %n.vec58
  br i1 %i.dd, label %middle.block65, label %vector.body59, !llvm.loop !6863

middle.block65:                                   ; preds = %vector.body59
  %cmp.n66 = icmp eq i64 %i.cw, %n.vec58
  br i1 %cmp.n66, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader69

.lr.ph.i.i.i.i.i.i.preheader69:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block65
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cy, %middle.block65 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cz, %middle.block65 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader69, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader69 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader69 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6885)
  call void @llvm.experimental.noalias.scope.decl(metadata !6886)
  %i.de = load ptr, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !6886, !noalias !6885
  store ptr %i.de, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !6885, !noalias !6886
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !6886, !noalias !6885
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.df, %i.cc
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6864

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block65, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cr, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cy, %middle.block65 ], [ %i.dg, %.lr.ph.i.i.i.i.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cj) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_116FunctionCompiler24compileVectorTruncSatU32EN8WasmEdge4LLVM4TypeEb:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7637
  %i.i = tail call ptr @LLVMBuildBitCast(ptr noundef %i.h, ptr noundef %i.g, ptr noundef %i.a, ptr noundef nonnull @.str.13) #17, !noalias !7637 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.j = tail call noundef i32 @LLVMGetVectorSize(ptr noundef %i.a) #17, !noalias !7638 ; 6 uses
  %i.k = tail call ptr @LLVMGetElementType(ptr noundef %i.a) #17, !noalias !7639 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67, !noalias !7640
  %i.n = tail call ptr @LLVMInt32TypeInContext(ptr noundef %i.m) #17, !noalias !7640
  %i.o = tail call ptr @LLVMConstInt(ptr noundef %i.n, i64 noundef 0, i32 noundef 0) #17, !noalias !7641 ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !67, !noalias !7642
  %i.q = tail call ptr @LLVMInt32TypeInContext(ptr noundef %i.p) #17, !noalias !7642
  %i.r = tail call ptr @LLVMConstInt(ptr noundef %i.q, i64 noundef 4294967295, i32 noundef 0) #17, !noalias !7643 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !7638
  %i.s = ptrtoint ptr %i.o to i64
  store i64 %i.s, ptr %3, align 8, !tbaa !100, !noalias !7638
  call void @_ZN8WasmEdge4LLVM7Builder17createVectorSplatEjNS0_5ValueEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.j, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %3, ptr noundef nonnull @.str.13) #17, !noalias !7638
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !7638
  %i.t = ptrtoint ptr %i.r to i64
  store i64 %i.t, ptr %5, align 8, !tbaa !100, !noalias !7638
  call void @_ZN8WasmEdge4LLVM7Builder17createVectorSplatEjNS0_5ValueEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.j, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr noundef nonnull @.str.13) #17, !noalias !7638
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7644
  %i.v = call ptr @LLVMBuildUIToFP(ptr noundef %i.u, ptr noundef %i.o, ptr noundef %i.k, ptr noundef nonnull @.str.13) #17, !noalias !7644
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7645
  %i.x = call ptr @LLVMBuildUIToFP(ptr noundef %i.w, ptr noundef %i.r, ptr noundef %i.k, ptr noundef nonnull @.str.13) #17, !noalias !7645
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !7638
  %i.y = ptrtoint ptr %i.v to i64
  store i64 %i.y, ptr %7, align 8, !tbaa !100, !noalias !7638
  call void @_ZN8WasmEdge4LLVM7Builder17createVectorSplatEjNS0_5ValueEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.j, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr noundef nonnull @.str.13) #17, !noalias !7638
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17, !noalias !7638
  %i.z = ptrtoint ptr %i.x to i64
  store i64 %i.z, ptr %9, align 8, !tbaa !100, !noalias !7638
  call void @_ZN8WasmEdge4LLVM7Builder17createVectorSplatEjNS0_5ValueEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.j, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %9, ptr noundef nonnull @.str.13) #17, !noalias !7638
  %i.aa = load i64, ptr %6, align 8, !tbaa !100, !noalias !7638
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7646
  %i.ad = call ptr @LLVMBuildFCmp(ptr noundef %i.ac, i32 noundef 3, ptr noundef %i.i, ptr noundef %i.ab, ptr noundef nonnull @.str.13) #17, !noalias !7646
  %i.ae = load i64, ptr %8, align 8, !tbaa !100, !noalias !7638
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7647
  %i.ah = call ptr @LLVMBuildFCmp(ptr noundef %i.ag, i32 noundef 12, ptr noundef %i.i, ptr noundef %i.af, ptr noundef nonnull @.str.13) #17, !noalias !7647
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !67, !noalias !7648
  %i.aj = call ptr @LLVMInt32TypeInContext(ptr noundef %i.ai) #17, !noalias !7648
  %i.ak = call ptr @LLVMVectorType(ptr noundef %i.aj, i32 noundef %i.j) #17, !noalias !7649
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7650
  %i.am = call ptr @LLVMBuildFPToUI(ptr noundef %i.al, ptr noundef %i.i, ptr noundef %i.ak, ptr noundef nonnull @.str.13) #17, !noalias !7650
  %i.an = load i64, ptr %2, align 8, !tbaa !100, !noalias !7638
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7651
  %i.aq = call ptr @LLVMBuildSelect(ptr noundef %i.ap, ptr noundef %i.ad, ptr noundef %i.am, ptr noundef %i.ao, ptr noundef nonnull @.str.13) #17, !noalias !7651
  %i.ar = load i64, ptr %4, align 8, !tbaa !100, !noalias !7638
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7652
  %i.au = call ptr @LLVMBuildSelect(ptr noundef %i.at, ptr noundef %i.ah, ptr noundef %i.aq, ptr noundef %i.as, ptr noundef nonnull @.str.13) #17, !noalias !7652 ; 2 uses
  br i1 %1, label %bb.b, label %_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_24compileVectorTruncSatU32EN8WasmEdge4LLVM4TypeEbEUlT_E_EEvS4_OS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %2, align 8, !tbaa !99, !noalias !7653
  %i.aw = call ptr @LLVMTypeOf(ptr noundef %i.av) #17, !noalias !7653
  %i.ax = call ptr @LLVMConstNull(ptr noundef %i.aw) #17, !noalias !7654
  %i.ay = shl i32 %i.j, 1                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i:           ; preds = %bb.b
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 3 uses
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #20, !noalias !7638 ; 8 uses
  store i32 0, ptr %i.bb, align 4, !tbaa !63, !noalias !7638
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %.idx.i.i.i.i.i.i.i.i.i = add nsw i64 %i.ba, -4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bc, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !63, !noalias !7638
  %i.bd = getelementptr i8, ptr %i.bb, i64 %i.ba  ; 2 uses
  %i.be = lshr exact i64 %.idx.i.i.i.i.i.i.i.i.i, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %.idx.i.i.i.i.i.i.i.i.i, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 4 uses
  %i.bg = trunc i64 %n.vec to i32
  %i.bh = shl i64 %n.vec, 2
  %i.bi = getelementptr i8, ptr %i.bb, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.bj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !63, !noalias !7638
  store <4 x i32> %step.add, ptr %i.bk, align 4, !tbaa !63, !noalias !7638
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !7631

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i, %middle.block
  %.07.i.i.i.ph = phi i32 [ 0, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i ], [ %i.bg, %middle.block ]
  %.sroa.02.06.i.i.i.ph = phi ptr [ %i.bb, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi i32 [ %i.bm, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %.07.i.i.i, ptr %.sroa.02.06.i.i.i, align 4, !tbaa !63, !noalias !7638
  %i.bm = add nuw nsw i32 %.07.i.i.i, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, %i.bd
  br i1 %.not.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !7632

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.az
  %i.bp = ptrtoint ptr %i.bd to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  br label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.loopexit.i.i, %bb.b
  %.0.i.i.i.i.i53.i.i = phi i64 [ 0, %bb.b ], [ %i.bp, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.loopexit.i.i ]
  %.sroa.11.052.i.i = phi i64 [ 0, %bb.b ], [ %i.bq, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.loopexit.i.i ]
  %.sroa.011.051.i.i = phi ptr [ null, %bb.b ], [ %i.bb, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.loopexit.i.i ] ; 4 uses
  %i.br = ptrtoint ptr %.sroa.011.051.i.i to i64  ; 2 uses
  %i.bs = sub i64 %.0.i.i.i.i.i53.i.i, %i.br
  %i.bt = ashr exact i64 %i.bs, 2
  call void @_ZN8WasmEdge4LLVM5Value16getConstVector32ERNS0_7ContextEN5cxx204spanIKjLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr %.sroa.011.051.i.i, i64 %i.bt) #17, !noalias !7638
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7655
  %i.bv = load ptr, ptr %10, align 8, !tbaa !100, !noalias !7655
  %i.bw = call ptr @LLVMBuildShuffleVector(ptr noundef %i.bu, ptr noundef %i.au, ptr noundef %i.ax, ptr noundef %i.bv, ptr noundef nonnull @.str.13) #17, !noalias !7655 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.011.051.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_24compileVectorTruncSatU32EN8WasmEdge4LLVM4TypeEbEUlT_E_EEvS4_OS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i
  %i.bx = sub i64 %.sroa.11.052.i.i, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.011.051.i.i, i64 noundef %i.bx) #19, !noalias !7638
  br label %_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_24compileVectorTruncSatU32EN8WasmEdge4LLVM4TypeEbEUlT_E_EEvS4_OS5_.exit

_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_24compileVectorTruncSatU32EN8WasmEdge4LLVM4TypeEbEUlT_E_EEvS4_OS5_.exit: ; preds = %bb.a, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i, %bb.c
  %i.by = phi ptr [ %i.bw, %bb.c ], [ %i.bw, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i ], [ %i.au, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !noalias !7638
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !7638
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !7638
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !7638
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.bz = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 176
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !71
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7656
  %i.ce = call ptr @LLVMBuildBitCast(ptr noundef %i.cd, ptr noundef %i.by, ptr noundef %i.cc, ptr noundef nonnull @.str.13) #17, !noalias !7656
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler21compileVectorConvertSEN8WasmEdge4LLVM4TypeES3_b(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 %.0.val, i64 %.0.val1, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %i.a = inttoptr i64 %.0.val to ptr              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7671
  %i.i = tail call ptr @LLVMBuildBitCast(ptr noundef %i.h, ptr noundef %i.g, ptr noundef %i.a, ptr noundef nonnull @.str.13) #17, !noalias !7671 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  br i1 %1, label %bb.b, label %_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_21compileVectorConvertSEN8WasmEdge4LLVM4TypeES4_bEUlT_E_EEvS4_OS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @LLVMGetVectorSize(ptr noundef %i.a) #17, !noalias !7672
  %i.k = lshr i32 %i.j, 1                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #20, !noalias !7672 ; 8 uses
  %3 = ptrtoaddr ptr %i.n to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  store i32 0, ptr %i.n, align 4, !tbaa !63, !noalias !7672
  %i.p = getelementptr i8, ptr %i.n, i64 4        ; 3 uses
  %i.q = add nsw i64 %i.l, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.preheader.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i:           ; preds = %bb.c
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !63, !noalias !7672
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i, %bb.c
  %.0.i.i.i.i.i24.i.i = phi ptr [ %i.s, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.t = ptrtoaddr ptr %.0.i.i.i.i.i24.i.i to i64
  %i.u = add i64 %i.t, -4
  %i.v = sub i64 %i.u, %3                         ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i.i
  %n.vec = and i64 %i.x, 9223372036854775800      ; 4 uses
  %i.y = trunc i64 %n.vec to i32
  %i.z = shl i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !63, !noalias !7672
  store <4 x i32> %step.add, ptr %i.ac, align 4, !tbaa !63, !noalias !7672
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !7661

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.preheader.i.i, %middle.block
  %.07.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.preheader.i.i ], [ %i.y, %middle.block ]
  %.sroa.02.06.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.preheader.i.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi i32 [ %i.ae, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %.07.i.i.i, ptr %.sroa.02.06.i.i.i, align 4, !tbaa !63, !noalias !7672
  %i.ae = add nuw nsw i32 %.07.i.i.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %.0.i.i.i.i.i24.i.i
  br i1 %.not.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !7662

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i: ; preds = %.lr.ph.i.i.i, %middle.block
  %i.ag = ptrtoint ptr %.0.i.i.i.i.i24.i.i to i64
  %i.ah = ptrtoint ptr %i.o to i64
  br label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i, %bb.b
  %.0.i.i.i.i.i19.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i ]
  %.sroa.09.018.i.i = phi ptr [ null, %bb.b ], [ %i.n, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i ] ; 4 uses
  %.sroa.11.017.i.i = phi i64 [ 0, %bb.b ], [ %i.ah, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i ]
  %i.ai = tail call ptr @LLVMGetUndef(ptr noundef %i.a) #17, !noalias !7673
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = ptrtoint ptr %.sroa.09.018.i.i to i64   ; 2 uses
  %i.al = sub i64 %.0.i.i.i.i.i19.i.i, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  call void @_ZN8WasmEdge4LLVM5Value16getConstVector32ERNS0_7ContextEN5cxx204spanIKjLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr %.sroa.09.018.i.i, i64 %i.am) #17, !noalias !7672
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7674
  %i.ao = load ptr, ptr %2, align 8, !tbaa !100, !noalias !7674
  %i.ap = call ptr @LLVMBuildShuffleVector(ptr noundef %i.an, ptr noundef %i.i, ptr noundef %i.ai, ptr noundef %i.ao, ptr noundef nonnull @.str.13) #17, !noalias !7674 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.09.018.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_21compileVectorConvertSEN8WasmEdge4LLVM4TypeES4_bEUlT_E_EEvS4_OS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i
  %i.aq = sub i64 %.sroa.11.017.i.i, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.09.018.i.i, i64 noundef %i.aq) #19, !noalias !7672
  br label %_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_21compileVectorConvertSEN8WasmEdge4LLVM4TypeES4_bEUlT_E_EEvS4_OS5_.exit

_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_21compileVectorConvertSEN8WasmEdge4LLVM4TypeES4_bEUlT_E_EEvS4_OS5_.exit: ; preds = %bb.a, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i, %bb.d
  %.sroa.01.0.i = phi ptr [ %i.ap, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i ], [ %i.ap, %bb.d ], [ %i.i, %bb.a ]
  %i.ar = inttoptr i64 %.0.val1 to ptr
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7675
  %i.at = call ptr @LLVMBuildSIToFP(ptr noundef %i.as, ptr noundef %.sroa.01.0.i, ptr noundef %i.ar, ptr noundef nonnull @.str.13) #17, !noalias !7675
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.au = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !71
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7676
  %i.az = call ptr @LLVMBuildBitCast(ptr noundef %i.ay, ptr noundef %i.at, ptr noundef %i.ax, ptr noundef nonnull @.str.13) #17, !noalias !7676
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler21compileVectorConvertUEN8WasmEdge4LLVM4TypeES3_b(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 %.0.val, i64 %.0.val1, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %i.a = inttoptr i64 %.0.val to ptr              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7691
  %i.i = tail call ptr @LLVMBuildBitCast(ptr noundef %i.h, ptr noundef %i.g, ptr noundef %i.a, ptr noundef nonnull @.str.13) #17, !noalias !7691 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  br i1 %1, label %bb.b, label %_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_21compileVectorConvertUEN8WasmEdge4LLVM4TypeES4_bEUlT_E_EEvS4_OS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @LLVMGetVectorSize(ptr noundef %i.a) #17, !noalias !7692
  %i.k = lshr i32 %i.j, 1                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #20, !noalias !7692 ; 8 uses
  %3 = ptrtoaddr ptr %i.n to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  store i32 0, ptr %i.n, align 4, !tbaa !63, !noalias !7692
  %i.p = getelementptr i8, ptr %i.n, i64 4        ; 3 uses
  %i.q = add nsw i64 %i.l, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.preheader.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i:           ; preds = %bb.c
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !63, !noalias !7692
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i, %bb.c
  %.0.i.i.i.i.i24.i.i = phi ptr [ %i.s, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.t = ptrtoaddr ptr %.0.i.i.i.i.i24.i.i to i64
  %i.u = add i64 %i.t, -4
  %i.v = sub i64 %i.u, %3                         ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i.i
  %n.vec = and i64 %i.x, 9223372036854775800      ; 4 uses
  %i.y = trunc i64 %n.vec to i32
  %i.z = shl i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !63, !noalias !7692
  store <4 x i32> %step.add, ptr %i.ac, align 4, !tbaa !63, !noalias !7692
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !7681

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.preheader.i.i, %middle.block
  %.07.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.preheader.i.i ], [ %i.y, %middle.block ]
  %.sroa.02.06.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.preheader.i.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi i32 [ %i.ae, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %.07.i.i.i, ptr %.sroa.02.06.i.i.i, align 4, !tbaa !63, !noalias !7692
  %i.ae = add nuw nsw i32 %.07.i.i.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %.0.i.i.i.i.i24.i.i
  br i1 %.not.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !7682

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i: ; preds = %.lr.ph.i.i.i, %middle.block
  %i.ag = ptrtoint ptr %.0.i.i.i.i.i24.i.i to i64
  %i.ah = ptrtoint ptr %i.o to i64
  br label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i, %bb.b
  %.0.i.i.i.i.i19.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i ]
  %.sroa.09.018.i.i = phi ptr [ null, %bb.b ], [ %i.n, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i ] ; 4 uses
  %.sroa.11.017.i.i = phi i64 [ 0, %bb.b ], [ %i.ah, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.loopexit.i ]
  %i.ai = tail call ptr @LLVMGetUndef(ptr noundef %i.a) #17, !noalias !7693
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = ptrtoint ptr %.sroa.09.018.i.i to i64   ; 2 uses
  %i.al = sub i64 %.0.i.i.i.i.i19.i.i, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  call void @_ZN8WasmEdge4LLVM5Value16getConstVector32ERNS0_7ContextEN5cxx204spanIKjLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr %.sroa.09.018.i.i, i64 %i.am) #17, !noalias !7692
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7694
  %i.ao = load ptr, ptr %2, align 8, !tbaa !100, !noalias !7694
  %i.ap = call ptr @LLVMBuildShuffleVector(ptr noundef %i.an, ptr noundef %i.i, ptr noundef %i.ai, ptr noundef %i.ao, ptr noundef nonnull @.str.13) #17, !noalias !7694 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.09.018.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_21compileVectorConvertUEN8WasmEdge4LLVM4TypeES4_bEUlT_E_EEvS4_OS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i
  %i.aq = sub i64 %.sroa.11.017.i.i, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.09.018.i.i, i64 noundef %i.aq) #19, !noalias !7692
  br label %_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_21compileVectorConvertUEN8WasmEdge4LLVM4TypeES4_bEUlT_E_EEvS4_OS5_.exit

_ZN12_GLOBAL__N_116FunctionCompiler15compileVectorOpIZNS0_21compileVectorConvertUEN8WasmEdge4LLVM4TypeES4_bEUlT_E_EEvS4_OS5_.exit: ; preds = %bb.a, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i, %bb.d
  %.sroa.01.0.i = phi ptr [ %i.ap, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i.i ], [ %i.ap, %bb.d ], [ %i.i, %bb.a ]
  %i.ar = inttoptr i64 %.0.val1 to ptr
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7695
  %i.at = call ptr @LLVMBuildUIToFP(ptr noundef %i.as, ptr noundef %.sroa.01.0.i, ptr noundef %i.ar, ptr noundef nonnull @.str.13) #17, !noalias !7695
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.au = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !71
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !7696
  %i.az = call ptr @LLVMBuildBitCast(ptr noundef %i.ay, ptr noundef %i.at, ptr noundef %i.ax, ptr noundef nonnull @.str.13) #17, !noalias !7696
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler19compileVectorDemoteEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 5 uses
  %2 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %3 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load i64, ptr %i.b, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !100
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = inttoptr i64 %i.c to ptr
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !108, !noalias !7719
  %i.l = tail call ptr @LLVMBuildBitCast(ptr noundef %i.k, ptr noundef %i.i, ptr noundef %i.j, ptr noundef nonnull @.str.13) #17, !noalias !7719
  %i.m = ptrtoint ptr %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17, !noalias !7720
  store i64 %i.m, ptr %2, align 8, !tbaa !100, !noalias !7720
  %i.n = load ptr, ptr %0, align 8, !tbaa !206, !noalias !7720, !nonnull !50, !align !98
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load i64, ptr %i.o, align 8, !tbaa !71, !noalias !7720
  %i.q = inttoptr i64 %i.p to ptr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7721)
  %i.r = tail call ptr @LLVMVectorType(ptr noundef %i.q, i32 noundef 2) #17, !noalias !7722
  store ptr %i.r, ptr %3, align 8, !tbaa !70, !alias.scope !7721, !noalias !7720
  call void @_ZN8WasmEdge4LLVM7Builder13createFPTruncENS0_5ValueENS0_4TypeEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %3, ptr noundef nonnull @.str.13) #17, !noalias !7720
  %i.s = load ptr, ptr %1, align 8, !tbaa !99, !noalias !7723
  %i.t = call ptr @LLVMTypeOf(ptr noundef %i.s) #17, !noalias !7723
  %i.u = call ptr @LLVMConstNull(ptr noundef %i.t) #17, !noalias !7724
  %i.v = load i64, ptr %1, align 8, !tbaa !100, !noalias !7720
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.x = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !noalias !7725 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !67, !noalias !7726
  %i.aa = call ptr @LLVMInt32TypeInContext(ptr noundef %i.z) #17, !noalias !7726
  %i.ab = call noundef ptr @LLVMConstInt(ptr noundef %i.aa, i64 noundef 0, i32 noundef 0) #17, !noalias !7727
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !100, !noalias !7725
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !67, !noalias !7726
  %i.ad = call ptr @LLVMInt32TypeInContext(ptr noundef %i.ac) #17, !noalias !7726
  %i.ae = call noundef ptr @LLVMConstInt(ptr noundef %i.ad, i64 noundef 1, i32 noundef 0) #17, !noalias !7727
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !100, !noalias !7725
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !67, !noalias !7726
  %i.ah = call ptr @LLVMInt32TypeInContext(ptr noundef %i.ag) #17, !noalias !7726
  %i.ai = call noundef ptr @LLVMConstInt(ptr noundef %i.ah, i64 noundef 2, i32 noundef 0) #17, !noalias !7727
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !100, !noalias !7725
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !67, !noalias !7726
  %i.al = call ptr @LLVMInt32TypeInContext(ptr noundef %i.ak) #17, !noalias !7726
  %i.am = call noundef ptr @LLVMConstInt(ptr noundef %i.al, i64 noundef 3, i32 noundef 0) #17, !noalias !7727
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !100, !noalias !7725
  %i.an = inttoptr i64 %i.v to ptr
  %i.ao = call ptr @LLVMConstVector(ptr noundef nonnull %i.x, i32 noundef 4) #17, !noalias !7725
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 32) #19, !noalias !7725
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !108, !noalias !7728
  %i.aq = call ptr @LLVMBuildShuffleVector(ptr noundef %i.ap, ptr noundef %i.an, ptr noundef %i.u, ptr noundef %i.ao, ptr noundef nonnull @.str.13) #17, !noalias !7728
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17, !noalias !7720
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.at = load i64, ptr %i.as, align 8, !tbaa !71
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !108, !noalias !7729
  %i.aw = call ptr @LLVMBuildBitCast(ptr noundef %i.av, ptr noundef %i.aq, ptr noundef %i.au, ptr noundef nonnull @.str.13) #17, !noalias !7729
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileVectorPromoteEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %2 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 4 uses
  %3 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load i64, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !100
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = inttoptr i64 %i.c to ptr
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !108, !noalias !7752
  %i.l = tail call ptr @LLVMBuildBitCast(ptr noundef %i.k, ptr noundef %i.i, ptr noundef %i.j, ptr noundef nonnull @.str.13) #17, !noalias !7752 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = tail call ptr @LLVMTypeOf(ptr noundef %i.l) #17, !noalias !7753
  %i.n = tail call ptr @LLVMGetUndef(ptr noundef %i.m) #17, !noalias !7754
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20, !noalias !7755 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !67, !noalias !7756
  %i.s = tail call ptr @LLVMInt32TypeInContext(ptr noundef %i.r) #17, !noalias !7756
  %i.t = tail call noundef ptr @LLVMConstInt(ptr noundef %i.s, i64 noundef 0, i32 noundef 0) #17, !noalias !7757
  store ptr %i.t, ptr %i.p, align 8, !tbaa !100, !noalias !7755
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !67, !noalias !7756
  %i.v = tail call ptr @LLVMInt32TypeInContext(ptr noundef %i.u) #17, !noalias !7756
  %i.w = tail call noundef ptr @LLVMConstInt(ptr noundef %i.v, i64 noundef 1, i32 noundef 0) #17, !noalias !7757
  store ptr %i.w, ptr %i.q, align 8, !tbaa !100, !noalias !7755
  %i.x = tail call ptr @LLVMConstVector(ptr noundef nonnull %i.p, i32 noundef 2) #17, !noalias !7755
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 16) #19, !noalias !7755
end_hunk_1
