Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/compiler?download=true
inline.NumInlined: 6910
inline.NumDeleted: 1940
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN12_GLOBAL__N_116FunctionCompiler15setLableJumpPHIEj:bb.a
  %i.kp = phi ptr [ %.us-phi96, %.lr.ph98 ], [ %i.ma, %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit64 ] ; 3 uses
  %.097 = phi i64 [ 0, %.lr.ph98 ], [ %i.mb, %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit64 ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.097
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !100 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.kp, %i.ko
  br i1 %.not.i.i51, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.kr, ptr %i.kp, align 8, !tbaa !100
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  store ptr %i.ks, ptr %i.ja, align 8, !tbaa !143
  br label %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit64

bb.o:                                             ; preds = %bb.m
  %i.kt = load ptr, ptr %i.iz, align 8, !tbaa !142 ; 10 uses
  %i.ku = ptrtoint ptr %i.ko to i64               ; 3 uses
  %i.kv = ptrtoint ptr %i.kt to i64               ; 3 uses
  %i.kw = sub i64 %i.ku, %i.kv                    ; 4 uses
  %i.kx = icmp eq i64 %i.kw, 9223372036854775800
  br i1 %i.kx, label %bb.p, label %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52: ; preds = %bb.o
  %i.ky = ashr exact i64 %i.kw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i53 = tail call i64 @llvm.umax.i64(i64 %i.ky, i64 1)
  %i.kz = add nsw i64 %.sroa.speculated.i.i.i.i53, %i.ky ; 2 uses
  %i.la = icmp ult i64 %i.kz, %i.ky
  %i.lb = tail call i64 @llvm.umin.i64(i64 %i.kz, i64 1152921504606846975)
  %i.lc = select i1 %i.la, i64 1152921504606846975, i64 %i.lb ; 3 uses
  %.not.i.i.i.i54 = icmp ne i64 %i.lc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i54)
  %i.ld = shl nuw nsw i64 %i.lc, 3
  %i.le = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ld) #20 ; 10 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.kw
  store i64 %i.kr, ptr %i.lf, align 8, !tbaa !100
  %.not10.i.i.i.i.i.i55 = icmp eq ptr %i.kt, %i.ko
  br i1 %.not10.i.i.i.i.i.i55, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i56.preheader

.lr.ph.i.i.i.i.i.i56.preheader:                   ; preds = %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52
  %i.lg = add i64 %i.ku, -8
  %i.lh = sub i64 %i.lg, %i.kv                    ; 2 uses
  %i.li = lshr i64 %i.lh, 3
  %i.lj = add nuw nsw i64 %i.li, 1                ; 2 uses
  %min.iters.check265 = icmp ult i64 %i.lh, 56
  br i1 %min.iters.check265, label %.lr.ph.i.i.i.i.i.i56.preheader279, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph.i.i.i.i.i.i56.preheader
  %scevgep257 = getelementptr i8, ptr %i.le, i64 8
  %i.lk = add i64 %i.ku, -8
  %i.ll = sub i64 %i.lk, %i.kv
  %i.lm = and i64 %i.ll, -8                       ; 2 uses
  %scevgep258 = getelementptr i8, ptr %scevgep257, i64 %i.lm
  %scevgep259 = getelementptr i8, ptr %i.kt, i64 8
  %scevgep260 = getelementptr i8, ptr %scevgep259, i64 %i.lm
  %bound0261 = icmp ult ptr %i.le, %scevgep260
  %bound1262 = icmp ult ptr %i.kt, %scevgep258
  %found.conflict263 = and i1 %bound0261, %bound1262
  br i1 %found.conflict263, label %.lr.ph.i.i.i.i.i.i56.preheader279, label %vector.ph266

vector.ph266:                                     ; preds = %vector.memcheck256
  %n.vec267 = and i64 %i.lj, 4611686018427387900  ; 3 uses
  %i.ln = shl i64 %n.vec267, 3                    ; 2 uses
  %i.lo = getelementptr i8, ptr %i.le, i64 %i.ln  ; 2 uses
  %i.lp = getelementptr i8, ptr %i.kt, i64 %i.ln
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next274, %vector.body268 ] ; 2 uses
  %i.lq = shl i64 %index269, 3                    ; 2 uses
  %next.gep270 = getelementptr i8, ptr %i.le, i64 %i.lq ; 2 uses
  %next.gep271 = getelementptr i8, ptr %i.kt, i64 %i.lq ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4559)
  %i.lr = getelementptr i8, ptr %next.gep271, i64 16 ; 2 uses
  %wide.load272 = load <2 x ptr>, ptr %next.gep271, align 8, !tbaa !100, !alias.scope !4560, !noalias !4558
  %wide.load273 = load <2 x ptr>, ptr %i.lr, align 8, !tbaa !100, !alias.scope !4560, !noalias !4558
  %i.ls = getelementptr i8, ptr %next.gep270, i64 16
  store <2 x ptr> %wide.load272, ptr %next.gep270, align 8, !tbaa !100, !alias.scope !4561, !noalias !4560
  store <2 x ptr> %wide.load273, ptr %i.ls, align 8, !tbaa !100, !alias.scope !4561, !noalias !4560
  store <2 x ptr> splat (ptr null), ptr %next.gep271, align 8, !tbaa !100, !alias.scope !4560, !noalias !4558
  store <2 x ptr> splat (ptr null), ptr %i.lr, align 8, !tbaa !100, !alias.scope !4560, !noalias !4558
  %index.next274 = add nuw i64 %index269, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next274, %n.vec267
  br i1 %i.lt, label %middle.block275, label %vector.body268, !llvm.loop !4547

middle.block275:                                  ; preds = %vector.body268
  %cmp.n276 = icmp eq i64 %i.lj, %n.vec267
  br i1 %cmp.n276, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i56.preheader279

.lr.ph.i.i.i.i.i.i56.preheader279:                ; preds = %vector.memcheck256, %.lr.ph.i.i.i.i.i.i56.preheader, %middle.block275
  %.012.i.i.i.i.i.i57.ph = phi ptr [ %i.le, %vector.memcheck256 ], [ %i.le, %.lr.ph.i.i.i.i.i.i56.preheader ], [ %i.lo, %middle.block275 ]
  %.0911.i.i.i.i.i.i58.ph = phi ptr [ %i.kt, %vector.memcheck256 ], [ %i.kt, %.lr.ph.i.i.i.i.i.i56.preheader ], [ %i.lp, %middle.block275 ]
  br label %.lr.ph.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i56:                             ; preds = %.lr.ph.i.i.i.i.i.i56.preheader279, %.lr.ph.i.i.i.i.i.i56
  %.012.i.i.i.i.i.i57 = phi ptr [ %i.lw, %.lr.ph.i.i.i.i.i.i56 ], [ %.012.i.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i.i56.preheader279 ] ; 2 uses
  %.0911.i.i.i.i.i.i58 = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i.i56 ], [ %.0911.i.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i.i56.preheader279 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4559)
  %i.lu = load ptr, ptr %.0911.i.i.i.i.i.i58, align 8, !tbaa !100, !alias.scope !4559, !noalias !4558
  store ptr %i.lu, ptr %.012.i.i.i.i.i.i57, align 8, !tbaa !100, !alias.scope !4558, !noalias !4559
  store ptr null, ptr %.0911.i.i.i.i.i.i58, align 8, !tbaa !100, !alias.scope !4559, !noalias !4558
  %i.lv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i58, i64 8 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i57, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i59 = icmp eq ptr %i.lv, %i.ko
  br i1 %.not.i.i.i.i.i.i59, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i56, !llvm.loop !4548

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i56, %middle.block275, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52
  %.0.lcssa.i.i.i.i.i.i61 = phi ptr [ %i.le, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52 ], [ %i.lo, %middle.block275 ], [ %i.lw, %.lr.ph.i.i.i.i.i.i56 ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i61, i64 8 ; 2 uses
  %.not.i23.i.i.i62 = icmp eq ptr %i.kt, null
  br i1 %.not.i23.i.i.i62, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i63, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kw) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i63

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i63: ; preds = %bb.q, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60
  store ptr %i.le, ptr %i.iz, align 8, !tbaa !142
  store ptr %i.lx, ptr %i.ja, align 8, !tbaa !143
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lc ; 2 uses
  store ptr %i.ly, ptr %i.jb, align 8, !tbaa !141
  br label %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit64

_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit64: ; preds = %bb.n, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i63
  %i.lz = phi ptr [ %i.ko, %bb.n ], [ %i.ly, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i63 ]
  %i.ma = phi ptr [ %i.ks, %bb.n ], [ %i.lx, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i63 ]
  %i.mb = add nuw i64 %.097, 1                    ; 2 uses
  %exitcond120.not = icmp eq i64 %i.mb, %i.gb
  br i1 %exitcond120.not, label %._crit_edge99, label %bb.m, !llvm.loop !4549

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %._crit_edge, %bb.i, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler13compileCallOpEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.101", align 8   ; 6 uses
  %3 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.d = zext i32 %1 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !164
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !63
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !139
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !157  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !160
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !161
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = add nsw i64 %i.u, 1                      ; 4 uses
  %i.w = icmp ugt i64 %i.v, 1152921504606846975
  br i1 %i.w, label %bb.b, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #18
  unreachable

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.x = shl nuw nsw i64 %i.v, 3                  ; 3 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #20 ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.y, i8 0, i64 %i.x, i1 false), !tbaa !99
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.y, i64 %i.x
  %i.aa = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.048.0 = phi ptr [ %i.y, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 17 uses
  %.sink.i = phi i64 [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.sroa.048.090 = ptrtoaddr ptr %.sroa.048.0 to i64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !99, !noalias !4592
  %i.ae = tail call ptr @LLVMGetFirstParam(ptr noundef %i.ad) #17, !noalias !4592
  store ptr %i.ae, ptr %.sroa.048.0, align 8, !tbaa !100
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !160 ; 2 uses
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !161 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 18 uses
  %.not60 = icmp eq ptr %i.af, %i.ag
  br i1 %.not60, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val4.i = load ptr, ptr %i.al, align 8, !tbaa !219, !noalias !4593
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val5.i = load ptr, ptr %i.am, align 8, !tbaa !219, !noalias !4593
  %i.an = icmp eq ptr %.val4.i, %.val5.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.promoted = load ptr, ptr %i.ao, align 8       ; 9 uses
  %.promoted89 = ptrtoaddr ptr %.promoted to i64  ; 2 uses
  br i1 %i.an, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !232, !noalias !4593 ; 5 uses
  %min.iters.check99 = icmp ult i64 %i.ak, 10
  br i1 %min.iters.check99, label %.critedge.thread.i.us.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %.lr.ph.split.us
  %i.ar = add i64 %i.aj, %.sroa.048.090
  %i.as = sub i64 %.promoted89, %i.ar
  %i.at = add i64 %i.as, -9
  %diff.check97 = icmp ult i64 %i.at, 31
  br i1 %diff.check97, label %.critedge.thread.i.us.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck96
  %n.vec101 = and i64 %i.ak, -4                   ; 4 uses
  %i.au = mul i64 %n.vec101, -8
  %i.av = getelementptr i8, ptr %.promoted, i64 %i.au ; 2 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next110, %vector.body102 ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted, %vector.ph100 ], [ %ptr.ind, %vector.body102 ] ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %pointer.phi, i64 -16
  %i.ax = getelementptr inbounds i8, ptr %pointer.phi, i64 -32
  %wide.load104 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !100, !noalias !4593
  %wide.load105 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !100, !noalias !4593
  %i.ay = sub nuw i64 %i.ak, %index103
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.048.0, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -24
  %reverse108 = inttoptr <2 x i64> %wide.load104 to <2 x ptr>
  %reverse109 = inttoptr <2 x i64> %wide.load105 to <2 x ptr>
  store <2 x ptr> %reverse108, ptr %i.ba, align 8, !tbaa !100
  store <2 x ptr> %reverse109, ptr %i.bb, align 8, !tbaa !100
  %index.next110 = add nuw i64 %index103, 4       ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -32
  %i.bc = icmp eq i64 %index.next110, %n.vec101
  br i1 %i.bc, label %middle.block111, label %vector.body102, !llvm.loop !4566

middle.block111:                                  ; preds = %vector.body102
  %cmp.n112 = icmp eq i64 %i.ak, %n.vec101
  br i1 %cmp.n112, label %._crit_edge, label %.critedge.thread.i.us.preheader

.critedge.thread.i.us.preheader:                  ; preds = %vector.memcheck96, %.lr.ph.split.us, %middle.block111
  %.ph = phi ptr [ %.promoted, %vector.memcheck96 ], [ %.promoted, %.lr.ph.split.us ], [ %i.av, %middle.block111 ] ; 2 uses
  %.053.us.ph = phi i64 [ 0, %vector.memcheck96 ], [ 0, %.lr.ph.split.us ], [ %n.vec101, %middle.block111 ] ; 3 uses
  %xtraiter162 = and i64 %i.ak, 3                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.critedge.thread.i.us.prol.loopexit, label %.critedge.thread.i.us.prol

.critedge.thread.i.us.prol:                       ; preds = %.critedge.thread.i.us.preheader, %.critedge.thread.i.us.prol
  %i.bd = phi ptr [ %i.bf, %.critedge.thread.i.us.prol ], [ %.ph, %.critedge.thread.i.us.preheader ] ; 2 uses
  %.053.us.prol = phi i64 [ %i.bk, %.critedge.thread.i.us.prol ], [ %.053.us.ph, %.critedge.thread.i.us.preheader ] ; 2 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %.critedge.thread.i.us.prol ], [ 0, %.critedge.thread.i.us.preheader ]
  %i.be = icmp ne ptr %i.aq, %i.bd
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !100, !noalias !4593
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = sub nuw i64 %i.ak, %.053.us.prol
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.048.0, i64 %i.bi
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !100
  %i.bk = add nuw i64 %.053.us.prol, 1            ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %.critedge.thread.i.us.prol.loopexit, label %.critedge.thread.i.us.prol, !llvm.loop !4567

.critedge.thread.i.us.prol.loopexit:              ; preds = %.critedge.thread.i.us.prol, %.critedge.thread.i.us.preheader
  %.lcssa158.unr = phi ptr [ poison, %.critedge.thread.i.us.preheader ], [ %i.bf, %.critedge.thread.i.us.prol ]
  %.unr165 = phi ptr [ %.ph, %.critedge.thread.i.us.preheader ], [ %i.bf, %.critedge.thread.i.us.prol ]
  %.053.us.unr = phi i64 [ %.053.us.ph, %.critedge.thread.i.us.preheader ], [ %i.bk, %.critedge.thread.i.us.prol ]
  %i.bl = sub nsw i64 %.053.us.ph, %i.ak
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge, label %.critedge.thread.i.us.preheader.new

.critedge.thread.i.us.preheader.new:              ; preds = %.critedge.thread.i.us.prol.loopexit
  %i.bn = getelementptr i8, ptr %.sroa.048.0, i64 %i.aj
  br label %.critedge.thread.i.us

.critedge.thread.i.us:                            ; preds = %.critedge.thread.i.us, %.critedge.thread.i.us.preheader.new
  %i.bo = phi ptr [ %.unr165, %.critedge.thread.i.us.preheader.new ], [ %i.cg, %.critedge.thread.i.us ] ; 5 uses
  %.053.us = phi i64 [ %.053.us.unr, %.critedge.thread.i.us.preheader.new ], [ %i.cj, %.critedge.thread.i.us ] ; 3 uses
  %i.bp = icmp ne ptr %i.aq, %i.bo
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !100, !noalias !4593
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = sub nuw i64 %i.ak, %.053.us             ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.048.0, i64 %i.bt
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !100
  %.neg166 = xor i64 %.053.us, -1
  %i.bv = icmp ne ptr %i.aq, %i.bq
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds i8, ptr %i.bo, i64 -16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !100, !noalias !4593
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr [8 x i8], ptr %i.bn, i64 %.neg166
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !100
  %i.ca = icmp ne ptr %i.aq, %i.bw
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds i8, ptr %i.bo, i64 -24 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !100, !noalias !4593
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr [8 x i8], ptr %.sroa.048.0, i64 %i.bt
  %4 = getelementptr i8, ptr %i.ce, i64 -16
  store ptr %i.cd, ptr %4, align 8, !tbaa !100
  %i.cf = icmp ne ptr %i.aq, %i.cb
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bo, i64 -32 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !100, !noalias !4593
  %i.ci = inttoptr i64 %i.ch to ptr
  %5 = getelementptr [8 x i8], ptr %.sroa.048.0, i64 %i.bt
  %6 = getelementptr i8, ptr %5, i64 -24
  store ptr %i.ci, ptr %6, align 8, !tbaa !100
  %i.cj = add nuw i64 %.053.us, 4                 ; 2 uses
  %exitcond66.not.3 = icmp eq i64 %i.cj, %i.ak
  br i1 %exitcond66.not.3, label %._crit_edge, label %.critedge.thread.i.us, !llvm.loop !4568

.lr.ph.split:                                     ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %i.ak, 12
  br i1 %min.iters.check, label %.critedge.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split
  %i.ck = add i64 %i.aj, %.sroa.048.090
  %i.cl = sub i64 %.promoted89, %i.ck
  %i.cm = add i64 %i.cl, -9
  %diff.check = icmp ult i64 %i.cm, 31
  br i1 %diff.check, label %.critedge.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, -4                      ; 4 uses
  %i.cn = mul i64 %n.vec, -8
  %i.co = getelementptr i8, ptr %.promoted, i64 %i.cn ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <2 x i64>, ptr %i.cq, align 8, !tbaa !100, !noalias !4593
  %wide.load91 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !100, !noalias !4593
  %i.cs = sub nuw i64 %i.ak, %index
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.048.0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 -24
  %reverse93 = inttoptr <2 x i64> %wide.load to <2 x ptr>
  %reverse94 = inttoptr <2 x i64> %wide.load91 to <2 x ptr>
  store <2 x ptr> %reverse93, ptr %i.cu, align 8, !tbaa !100
  store <2 x ptr> %reverse94, ptr %i.cv, align 8, !tbaa !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !4569

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.critedge.i.preheader

.critedge.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph.split, %middle.block
  %.ph159 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph.split ], [ %i.co, %middle.block ] ; 2 uses
  %.053.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i.prol.loopexit, label %.critedge.i.prol

.critedge.i.prol:                                 ; preds = %.critedge.i.preheader, %.critedge.i.prol
  %i.cx = phi ptr [ %i.cy, %.critedge.i.prol ], [ %.ph159, %.critedge.i.preheader ]
  %.053.prol = phi i64 [ %i.dd, %.critedge.i.prol ], [ %.053.ph, %.critedge.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.critedge.i.prol ], [ 0, %.critedge.i.preheader ]
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -8 ; 4 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !100, !noalias !4593
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = sub nuw i64 %i.ak, %.053.prol
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.048.0, i64 %i.db
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !100
  %i.dd = add nuw i64 %.053.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.critedge.i.prol.loopexit, label %.critedge.i.prol, !llvm.loop !4570

.critedge.i.prol.loopexit:                        ; preds = %.critedge.i.prol, %.critedge.i.preheader
  %.lcssa161.unr = phi ptr [ poison, %.critedge.i.preheader ], [ %i.cy, %.critedge.i.prol ]
  %.unr = phi ptr [ %.ph159, %.critedge.i.preheader ], [ %i.cy, %.critedge.i.prol ]
  %.053.unr = phi i64 [ %.053.ph, %.critedge.i.preheader ], [ %i.dd, %.critedge.i.prol ]
  %i.de = sub nsw i64 %.053.ph, %i.ak
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge, label %.critedge.i.preheader.new

.critedge.i.preheader.new:                        ; preds = %.critedge.i.prol.loopexit
  %i.dg = getelementptr i8, ptr %.sroa.048.0, i64 %i.aj
  br label %.critedge.i

._crit_edge:                                      ; preds = %.critedge.i.prol.loopexit, %.critedge.i, %.critedge.thread.i.us.prol.loopexit, %.critedge.thread.i.us, %middle.block, %middle.block111
  %.us-phi = phi ptr [ %i.cg, %.critedge.thread.i.us ], [ %i.av, %middle.block111 ], [ %i.co, %middle.block ], [ %.lcssa158.unr, %.critedge.thread.i.us.prol.loopexit ], [ %.lcssa161.unr, %.critedge.i.prol.loopexit ], [ %i.em, %.critedge.i ]
  store ptr %.us-phi, ptr %i.ao, align 8, !tbaa !232, !noalias !4593
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.sroa.041.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !71
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.242.0.copyload = load ptr, ptr %.sroa.242.0..sroa_idx, align 8, !tbaa !100
  %i.di = ptrtoint ptr %.sroa.048.0 to i64        ; 2 uses
  %i.dj = sub i64 %.0.lcssa.i.i.i.i.i, %i.di
  %i.dk = lshr exact i64 %i.dj, 3
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !108, !noalias !4594
  %i.dn = tail call ptr @LLVMBuildCall2(ptr noundef %i.dm, ptr noundef %.sroa.041.0.copyload, ptr noundef %.sroa.242.0.copyload, ptr noundef nonnull %.sroa.048.0, i32 noundef %i.dl, ptr noundef nonnull @.str.13) #17, !noalias !4594 ; 4 uses
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !108, !noalias !4594
  %i.dp = tail call ptr @LLVMGetInsertBlock(ptr noundef %i.do) #17, !noalias !4594
  %i.dq = tail call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.dp) #17, !noalias !4594
  %i.dr = tail call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.dq) #17, !noalias !4594
  %i.ds = tail call noundef ptr @LLVMGetModuleContext(ptr noundef %i.dr) #17, !noalias !4594
  %i.dt = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !4594
  %i.du = tail call ptr @LLVMCreateEnumAttribute(ptr noundef %i.ds, i32 noundef %i.dt, i64 noundef 0) #17, !noalias !4594
  tail call void @LLVMAddCallSiteAttribute(ptr noundef %i.dn, i32 noundef -1, ptr noundef %i.du) #17, !noalias !4594
  %i.dv = tail call ptr @LLVMTypeOf(ptr noundef %i.dn) #17, !noalias !4595 ; 2 uses
  %i.dw = tail call i32 @LLVMGetTypeKind(ptr noundef %i.dv) #17
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit32, label %bb.d

.critedge.i:                                      ; preds = %.critedge.i, %.critedge.i.preheader.new
  %i.dy = phi ptr [ %.unr, %.critedge.i.preheader.new ], [ %i.em, %.critedge.i ] ; 4 uses
  %.053 = phi i64 [ %.053.unr, %.critedge.i.preheader.new ], [ %i.ep, %.critedge.i ] ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !100, !noalias !4593
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = sub nuw i64 %i.ak, %.053                ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.sroa.048.0, i64 %i.ec
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !100
  %.neg = xor i64 %.053, -1
  %i.ee = getelementptr inbounds i8, ptr %i.dy, i64 -16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !100, !noalias !4593
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = getelementptr [8 x i8], ptr %i.dg, i64 %.neg
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !100
  %i.ei = getelementptr inbounds i8, ptr %i.dy, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !100, !noalias !4593
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr [8 x i8], ptr %.sroa.048.0, i64 %i.ec
  %7 = getelementptr i8, ptr %i.el, i64 -16
  store ptr %i.ek, ptr %7, align 8, !tbaa !100
  %i.em = getelementptr inbounds i8, ptr %i.dy, i64 -32 ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !100, !noalias !4593
  %i.eo = inttoptr i64 %i.en to ptr
  %8 = getelementptr [8 x i8], ptr %.sroa.048.0, i64 %i.ec
  %9 = getelementptr i8, ptr %8, i64 -24
  store ptr %i.eo, ptr %9, align 8, !tbaa !100
  %i.ep = add nuw i64 %.053, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ep, %i.ak
  br i1 %exitcond.not.3, label %._crit_edge, label %.critedge.i, !llvm.loop !4575

bb.d:                                             ; preds = %bb.c
  %i.eq = tail call i32 @LLVMGetTypeKind(ptr noundef %i.dv) #17
  %i.er = icmp eq i32 %i.eq, 10
  br i1 %i.er, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.es = ptrtoint ptr %i.dn to i64
  store i64 %i.es, ptr %3, align 8, !tbaa !100
  call fastcc void @_ZN12_GLOBAL__N_112unpackStructERN8WasmEdge4LLVM7BuilderENS1_5ValueE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3) #17
  %i.et = load ptr, ptr %2, align 8, !tbaa !232   ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !232 ; 2 uses
  %.not55 = icmp eq ptr %i.et, %i.ev
  br i1 %.not55, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.e
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre = load ptr, ptr %i.ex, align 8, !tbaa !143
  %.pre67 = load ptr, ptr %i.ey, align 8, !tbaa !141
  br label %bb.g

._crit_edge59:                                    ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit, %bb.e
  %.not.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge59
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !141
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.et to i64
  %i.fd = sub i64 %i.fb, %i.fc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.fd) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit: ; preds = %._crit_edge59, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit32

bb.g:                                             ; preds = %.lr.ph58, %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit
  %i.fe = phi ptr [ %.pre67, %.lr.ph58 ], [ %i.go, %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit ] ; 5 uses
  %i.ff = phi ptr [ %.pre, %.lr.ph58 ], [ %i.gp, %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit ] ; 3 uses
  %.sroa.035.056 = phi ptr [ %i.et, %.lr.ph58 ], [ %i.gq, %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.035.056, align 8, !tbaa !100
  %i.fg = ptrtoint ptr %.sroa.0.0.copyload to i64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ff, %i.fe
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.fg, ptr %i.ff, align 8, !tbaa !100
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  store ptr %i.fh, ptr %i.ex, align 8, !tbaa !143
  br label %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit

bb.i:                                             ; preds = %bb.g
  %i.fi = load ptr, ptr %i.ew, align 8, !tbaa !142 ; 10 uses
  %i.fj = ptrtoint ptr %i.fe to i64               ; 3 uses
  %i.fk = ptrtoint ptr %i.fi to i64               ; 3 uses
  %i.fl = sub i64 %i.fj, %i.fk                    ; 4 uses
  %i.fm = icmp eq i64 %i.fl, 9223372036854775800
  br i1 %i.fm, label %bb.j, label %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.fn = ashr exact i64 %i.fl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fn, i64 1)
  %i.fo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fn ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %i.fq = tail call i64 @llvm.umin.i64(i64 %i.fo, i64 1152921504606846975)
  %i.fr = select i1 %i.fp, i64 1152921504606846975, i64 %i.fq ; 3 uses
  %.not.i.i.i.i16 = icmp ne i64 %i.fr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i16)
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #20 ; 10 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fl
  store i64 %i.fg, ptr %i.fu, align 8, !tbaa !100
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.fi, %i.fe
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fv = add i64 %i.fj, -8
  %i.fw = sub i64 %i.fv, %i.fk                    ; 2 uses
  %i.fx = lshr i64 %i.fw, 3
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.fw, 56
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.preheader155, label %vector.memcheck133

vector.memcheck133:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ft, i64 8
  %i.fz = add i64 %i.fj, -8
  %i.ga = sub i64 %i.fz, %i.fk
  %i.gb = and i64 %i.ga, -8                       ; 2 uses
  %scevgep134 = getelementptr i8, ptr %scevgep, i64 %i.gb
  %scevgep135 = getelementptr i8, ptr %i.fi, i64 8
  %scevgep136 = getelementptr i8, ptr %scevgep135, i64 %i.gb
  %bound0137 = icmp ult ptr %i.ft, %scevgep136
  %bound1138 = icmp ult ptr %i.fi, %scevgep134
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %.lr.ph.i.i.i.i.i.i.preheader155, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck133
  %n.vec143 = and i64 %i.fy, 4611686018427387900  ; 3 uses
  %i.gc = shl i64 %n.vec143, 3                    ; 2 uses
  %i.gd = getelementptr i8, ptr %i.ft, i64 %i.gc  ; 2 uses
  %i.ge = getelementptr i8, ptr %i.fi, i64 %i.gc
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body144 ] ; 2 uses
  %i.gf = shl i64 %index145, 3                    ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.ft, i64 %i.gf ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.fi, i64 %i.gf ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4597)
  %i.gg = getelementptr i8, ptr %next.gep147, i64 16 ; 2 uses
  %wide.load148 = load <2 x ptr>, ptr %next.gep147, align 8, !tbaa !100, !alias.scope !4598, !noalias !4596
  %wide.load149 = load <2 x ptr>, ptr %i.gg, align 8, !tbaa !100, !alias.scope !4598, !noalias !4596
  %i.gh = getelementptr i8, ptr %next.gep146, i64 16
  store <2 x ptr> %wide.load148, ptr %next.gep146, align 8, !tbaa !100, !alias.scope !4599, !noalias !4598
  store <2 x ptr> %wide.load149, ptr %i.gh, align 8, !tbaa !100, !alias.scope !4599, !noalias !4598
  store <2 x ptr> splat (ptr null), ptr %next.gep147, align 8, !tbaa !100, !alias.scope !4598, !noalias !4596
  store <2 x ptr> splat (ptr null), ptr %i.gg, align 8, !tbaa !100, !alias.scope !4598, !noalias !4596
  %index.next150 = add nuw i64 %index145, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next150, %n.vec143
  br i1 %i.gi, label %middle.block151, label %vector.body144, !llvm.loop !4582

middle.block151:                                  ; preds = %vector.body144
  %cmp.n152 = icmp eq i64 %i.fy, %n.vec143
  br i1 %cmp.n152, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader155

.lr.ph.i.i.i.i.i.i.preheader155:                  ; preds = %vector.memcheck133, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block151
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ft, %vector.memcheck133 ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gd, %middle.block151 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.fi, %vector.memcheck133 ], [ %i.fi, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ge, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader155, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader155 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader155 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4597)
  %i.gj = load ptr, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !4597, !noalias !4596
  store ptr %i.gj, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !4596, !noalias !4597
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !4597, !noalias !4596
  %i.gk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gk, %i.fe
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4583

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block151, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ft, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.gd, %middle.block151 ], [ %i.gl, %.lr.ph.i.i.i.i.i.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fl) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ft, ptr %i.ew, align 8, !tbaa !142
  store ptr %i.gm, ptr %i.ex, align 8, !tbaa !143
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fr ; 2 uses
  store ptr %i.gn, ptr %i.ey, align 8, !tbaa !141
  br label %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit

_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit: ; preds = %bb.h, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.go = phi ptr [ %i.fe, %bb.h ], [ %i.gn, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.gp = phi ptr [ %i.fh, %bb.h ], [ %i.gm, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.035.056, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gq, %i.ev
  br i1 %.not, label %._crit_edge59, label %bb.g

bb.l:                                             ; preds = %bb.d
  %i.gr = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !143 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !141
  %.not.i.i17 = icmp eq ptr %i.gu, %i.gw
  br i1 %.not.i.i17, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.gr, ptr %i.gu, align 8, !tbaa !100
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.gx, ptr %i.gt, align 8, !tbaa !143
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit32

bb.n:                                             ; preds = %bb.l
  %i.gy = load ptr, ptr %i.gs, align 8, !tbaa !142 ; 10 uses
  %i.gz = ptrtoint ptr %i.gu to i64               ; 2 uses
  %i.ha = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.hb = sub i64 %i.gz, %i.ha                    ; 4 uses
  %i.hc = icmp eq i64 %i.hb, 9223372036854775800
  br i1 %i.hc, label %bb.o, label %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i18

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i18: ; preds = %bb.n
  %i.hd = ashr exact i64 %i.hb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i19 = tail call i64 @llvm.umax.i64(i64 %i.hd, i64 1)
  %i.he = add nsw i64 %.sroa.speculated.i.i.i.i19, %i.hd ; 2 uses
  %i.hf = icmp ult i64 %i.he, %i.hd
  %i.hg = tail call i64 @llvm.umin.i64(i64 %i.he, i64 1152921504606846975)
  %i.hh = select i1 %i.hf, i64 1152921504606846975, i64 %i.hg ; 3 uses
  %.not.i.i.i.i20 = icmp ne i64 %i.hh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i20)
  %i.hi = shl nuw nsw i64 %i.hh, 3
  %i.hj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hi) #20 ; 10 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hb
  store i64 %i.gr, ptr %i.hk, align 8, !tbaa !100
  %.not10.i.i.i.i.i.i21 = icmp eq ptr %i.gy, %i.gu
  br i1 %.not10.i.i.i.i.i.i21, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i26, label %.lr.ph.i.i.i.i.i.i22.preheader

.lr.ph.i.i.i.i.i.i22.preheader:                   ; preds = %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i18
  %i.hl = add i64 %i.gz, -8
  %i.hm = sub i64 %i.hl, %i.ha                    ; 3 uses
  %i.hn = lshr i64 %i.hm, 3
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 2 uses
  %min.iters.check118 = icmp ult i64 %i.hm, 136
  br i1 %min.iters.check118, label %.lr.ph.i.i.i.i.i.i22.preheader156, label %vector.memcheck119

vector.memcheck119:                               ; preds = %.lr.ph.i.i.i.i.i.i22.preheader
  %i.hp = and i64 %i.hm, -8
  %i.hq = add i64 %i.hp, 8                        ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hj, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.gy, i64 %i.hq
  %bound0 = icmp ult ptr %i.hj, %i.hs
  %bound1 = icmp ult ptr %i.gy, %i.hr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i22.preheader156, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck119
  %n.vec121 = and i64 %i.ho, 4611686018427387900  ; 3 uses
  %i.ht = shl i64 %n.vec121, 3                    ; 2 uses
  %i.hu = getelementptr i8, ptr %i.hj, i64 %i.ht  ; 2 uses
  %i.hv = getelementptr i8, ptr %i.gy, i64 %i.ht
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next128, %vector.body122 ] ; 2 uses
  %i.hw = shl i64 %index123, 3                    ; 2 uses
  %next.gep124 = getelementptr i8, ptr %i.hj, i64 %i.hw ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.gy, i64 %i.hw ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4601)
  %i.hx = getelementptr i8, ptr %next.gep125, i64 16 ; 2 uses
  %wide.load126 = load <2 x ptr>, ptr %next.gep125, align 8, !tbaa !100, !alias.scope !4602, !noalias !4600
  %wide.load127 = load <2 x ptr>, ptr %i.hx, align 8, !tbaa !100, !alias.scope !4602, !noalias !4600
  %i.hy = getelementptr i8, ptr %next.gep124, i64 16
  store <2 x ptr> %wide.load126, ptr %next.gep124, align 8, !tbaa !100, !alias.scope !4603, !noalias !4602
  store <2 x ptr> %wide.load127, ptr %i.hy, align 8, !tbaa !100, !alias.scope !4603, !noalias !4602
  store <2 x ptr> splat (ptr null), ptr %next.gep125, align 8, !tbaa !100, !alias.scope !4602, !noalias !4600
  store <2 x ptr> splat (ptr null), ptr %i.hx, align 8, !tbaa !100, !alias.scope !4602, !noalias !4600
  %index.next128 = add nuw i64 %index123, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.hz, label %middle.block129, label %vector.body122, !llvm.loop !4590

middle.block129:                                  ; preds = %vector.body122
  %cmp.n130 = icmp eq i64 %i.ho, %n.vec121
  br i1 %cmp.n130, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i26, label %.lr.ph.i.i.i.i.i.i22.preheader156

.lr.ph.i.i.i.i.i.i22.preheader156:                ; preds = %vector.memcheck119, %.lr.ph.i.i.i.i.i.i22.preheader, %middle.block129
  %.012.i.i.i.i.i.i23.ph = phi ptr [ %i.hj, %vector.memcheck119 ], [ %i.hj, %.lr.ph.i.i.i.i.i.i22.preheader ], [ %i.hu, %middle.block129 ]
  %.0911.i.i.i.i.i.i24.ph = phi ptr [ %i.gy, %vector.memcheck119 ], [ %i.gy, %.lr.ph.i.i.i.i.i.i22.preheader ], [ %i.hv, %middle.block129 ]
  br label %.lr.ph.i.i.i.i.i.i22

.lr.ph.i.i.i.i.i.i22:                             ; preds = %.lr.ph.i.i.i.i.i.i22.preheader156, %.lr.ph.i.i.i.i.i.i22
  %.012.i.i.i.i.i.i23 = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.i.i22 ], [ %.012.i.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i.i22.preheader156 ] ; 2 uses
  %.0911.i.i.i.i.i.i24 = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i.i22 ], [ %.0911.i.i.i.i.i.i24.ph, %.lr.ph.i.i.i.i.i.i22.preheader156 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4601)
  %i.ia = load ptr, ptr %.0911.i.i.i.i.i.i24, align 8, !tbaa !100, !alias.scope !4601, !noalias !4600
  store ptr %i.ia, ptr %.012.i.i.i.i.i.i23, align 8, !tbaa !100, !alias.scope !4600, !noalias !4601
  store ptr null, ptr %.0911.i.i.i.i.i.i24, align 8, !tbaa !100, !alias.scope !4601, !noalias !4600
  %i.ib = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i24, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i23, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i25 = icmp eq ptr %i.ib, %i.gu
  br i1 %.not.i.i.i.i.i.i25, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i26, label %.lr.ph.i.i.i.i.i.i22, !llvm.loop !4591

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i26: ; preds = %.lr.ph.i.i.i.i.i.i22, %middle.block129, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i18
  %.0.lcssa.i.i.i.i.i.i27 = phi ptr [ %i.hj, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i18 ], [ %i.hu, %middle.block129 ], [ %i.ic, %.lr.ph.i.i.i.i.i.i22 ]
  %i.id = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i27, i64 8
  %.not.i23.i.i.i28 = icmp eq ptr %i.gy, null
  br i1 %.not.i23.i.i.i28, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i29, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hb) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i29

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i29: ; preds = %bb.p, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i26
  store ptr %i.hj, ptr %i.gs, align 8, !tbaa !142
  store ptr %i.id, ptr %i.gt, align 8, !tbaa !143
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hh
  store ptr %i.ie, ptr %i.gv, align 8, !tbaa !141
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit32

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit32: ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i29, %bb.m, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit, %bb.c
  %i.if = sub i64 %.sink.i, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.048.0, i64 noundef %i.if) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler21compileIndirectCallOpEjj(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %3 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %4 = alloca %"struct.cxx20::span.146", align 8  ; 5 uses
  %5 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %6 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 4 uses
  %7 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 3 uses
  %8 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %9 = alloca [3 x %"class.WasmEdge::LLVM::Type"], align 8 ; 6 uses
  %10 = alloca [3 x %"class.WasmEdge::LLVM::Value"], align 8 ; 6 uses
  %11 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %12 = alloca %"class.std::vector.101", align 8  ; 7 uses
  %13 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %14 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 5 uses
  %15 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 6 uses
  %16 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %17 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %18 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 3 uses
  %19 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %20 = alloca [5 x %"class.WasmEdge::LLVM::Type"], align 8 ; 8 uses
  %21 = alloca [5 x %"class.WasmEdge::LLVM::Value"], align 8 ; 8 uses
  %22 = alloca %"class.std::vector.101", align 8  ; 5 uses
  %23 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %24 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %25 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %26 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %27 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %28 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %29 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !52, !noalias !4707
  %i.g = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.f, ptr noundef %i.e, ptr noundef nonnull @.str.124) #17, !noalias !4707 ; 3 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !100
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !52, !noalias !4708
  %i.k = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.j, ptr noundef %i.i, ptr noundef nonnull @.str.125) #17, !noalias !4708 ; 3 uses
  %i.l = load i64, ptr %i.c, align 8, !tbaa !100
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !52, !noalias !4709
  %i.o = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.n, ptr noundef %i.m, ptr noundef nonnull @.str.126) #17, !noalias !4709 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %.in, align 8, !tbaa !232, !noalias !4710
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !100, !noalias !4710 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !143, !noalias !4710
  %i.w = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.y = zext i32 %2 to i64                       ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !139
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !157 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %.sroa.030.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 248
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !71
  call fastcc void @_ZN12_GLOBAL__N_110toLLVMTypeEN8WasmEdge4LLVM7ContextENS1_4TypeERKNS0_3AST12FunctionTypeE(ptr dead_on_unwind noalias writable align 8 %6, ptr %.sroa.030.0.copyload, i64 %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.ac) #17
  %i.af = load ptr, ptr %6, align 8, !noalias !4711 ; 3 uses
  %i.ag = tail call ptr @LLVMGetReturnType(ptr noundef %i.af) #17, !noalias !4711 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !160 ; 2 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !161 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = ashr exact i64 %i.am, 3                 ; 21 uses
  %i.ao = tail call i32 @LLVMGetTypeKind(ptr noundef %i.ag) #17
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !160
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !161
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  br label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit, %bb.a
  %i.ay = phi i64 [ %i.ax, %bb.a ], [ 0, %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit ] ; 9 uses
  %i.az = add nsw i64 %i.an, 1                    ; 4 uses
  %i.ba = icmp ugt i64 %i.az, 1152921504606846975
  br i1 %i.ba, label %bb.c, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #18
  unreachable

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.bb = shl nuw nsw i64 %i.az, 3
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #20 ; 4 uses
  %i.bd = add i64 %i.am, 8                        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bc, i8 0, i64 %i.bd, i1 false), !tbaa !100
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.bc, i64 %i.bd
  %i.bf = ptrtoint ptr %scevgep to i64
  %i.bg = ptrtoint ptr %i.be to i64
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.12170.0 = phi i64 [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.bg, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.0164.0 = phi ptr [ null, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.bc, %.lr.ph.preheader.i.i.i.i.i.i ] ; 18 uses
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.bf, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.0164.0238 = ptrtoaddr ptr %.sroa.0164.0 to i64 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !99, !noalias !4712
  %i.bi = tail call ptr @LLVMGetFirstParam(ptr noundef %i.bh) #17, !noalias !4712
  store ptr %i.bi, ptr %.sroa.0164.0, align 8, !tbaa !100
  %.not208 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not208, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit
  %.val4.i46 = load ptr, ptr %i.p, align 8, !tbaa !219, !noalias !4713
  %.val5.i47 = load ptr, ptr %i.q, align 8, !tbaa !219, !noalias !4713
  %i.bj = icmp eq ptr %.val4.i46, %.val5.i47
  %.promoted = load ptr, ptr %i.t, align 8        ; 9 uses
  %.promoted237 = ptrtoaddr ptr %.promoted to i64 ; 2 uses
  br i1 %i.bj, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !232, !noalias !4713 ; 5 uses
  %min.iters.check247 = icmp ult i64 %i.an, 10
  br i1 %min.iters.check247, label %.critedge.thread.i50.us.preheader, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.lr.ph.split.us
  %i.bl = add i64 %i.am, %.sroa.0164.0238
  %i.bm = sub i64 %.promoted237, %i.bl
  %i.bn = add i64 %i.bm, -9
  %diff.check245 = icmp ult i64 %i.bn, 31
  br i1 %diff.check245, label %.critedge.thread.i50.us.preheader, label %vector.ph248

vector.ph248:                                     ; preds = %vector.memcheck244
  %n.vec249 = and i64 %i.an, -4                   ; 4 uses
  %i.bo = mul i64 %n.vec249, -8
  %i.bp = getelementptr i8, ptr %.promoted, i64 %i.bo ; 2 uses
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph248
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next258, %vector.body250 ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted, %vector.ph248 ], [ %ptr.ind, %vector.body250 ] ; 3 uses
  %i.bq = sub nuw i64 %i.an, %index251
  %i.br = getelementptr inbounds i8, ptr %pointer.phi, i64 -16
  %i.bs = getelementptr inbounds i8, ptr %pointer.phi, i64 -32
  %wide.load252 = load <2 x i64>, ptr %i.br, align 8, !tbaa !100, !noalias !4713
  %wide.load253 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !100, !noalias !4713
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0164.0, i64 %i.bq ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -24
  %reverse256 = inttoptr <2 x i64> %wide.load252 to <2 x ptr>
  %reverse257 = inttoptr <2 x i64> %wide.load253 to <2 x ptr>
  store <2 x ptr> %reverse256, ptr %i.bu, align 8, !tbaa !100
  store <2 x ptr> %reverse257, ptr %i.bv, align 8, !tbaa !100
  %index.next258 = add nuw i64 %index251, 4       ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -32
  %i.bw = icmp eq i64 %index.next258, %n.vec249
  br i1 %i.bw, label %middle.block259, label %vector.body250, !llvm.loop !4618

middle.block259:                                  ; preds = %vector.body250
  %cmp.n260 = icmp eq i64 %i.an, %n.vec249
  br i1 %cmp.n260, label %._crit_edge, label %.critedge.thread.i50.us.preheader

.critedge.thread.i50.us.preheader:                ; preds = %vector.memcheck244, %.lr.ph.split.us, %middle.block259
  %.ph = phi ptr [ %.promoted, %vector.memcheck244 ], [ %.promoted, %.lr.ph.split.us ], [ %i.bp, %middle.block259 ] ; 2 uses
  %.040193.us.ph = phi i64 [ 0, %vector.memcheck244 ], [ 0, %.lr.ph.split.us ], [ %n.vec249, %middle.block259 ] ; 3 uses
  %xtraiter313 = and i64 %i.an, 3                 ; 2 uses
  %lcmp.mod314.not = icmp eq i64 %xtraiter313, 0
  br i1 %lcmp.mod314.not, label %.critedge.thread.i50.us.prol.loopexit, label %.critedge.thread.i50.us.prol

.critedge.thread.i50.us.prol:                     ; preds = %.critedge.thread.i50.us.preheader, %.critedge.thread.i50.us.prol
  %i.bx = phi ptr [ %i.ca, %.critedge.thread.i50.us.prol ], [ %.ph, %.critedge.thread.i50.us.preheader ] ; 2 uses
  %.040193.us.prol = phi i64 [ %i.ce, %.critedge.thread.i50.us.prol ], [ %.040193.us.ph, %.critedge.thread.i50.us.preheader ] ; 2 uses
  %prol.iter315 = phi i64 [ %prol.iter315.next, %.critedge.thread.i50.us.prol ], [ 0, %.critedge.thread.i50.us.preheader ]
  %i.by = sub nuw i64 %i.an, %.040193.us.prol
  %i.bz = icmp ne ptr %i.bk, %i.bx
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 4 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !100, !noalias !4713
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0164.0, i64 %i.by
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !100
  %i.ce = add nuw i64 %.040193.us.prol, 1         ; 2 uses
  %prol.iter315.next = add i64 %prol.iter315, 1   ; 2 uses
  %prol.iter315.cmp.not = icmp eq i64 %prol.iter315.next, %xtraiter313
  br i1 %prol.iter315.cmp.not, label %.critedge.thread.i50.us.prol.loopexit, label %.critedge.thread.i50.us.prol, !llvm.loop !4619

.critedge.thread.i50.us.prol.loopexit:            ; preds = %.critedge.thread.i50.us.prol, %.critedge.thread.i50.us.preheader
  %.lcssa309.unr = phi ptr [ poison, %.critedge.thread.i50.us.preheader ], [ %i.ca, %.critedge.thread.i50.us.prol ]
  %.unr316 = phi ptr [ %.ph, %.critedge.thread.i50.us.preheader ], [ %i.ca, %.critedge.thread.i50.us.prol ]
  %.040193.us.unr = phi i64 [ %.040193.us.ph, %.critedge.thread.i50.us.preheader ], [ %i.ce, %.critedge.thread.i50.us.prol ]
  %i.cf = sub nsw i64 %.040193.us.ph, %i.an
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %._crit_edge, label %.critedge.thread.i50.us.preheader.new

.critedge.thread.i50.us.preheader.new:            ; preds = %.critedge.thread.i50.us.prol.loopexit
  %i.ch = getelementptr i8, ptr %.sroa.0164.0, i64 %i.am
  br label %.critedge.thread.i50.us

.critedge.thread.i50.us:                          ; preds = %.critedge.thread.i50.us, %.critedge.thread.i50.us.preheader.new
  %i.ci = phi ptr [ %.unr316, %.critedge.thread.i50.us.preheader.new ], [ %i.da, %.critedge.thread.i50.us ] ; 5 uses
  %.040193.us = phi i64 [ %.040193.us.unr, %.critedge.thread.i50.us.preheader.new ], [ %i.de, %.critedge.thread.i50.us ] ; 3 uses
  %i.cj = sub nuw i64 %i.an, %.040193.us          ; 3 uses
  %i.ck = icmp ne ptr %i.bk, %i.ci
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !100, !noalias !4713
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0164.0, i64 %i.cj
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !100
  %.neg317 = xor i64 %.040193.us, -1
  %i.cp = icmp ne ptr %i.bk, %i.cl
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds i8, ptr %i.ci, i64 -16 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !100, !noalias !4713
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr [8 x i8], ptr %i.ch, i64 %.neg317
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !100
  %i.cu = icmp ne ptr %i.bk, %i.cq
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds i8, ptr %i.ci, i64 -24 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !100, !noalias !4713
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = getelementptr [8 x i8], ptr %.sroa.0164.0, i64 %i.cj
  %30 = getelementptr i8, ptr %i.cy, i64 -16
  store ptr %i.cx, ptr %30, align 8, !tbaa !100
  %i.cz = icmp ne ptr %i.bk, %i.cv
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds i8, ptr %i.ci, i64 -32 ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !100, !noalias !4713
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr [8 x i8], ptr %.sroa.0164.0, i64 %i.cj
  %31 = getelementptr i8, ptr %i.dd, i64 -24
  store ptr %i.dc, ptr %31, align 8, !tbaa !100
  %i.de = add nuw i64 %.040193.us, 4              ; 2 uses
  %exitcond216.not.3 = icmp eq i64 %i.de, %i.an
  br i1 %exitcond216.not.3, label %._crit_edge, label %.critedge.thread.i50.us, !llvm.loop !4620

.lr.ph.split:                                     ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %i.an, 12
  br i1 %min.iters.check, label %.critedge.i48.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split
  %i.df = add i64 %i.am, %.sroa.0164.0238
  %i.dg = sub i64 %.promoted237, %i.df
  %i.dh = add i64 %i.dg, -9
  %diff.check = icmp ult i64 %i.dh, 31
  br i1 %diff.check, label %.critedge.i48.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, -4                      ; 4 uses
  %i.di = mul i64 %n.vec, -8
  %i.dj = getelementptr i8, ptr %.promoted, i64 %i.di ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dk = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.dk ; 2 uses
  %i.dl = sub nuw i64 %i.an, %index
  %i.dm = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dn = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <2 x i64>, ptr %i.dm, align 8, !tbaa !100, !noalias !4713
  %wide.load239 = load <2 x i64>, ptr %i.dn, align 8, !tbaa !100, !noalias !4713
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0164.0, i64 %i.dl ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -8
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -24
  %reverse241 = inttoptr <2 x i64> %wide.load to <2 x ptr>
  %reverse242 = inttoptr <2 x i64> %wide.load239 to <2 x ptr>
  store <2 x ptr> %reverse241, ptr %i.dp, align 8, !tbaa !100
  store <2 x ptr> %reverse242, ptr %i.dq, align 8, !tbaa !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !4621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.critedge.i48.preheader

.critedge.i48.preheader:                          ; preds = %vector.memcheck, %.lr.ph.split, %middle.block
  %.ph310 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph.split ], [ %i.dj, %middle.block ] ; 2 uses
  %.040193.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i48.prol.loopexit, label %.critedge.i48.prol

.critedge.i48.prol:                               ; preds = %.critedge.i48.preheader, %.critedge.i48.prol
  %i.ds = phi ptr [ %i.du, %.critedge.i48.prol ], [ %.ph310, %.critedge.i48.preheader ]
  %.040193.prol = phi i64 [ %i.dy, %.critedge.i48.prol ], [ %.040193.ph, %.critedge.i48.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.critedge.i48.prol ], [ 0, %.critedge.i48.preheader ]
  %i.dt = sub nuw i64 %i.an, %.040193.prol
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 4 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !100, !noalias !4713
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0164.0, i64 %i.dt
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !100
  %i.dy = add nuw i64 %.040193.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.critedge.i48.prol.loopexit, label %.critedge.i48.prol, !llvm.loop !4622

.critedge.i48.prol.loopexit:                      ; preds = %.critedge.i48.prol, %.critedge.i48.preheader
  %.lcssa312.unr = phi ptr [ poison, %.critedge.i48.preheader ], [ %i.du, %.critedge.i48.prol ]
  %.unr = phi ptr [ %.ph310, %.critedge.i48.preheader ], [ %i.du, %.critedge.i48.prol ]
  %.040193.unr = phi i64 [ %.040193.ph, %.critedge.i48.preheader ], [ %i.dy, %.critedge.i48.prol ]
  %i.dz = sub nsw i64 %.040193.ph, %i.an
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %._crit_edge, label %.critedge.i48.preheader.new

.critedge.i48.preheader.new:                      ; preds = %.critedge.i48.prol.loopexit
  %i.eb = getelementptr i8, ptr %.sroa.0164.0, i64 %i.am
  br label %.critedge.i48

._crit_edge:                                      ; preds = %.critedge.i48.prol.loopexit, %.critedge.i48, %.critedge.thread.i50.us.prol.loopexit, %.critedge.thread.i50.us, %middle.block, %middle.block259
  %.us-phi = phi ptr [ %i.da, %.critedge.thread.i50.us ], [ %i.bp, %middle.block259 ], [ %i.dj, %middle.block ], [ %.lcssa309.unr, %.critedge.thread.i50.us.prol.loopexit ], [ %.lcssa312.unr, %.critedge.i48.prol.loopexit ], [ %i.hh, %.critedge.i48 ]
  store ptr %.us-phi, ptr %i.t, align 8, !tbaa !232, !noalias !4713
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit
  %i.ec = icmp ugt i64 %i.ay, 1152921504606846975
  br i1 %i.ec, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.ay, 0                    ; 4 uses
  br i1 %.not, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.f
  %i.ed = shl nuw nsw i64 %i.ay, 3
  %i.ee = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #20 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ay
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.sroa.20.2 = phi ptr [ %i.ef, %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.f ] ; 6 uses
  %.sroa.12.1 = phi ptr [ %i.ee, %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.f ] ; 8 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 27 uses
  %i.eh = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.ei = tail call ptr @LLVMPointerType(ptr noundef %i.af, i32 noundef 0) #17, !noalias !4714
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ej = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 104
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !71 ; 3 uses
  store i64 %i.el, ptr %9, align 8, !tbaa !71
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.el, ptr %i.em, align 8, !tbaa !71
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.el, ptr %i.en, align 8, !tbaa !71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4715)
  %i.eo = call ptr @LLVMFunctionType(ptr noundef %i.ei, ptr noundef nonnull %9, i32 noundef 3, i32 noundef 0) #17, !noalias !4715
  store ptr %i.eo, ptr %8, align 8, !tbaa !70, !alias.scope !4715
  call void @_ZN8WasmEdge4LLVM8Compiler14CompileContext12getIntrinsicERNS0_7BuilderENS_10Executable10IntrinsicsENS0_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.WasmEdge::LLVM::FunctionCallee") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %i.eg, i32 noundef 36, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !4716)
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !4717
  %i.eq = call ptr @LLVMInt32TypeInContext(ptr noundef %i.ep) #17, !noalias !4717
  %i.er = zext i32 %1 to i64                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4718)
  %i.es = call ptr @LLVMConstInt(ptr noundef %i.eq, i64 noundef %i.er, i32 noundef 0) #17, !noalias !4719
  store ptr %i.es, ptr %10, align 8, !tbaa !99, !alias.scope !4719
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4720)
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !4721
  %i.ev = call ptr @LLVMInt32TypeInContext(ptr noundef %i.eu) #17, !noalias !4721
  call void @llvm.experimental.noalias.scope.decl(metadata !4722)
  %i.ew = call ptr @LLVMConstInt(ptr noundef %i.ev, i64 noundef %i.y, i32 noundef 0) #17, !noalias !4723
  store ptr %i.ew, ptr %i.et, align 8, !tbaa !99, !alias.scope !4723
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.v, ptr %i.ex, align 8, !tbaa !100
  %i.ey = load ptr, ptr %i.eg, align 8, !tbaa !108, !noalias !4724
  %i.ez = load ptr, ptr %7, align 8, !tbaa !71, !noalias !4724
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !100, !noalias !4724
  %i.fc = call ptr @LLVMBuildCall2(ptr noundef %i.ey, ptr noundef %i.ez, ptr noundef %i.fb, ptr noundef nonnull %10, i32 noundef 3, ptr noundef nonnull @.str.13) #17, !noalias !4724 ; 3 uses
  %i.fd = load ptr, ptr %i.eg, align 8, !tbaa !108, !noalias !4724
  %i.fe = call ptr @LLVMGetInsertBlock(ptr noundef %i.fd) #17, !noalias !4724
  %i.ff = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.fe) #17, !noalias !4724
  %i.fg = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.ff) #17, !noalias !4724
  %i.fh = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.fg) #17, !noalias !4724
  %i.fi = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !4724
  %i.fj = call ptr @LLVMCreateEnumAttribute(ptr noundef %i.fh, i32 noundef %i.fi, i64 noundef 0) #17, !noalias !4724
  call void @LLVMAddCallSiteAttribute(ptr noundef %i.fc, i32 noundef -1, ptr noundef %i.fj) #17, !noalias !4724
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.fk = load ptr, ptr %i.eg, align 8, !tbaa !108, !noalias !4725
  %i.fl = call ptr @LLVMBuildIsNull(ptr noundef %i.fk, ptr noundef %i.fc, ptr noundef nonnull @.str.13) #17, !noalias !4725
  %i.fm = load ptr, ptr %i.eg, align 8, !tbaa !108, !noalias !4726
  %i.fn = call ptr @LLVMBuildNot(ptr noundef %i.fm, ptr noundef %i.fl, ptr noundef nonnull @.str.13) #17, !noalias !4726
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.fo = load ptr, ptr %i.eg, align 8, !tbaa !108, !noalias !4727
  %i.fp = call ptr @LLVMGetInsertBlock(ptr noundef %i.fo) #17, !noalias !4727
  %i.fq = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.fp) #17, !noalias !4727
  %i.fr = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.fq) #17, !noalias !4727
  %i.fs = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.fr) #17, !noalias !4727
  %i.ft = call ptr @LLVMInt1TypeInContext(ptr noundef %i.fs) #17, !noalias !4727 ; 2 uses
  %i.fu = load i32, ptr @_ZN8WasmEdge4LLVM4Core6ExpectE, align 4, !tbaa !63, !noalias !4727
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !4727
  %i.fv = ptrtoint ptr %i.ft to i64
  store i64 %i.fv, ptr %3, align 8, !tbaa !71, !noalias !4727
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !4727
  %i.fw = ptrtoint ptr %i.fn to i64
  store i64 %i.fw, ptr %5, align 8, !tbaa !100, !noalias !4727
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4728)
  %i.fy = call ptr @LLVMConstInt(ptr noundef %i.ft, i64 noundef 1, i32 noundef 0) #17, !noalias !4729
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !99, !alias.scope !4728, !noalias !4727
  store ptr %5, ptr %4, align 8, !tbaa !234, !noalias !4727
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.fz, align 8, !tbaa !235, !noalias !4727
  call void @_ZN8WasmEdge4LLVM7Builder15createIntrinsicEjN5cxx204spanIKNS0_4TypeELm18446744073709551615EEENS3_IKNS0_5ValueELm18446744073709551615EEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.eg, i32 noundef %i.fu, ptr nonnull %3, i64 1, ptr noundef nonnull byval(%"struct.cxx20::span.146") align 8 %4, ptr noundef nonnull @.str.13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !4727
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !4727
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ga = ptrtoint ptr %i.g to i64
  %i.gb = ptrtoint ptr %i.k to i64
  %i.gc = load ptr, ptr %i.eg, align 8, !tbaa !108, !noalias !4730
  %i.gd = load ptr, ptr %11, align 8, !tbaa !100, !noalias !4730
  %i.ge = call ptr @LLVMBuildCondBr(ptr noundef %i.gc, ptr noundef %i.gd, ptr noundef %i.g, ptr noundef %i.k) #17, !noalias !4730 ; 0 uses
  %i.gf = load ptr, ptr %i.eg, align 8, !tbaa !108
  call void @LLVMPositionBuilderAtEnd(ptr noundef %i.gf, ptr noundef %i.g) #17
  %i.gg = ptrtoint ptr %.sroa.0164.0 to i64       ; 2 uses
  %i.gh = sub i64 %.0.lcssa.i.i.i.i.i.i, %i.gg
  %i.gi = lshr exact i64 %i.gh, 3
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = load ptr, ptr %i.eg, align 8, !tbaa !108, !noalias !4731
  %i.gl = call ptr @LLVMBuildCall2(ptr noundef %i.gk, ptr noundef %i.af, ptr noundef %i.fc, ptr noundef nonnull %.sroa.0164.0, i32 noundef %i.gj, ptr noundef nonnull @.str.13) #17, !noalias !4731 ; 4 uses
  %i.gm = load ptr, ptr %i.eg, align 8, !tbaa !108, !noalias !4731
  %i.gn = call ptr @LLVMGetInsertBlock(ptr noundef %i.gm) #17, !noalias !4731
  %i.go = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.gn) #17, !noalias !4731
  %i.gp = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.go) #17, !noalias !4731
  %i.gq = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.gp) #17, !noalias !4731
  %i.gr = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !4731
  %i.gs = call ptr @LLVMCreateEnumAttribute(ptr noundef %i.gq, i32 noundef %i.gr, i64 noundef 0) #17, !noalias !4731
  call void @LLVMAddCallSiteAttribute(ptr noundef %i.gl, i32 noundef -1, ptr noundef %i.gs) #17, !noalias !4731
  br i1 %.not, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit, label %bb.g

.critedge.i48:                                    ; preds = %.critedge.i48, %.critedge.i48.preheader.new
  %i.gt = phi ptr [ %.unr, %.critedge.i48.preheader.new ], [ %i.hh, %.critedge.i48 ] ; 4 uses
  %.040193 = phi i64 [ %.040193.unr, %.critedge.i48.preheader.new ], [ %i.hl, %.critedge.i48 ] ; 3 uses
  %i.gu = sub nuw i64 %i.an, %.040193             ; 3 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 -8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !100, !noalias !4713
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0164.0, i64 %i.gu
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !100
  %.neg = xor i64 %.040193, -1
  %i.gz = getelementptr inbounds i8, ptr %i.gt, i64 -16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !100, !noalias !4713
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = getelementptr [8 x i8], ptr %i.eb, i64 %.neg
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !100
  %i.hd = getelementptr inbounds i8, ptr %i.gt, i64 -24
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !100, !noalias !4713
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = getelementptr [8 x i8], ptr %.sroa.0164.0, i64 %i.gu
  %32 = getelementptr i8, ptr %i.hg, i64 -16
  store ptr %i.hf, ptr %32, align 8, !tbaa !100
  %i.hh = getelementptr inbounds i8, ptr %i.gt, i64 -32 ; 3 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !100, !noalias !4713
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = getelementptr [8 x i8], ptr %.sroa.0164.0, i64 %i.gu
  %33 = getelementptr i8, ptr %i.hk, i64 -24
  store ptr %i.hj, ptr %33, align 8, !tbaa !100
  %i.hl = add nuw i64 %.040193, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.hl, %i.an
  br i1 %exitcond.not.3, label %._crit_edge, label %.critedge.i48, !llvm.loop !4653

bb.g:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit
  %i.hm = icmp eq i64 %i.ay, 1
  br i1 %i.hm, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr %.sroa.12.1, %.sroa.20.2
  br i1 %.not.i, label %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hn = ptrtoint ptr %i.gl to i64
  store i64 %i.hn, ptr %.sroa.12.1, align 8, !tbaa !100
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit

_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ho = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20 ; 3 uses
  %i.hp = ptrtoint ptr %i.gl to i64
  store i64 %i.hp, ptr %i.ho, align 8, !tbaa !100
  %.not.i23.i.i = icmp eq ptr %.sroa.20.2, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.12.1, i64 noundef 0) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.hr = ptrtoint ptr %i.gl to i64
  store i64 %i.hr, ptr %13, align 8, !tbaa !100
  call fastcc void @_ZN12_GLOBAL__N_112unpackStructERN8WasmEdge4LLVM7BuilderENS1_5ValueE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %13) #17
  %i.hs = load ptr, ptr %12, align 8, !tbaa !232  ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !232 ; 2 uses
  %.not188195 = icmp eq ptr %i.hs, %i.hu
  br i1 %.not188195, label %._crit_edge202, label %.lr.ph201

._crit_edge202.loopexit:                          ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit66
  %.pre = load ptr, ptr %12, align 8, !tbaa !142
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %._crit_edge202.loopexit, %bb.k
  %i.hv = phi ptr [ %i.hs, %bb.k ], [ %.pre, %._crit_edge202.loopexit ] ; 3 uses
  %.sroa.20.0.lcssa = phi ptr [ %.sroa.20.2, %bb.k ], [ %.sroa.20.4, %._crit_edge202.loopexit ]
  %.sroa.0149.0.lcssa = phi ptr [ %.sroa.12.1, %bb.k ], [ %.sroa.0149.4, %._crit_edge202.loopexit ]
  %.not.i.i.i52 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge202
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !141
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.ia) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit: ; preds = %._crit_edge202, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit

.lr.ph201:                                        ; preds = %bb.k, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit66
  %.sroa.0149.0199 = phi ptr [ %.sroa.0149.4, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit66 ], [ %.sroa.12.1, %bb.k ] ; 11 uses
  %.sroa.12.0198 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit66 ], [ %.sroa.12.1, %bb.k ] ; 6 uses
  %.sroa.20.0197 = phi ptr [ %.sroa.20.4, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit66 ], [ %.sroa.20.2, %bb.k ] ; 2 uses
  %.sroa.0123.0196 = phi ptr [ %i.jg, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit66 ], [ %i.hs, %bb.k ] ; 2 uses
  %i.ib = load i64, ptr %.sroa.0123.0196, align 8, !tbaa !100 ; 2 uses
  %.not.i53 = icmp eq ptr %.sroa.12.0198, %.sroa.20.0197
  br i1 %.not.i53, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph201
  store i64 %i.ib, ptr %.sroa.12.0198, align 8, !tbaa !100
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit66

bb.n:                                             ; preds = %.lr.ph201
  %i.ic = ptrtoint ptr %.sroa.12.0198 to i64      ; 3 uses
  %i.id = ptrtoint ptr %.sroa.0149.0199 to i64    ; 3 uses
  %i.ie = sub i64 %i.ic, %i.id                    ; 4 uses
  %i.if = icmp eq i64 %i.ie, 9223372036854775800
  br i1 %i.if, label %bb.o, label %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i54

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i54: ; preds = %bb.n
  %i.ig = ashr exact i64 %i.ie, 3                 ; 3 uses
  %.sroa.speculated.i.i.i55 = call i64 @llvm.umax.i64(i64 %i.ig, i64 1)
  %i.ih = add nsw i64 %.sroa.speculated.i.i.i55, %i.ig ; 2 uses
  %i.ii = icmp ult i64 %i.ih, %i.ig
  %i.ij = call i64 @llvm.umin.i64(i64 %i.ih, i64 1152921504606846975)
  %i.ik = select i1 %i.ii, i64 1152921504606846975, i64 %i.ij ; 3 uses
  %.not.i.i.i56 = icmp ne i64 %i.ik, 0
  call void @llvm.assume(i1 %.not.i.i.i56)
  %i.il = shl nuw nsw i64 %i.ik, 3
  %i.im = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.il) #20 ; 10 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ie
  store i64 %i.ib, ptr %i.in, align 8, !tbaa !100
  %.not10.i.i.i.i.i57 = icmp eq ptr %.sroa.0149.0199, %.sroa.12.0198
  br i1 %.not10.i.i.i.i.i57, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62, label %.lr.ph.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i58.preheader:                     ; preds = %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i54
  %i.io = add i64 %i.ic, -8
  %i.ip = sub i64 %i.io, %i.id                    ; 2 uses
  %i.iq = lshr i64 %i.ip, 3
  %i.ir = add nuw nsw i64 %i.iq, 1                ; 2 uses
  %min.iters.check269 = icmp ult i64 %i.ip, 56
  br i1 %min.iters.check269, label %.lr.ph.i.i.i.i.i58.preheader307, label %vector.memcheck263

vector.memcheck263:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader
  %scevgep264 = getelementptr i8, ptr %i.im, i64 8
  %i.is = add i64 %i.ic, -8
  %i.it = sub i64 %i.is, %i.id
  %i.iu = and i64 %i.it, -8                       ; 2 uses
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.iu
  %scevgep266 = getelementptr i8, ptr %.sroa.0149.0199, i64 8
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %i.iu
  %bound0 = icmp ult ptr %i.im, %scevgep267
  %bound1 = icmp ult ptr %.sroa.0149.0199, %scevgep265
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i58.preheader307, label %vector.ph270

vector.ph270:                                     ; preds = %vector.memcheck263
  %n.vec271 = and i64 %i.ir, 4611686018427387900  ; 3 uses
  %i.iv = shl i64 %n.vec271, 3                    ; 2 uses
  %i.iw = getelementptr i8, ptr %i.im, i64 %i.iv  ; 2 uses
  %i.ix = getelementptr i8, ptr %.sroa.0149.0199, i64 %i.iv
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %i.iy = shl i64 %index273, 3                    ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.im, i64 %i.iy ; 2 uses
  %next.gep275 = getelementptr i8, ptr %.sroa.0149.0199, i64 %i.iy ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4732)
  call void @llvm.experimental.noalias.scope.decl(metadata !4733)
  %i.iz = getelementptr i8, ptr %next.gep275, i64 16 ; 2 uses
  %wide.load276 = load <2 x ptr>, ptr %next.gep275, align 8, !tbaa !100, !alias.scope !4734, !noalias !4732
  %wide.load277 = load <2 x ptr>, ptr %i.iz, align 8, !tbaa !100, !alias.scope !4734, !noalias !4732
  %i.ja = getelementptr i8, ptr %next.gep274, i64 16
  store <2 x ptr> %wide.load276, ptr %next.gep274, align 8, !tbaa !100, !alias.scope !4735, !noalias !4734
  store <2 x ptr> %wide.load277, ptr %i.ja, align 8, !tbaa !100, !alias.scope !4735, !noalias !4734
  store <2 x ptr> splat (ptr null), ptr %next.gep275, align 8, !tbaa !100, !alias.scope !4734, !noalias !4732
  store <2 x ptr> splat (ptr null), ptr %i.iz, align 8, !tbaa !100, !alias.scope !4734, !noalias !4732
  %index.next278 = add nuw i64 %index273, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.jb, label %middle.block279, label %vector.body272, !llvm.loop !4660

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.ir, %n.vec271
  br i1 %cmp.n280, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62, label %.lr.ph.i.i.i.i.i58.preheader307

.lr.ph.i.i.i.i.i58.preheader307:                  ; preds = %vector.memcheck263, %.lr.ph.i.i.i.i.i58.preheader, %middle.block279
  %.012.i.i.i.i.i59.ph = phi ptr [ %i.im, %vector.memcheck263 ], [ %i.im, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.iw, %middle.block279 ]
  %.0911.i.i.i.i.i60.ph = phi ptr [ %.sroa.0149.0199, %vector.memcheck263 ], [ %.sroa.0149.0199, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.ix, %middle.block279 ]
  br label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader307, %.lr.ph.i.i.i.i.i58
  %.012.i.i.i.i.i59 = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i58 ], [ %.012.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i58.preheader307 ] ; 2 uses
  %.0911.i.i.i.i.i60 = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i58 ], [ %.0911.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i58.preheader307 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4732)
  call void @llvm.experimental.noalias.scope.decl(metadata !4733)
  %i.jc = load ptr, ptr %.0911.i.i.i.i.i60, align 8, !tbaa !100, !alias.scope !4733, !noalias !4732
  store ptr %i.jc, ptr %.012.i.i.i.i.i59, align 8, !tbaa !100, !alias.scope !4732, !noalias !4733
  store ptr null, ptr %.0911.i.i.i.i.i60, align 8, !tbaa !100, !alias.scope !4733, !noalias !4732
  %i.jd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i60, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i59, i64 8 ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.jd, %.sroa.12.0198
  br i1 %.not.i.i.i.i.i61, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62, label %.lr.ph.i.i.i.i.i58, !llvm.loop !4661

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62: ; preds = %.lr.ph.i.i.i.i.i58, %middle.block279, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i54
  %.0.lcssa.i.i.i.i.i63 = phi ptr [ %i.im, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i54 ], [ %i.iw, %middle.block279 ], [ %i.je, %.lr.ph.i.i.i.i.i58 ]
  %.not.i23.i.i64 = icmp eq ptr %.sroa.0149.0199, null
  br i1 %.not.i23.i.i64, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0149.0199, i64 noundef %i.ie) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65: ; preds = %bb.p, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ik
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit66

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit66: ; preds = %bb.m, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65
  %.sroa.20.4 = phi ptr [ %i.jf, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65 ], [ %.sroa.20.0197, %bb.m ] ; 2 uses
  %.0.lcssa.i.i.i.i.i63.pn = phi ptr [ %.0.lcssa.i.i.i.i.i63, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65 ], [ %.sroa.12.0198, %bb.m ]
  %.sroa.0149.4 = phi ptr [ %i.im, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65 ], [ %.sroa.0149.0199, %bb.m ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i63.pn, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0123.0196, i64 8 ; 2 uses
  %.not188 = icmp eq ptr %i.jg, %i.hu
  br i1 %.not188, label %._crit_edge202.loopexit, label %.lr.ph201

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.i, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit
  %.sroa.20.1 = phi ptr [ %.sroa.20.2, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit ], [ %.sroa.20.0.lcssa, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit ], [ %i.hq, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.20.2, %bb.i ]
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_116FunctionCompiler21compileIndirectCallOpEjj:_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit
  store i64 %i.ga, ptr %27, align 8, !tbaa !212
  call void @LLVMAddIncoming(ptr noundef %i.mr, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1) #17
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0109.0, i64 %i.mm
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !100
  store i64 %i.mu, ptr %28, align 8, !tbaa !100
  store i64 %i.gb, ptr %29, align 8, !tbaa !212
  call void @LLVMAddIncoming(ptr noundef %i.mr, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 1) #17
  %i.mv = ptrtoint ptr %i.mr to i64               ; 2 uses
  %i.mw = load ptr, ptr %i.t, align 8, !tbaa !143 ; 6 uses
  %i.mx = load ptr, ptr %i.me, align 8, !tbaa !141
  %.not.i.i76 = icmp eq ptr %i.mw, %i.mx
  br i1 %.not.i.i76, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %i.mv, ptr %i.mw, align 8, !tbaa !100
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.my, ptr %i.t, align 8, !tbaa !143
  br label %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit

bb.v:                                             ; preds = %bb.t
  %i.mz = load ptr, ptr %i.r, align 8, !tbaa !142 ; 10 uses
  %i.na = ptrtoint ptr %i.mw to i64               ; 3 uses
  %i.nb = ptrtoint ptr %i.mz to i64               ; 3 uses
  %i.nc = sub i64 %i.na, %i.nb                    ; 4 uses
  %i.nd = icmp eq i64 %i.nc, 9223372036854775800
  br i1 %i.nd, label %bb.w, label %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.ne = ashr exact i64 %i.nc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ne, i64 1)
  %i.nf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ne ; 2 uses
  %i.ng = icmp ult i64 %i.nf, %i.ne
  %i.nh = call i64 @llvm.umin.i64(i64 %i.nf, i64 1152921504606846975)
  %i.ni = select i1 %i.ng, i64 1152921504606846975, i64 %i.nh ; 3 uses
  %.not.i.i.i.i77 = icmp ne i64 %i.ni, 0
  call void @llvm.assume(i1 %.not.i.i.i.i77)
  %i.nj = shl nuw nsw i64 %i.ni, 3
  %i.nk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nj) #20 ; 10 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nc
  store i64 %i.mv, ptr %i.nl, align 8, !tbaa !100
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.mz, %i.mw
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i78.preheader

.lr.ph.i.i.i.i.i.i78.preheader:                   ; preds = %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nm = add i64 %i.na, -8
  %i.nn = sub i64 %i.nm, %i.nb                    ; 2 uses
  %i.no = lshr i64 %i.nn, 3
  %i.np = add nuw nsw i64 %i.no, 1                ; 2 uses
  %min.iters.check292 = icmp ult i64 %i.nn, 56
  br i1 %min.iters.check292, label %.lr.ph.i.i.i.i.i.i78.preheader306, label %vector.memcheck283

vector.memcheck283:                               ; preds = %.lr.ph.i.i.i.i.i.i78.preheader
  %scevgep284 = getelementptr i8, ptr %i.nk, i64 8
  %i.nq = add i64 %i.na, -8
  %i.nr = sub i64 %i.nq, %i.nb
  %i.ns = and i64 %i.nr, -8                       ; 2 uses
  %scevgep285 = getelementptr i8, ptr %scevgep284, i64 %i.ns
  %scevgep286 = getelementptr i8, ptr %i.mz, i64 8
  %scevgep287 = getelementptr i8, ptr %scevgep286, i64 %i.ns
  %bound0288 = icmp ult ptr %i.nk, %scevgep287
  %bound1289 = icmp ult ptr %i.mz, %scevgep285
  %found.conflict290 = and i1 %bound0288, %bound1289
  br i1 %found.conflict290, label %.lr.ph.i.i.i.i.i.i78.preheader306, label %vector.ph293

vector.ph293:                                     ; preds = %vector.memcheck283
  %n.vec294 = and i64 %i.np, 4611686018427387900  ; 3 uses
  %i.nt = shl i64 %n.vec294, 3                    ; 2 uses
  %i.nu = getelementptr i8, ptr %i.nk, i64 %i.nt  ; 2 uses
  %i.nv = getelementptr i8, ptr %i.mz, i64 %i.nt
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next301, %vector.body295 ] ; 2 uses
  %i.nw = shl i64 %index296, 3                    ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.nk, i64 %i.nw ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.mz, i64 %i.nw ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4755)
  call void @llvm.experimental.noalias.scope.decl(metadata !4756)
  %i.nx = getelementptr i8, ptr %next.gep298, i64 16 ; 2 uses
  %wide.load299 = load <2 x ptr>, ptr %next.gep298, align 8, !tbaa !100, !alias.scope !4757, !noalias !4755
  %wide.load300 = load <2 x ptr>, ptr %i.nx, align 8, !tbaa !100, !alias.scope !4757, !noalias !4755
  %i.ny = getelementptr i8, ptr %next.gep297, i64 16
  store <2 x ptr> %wide.load299, ptr %next.gep297, align 8, !tbaa !100, !alias.scope !4758, !noalias !4757
  store <2 x ptr> %wide.load300, ptr %i.ny, align 8, !tbaa !100, !alias.scope !4758, !noalias !4757
  store <2 x ptr> splat (ptr null), ptr %next.gep298, align 8, !tbaa !100, !alias.scope !4757, !noalias !4755
  store <2 x ptr> splat (ptr null), ptr %i.nx, align 8, !tbaa !100, !alias.scope !4757, !noalias !4755
  %index.next301 = add nuw i64 %index296, 4       ; 2 uses
  %i.nz = icmp eq i64 %index.next301, %n.vec294
  br i1 %i.nz, label %middle.block302, label %vector.body295, !llvm.loop !4704

middle.block302:                                  ; preds = %vector.body295
  %cmp.n303 = icmp eq i64 %i.np, %n.vec294
  br i1 %cmp.n303, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i78.preheader306

.lr.ph.i.i.i.i.i.i78.preheader306:                ; preds = %vector.memcheck283, %.lr.ph.i.i.i.i.i.i78.preheader, %middle.block302
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.nk, %vector.memcheck283 ], [ %i.nk, %.lr.ph.i.i.i.i.i.i78.preheader ], [ %i.nu, %middle.block302 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.mz, %vector.memcheck283 ], [ %i.mz, %.lr.ph.i.i.i.i.i.i78.preheader ], [ %i.nv, %middle.block302 ]
  br label %.lr.ph.i.i.i.i.i.i78

.lr.ph.i.i.i.i.i.i78:                             ; preds = %.lr.ph.i.i.i.i.i.i78.preheader306, %.lr.ph.i.i.i.i.i.i78
  %.012.i.i.i.i.i.i = phi ptr [ %i.oc, %.lr.ph.i.i.i.i.i.i78 ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i78.preheader306 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ob, %.lr.ph.i.i.i.i.i.i78 ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i78.preheader306 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4755)
  call void @llvm.experimental.noalias.scope.decl(metadata !4756)
  %i.oa = load ptr, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !4756, !noalias !4755
  store ptr %i.oa, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !4755, !noalias !4756
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !4756, !noalias !4755
  %i.ob = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i79 = icmp eq ptr %i.ob, %i.mw
  br i1 %.not.i.i.i.i.i.i79, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i78, !llvm.loop !4705

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i78, %middle.block302, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i80 = phi ptr [ %i.nk, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.nu, %middle.block302 ], [ %i.oc, %.lr.ph.i.i.i.i.i.i78 ]
  %i.od = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i80, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef %i.nc) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.nk, ptr %i.r, align 8, !tbaa !142
  store ptr %i.od, ptr %i.t, align 8, !tbaa !143
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.ni
  store ptr %i.oe, ptr %i.me, align 8, !tbaa !141
  br label %_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit

_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE.exit: ; preds = %bb.u, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.of = add i32 %.0204, 1                       ; 2 uses
  %i.og = zext i32 %i.of to i64                   ; 2 uses
  %i.oh = icmp ugt i64 %i.ay, %i.og
  br i1 %i.oh, label %bb.t, label %._crit_edge207.thread, !llvm.loop !4706
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler19compileReturnCallOpEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.d = zext i32 %1 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !164
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !63
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !139
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !157  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !160
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !161
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = add nsw i64 %i.u, 1                      ; 4 uses
  %i.w = icmp ugt i64 %i.v, 1152921504606846975
  br i1 %i.w, label %bb.b, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #18
  unreachable

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.x = shl nuw nsw i64 %i.v, 3                  ; 3 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #20 ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.y, i8 0, i64 %i.x, i1 false), !tbaa !99
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.y, i64 %i.x
  %i.aa = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.022.0 = phi ptr [ %i.y, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 17 uses
  %.sink.i = phi i64 [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.sroa.022.036 = ptrtoaddr ptr %.sroa.022.0 to i64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !99, !noalias !4777
  %i.ae = tail call ptr @LLVMGetFirstParam(ptr noundef %i.ad) #17, !noalias !4777
  store ptr %i.ae, ptr %.sroa.022.0, align 8, !tbaa !100
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !160 ; 2 uses
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !161 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 18 uses
  %.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val4.i = load ptr, ptr %i.al, align 8, !tbaa !219, !noalias !4778
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val5.i = load ptr, ptr %i.am, align 8, !tbaa !219, !noalias !4778
  %i.an = icmp eq ptr %.val4.i, %.val5.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.promoted = load ptr, ptr %i.ao, align 8       ; 9 uses
  %.promoted35 = ptrtoaddr ptr %.promoted to i64  ; 2 uses
  br i1 %i.an, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !232, !noalias !4778 ; 5 uses
  %min.iters.check45 = icmp ult i64 %i.ak, 10
  br i1 %min.iters.check45, label %.critedge.thread.i.us.preheader, label %vector.memcheck42

vector.memcheck42:                                ; preds = %.lr.ph.split.us
  %i.ar = add i64 %i.aj, %.sroa.022.036
  %i.as = sub i64 %.promoted35, %i.ar
  %i.at = add i64 %i.as, -9
  %diff.check43 = icmp ult i64 %i.at, 31
  br i1 %diff.check43, label %.critedge.thread.i.us.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %vector.memcheck42
  %n.vec47 = and i64 %i.ak, -4                    ; 4 uses
  %i.au = mul i64 %n.vec47, -8
  %i.av = getelementptr i8, ptr %.promoted, i64 %i.au ; 2 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next56, %vector.body48 ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted, %vector.ph46 ], [ %ptr.ind, %vector.body48 ] ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %pointer.phi, i64 -16
  %i.ax = getelementptr inbounds i8, ptr %pointer.phi, i64 -32
  %wide.load50 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !100, !noalias !4778
  %wide.load51 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !100, !noalias !4778
  %i.ay = sub nuw i64 %i.ak, %index49
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -24
  %reverse54 = inttoptr <2 x i64> %wide.load50 to <2 x ptr>
  %reverse55 = inttoptr <2 x i64> %wide.load51 to <2 x ptr>
  store <2 x ptr> %reverse54, ptr %i.ba, align 8, !tbaa !100
  store <2 x ptr> %reverse55, ptr %i.bb, align 8, !tbaa !100
  %index.next56 = add nuw i64 %index49, 4         ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -32
  %i.bc = icmp eq i64 %index.next56, %n.vec47
  br i1 %i.bc, label %middle.block57, label %vector.body48, !llvm.loop !4763

middle.block57:                                   ; preds = %vector.body48
  %cmp.n58 = icmp eq i64 %i.ak, %n.vec47
  br i1 %cmp.n58, label %._crit_edge, label %.critedge.thread.i.us.preheader

.critedge.thread.i.us.preheader:                  ; preds = %vector.memcheck42, %.lr.ph.split.us, %middle.block57
  %.ph = phi ptr [ %.promoted, %vector.memcheck42 ], [ %.promoted, %.lr.ph.split.us ], [ %i.av, %middle.block57 ] ; 2 uses
  %.026.us.ph = phi i64 [ 0, %vector.memcheck42 ], [ 0, %.lr.ph.split.us ], [ %n.vec47, %middle.block57 ] ; 3 uses
  %xtraiter64 = and i64 %i.ak, 3                  ; 2 uses
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.critedge.thread.i.us.prol.loopexit, label %.critedge.thread.i.us.prol

.critedge.thread.i.us.prol:                       ; preds = %.critedge.thread.i.us.preheader, %.critedge.thread.i.us.prol
  %i.bd = phi ptr [ %i.bf, %.critedge.thread.i.us.prol ], [ %.ph, %.critedge.thread.i.us.preheader ] ; 2 uses
  %.026.us.prol = phi i64 [ %i.bk, %.critedge.thread.i.us.prol ], [ %.026.us.ph, %.critedge.thread.i.us.preheader ] ; 2 uses
  %prol.iter66 = phi i64 [ %prol.iter66.next, %.critedge.thread.i.us.prol ], [ 0, %.critedge.thread.i.us.preheader ]
  %i.be = icmp ne ptr %i.aq, %i.bd
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !100, !noalias !4778
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = sub nuw i64 %i.ak, %.026.us.prol
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0, i64 %i.bi
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !100
  %i.bk = add nuw i64 %.026.us.prol, 1            ; 2 uses
  %prol.iter66.next = add i64 %prol.iter66, 1     ; 2 uses
  %prol.iter66.cmp.not = icmp eq i64 %prol.iter66.next, %xtraiter64
  br i1 %prol.iter66.cmp.not, label %.critedge.thread.i.us.prol.loopexit, label %.critedge.thread.i.us.prol, !llvm.loop !4764

.critedge.thread.i.us.prol.loopexit:              ; preds = %.critedge.thread.i.us.prol, %.critedge.thread.i.us.preheader
  %.lcssa.unr = phi ptr [ poison, %.critedge.thread.i.us.preheader ], [ %i.bf, %.critedge.thread.i.us.prol ]
  %.unr67 = phi ptr [ %.ph, %.critedge.thread.i.us.preheader ], [ %i.bf, %.critedge.thread.i.us.prol ]
  %.026.us.unr = phi i64 [ %.026.us.ph, %.critedge.thread.i.us.preheader ], [ %i.bk, %.critedge.thread.i.us.prol ]
  %i.bl = sub nsw i64 %.026.us.ph, %i.ak
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge, label %.critedge.thread.i.us.preheader.new

.critedge.thread.i.us.preheader.new:              ; preds = %.critedge.thread.i.us.prol.loopexit
  %i.bn = getelementptr i8, ptr %.sroa.022.0, i64 %i.aj
  br label %.critedge.thread.i.us

.critedge.thread.i.us:                            ; preds = %.critedge.thread.i.us, %.critedge.thread.i.us.preheader.new
  %i.bo = phi ptr [ %.unr67, %.critedge.thread.i.us.preheader.new ], [ %i.cg, %.critedge.thread.i.us ] ; 5 uses
  %.026.us = phi i64 [ %.026.us.unr, %.critedge.thread.i.us.preheader.new ], [ %i.cj, %.critedge.thread.i.us ] ; 3 uses
  %i.bp = icmp ne ptr %i.aq, %i.bo
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !100, !noalias !4778
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = sub nuw i64 %i.ak, %.026.us             ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0, i64 %i.bt
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !100
  %.neg68 = xor i64 %.026.us, -1
  %i.bv = icmp ne ptr %i.aq, %i.bq
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds i8, ptr %i.bo, i64 -16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !100, !noalias !4778
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr [8 x i8], ptr %i.bn, i64 %.neg68
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !100
  %i.ca = icmp ne ptr %i.aq, %i.bw
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds i8, ptr %i.bo, i64 -24 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !100, !noalias !4778
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr [8 x i8], ptr %.sroa.022.0, i64 %i.bt
  %2 = getelementptr i8, ptr %i.ce, i64 -16
  store ptr %i.cd, ptr %2, align 8, !tbaa !100
  %i.cf = icmp ne ptr %i.aq, %i.cb
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bo, i64 -32 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !100, !noalias !4778
  %i.ci = inttoptr i64 %i.ch to ptr
  %3 = getelementptr [8 x i8], ptr %.sroa.022.0, i64 %i.bt
  %4 = getelementptr i8, ptr %3, i64 -24
  store ptr %i.ci, ptr %4, align 8, !tbaa !100
  %i.cj = add nuw i64 %.026.us, 4                 ; 2 uses
  %exitcond30.not.3 = icmp eq i64 %i.cj, %i.ak
  br i1 %exitcond30.not.3, label %._crit_edge, label %.critedge.thread.i.us, !llvm.loop !4765

.lr.ph.split:                                     ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %i.ak, 12
  br i1 %min.iters.check, label %.critedge.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split
  %i.ck = add i64 %i.aj, %.sroa.022.036
  %i.cl = sub i64 %.promoted35, %i.ck
  %i.cm = add i64 %i.cl, -9
  %diff.check = icmp ult i64 %i.cm, 31
  br i1 %diff.check, label %.critedge.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, -4                      ; 4 uses
  %i.cn = mul i64 %n.vec, -8
  %i.co = getelementptr i8, ptr %.promoted, i64 %i.cn ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <2 x i64>, ptr %i.cq, align 8, !tbaa !100, !noalias !4778
  %wide.load37 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !100, !noalias !4778
  %i.cs = sub nuw i64 %i.ak, %index
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 -24
  %reverse39 = inttoptr <2 x i64> %wide.load to <2 x ptr>
  %reverse40 = inttoptr <2 x i64> %wide.load37 to <2 x ptr>
  store <2 x ptr> %reverse39, ptr %i.cu, align 8, !tbaa !100
  store <2 x ptr> %reverse40, ptr %i.cv, align 8, !tbaa !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !4766

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.critedge.i.preheader

.critedge.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph.split, %middle.block
  %.ph61 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph.split ], [ %i.co, %middle.block ] ; 2 uses
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i.prol.loopexit, label %.critedge.i.prol

.critedge.i.prol:                                 ; preds = %.critedge.i.preheader, %.critedge.i.prol
  %i.cx = phi ptr [ %i.cy, %.critedge.i.prol ], [ %.ph61, %.critedge.i.preheader ]
  %.026.prol = phi i64 [ %i.dd, %.critedge.i.prol ], [ %.026.ph, %.critedge.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.critedge.i.prol ], [ 0, %.critedge.i.preheader ]
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -8 ; 4 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !100, !noalias !4778
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = sub nuw i64 %i.ak, %.026.prol
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0, i64 %i.db
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !100
  %i.dd = add nuw i64 %.026.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.critedge.i.prol.loopexit, label %.critedge.i.prol, !llvm.loop !4767

.critedge.i.prol.loopexit:                        ; preds = %.critedge.i.prol, %.critedge.i.preheader
  %.lcssa63.unr = phi ptr [ poison, %.critedge.i.preheader ], [ %i.cy, %.critedge.i.prol ]
  %.unr = phi ptr [ %.ph61, %.critedge.i.preheader ], [ %i.cy, %.critedge.i.prol ]
  %.026.unr = phi i64 [ %.026.ph, %.critedge.i.preheader ], [ %i.dd, %.critedge.i.prol ]
  %i.de = sub nsw i64 %.026.ph, %i.ak
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge, label %.critedge.i.preheader.new

.critedge.i.preheader.new:                        ; preds = %.critedge.i.prol.loopexit
  %i.dg = getelementptr i8, ptr %.sroa.022.0, i64 %i.aj
  br label %.critedge.i

._crit_edge:                                      ; preds = %.critedge.i.prol.loopexit, %.critedge.i, %.critedge.thread.i.us.prol.loopexit, %.critedge.thread.i.us, %middle.block, %middle.block57
  %.us-phi = phi ptr [ %i.cg, %.critedge.thread.i.us ], [ %i.av, %middle.block57 ], [ %i.co, %middle.block ], [ %.lcssa.unr, %.critedge.thread.i.us.prol.loopexit ], [ %.lcssa63.unr, %.critedge.i.prol.loopexit ], [ %i.en, %.critedge.i ]
  store ptr %.us-phi, ptr %i.ao, align 8, !tbaa !232, !noalias !4778
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.sroa.016.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !71
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.217.0.copyload = load ptr, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !100
  %i.di = ptrtoint ptr %.sroa.022.0 to i64        ; 2 uses
  %i.dj = sub i64 %.0.lcssa.i.i.i.i.i, %i.di
  %i.dk = lshr exact i64 %i.dj, 3
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !108, !noalias !4779
  %i.dn = tail call ptr @LLVMBuildCall2(ptr noundef %i.dm, ptr noundef %.sroa.016.0.copyload, ptr noundef %.sroa.217.0.copyload, ptr noundef nonnull %.sroa.022.0, i32 noundef %i.dl, ptr noundef nonnull @.str.13) #17, !noalias !4779 ; 3 uses
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !108, !noalias !4779
  %i.dp = tail call ptr @LLVMGetInsertBlock(ptr noundef %i.do) #17, !noalias !4779
  %i.dq = tail call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.dp) #17, !noalias !4779
  %i.dr = tail call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.dq) #17, !noalias !4779
  %i.ds = tail call noundef ptr @LLVMGetModuleContext(ptr noundef %i.dr) #17, !noalias !4779
  %i.dt = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !4779
  %i.du = tail call ptr @LLVMCreateEnumAttribute(ptr noundef %i.ds, i32 noundef %i.dt, i64 noundef 0) #17, !noalias !4779
  tail call void @LLVMAddCallSiteAttribute(ptr noundef %i.dn, i32 noundef -1, ptr noundef %i.du) #17, !noalias !4779
  %i.dv = tail call ptr @LLVMTypeOf(ptr noundef %i.dn) #17, !noalias !4780
  %i.dw = tail call i32 @LLVMGetTypeKind(ptr noundef %i.dv) #17
  %i.dx = icmp eq i32 %i.dw, 0
  %i.dy = load ptr, ptr %i.dh, align 8, !tbaa !108, !noalias !50 ; 2 uses
  br i1 %i.dx, label %bb.d, label %bb.e

.critedge.i:                                      ; preds = %.critedge.i, %.critedge.i.preheader.new
  %i.dz = phi ptr [ %.unr, %.critedge.i.preheader.new ], [ %i.en, %.critedge.i ] ; 4 uses
  %.026 = phi i64 [ %.026.unr, %.critedge.i.preheader.new ], [ %i.eq, %.critedge.i ] ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !100, !noalias !4778
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = sub nuw i64 %i.ak, %.026                ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0, i64 %i.ed
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !100
  %.neg = xor i64 %.026, -1
  %i.ef = getelementptr inbounds i8, ptr %i.dz, i64 -16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !100, !noalias !4778
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = getelementptr [8 x i8], ptr %i.dg, i64 %.neg
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !100
  %i.ej = getelementptr inbounds i8, ptr %i.dz, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !100, !noalias !4778
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = getelementptr [8 x i8], ptr %.sroa.022.0, i64 %i.ed
  %5 = getelementptr i8, ptr %i.em, i64 -16
  store ptr %i.el, ptr %5, align 8, !tbaa !100
  %i.en = getelementptr inbounds i8, ptr %i.dz, i64 -32 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !100, !noalias !4778
  %i.ep = inttoptr i64 %i.eo to ptr
  %6 = getelementptr [8 x i8], ptr %.sroa.022.0, i64 %i.ed
  %7 = getelementptr i8, ptr %6, i64 -24
  store ptr %i.ep, ptr %7, align 8, !tbaa !100
  %i.eq = add nuw i64 %.026, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eq, %i.ak
  br i1 %exitcond.not.3, label %._crit_edge, label %.critedge.i, !llvm.loop !4772

bb.d:                                             ; preds = %bb.c
  %i.er = tail call ptr @LLVMBuildRetVoid(ptr noundef %i.dy) #17, !noalias !4781 ; 0 uses
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.es = tail call ptr @LLVMBuildRet(ptr noundef %i.dy, ptr noundef %i.dn) #17, !noalias !4782 ; 0 uses
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d
  %i.et = sub i64 %.sink.i, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.0, i64 noundef %i.et) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler27compileReturnIndirectCallOpEjj(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %3 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %4 = alloca %"struct.cxx20::span.146", align 8  ; 5 uses
  %5 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %6 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 4 uses
  %7 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 3 uses
  %8 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %9 = alloca [3 x %"class.WasmEdge::LLVM::Type"], align 8 ; 6 uses
  %10 = alloca [3 x %"class.WasmEdge::LLVM::Value"], align 8 ; 6 uses
  %11 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %12 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 5 uses
  %13 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 6 uses
  %14 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %15 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %16 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 3 uses
  %17 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %18 = alloca [5 x %"class.WasmEdge::LLVM::Type"], align 8 ; 8 uses
  %19 = alloca [5 x %"class.WasmEdge::LLVM::Value"], align 8 ; 8 uses
  %20 = alloca %"class.std::vector.101", align 8  ; 7 uses
  %21 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %22 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %23 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !52, !noalias !4869
  %i.g = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.f, ptr noundef %i.e, ptr noundef nonnull @.str.124) #17, !noalias !4869 ; 2 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !100
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !52, !noalias !4870
  %i.k = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.j, ptr noundef %i.i, ptr noundef nonnull @.str.125) #17, !noalias !4870 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %.in, align 8, !tbaa !232, !noalias !4871
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !100, !noalias !4871 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !143, !noalias !4871
  %i.s = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 288
  %i.u = zext i32 %2 to i64                       ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !139
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !157  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %.sroa.021.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !71
  call fastcc void @_ZN12_GLOBAL__N_110toLLVMTypeEN8WasmEdge4LLVM7ContextENS1_4TypeERKNS0_3AST12FunctionTypeE(ptr dead_on_unwind noalias writable align 8 %6, ptr %.sroa.021.0.copyload, i64 %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %i.y) #17
  %i.ab = load ptr, ptr %6, align 8, !noalias !4872 ; 3 uses
  %i.ac = tail call ptr @LLVMGetReturnType(ptr noundef %i.ab) #17, !noalias !4872 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !160 ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !161 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = ashr exact i64 %i.ai, 3                 ; 21 uses
  %i.ak = tail call i32 @LLVMGetTypeKind(ptr noundef %i.ac) #17
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !160
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !161
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  br label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit, %bb.a
  %i.au = phi i64 [ %i.at, %bb.a ], [ 0, %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit ] ; 4 uses
  %i.av = add nsw i64 %i.aj, 1                    ; 4 uses
  %i.aw = icmp ugt i64 %i.av, 1152921504606846975
  br i1 %i.aw, label %bb.c, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #18
  unreachable

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.ax = shl nuw nsw i64 %i.av, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #20 ; 4 uses
  %i.az = add i64 %i.ai, 8                        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ay, i8 0, i64 %i.az, i1 false), !tbaa !100
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.av
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.az
  %i.bb = ptrtoint ptr %scevgep to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.bc, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.086.0 = phi ptr [ null, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i.i ] ; 18 uses
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.bb, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.086.0116 = ptrtoaddr ptr %.sroa.086.0 to i64 ; 2 uses
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !99, !noalias !4873
  %i.be = tail call ptr @LLVMGetFirstParam(ptr noundef %i.bd) #17, !noalias !4873
  store ptr %i.be, ptr %.sroa.086.0, align 8, !tbaa !100
  %.not = icmp eq ptr %i.ae, %i.af
  br i1 %.not, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit
  %.val4.i32 = load ptr, ptr %i.l, align 8, !tbaa !219, !noalias !4874
  %.val5.i33 = load ptr, ptr %i.m, align 8, !tbaa !219, !noalias !4874
  %i.bf = icmp eq ptr %.val4.i32, %.val5.i33
  %.promoted = load ptr, ptr %i.p, align 8        ; 9 uses
  %.promoted115 = ptrtoaddr ptr %.promoted to i64 ; 2 uses
  br i1 %i.bf, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !232, !noalias !4874 ; 5 uses
  %min.iters.check125 = icmp ult i64 %i.aj, 10
  br i1 %min.iters.check125, label %.critedge.thread.i36.us.preheader, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.split.us
  %i.bh = add i64 %i.ai, %.sroa.086.0116
  %i.bi = sub i64 %.promoted115, %i.bh
  %i.bj = add i64 %i.bi, -9
  %diff.check123 = icmp ult i64 %i.bj, 31
  br i1 %diff.check123, label %.critedge.thread.i36.us.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck122
  %n.vec127 = and i64 %i.aj, -4                   ; 4 uses
  %i.bk = mul i64 %n.vec127, -8
  %i.bl = getelementptr i8, ptr %.promoted, i64 %i.bk ; 2 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next136, %vector.body128 ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted, %vector.ph126 ], [ %ptr.ind, %vector.body128 ] ; 3 uses
  %i.bm = sub nuw i64 %i.aj, %index129
  %i.bn = getelementptr inbounds i8, ptr %pointer.phi, i64 -16
  %i.bo = getelementptr inbounds i8, ptr %pointer.phi, i64 -32
  %wide.load130 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !100, !noalias !4874
  %wide.load131 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !100, !noalias !4874
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.086.0, i64 %i.bm ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -24
  %reverse134 = inttoptr <2 x i64> %wide.load130 to <2 x ptr>
  %reverse135 = inttoptr <2 x i64> %wide.load131 to <2 x ptr>
  store <2 x ptr> %reverse134, ptr %i.bq, align 8, !tbaa !100
  store <2 x ptr> %reverse135, ptr %i.br, align 8, !tbaa !100
  %index.next136 = add nuw i64 %index129, 4       ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -32
  %i.bs = icmp eq i64 %index.next136, %n.vec127
  br i1 %i.bs, label %middle.block137, label %vector.body128, !llvm.loop !4795

middle.block137:                                  ; preds = %vector.body128
  %cmp.n138 = icmp eq i64 %i.aj, %n.vec127
  br i1 %cmp.n138, label %._crit_edge, label %.critedge.thread.i36.us.preheader

.critedge.thread.i36.us.preheader:                ; preds = %vector.memcheck122, %.lr.ph.split.us, %middle.block137
  %.ph = phi ptr [ %.promoted, %vector.memcheck122 ], [ %.promoted, %.lr.ph.split.us ], [ %i.bl, %middle.block137 ] ; 2 uses
  %.0102.us.ph = phi i64 [ 0, %vector.memcheck122 ], [ 0, %.lr.ph.split.us ], [ %n.vec127, %middle.block137 ] ; 3 uses
  %xtraiter144 = and i64 %i.aj, 3                 ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.critedge.thread.i36.us.prol.loopexit, label %.critedge.thread.i36.us.prol

.critedge.thread.i36.us.prol:                     ; preds = %.critedge.thread.i36.us.preheader, %.critedge.thread.i36.us.prol
  %i.bt = phi ptr [ %i.bw, %.critedge.thread.i36.us.prol ], [ %.ph, %.critedge.thread.i36.us.preheader ] ; 2 uses
  %.0102.us.prol = phi i64 [ %i.ca, %.critedge.thread.i36.us.prol ], [ %.0102.us.ph, %.critedge.thread.i36.us.preheader ] ; 2 uses
  %prol.iter146 = phi i64 [ %prol.iter146.next, %.critedge.thread.i36.us.prol ], [ 0, %.critedge.thread.i36.us.preheader ]
  %i.bu = sub nuw i64 %i.aj, %.0102.us.prol
  %i.bv = icmp ne ptr %i.bg, %i.bt
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 4 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !100, !noalias !4874
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.086.0, i64 %i.bu
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !100
  %i.ca = add nuw i64 %.0102.us.prol, 1           ; 2 uses
  %prol.iter146.next = add i64 %prol.iter146, 1   ; 2 uses
  %prol.iter146.cmp.not = icmp eq i64 %prol.iter146.next, %xtraiter144
  br i1 %prol.iter146.cmp.not, label %.critedge.thread.i36.us.prol.loopexit, label %.critedge.thread.i36.us.prol, !llvm.loop !4796

.critedge.thread.i36.us.prol.loopexit:            ; preds = %.critedge.thread.i36.us.prol, %.critedge.thread.i36.us.preheader
  %.lcssa.unr = phi ptr [ poison, %.critedge.thread.i36.us.preheader ], [ %i.bw, %.critedge.thread.i36.us.prol ]
  %.unr147 = phi ptr [ %.ph, %.critedge.thread.i36.us.preheader ], [ %i.bw, %.critedge.thread.i36.us.prol ]
  %.0102.us.unr = phi i64 [ %.0102.us.ph, %.critedge.thread.i36.us.preheader ], [ %i.ca, %.critedge.thread.i36.us.prol ]
  %i.cb = sub nsw i64 %.0102.us.ph, %i.aj
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %._crit_edge, label %.critedge.thread.i36.us.preheader.new

.critedge.thread.i36.us.preheader.new:            ; preds = %.critedge.thread.i36.us.prol.loopexit
  %i.cd = getelementptr i8, ptr %.sroa.086.0, i64 %i.ai
  br label %.critedge.thread.i36.us

.critedge.thread.i36.us:                          ; preds = %.critedge.thread.i36.us, %.critedge.thread.i36.us.preheader.new
  %i.ce = phi ptr [ %.unr147, %.critedge.thread.i36.us.preheader.new ], [ %i.cw, %.critedge.thread.i36.us ] ; 5 uses
  %.0102.us = phi i64 [ %.0102.us.unr, %.critedge.thread.i36.us.preheader.new ], [ %i.da, %.critedge.thread.i36.us ] ; 3 uses
  %i.cf = sub nuw i64 %i.aj, %.0102.us            ; 3 uses
  %i.cg = icmp ne ptr %i.bg, %i.ce
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 -8 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !100, !noalias !4874
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.086.0, i64 %i.cf
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !100
  %.neg148 = xor i64 %.0102.us, -1
  %i.cl = icmp ne ptr %i.bg, %i.ch
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds i8, ptr %i.ce, i64 -16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !100, !noalias !4874
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = getelementptr [8 x i8], ptr %i.cd, i64 %.neg148
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !100
  %i.cq = icmp ne ptr %i.bg, %i.cm
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds i8, ptr %i.ce, i64 -24 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !100, !noalias !4874
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr [8 x i8], ptr %.sroa.086.0, i64 %i.cf
  %24 = getelementptr i8, ptr %i.cu, i64 -16
  store ptr %i.ct, ptr %24, align 8, !tbaa !100
  %i.cv = icmp ne ptr %i.bg, %i.cr
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds i8, ptr %i.ce, i64 -32 ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !100, !noalias !4874
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr [8 x i8], ptr %.sroa.086.0, i64 %i.cf
  %25 = getelementptr i8, ptr %i.cz, i64 -24
  store ptr %i.cy, ptr %25, align 8, !tbaa !100
  %i.da = add nuw i64 %.0102.us, 4                ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.da, %i.aj
  br i1 %exitcond108.not.3, label %._crit_edge, label %.critedge.thread.i36.us, !llvm.loop !4797

.lr.ph.split:                                     ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %i.aj, 12
  br i1 %min.iters.check, label %.critedge.i34.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split
  %i.db = add i64 %i.ai, %.sroa.086.0116
  %i.dc = sub i64 %.promoted115, %i.db
  %i.dd = add i64 %i.dc, -9
  %diff.check = icmp ult i64 %i.dd, 31
  br i1 %diff.check, label %.critedge.i34.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -4                      ; 4 uses
  %i.de = mul i64 %n.vec, -8
  %i.df = getelementptr i8, ptr %.promoted, i64 %i.de ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.dg ; 2 uses
  %i.dh = sub nuw i64 %i.aj, %index
  %i.di = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dj = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <2 x i64>, ptr %i.di, align 8, !tbaa !100, !noalias !4874
  %wide.load117 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !100, !noalias !4874
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.086.0, i64 %i.dh ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -24
  %reverse119 = inttoptr <2 x i64> %wide.load to <2 x ptr>
  %reverse120 = inttoptr <2 x i64> %wide.load117 to <2 x ptr>
  store <2 x ptr> %reverse119, ptr %i.dl, align 8, !tbaa !100
  store <2 x ptr> %reverse120, ptr %i.dm, align 8, !tbaa !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !4798

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.critedge.i34.preheader

.critedge.i34.preheader:                          ; preds = %vector.memcheck, %.lr.ph.split, %middle.block
  %.ph141 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph.split ], [ %i.df, %middle.block ] ; 2 uses
  %.0102.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i34.prol.loopexit, label %.critedge.i34.prol

.critedge.i34.prol:                               ; preds = %.critedge.i34.preheader, %.critedge.i34.prol
  %i.do = phi ptr [ %i.dq, %.critedge.i34.prol ], [ %.ph141, %.critedge.i34.preheader ]
  %.0102.prol = phi i64 [ %i.du, %.critedge.i34.prol ], [ %.0102.ph, %.critedge.i34.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.critedge.i34.prol ], [ 0, %.critedge.i34.preheader ]
  %i.dp = sub nuw i64 %i.aj, %.0102.prol
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -8 ; 4 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !100, !noalias !4874
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.086.0, i64 %i.dp
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !100
  %i.du = add nuw i64 %.0102.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.critedge.i34.prol.loopexit, label %.critedge.i34.prol, !llvm.loop !4799

.critedge.i34.prol.loopexit:                      ; preds = %.critedge.i34.prol, %.critedge.i34.preheader
  %.lcssa143.unr = phi ptr [ poison, %.critedge.i34.preheader ], [ %i.dq, %.critedge.i34.prol ]
  %.unr = phi ptr [ %.ph141, %.critedge.i34.preheader ], [ %i.dq, %.critedge.i34.prol ]
  %.0102.unr = phi i64 [ %.0102.ph, %.critedge.i34.preheader ], [ %i.du, %.critedge.i34.prol ]
  %i.dv = sub nsw i64 %.0102.ph, %i.aj
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge, label %.critedge.i34.preheader.new

.critedge.i34.preheader.new:                      ; preds = %.critedge.i34.prol.loopexit
  %i.dx = getelementptr i8, ptr %.sroa.086.0, i64 %i.ai
  br label %.critedge.i34

._crit_edge:                                      ; preds = %.critedge.i34.prol.loopexit, %.critedge.i34, %.critedge.thread.i36.us.prol.loopexit, %.critedge.thread.i36.us, %middle.block, %middle.block137
  %.us-phi = phi ptr [ %i.cw, %.critedge.thread.i36.us ], [ %i.bl, %middle.block137 ], [ %i.df, %middle.block ], [ %.lcssa.unr, %.critedge.thread.i36.us.prol.loopexit ], [ %.lcssa143.unr, %.critedge.i34.prol.loopexit ], [ %i.gz, %.critedge.i34 ]
  store ptr %.us-phi, ptr %i.p, align 8, !tbaa !232, !noalias !4874
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 26 uses
  %i.dz = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.ea = tail call ptr @LLVMPointerType(ptr noundef %i.ab, i32 noundef 0) #17, !noalias !4875
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.eb = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 104
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !71 ; 3 uses
  store i64 %i.ed, ptr %9, align 8, !tbaa !71
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !71
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ed, ptr %i.ef, align 8, !tbaa !71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4876)
  %i.eg = call ptr @LLVMFunctionType(ptr noundef %i.ea, ptr noundef nonnull %9, i32 noundef 3, i32 noundef 0) #17, !noalias !4876
  store ptr %i.eg, ptr %8, align 8, !tbaa !70, !alias.scope !4876
  call void @_ZN8WasmEdge4LLVM8Compiler14CompileContext12getIntrinsicERNS0_7BuilderENS_10Executable10IntrinsicsENS0_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.WasmEdge::LLVM::FunctionCallee") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i32 noundef 36, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !4877)
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !4878
  %i.ei = call ptr @LLVMInt32TypeInContext(ptr noundef %i.eh) #17, !noalias !4878
  %i.ej = zext i32 %1 to i64                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4879)
  %i.ek = call ptr @LLVMConstInt(ptr noundef %i.ei, i64 noundef %i.ej, i32 noundef 0) #17, !noalias !4880
  store ptr %i.ek, ptr %10, align 8, !tbaa !99, !alias.scope !4880
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4881)
  %i.em = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !4882
  %i.en = call ptr @LLVMInt32TypeInContext(ptr noundef %i.em) #17, !noalias !4882
  call void @llvm.experimental.noalias.scope.decl(metadata !4883)
  %i.eo = call ptr @LLVMConstInt(ptr noundef %i.en, i64 noundef %i.u, i32 noundef 0) #17, !noalias !4884
  store ptr %i.eo, ptr %i.el, align 8, !tbaa !99, !alias.scope !4884
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.r, ptr %i.ep, align 8, !tbaa !100
  %i.eq = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4885
  %i.er = load ptr, ptr %7, align 8, !tbaa !71, !noalias !4885
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !100, !noalias !4885
  %i.eu = call ptr @LLVMBuildCall2(ptr noundef %i.eq, ptr noundef %i.er, ptr noundef %i.et, ptr noundef nonnull %10, i32 noundef 3, ptr noundef nonnull @.str.13) #17, !noalias !4885 ; 3 uses
  %i.ev = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4885
  %i.ew = call ptr @LLVMGetInsertBlock(ptr noundef %i.ev) #17, !noalias !4885
  %i.ex = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.ew) #17, !noalias !4885
  %i.ey = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.ex) #17, !noalias !4885
  %i.ez = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.ey) #17, !noalias !4885
  %i.fa = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !4885
  %i.fb = call ptr @LLVMCreateEnumAttribute(ptr noundef %i.ez, i32 noundef %i.fa, i64 noundef 0) #17, !noalias !4885
  call void @LLVMAddCallSiteAttribute(ptr noundef %i.eu, i32 noundef -1, ptr noundef %i.fb) #17, !noalias !4885
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.fc = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4886
  %i.fd = call ptr @LLVMBuildIsNull(ptr noundef %i.fc, ptr noundef %i.eu, ptr noundef nonnull @.str.13) #17, !noalias !4886
  %i.fe = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4887
  %i.ff = call ptr @LLVMBuildNot(ptr noundef %i.fe, ptr noundef %i.fd, ptr noundef nonnull @.str.13) #17, !noalias !4887
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.fg = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4888
  %i.fh = call ptr @LLVMGetInsertBlock(ptr noundef %i.fg) #17, !noalias !4888
  %i.fi = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.fh) #17, !noalias !4888
  %i.fj = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.fi) #17, !noalias !4888
  %i.fk = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.fj) #17, !noalias !4888
  %i.fl = call ptr @LLVMInt1TypeInContext(ptr noundef %i.fk) #17, !noalias !4888 ; 2 uses
  %i.fm = load i32, ptr @_ZN8WasmEdge4LLVM4Core6ExpectE, align 4, !tbaa !63, !noalias !4888
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !4888
  %i.fn = ptrtoint ptr %i.fl to i64
  store i64 %i.fn, ptr %3, align 8, !tbaa !71, !noalias !4888
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !4888
  %i.fo = ptrtoint ptr %i.ff to i64
  store i64 %i.fo, ptr %5, align 8, !tbaa !100, !noalias !4888
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4889)
  %i.fq = call ptr @LLVMConstInt(ptr noundef %i.fl, i64 noundef 1, i32 noundef 0) #17, !noalias !4890
  store ptr %i.fq, ptr %i.fp, align 8, !tbaa !99, !alias.scope !4889, !noalias !4888
  store ptr %5, ptr %4, align 8, !tbaa !234, !noalias !4888
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.fr, align 8, !tbaa !235, !noalias !4888
  call void @_ZN8WasmEdge4LLVM7Builder15createIntrinsicEjN5cxx204spanIKNS0_4TypeELm18446744073709551615EEENS3_IKNS0_5ValueELm18446744073709551615EEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i32 noundef %i.fm, ptr nonnull %3, i64 1, ptr noundef nonnull byval(%"struct.cxx20::span.146") align 8 %4, ptr noundef nonnull @.str.13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !4888
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !4888
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fs = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4891
  %i.ft = load ptr, ptr %11, align 8, !tbaa !100, !noalias !4891
  %i.fu = call ptr @LLVMBuildCondBr(ptr noundef %i.fs, ptr noundef %i.ft, ptr noundef %i.g, ptr noundef %i.k) #17, !noalias !4891 ; 0 uses
  %i.fv = load ptr, ptr %i.dy, align 8, !tbaa !108
  call void @LLVMPositionBuilderAtEnd(ptr noundef %i.fv, ptr noundef %i.g) #17
  %i.fw = ptrtoint ptr %.sroa.086.0 to i64        ; 2 uses
  %i.fx = sub i64 %.0.lcssa.i.i.i.i.i.i, %i.fw
  %i.fy = lshr exact i64 %i.fx, 3
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4892
  %i.gb = call ptr @LLVMBuildCall2(ptr noundef %i.ga, ptr noundef %i.ab, ptr noundef %i.eu, ptr noundef nonnull %.sroa.086.0, i32 noundef %i.fz, ptr noundef nonnull @.str.13) #17, !noalias !4892 ; 2 uses
  %i.gc = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4892
  %i.gd = call ptr @LLVMGetInsertBlock(ptr noundef %i.gc) #17, !noalias !4892
  %i.ge = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.gd) #17, !noalias !4892
  %i.gf = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.ge) #17, !noalias !4892
  %i.gg = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.gf) #17, !noalias !4892
  %i.gh = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !4892
  %i.gi = call ptr @LLVMCreateEnumAttribute(ptr noundef %i.gg, i32 noundef %i.gh, i64 noundef 0) #17, !noalias !4892
  call void @LLVMAddCallSiteAttribute(ptr noundef %i.gb, i32 noundef -1, ptr noundef %i.gi) #17, !noalias !4892
  %i.gj = icmp eq i64 %i.au, 0                    ; 2 uses
  %i.gk = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !50 ; 2 uses
  br i1 %i.gj, label %bb.e, label %bb.f

.critedge.i34:                                    ; preds = %.critedge.i34, %.critedge.i34.preheader.new
  %i.gl = phi ptr [ %.unr, %.critedge.i34.preheader.new ], [ %i.gz, %.critedge.i34 ] ; 4 uses
  %.0102 = phi i64 [ %.0102.unr, %.critedge.i34.preheader.new ], [ %i.hd, %.critedge.i34 ] ; 3 uses
  %i.gm = sub nuw i64 %i.aj, %.0102               ; 3 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 -8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !100, !noalias !4874
  %i.gp = inttoptr i64 %i.go to ptr
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.086.0, i64 %i.gm
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !100
  %.neg = xor i64 %.0102, -1
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 -16
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !100, !noalias !4874
  %i.gt = inttoptr i64 %i.gs to ptr
  %i.gu = getelementptr [8 x i8], ptr %i.dx, i64 %.neg
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !100
  %i.gv = getelementptr inbounds i8, ptr %i.gl, i64 -24
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !100, !noalias !4874
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = getelementptr [8 x i8], ptr %.sroa.086.0, i64 %i.gm
  %26 = getelementptr i8, ptr %i.gy, i64 -16
  store ptr %i.gx, ptr %26, align 8, !tbaa !100
  %i.gz = getelementptr inbounds i8, ptr %i.gl, i64 -32 ; 3 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !100, !noalias !4874
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = getelementptr [8 x i8], ptr %.sroa.086.0, i64 %i.gm
  %27 = getelementptr i8, ptr %i.hc, i64 -24
  store ptr %i.hb, ptr %27, align 8, !tbaa !100
  %i.hd = add nuw i64 %.0102, 4                   ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.hd, %i.aj
  br i1 %exitcond.not.3, label %._crit_edge, label %.critedge.i34, !llvm.loop !4830

bb.e:                                             ; preds = %bb.d
  %i.he = call ptr @LLVMBuildRetVoid(ptr noundef %i.gk) #17, !noalias !4893 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.hf = call ptr @LLVMBuildRet(ptr noundef %i.gk, ptr noundef %i.gb) #17, !noalias !4894 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.hg = load ptr, ptr %i.dy, align 8, !tbaa !108
  call void @LLVMPositionBuilderAtEnd(ptr noundef %i.hg, ptr noundef %i.k) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @_ZN8WasmEdge4LLVM7Builder11createArrayEmj(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i64 noundef %i.aj, i32 noundef 16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @_ZN8WasmEdge4LLVM7Builder11createArrayEmj(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i64 noundef %i.au, i32 noundef 16) #17
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.086.0, i64 8
  %i.hi = load i64, ptr %12, align 8, !tbaa !100
  store i64 %i.hi, ptr %14, align 8, !tbaa !100
  %i.hj = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 88
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !71
  store i64 %i.hl, ptr %15, align 8, !tbaa !71
  call void @_ZN8WasmEdge4LLVM7Builder19createArrayPtrStoreEN5cxx204spanIKNS0_5ValueELm18446744073709551615EEES4_NS0_4TypeEjPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr nonnull %i.hh, i64 %i.aj, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %14, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %15, i32 noundef 16, ptr noundef nonnull @.str.13) #17
  %i.hm = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 80
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !71
  %i.hp = inttoptr i64 %i.ho to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 104
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !71 ; 3 uses
  store i64 %i.hr, ptr %18, align 8, !tbaa !71
  %i.hs = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !71
  %i.ht = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %i.hr, ptr %i.ht, align 8, !tbaa !71
  %i.hu = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 200
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !71 ; 2 uses
  store i64 %i.hw, ptr %i.hu, align 8, !tbaa !71
  %i.hx = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !71
  call void @llvm.experimental.noalias.scope.decl(metadata !4895)
  %i.hy = call ptr @LLVMFunctionType(ptr noundef %i.hp, ptr noundef nonnull %18, i32 noundef 5, i32 noundef 0) #17, !noalias !4895
  store ptr %i.hy, ptr %17, align 8, !tbaa !70, !alias.scope !4895
  call void @_ZN8WasmEdge4LLVM8Compiler14CompileContext12getIntrinsicERNS0_7BuilderENS_10Executable10IntrinsicsENS0_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.WasmEdge::LLVM::FunctionCallee") align 8 %16, ptr noundef nonnull align 8 dereferenceable(456) %i.hm, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i32 noundef 2, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !4896)
  %i.hz = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !4897
  %i.ia = call ptr @LLVMInt32TypeInContext(ptr noundef %i.hz) #17, !noalias !4897
  call void @llvm.experimental.noalias.scope.decl(metadata !4898)
  %i.ib = call ptr @LLVMConstInt(ptr noundef %i.ia, i64 noundef %i.ej, i32 noundef 0) #17, !noalias !4899
  store ptr %i.ib, ptr %19, align 8, !tbaa !99, !alias.scope !4899
  %i.ic = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4900)
  %i.id = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !4901
  %i.ie = call ptr @LLVMInt32TypeInContext(ptr noundef %i.id) #17, !noalias !4901
  call void @llvm.experimental.noalias.scope.decl(metadata !4902)
  %i.if = call ptr @LLVMConstInt(ptr noundef %i.ie, i64 noundef %i.u, i32 noundef 0) #17, !noalias !4903
  store ptr %i.if, ptr %i.ic, align 8, !tbaa !99, !alias.scope !4903
  %i.ig = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %i.r, ptr %i.ig, align 8, !tbaa !100
  %i.ih = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ii = load i64, ptr %12, align 8, !tbaa !100
  store i64 %i.ii, ptr %i.ih, align 8, !tbaa !100
  %i.ij = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.ik = load i64, ptr %13, align 8, !tbaa !100
  store i64 %i.ik, ptr %i.ij, align 8, !tbaa !100
  %i.il = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4904
  %i.im = load ptr, ptr %16, align 8, !tbaa !71, !noalias !4904
  %i.in = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !100, !noalias !4904
  %i.ip = call ptr @LLVMBuildCall2(ptr noundef %i.il, ptr noundef %i.im, ptr noundef %i.io, ptr noundef nonnull %19, i32 noundef 5, ptr noundef nonnull @.str.13) #17, !noalias !4904
  %i.iq = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4904
  %i.ir = call ptr @LLVMGetInsertBlock(ptr noundef %i.iq) #17, !noalias !4904
  %i.is = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.ir) #17, !noalias !4904
  %i.it = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.is) #17, !noalias !4904
  %i.iu = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.it) #17, !noalias !4904
  %i.iv = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !4904
  %i.iw = call ptr @LLVMCreateEnumAttribute(ptr noundef %i.iu, i32 noundef %i.iv, i64 noundef 0) #17, !noalias !4904
  call void @LLVMAddCallSiteAttribute(ptr noundef %i.ip, i32 noundef -1, ptr noundef %i.iw) #17, !noalias !4904
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br i1 %i.gj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ix = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4905
  %i.iy = call ptr @LLVMBuildRetVoid(ptr noundef %i.ix) #17, !noalias !4905 ; 0 uses
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit39

bb.i:                                             ; preds = %bb.g
  %i.iz = icmp eq i64 %i.au, 1
  br i1 %i.iz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ja = load i64, ptr %13, align 8, !tbaa !100
  %i.jb = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 88
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !71
  %i.je = inttoptr i64 %i.jd to ptr               ; 2 uses
  %i.jf = inttoptr i64 %i.ja to ptr
  %i.jg = call ptr @LLVMGetTypeContext(ptr noundef %i.je) #17, !noalias !4906
  %i.jh = call ptr @LLVMInt64TypeInContext(ptr noundef %i.jg) #17, !noalias !4906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !4906
  %i.ji = call ptr @LLVMConstInt(ptr noundef %i.jh, i64 noundef 0, i32 noundef 0) #17, !noalias !4907
  store ptr %i.ji, ptr %i.a, align 8, !tbaa !100, !noalias !4906
  %i.jj = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4906
  %i.jk = call ptr @LLVMBuildInBoundsGEP2(ptr noundef %i.jj, ptr noundef %i.je, ptr noundef %i.jf, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull @.str.13) #17, !noalias !4906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !4906
  %i.jl = call ptr @LLVMPointerType(ptr noundef %i.ac, i32 noundef 0) #17, !noalias !4908
  %i.jm = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4909
  %i.jn = call ptr @LLVMBuildBitCast(ptr noundef %i.jm, ptr noundef %i.jk, ptr noundef %i.jl, ptr noundef nonnull @.str.13) #17, !noalias !4909
  %i.jo = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4910
  %i.jp = call ptr @LLVMBuildLoad2(ptr noundef %i.jo, ptr noundef %i.ac, ptr noundef %i.jn, ptr noundef nonnull @.str.13) #17, !noalias !4910
  %i.jq = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4911
  %i.jr = call ptr @LLVMBuildRet(ptr noundef %i.jq, ptr noundef %i.jp) #17, !noalias !4911 ; 0 uses
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit39

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.js = ptrtoint ptr %i.ac to i64
  store i64 %i.js, ptr %21, align 8, !tbaa !71
  %i.jt = load i64, ptr %13, align 8, !tbaa !100
  store i64 %i.jt, ptr %22, align 8, !tbaa !100
  %i.ju = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 88
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !71
  store i64 %i.jw, ptr %23, align 8, !tbaa !71
  call void @_ZN8WasmEdge4LLVM7Builder18createArrayPtrLoadEmNS0_4TypeENS0_5ValueES2_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.101") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i64 noundef %i.au, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %21, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %22, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %23, i32 noundef 16, ptr noundef nonnull @.str.13) #17
  %i.jx = load ptr, ptr %20, align 8, !tbaa !142  ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !143
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jx to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = lshr exact i64 %i.kc, 3
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = load ptr, ptr %i.dy, align 8, !tbaa !108, !noalias !4912
  %i.kg = call ptr @LLVMBuildAggregateRet(ptr noundef %i.kf, ptr noundef %i.jx, i32 noundef %i.ke) #17, !noalias !4912 ; 0 uses
  %i.kh = load ptr, ptr %20, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ki = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !141
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.kh to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.km) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit39

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit39: ; preds = %bb.j, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.kn = sub i64 %.sroa.12.0, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.086.0, i64 noundef %i.kn) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler16compileCallRefOpEj(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #0 align 2 {
_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %2 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %3 = alloca %"struct.cxx20::span.146", align 8  ; 5 uses
  %4 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %6 = alloca %"struct.cxx20::span.146", align 8  ; 5 uses
  %7 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %8 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %9 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 4 uses
  %10 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 4 uses
  %11 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 3 uses
  %12 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %13 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %14 = alloca [1 x %"class.WasmEdge::LLVM::Value"], align 8 ; 4 uses
  %15 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %16 = alloca %"class.std::vector.101", align 8  ; 7 uses
  %17 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %18 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 5 uses
  %19 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 6 uses
  %20 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %21 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %22 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 3 uses
  %23 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %24 = alloca [3 x %"class.WasmEdge::LLVM::Type"], align 8 ; 6 uses
  %25 = alloca [3 x %"class.WasmEdge::LLVM::Value"], align 8 ; 6 uses
  %26 = alloca %"class.std::vector.101", align 8  ; 5 uses
  %27 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %28 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %29 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %30 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %31 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %32 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %33 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !100
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !52, !noalias !5024
  %i.h = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.g, ptr noundef %i.f, ptr noundef nonnull @.str.127) #17, !noalias !5024 ; 3 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !100
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !52, !noalias !5025
  %i.l = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.k, ptr noundef %i.j, ptr noundef nonnull @.str.128) #17, !noalias !5025 ; 3 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !100
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !52, !noalias !5026
  %i.p = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.o, ptr noundef %i.n, ptr noundef nonnull @.str.126) #17, !noalias !5026 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 34 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %.in, align 8, !tbaa !232, !noalias !5027
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !100, !noalias !5027
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.w, ptr %i.v, align 8, !tbaa !143, !noalias !5027
  %i.z = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !71
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5028
  %i.ae = tail call ptr @LLVMBuildBitCast(ptr noundef %i.ad, ptr noundef %i.y, ptr noundef %i.ac, ptr noundef nonnull @.str.13) #17, !noalias !5028 ; 2 uses
  %i.af = load i64, ptr %i.d, align 8, !tbaa !100
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !52, !noalias !5029
  %i.ai = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.ah, ptr noundef %i.ag, ptr noundef nonnull @.str.129) #17, !noalias !5029 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.aj = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !5030
  %i.al = tail call ptr @LLVMInt64TypeInContext(ptr noundef %i.ak) #17, !noalias !5030
  %i.am = tail call ptr @LLVMConstInt(ptr noundef %i.al, i64 noundef 1, i32 noundef 0) #17, !noalias !5031
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5032
  %i.ao = tail call ptr @LLVMBuildExtractElement(ptr noundef %i.an, ptr noundef %i.ae, ptr noundef %i.am, ptr noundef nonnull @.str.13) #17, !noalias !5032
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !5033
  %i.aq = tail call ptr @LLVMInt64TypeInContext(ptr noundef %i.ap) #17, !noalias !5033
  %i.ar = tail call ptr @LLVMConstInt(ptr noundef %i.aq, i64 noundef 0, i32 noundef 0) #17, !noalias !5034
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5035
  %i.at = tail call ptr @LLVMBuildICmp(ptr noundef %i.as, i32 noundef 33, ptr noundef %i.ao, ptr noundef %i.ar, ptr noundef nonnull @.str.13) #17, !noalias !5035
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5036
  %i.av = tail call ptr @LLVMGetInsertBlock(ptr noundef %i.au) #17, !noalias !5036
  %i.aw = tail call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.av) #17, !noalias !5036
  %i.ax = tail call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.aw) #17, !noalias !5036
  %i.ay = tail call noundef ptr @LLVMGetModuleContext(ptr noundef %i.ax) #17, !noalias !5036
  %i.az = tail call ptr @LLVMInt1TypeInContext(ptr noundef %i.ay) #17, !noalias !5036 ; 2 uses
  %i.ba = load i32, ptr @_ZN8WasmEdge4LLVM4Core6ExpectE, align 4, !tbaa !63, !noalias !5036
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !5036
  %i.bb = ptrtoint ptr %i.az to i64
  store i64 %i.bb, ptr %5, align 8, !tbaa !71, !noalias !5036
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !5036
  %i.bc = ptrtoint ptr %i.at to i64
  store i64 %i.bc, ptr %7, align 8, !tbaa !100, !noalias !5036
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5037)
  %i.be = tail call ptr @LLVMConstInt(ptr noundef %i.az, i64 noundef 1, i32 noundef 0) #17, !noalias !5038
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !99, !alias.scope !5037, !noalias !5036
  store ptr %7, ptr %6, align 8, !tbaa !234, !noalias !5036
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 2, ptr %i.bf, align 8, !tbaa !235, !noalias !5036
  call void @_ZN8WasmEdge4LLVM7Builder15createIntrinsicEjN5cxx204spanIKNS0_4TypeELm18446744073709551615EEENS3_IKNS0_5ValueELm18446744073709551615EEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %i.ba, ptr nonnull %5, i64 1, ptr noundef nonnull byval(%"struct.cxx20::span.146") align 8 %6, ptr noundef nonnull @.str.13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !5036
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !5036
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bg = load i64, ptr %8, align 8, !tbaa !100
  %i.bh = inttoptr i64 %i.bg to ptr
  call void @llvm.experimental.noalias.scope.decl(metadata !5039)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1043, ptr %i.b, align 4, !tbaa !28, !noalias !5039
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !237, !noalias !5039
  %.not.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.not.i.i.i, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.bl, %bb.a ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !211, !noalias !5039 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !28, !noalias !5039
  %i.bo = icmp eq i32 %i.bn, 1043
  br i1 %i.bo, label %.loopexit5.i, label %bb.b, !llvm.loop !1

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !181, !noalias !5039 ; 2 uses
  %i.br = urem i64 1043, %i.bq                    ; 2 uses
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !180, !noalias !5039
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !238, !noalias !5039 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !211, !noalias !5039 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !28, !noalias !5039
  %i.by = icmp eq i32 %i.bx, 1043
  br i1 %i.by, label %.loopexit5.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.bz = icmp eq i32 %i.cc, 1043
  br i1 %i.bz, label %.loopexit5.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i = phi ptr [ %i.ca, %bb.f ], [ %i.bv, %bb.e ]
  %i.ca = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !211, !noalias !5039 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !28, !noalias !5039 ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = urem i64 %i.cd, %i.bq
  %.not19.i.i.i.i.i = icmp eq i64 %i.ce, %i.br
  br i1 %.not19.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.g
  br label %.loopexit.i, !llvm.loop !2

.loopexit5.i:                                     ; preds = %bb.f, %bb.c, %bb.e
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.bv, %bb.e ], [ %i.ca, %bb.f ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !212, !noalias !5039 ; 2 uses
  store i64 %i.cg, ptr %9, align 8, !tbaa !212, !alias.scope !5039
  %i.ch = inttoptr i64 %i.cg to ptr
  br label %_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i, %bb.b, %..loopexit_crit_edge21.i.i.i.i.i, %bb.d
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !100, !noalias !5039
  %i.cj = inttoptr i64 %i.ci to ptr
  call void @llvm.experimental.noalias.scope.decl(metadata !5040)
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !52, !noalias !5041
  %i.cl = call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.ck, ptr noundef %i.cj, ptr noundef nonnull @.str.70) #17, !noalias !5041
  store ptr %i.cl, ptr %9, align 8, !tbaa !200, !alias.scope !5041
  %i.cm = call { ptr, i8 } @_ZNSt10_HashtableIN8WasmEdge7ErrCode5ValueESt4pairIKS2_NS0_4LLVM10BasicBlockEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS2_RS6_EEES3_INS9_14_Node_iteratorIS7_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 0 uses
  %.pre = load ptr, ptr %9, align 8, !tbaa !212, !noalias !5042
  br label %_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit

_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit: ; preds = %.loopexit5.i, %.loopexit.i
  %i.cn = phi ptr [ %i.ch, %.loopexit5.i ], [ %.pre, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.co = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5042
  %i.cp = call ptr @LLVMBuildCondBr(ptr noundef %i.co, ptr noundef %i.bh, ptr noundef %i.ai, ptr noundef %i.cn) #17, !noalias !5042 ; 0 uses
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !108
  call void @LLVMPositionBuilderAtEnd(ptr noundef %i.cq, ptr noundef %i.ai) #17
  %i.cr = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 288
  %i.ct = zext i32 %1 to i64
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !139
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !157 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %.sroa.030.0.copyload = load ptr, ptr %i.cr, align 8, !tbaa !52
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 248
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !71
  call fastcc void @_ZN12_GLOBAL__N_110toLLVMTypeEN8WasmEdge4LLVM7ContextENS1_4TypeERKNS0_3AST12FunctionTypeE(ptr dead_on_unwind noalias writable align 8 %10, ptr %.sroa.030.0.copyload, i64 %i.cz, ptr noundef nonnull align 8 dereferenceable(72) %i.cx) #17
  %i.da = load ptr, ptr %10, align 8, !noalias !5043 ; 3 uses
  %i.db = call ptr @LLVMGetReturnType(ptr noundef %i.da) #17, !noalias !5043 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !160 ; 2 uses
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !161 ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 6 uses
  %i.di = ashr exact i64 %i.dh, 3                 ; 21 uses
  %i.dj = call i32 @LLVMGetTypeKind(ptr noundef %i.db) #17
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !160
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !161
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3
  br label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit, %bb.h
  %i.dt = phi i64 [ %i.ds, %bb.h ], [ 0, %_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit ] ; 9 uses
  %i.du = add nsw i64 %i.di, 1                    ; 4 uses
  %i.dv = icmp ugt i64 %i.du, 1152921504606846975
  br i1 %i.dv, label %bb.j, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #18
  unreachable

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.dw = shl nuw nsw i64 %i.du, 3
  %i.dx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #20 ; 4 uses
  %i.dy = add i64 %i.dh, 8                        ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dx, i8 0, i64 %i.dy, i1 false), !tbaa !100
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.du
  %scevgep = getelementptr i8, ptr %i.dx, i64 %i.dy
  %i.ea = ptrtoint ptr %scevgep to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.12169.0 = phi i64 [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.eb, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.0163.0 = phi ptr [ null, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.dx, %.lr.ph.preheader.i.i.i.i.i.i ] ; 18 uses
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.ea, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.0163.0279 = ptrtoaddr ptr %.sroa.0163.0 to i64 ; 2 uses
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !99, !noalias !5044
  %i.ed = call ptr @LLVMGetFirstParam(ptr noundef %i.ec) #17, !noalias !5044
  store ptr %i.ed, ptr %.sroa.0163.0, align 8, !tbaa !100
  %.not228 = icmp eq ptr %i.dd, %i.de
  br i1 %.not228, label %bb.k, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit
  %.val4.i42 = load ptr, ptr %i.r, align 8, !tbaa !219, !noalias !5045
  %.val5.i43 = load ptr, ptr %i.s, align 8, !tbaa !219, !noalias !5045
  %i.ee = icmp eq ptr %.val4.i42, %.val5.i43
  %.promoted = load ptr, ptr %i.v, align 8        ; 9 uses
  %.promoted278 = ptrtoaddr ptr %.promoted to i64 ; 2 uses
  br i1 %i.ee, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ef = load ptr, ptr %i.t, align 8, !tbaa !232, !noalias !5045 ; 5 uses
  %min.iters.check288 = icmp ult i64 %i.di, 10
  br i1 %min.iters.check288, label %.critedge.thread.i46.us.preheader, label %vector.memcheck285

vector.memcheck285:                               ; preds = %.lr.ph.split.us
  %i.eg = add i64 %i.dh, %.sroa.0163.0279
  %i.eh = sub i64 %.promoted278, %i.eg
  %i.ei = add i64 %i.eh, -9
  %diff.check286 = icmp ult i64 %i.ei, 31
  br i1 %diff.check286, label %.critedge.thread.i46.us.preheader, label %vector.ph289

vector.ph289:                                     ; preds = %vector.memcheck285
  %n.vec290 = and i64 %i.di, -4                   ; 4 uses
  %i.ej = mul i64 %n.vec290, -8
  %i.ek = getelementptr i8, ptr %.promoted, i64 %i.ej ; 2 uses
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph289
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next299, %vector.body291 ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted, %vector.ph289 ], [ %ptr.ind, %vector.body291 ] ; 3 uses
  %i.el = sub nuw i64 %i.di, %index292
  %i.em = getelementptr inbounds i8, ptr %pointer.phi, i64 -16
  %i.en = getelementptr inbounds i8, ptr %pointer.phi, i64 -32
  %wide.load293 = load <2 x i64>, ptr %i.em, align 8, !tbaa !100, !noalias !5045
  %wide.load294 = load <2 x i64>, ptr %i.en, align 8, !tbaa !100, !noalias !5045
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0163.0, i64 %i.el ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -8
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 -24
  %reverse297 = inttoptr <2 x i64> %wide.load293 to <2 x ptr>
  %reverse298 = inttoptr <2 x i64> %wide.load294 to <2 x ptr>
  store <2 x ptr> %reverse297, ptr %i.ep, align 8, !tbaa !100
  store <2 x ptr> %reverse298, ptr %i.eq, align 8, !tbaa !100
  %index.next299 = add nuw i64 %index292, 4       ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -32
  %i.er = icmp eq i64 %index.next299, %n.vec290
  br i1 %i.er, label %middle.block300, label %vector.body291, !llvm.loop !4959

middle.block300:                                  ; preds = %vector.body291
  %cmp.n301 = icmp eq i64 %i.di, %n.vec290
  br i1 %cmp.n301, label %._crit_edge, label %.critedge.thread.i46.us.preheader

.critedge.thread.i46.us.preheader:                ; preds = %vector.memcheck285, %.lr.ph.split.us, %middle.block300
  %.ph = phi ptr [ %.promoted, %vector.memcheck285 ], [ %.promoted, %.lr.ph.split.us ], [ %i.ek, %middle.block300 ] ; 2 uses
  %.036213.us.ph = phi i64 [ 0, %vector.memcheck285 ], [ 0, %.lr.ph.split.us ], [ %n.vec290, %middle.block300 ] ; 3 uses
  %xtraiter360 = and i64 %i.di, 3                 ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %.critedge.thread.i46.us.prol.loopexit, label %.critedge.thread.i46.us.prol

.critedge.thread.i46.us.prol:                     ; preds = %.critedge.thread.i46.us.preheader, %.critedge.thread.i46.us.prol
  %i.es = phi ptr [ %i.ev, %.critedge.thread.i46.us.prol ], [ %.ph, %.critedge.thread.i46.us.preheader ] ; 2 uses
  %.036213.us.prol = phi i64 [ %i.ez, %.critedge.thread.i46.us.prol ], [ %.036213.us.ph, %.critedge.thread.i46.us.preheader ] ; 2 uses
  %prol.iter362 = phi i64 [ %prol.iter362.next, %.critedge.thread.i46.us.prol ], [ 0, %.critedge.thread.i46.us.preheader ]
  %i.et = sub nuw i64 %i.di, %.036213.us.prol
  %i.eu = icmp ne ptr %i.ef, %i.es
  call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds i8, ptr %i.es, i64 -8 ; 4 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !100, !noalias !5045
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0163.0, i64 %i.et
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !100
  %i.ez = add nuw i64 %.036213.us.prol, 1         ; 2 uses
  %prol.iter362.next = add i64 %prol.iter362, 1   ; 2 uses
  %prol.iter362.cmp.not = icmp eq i64 %prol.iter362.next, %xtraiter360
  br i1 %prol.iter362.cmp.not, label %.critedge.thread.i46.us.prol.loopexit, label %.critedge.thread.i46.us.prol, !llvm.loop !4960

.critedge.thread.i46.us.prol.loopexit:            ; preds = %.critedge.thread.i46.us.prol, %.critedge.thread.i46.us.preheader
  %.lcssa350.unr = phi ptr [ poison, %.critedge.thread.i46.us.preheader ], [ %i.ev, %.critedge.thread.i46.us.prol ]
  %.unr363 = phi ptr [ %.ph, %.critedge.thread.i46.us.preheader ], [ %i.ev, %.critedge.thread.i46.us.prol ]
  %.036213.us.unr = phi i64 [ %.036213.us.ph, %.critedge.thread.i46.us.preheader ], [ %i.ez, %.critedge.thread.i46.us.prol ]
  %i.fa = sub nsw i64 %.036213.us.ph, %i.di
  %i.fb = icmp ugt i64 %i.fa, -4
  br i1 %i.fb, label %._crit_edge, label %.critedge.thread.i46.us.preheader.new

.critedge.thread.i46.us.preheader.new:            ; preds = %.critedge.thread.i46.us.prol.loopexit
  %i.fc = getelementptr i8, ptr %.sroa.0163.0, i64 %i.dh
  br label %.critedge.thread.i46.us

.critedge.thread.i46.us:                          ; preds = %.critedge.thread.i46.us, %.critedge.thread.i46.us.preheader.new
  %i.fd = phi ptr [ %.unr363, %.critedge.thread.i46.us.preheader.new ], [ %i.fv, %.critedge.thread.i46.us ] ; 5 uses
  %.036213.us = phi i64 [ %.036213.us.unr, %.critedge.thread.i46.us.preheader.new ], [ %i.fz, %.critedge.thread.i46.us ] ; 3 uses
  %i.fe = sub nuw i64 %i.di, %.036213.us          ; 3 uses
  %i.ff = icmp ne ptr %i.ef, %i.fd
  call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr inbounds i8, ptr %i.fd, i64 -8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !100, !noalias !5045
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0163.0, i64 %i.fe
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !100
  %.neg364 = xor i64 %.036213.us, -1
  %i.fk = icmp ne ptr %i.ef, %i.fg
  call void @llvm.assume(i1 %i.fk)
  %i.fl = getelementptr inbounds i8, ptr %i.fd, i64 -16 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !100, !noalias !5045
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = getelementptr [8 x i8], ptr %i.fc, i64 %.neg364
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !100
  %i.fp = icmp ne ptr %i.ef, %i.fl
  call void @llvm.assume(i1 %i.fp)
  %i.fq = getelementptr inbounds i8, ptr %i.fd, i64 -24 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !100, !noalias !5045
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = getelementptr [8 x i8], ptr %.sroa.0163.0, i64 %i.fe
  %34 = getelementptr i8, ptr %i.ft, i64 -16
  store ptr %i.fs, ptr %34, align 8, !tbaa !100
  %i.fu = icmp ne ptr %i.ef, %i.fq
  call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds i8, ptr %i.fd, i64 -32 ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !100, !noalias !5045
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = getelementptr [8 x i8], ptr %.sroa.0163.0, i64 %i.fe
  %35 = getelementptr i8, ptr %i.fy, i64 -24
  store ptr %i.fx, ptr %35, align 8, !tbaa !100
  %i.fz = add nuw i64 %.036213.us, 4              ; 2 uses
  %exitcond242.not.3 = icmp eq i64 %i.fz, %i.di
  br i1 %exitcond242.not.3, label %._crit_edge, label %.critedge.thread.i46.us, !llvm.loop !4961

.lr.ph.split:                                     ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %i.di, 12
  br i1 %min.iters.check, label %.critedge.i44.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split
  %i.ga = add i64 %i.dh, %.sroa.0163.0279
  %i.gb = sub i64 %.promoted278, %i.ga
  %i.gc = add i64 %i.gb, -9
  %diff.check = icmp ult i64 %i.gc, 31
  br i1 %diff.check, label %.critedge.i44.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, -4                      ; 4 uses
  %i.gd = mul i64 %n.vec, -8
  %i.ge = getelementptr i8, ptr %.promoted, i64 %i.gd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gf = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.gf ; 2 uses
  %i.gg = sub nuw i64 %i.di, %index
  %i.gh = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.gi = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <2 x i64>, ptr %i.gh, align 8, !tbaa !100, !noalias !5045
  %wide.load280 = load <2 x i64>, ptr %i.gi, align 8, !tbaa !100, !noalias !5045
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0163.0, i64 %i.gg ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -8
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 -24
  %reverse282 = inttoptr <2 x i64> %wide.load to <2 x ptr>
  %reverse283 = inttoptr <2 x i64> %wide.load280 to <2 x ptr>
  store <2 x ptr> %reverse282, ptr %i.gk, align 8, !tbaa !100
  store <2 x ptr> %reverse283, ptr %i.gl, align 8, !tbaa !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !4962

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.critedge.i44.preheader

.critedge.i44.preheader:                          ; preds = %vector.memcheck, %.lr.ph.split, %middle.block
  %.ph351 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph.split ], [ %i.ge, %middle.block ] ; 2 uses
  %.036213.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.di, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i44.prol.loopexit, label %.critedge.i44.prol

.critedge.i44.prol:                               ; preds = %.critedge.i44.preheader, %.critedge.i44.prol
  %i.gn = phi ptr [ %i.gp, %.critedge.i44.prol ], [ %.ph351, %.critedge.i44.preheader ]
  %.036213.prol = phi i64 [ %i.gt, %.critedge.i44.prol ], [ %.036213.ph, %.critedge.i44.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.critedge.i44.prol ], [ 0, %.critedge.i44.preheader ]
  %i.go = sub nuw i64 %i.di, %.036213.prol
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 -8 ; 4 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !100, !noalias !5045
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0163.0, i64 %i.go
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !100
  %i.gt = add nuw i64 %.036213.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.critedge.i44.prol.loopexit, label %.critedge.i44.prol, !llvm.loop !4963

.critedge.i44.prol.loopexit:                      ; preds = %.critedge.i44.prol, %.critedge.i44.preheader
  %.lcssa353.unr = phi ptr [ poison, %.critedge.i44.preheader ], [ %i.gp, %.critedge.i44.prol ]
  %.unr = phi ptr [ %.ph351, %.critedge.i44.preheader ], [ %i.gp, %.critedge.i44.prol ]
  %.036213.unr = phi i64 [ %.036213.ph, %.critedge.i44.preheader ], [ %i.gt, %.critedge.i44.prol ]
  %i.gu = sub nsw i64 %.036213.ph, %i.di
  %i.gv = icmp ugt i64 %i.gu, -4
  br i1 %i.gv, label %._crit_edge, label %.critedge.i44.preheader.new

.critedge.i44.preheader.new:                      ; preds = %.critedge.i44.prol.loopexit
  %i.gw = getelementptr i8, ptr %.sroa.0163.0, i64 %i.dh
  br label %.critedge.i44

._crit_edge:                                      ; preds = %.critedge.i44.prol.loopexit, %.critedge.i44, %.critedge.thread.i46.us.prol.loopexit, %.critedge.thread.i46.us, %middle.block, %middle.block300
  %.us-phi = phi ptr [ %i.fv, %.critedge.thread.i46.us ], [ %i.ek, %middle.block300 ], [ %i.ge, %middle.block ], [ %.lcssa350.unr, %.critedge.thread.i46.us.prol.loopexit ], [ %.lcssa353.unr, %.critedge.i44.prol.loopexit ], [ %i.jq, %.critedge.i44 ]
  store ptr %.us-phi, ptr %i.v, align 8, !tbaa !232, !noalias !5045
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit
  %i.gx = icmp ugt i64 %i.dt, 1152921504606846975
  br i1 %i.gx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #18
  unreachable

bb.m:                                             ; preds = %bb.k
  %.not = icmp eq i64 %i.dt, 0                    ; 4 uses
  br i1 %.not, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.m
  %i.gy = shl nuw nsw i64 %i.dt, 3
  %i.gz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #20 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.dt
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit: ; preds = %bb.m, %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.sroa.20.2 = phi ptr [ %i.ha, %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.m ] ; 6 uses
  %.sroa.12.1 = phi ptr [ %i.gz, %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.m ] ; 8 uses
  %i.hb = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.hc = call ptr @LLVMPointerType(ptr noundef %i.da, i32 noundef 0) #17, !noalias !5046
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.hd = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 176
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !71
  store i64 %i.hf, ptr %13, align 8, !tbaa !71
  call void @llvm.experimental.noalias.scope.decl(metadata !5047)
  %i.hg = call ptr @LLVMFunctionType(ptr noundef %i.hc, ptr noundef nonnull %13, i32 noundef 1, i32 noundef 0) #17, !noalias !5047
  store ptr %i.hg, ptr %12, align 8, !tbaa !70, !alias.scope !5047
  call void @_ZN8WasmEdge4LLVM8Compiler14CompileContext12getIntrinsicERNS0_7BuilderENS_10Executable10IntrinsicsENS0_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.WasmEdge::LLVM::FunctionCallee") align 8 %11, ptr noundef nonnull align 8 dereferenceable(456) %i.hb, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef 37, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i64 %i.aj, ptr %14, align 8, !tbaa !100
  %i.hh = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5048
  %i.hi = load ptr, ptr %11, align 8, !tbaa !71, !noalias !5048
  %i.hj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !100, !noalias !5048
  %i.hl = call ptr @LLVMBuildCall2(ptr noundef %i.hh, ptr noundef %i.hi, ptr noundef %i.hk, ptr noundef nonnull %14, i32 noundef 1, ptr noundef nonnull @.str.13) #17, !noalias !5048 ; 3 uses
  %i.hm = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5048
  %i.hn = call ptr @LLVMGetInsertBlock(ptr noundef %i.hm) #17, !noalias !5048
  %i.ho = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.hn) #17, !noalias !5048
  %i.hp = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.ho) #17, !noalias !5048
  %i.hq = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.hp) #17, !noalias !5048
  %i.hr = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !5048
  %i.hs = call ptr @LLVMCreateEnumAttribute(ptr noundef %i.hq, i32 noundef %i.hr, i64 noundef 0) #17, !noalias !5048
  call void @LLVMAddCallSiteAttribute(ptr noundef %i.hl, i32 noundef -1, ptr noundef %i.hs) #17, !noalias !5048
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.ht = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5049
  %i.hu = call ptr @LLVMBuildIsNull(ptr noundef %i.ht, ptr noundef %i.hl, ptr noundef nonnull @.str.13) #17, !noalias !5049
  %i.hv = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5050
  %i.hw = call ptr @LLVMBuildNot(ptr noundef %i.hv, ptr noundef %i.hu, ptr noundef nonnull @.str.13) #17, !noalias !5050
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.hx = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5051
  %i.hy = call ptr @LLVMGetInsertBlock(ptr noundef %i.hx) #17, !noalias !5051
  %i.hz = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.hy) #17, !noalias !5051
  %i.ia = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.hz) #17, !noalias !5051
  %i.ib = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.ia) #17, !noalias !5051
  %i.ic = call ptr @LLVMInt1TypeInContext(ptr noundef %i.ib) #17, !noalias !5051 ; 2 uses
  %i.id = load i32, ptr @_ZN8WasmEdge4LLVM4Core6ExpectE, align 4, !tbaa !63, !noalias !5051
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !5051
  %i.ie = ptrtoint ptr %i.ic to i64
  store i64 %i.ie, ptr %2, align 8, !tbaa !71, !noalias !5051
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !5051
  %i.if = ptrtoint ptr %i.hw to i64
  store i64 %i.if, ptr %4, align 8, !tbaa !100, !noalias !5051
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5052)
  %i.ih = call ptr @LLVMConstInt(ptr noundef %i.ic, i64 noundef 1, i32 noundef 0) #17, !noalias !5053
  store ptr %i.ih, ptr %i.ig, align 8, !tbaa !99, !alias.scope !5052, !noalias !5051
  store ptr %4, ptr %3, align 8, !tbaa !234, !noalias !5051
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.ii, align 8, !tbaa !235, !noalias !5051
  call void @_ZN8WasmEdge4LLVM7Builder15createIntrinsicEjN5cxx204spanIKNS0_4TypeELm18446744073709551615EEENS3_IKNS0_5ValueELm18446744073709551615EEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %i.id, ptr nonnull %2, i64 1, ptr noundef nonnull byval(%"struct.cxx20::span.146") align 8 %3, ptr noundef nonnull @.str.13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !5051
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !5051
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ij = ptrtoint ptr %i.h to i64
  %i.ik = ptrtoint ptr %i.l to i64
  %i.il = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5054
  %i.im = load ptr, ptr %15, align 8, !tbaa !100, !noalias !5054
  %i.in = call ptr @LLVMBuildCondBr(ptr noundef %i.il, ptr noundef %i.im, ptr noundef %i.h, ptr noundef %i.l) #17, !noalias !5054 ; 0 uses
  %i.io = load ptr, ptr %i.q, align 8, !tbaa !108
  call void @LLVMPositionBuilderAtEnd(ptr noundef %i.io, ptr noundef %i.h) #17
  %i.ip = ptrtoint ptr %.sroa.0163.0 to i64       ; 2 uses
  %i.iq = sub i64 %.0.lcssa.i.i.i.i.i.i, %i.ip
  %i.ir = lshr exact i64 %i.iq, 3
  %i.is = trunc i64 %i.ir to i32
  %i.it = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5055
  %i.iu = call ptr @LLVMBuildCall2(ptr noundef %i.it, ptr noundef %i.da, ptr noundef %i.hl, ptr noundef nonnull %.sroa.0163.0, i32 noundef %i.is, ptr noundef nonnull @.str.13) #17, !noalias !5055 ; 4 uses
  %i.iv = load ptr, ptr %i.q, align 8, !tbaa !108, !noalias !5055
  %i.iw = call ptr @LLVMGetInsertBlock(ptr noundef %i.iv) #17, !noalias !5055
  %i.ix = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.iw) #17, !noalias !5055
  %i.iy = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.ix) #17, !noalias !5055
  %i.iz = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.iy) #17, !noalias !5055
  %i.ja = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !5055
  %i.jb = call ptr @LLVMCreateEnumAttribute(ptr noundef %i.iz, i32 noundef %i.ja, i64 noundef 0) #17, !noalias !5055
  call void @LLVMAddCallSiteAttribute(ptr noundef %i.iu, i32 noundef -1, ptr noundef %i.jb) #17, !noalias !5055
  br i1 %.not, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit, label %bb.n

.critedge.i44:                                    ; preds = %.critedge.i44, %.critedge.i44.preheader.new
  %i.jc = phi ptr [ %.unr, %.critedge.i44.preheader.new ], [ %i.jq, %.critedge.i44 ] ; 4 uses
  %.036213 = phi i64 [ %.036213.unr, %.critedge.i44.preheader.new ], [ %i.ju, %.critedge.i44 ] ; 3 uses
  %i.jd = sub nuw i64 %i.di, %.036213             ; 3 uses
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 -8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !100, !noalias !5045
  %i.jg = inttoptr i64 %i.jf to ptr
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0163.0, i64 %i.jd
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !100
  %.neg = xor i64 %.036213, -1
  %i.ji = getelementptr inbounds i8, ptr %i.jc, i64 -16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !100, !noalias !5045
  %i.jk = inttoptr i64 %i.jj to ptr
  %i.jl = getelementptr [8 x i8], ptr %i.gw, i64 %.neg
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !100
  %i.jm = getelementptr inbounds i8, ptr %i.jc, i64 -24
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !100, !noalias !5045
  %i.jo = inttoptr i64 %i.jn to ptr
  %i.jp = getelementptr [8 x i8], ptr %.sroa.0163.0, i64 %i.jd
  %36 = getelementptr i8, ptr %i.jp, i64 -16
  store ptr %i.jo, ptr %36, align 8, !tbaa !100
  %i.jq = getelementptr inbounds i8, ptr %i.jc, i64 -32 ; 3 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !100, !noalias !5045
  %i.js = inttoptr i64 %i.jr to ptr
  %i.jt = getelementptr [8 x i8], ptr %.sroa.0163.0, i64 %i.jd
  %37 = getelementptr i8, ptr %i.jt, i64 -24
  store ptr %i.js, ptr %37, align 8, !tbaa !100
  %i.ju = add nuw i64 %.036213, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ju, %i.di
  br i1 %exitcond.not.3, label %._crit_edge, label %.critedge.i44, !llvm.loop !4982

bb.n:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit
  %i.jv = icmp eq i64 %i.dt, 1
  br i1 %i.jv, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp eq ptr %.sroa.12.1, %.sroa.20.2
  br i1 %.not.i, label %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jw = ptrtoint ptr %i.iu to i64
  store i64 %i.jw, ptr %.sroa.12.1, align 8, !tbaa !100
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit

_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.jx = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20 ; 3 uses
  %i.jy = ptrtoint ptr %i.iu to i64
  store i64 %i.jy, ptr %i.jx, align 8, !tbaa !100
  %.not.i23.i.i = icmp eq ptr %.sroa.20.2, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.12.1, i64 noundef 0) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.ka = ptrtoint ptr %i.iu to i64
  store i64 %i.ka, ptr %17, align 8, !tbaa !100
  call fastcc void @_ZN12_GLOBAL__N_112unpackStructERN8WasmEdge4LLVM7BuilderENS1_5ValueE(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %17) #17
  %i.kb = load ptr, ptr %16, align 8, !tbaa !232  ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !232 ; 2 uses
  %.not202215 = icmp eq ptr %i.kb, %i.kd
  br i1 %.not202215, label %._crit_edge222, label %.lr.ph221

._crit_edge222.loopexit:                          ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit65
  %.pre243 = load ptr, ptr %16, align 8, !tbaa !142
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %._crit_edge222.loopexit, %bb.r
  %i.ke = phi ptr [ %i.kb, %bb.r ], [ %.pre243, %._crit_edge222.loopexit ] ; 3 uses
  %.sroa.20.0.lcssa = phi ptr [ %.sroa.20.2, %bb.r ], [ %.sroa.20.4, %._crit_edge222.loopexit ]
  %.sroa.0148.0.lcssa = phi ptr [ %.sroa.12.1, %bb.r ], [ %.sroa.0148.4, %._crit_edge222.loopexit ]
  %.not.i.i.i51 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge222
  %i.kf = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !141
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.ke to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kj) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit: ; preds = %._crit_edge222, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit

.lr.ph221:                                        ; preds = %bb.r, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit65
  %.sroa.0148.0219 = phi ptr [ %.sroa.0148.4, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit65 ], [ %.sroa.12.1, %bb.r ] ; 11 uses
  %.sroa.12.0218 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit65 ], [ %.sroa.12.1, %bb.r ] ; 6 uses
  %.sroa.20.0217 = phi ptr [ %.sroa.20.4, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit65 ], [ %.sroa.20.2, %bb.r ] ; 2 uses
  %.sroa.0122.0216 = phi ptr [ %i.lp, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit65 ], [ %i.kb, %bb.r ] ; 2 uses
  %i.kk = load i64, ptr %.sroa.0122.0216, align 8, !tbaa !100 ; 2 uses
  %.not.i52 = icmp eq ptr %.sroa.12.0218, %.sroa.20.0217
  br i1 %.not.i52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph221
  store i64 %i.kk, ptr %.sroa.12.0218, align 8, !tbaa !100
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit65

bb.u:                                             ; preds = %.lr.ph221
  %i.kl = ptrtoint ptr %.sroa.12.0218 to i64      ; 3 uses
  %i.km = ptrtoint ptr %.sroa.0148.0219 to i64    ; 3 uses
  %i.kn = sub i64 %i.kl, %i.km                    ; 4 uses
  %i.ko = icmp eq i64 %i.kn, 9223372036854775800
  br i1 %i.ko, label %bb.v, label %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i53

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i53: ; preds = %bb.u
  %i.kp = ashr exact i64 %i.kn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i54 = call i64 @llvm.umax.i64(i64 %i.kp, i64 1)
  %i.kq = add nsw i64 %.sroa.speculated.i.i.i54, %i.kp ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %i.kp
  %i.ks = call i64 @llvm.umin.i64(i64 %i.kq, i64 1152921504606846975)
  %i.kt = select i1 %i.kr, i64 1152921504606846975, i64 %i.ks ; 3 uses
  %.not.i.i.i55 = icmp ne i64 %i.kt, 0
  call void @llvm.assume(i1 %.not.i.i.i55)
  %i.ku = shl nuw nsw i64 %i.kt, 3
  %i.kv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ku) #20 ; 10 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kn
  store i64 %i.kk, ptr %i.kw, align 8, !tbaa !100
  %.not10.i.i.i.i.i56 = icmp eq ptr %.sroa.0148.0219, %.sroa.12.0218
  br i1 %.not10.i.i.i.i.i56, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i61, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i53
  %i.kx = add i64 %i.kl, -8
  %i.ky = sub i64 %i.kx, %i.km                    ; 2 uses
  %i.kz = lshr i64 %i.ky, 3
  %i.la = add nuw nsw i64 %i.kz, 1                ; 2 uses
  %min.iters.check310 = icmp ult i64 %i.ky, 56
  br i1 %min.iters.check310, label %.lr.ph.i.i.i.i.i57.preheader348, label %vector.memcheck304

vector.memcheck304:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader
  %scevgep305 = getelementptr i8, ptr %i.kv, i64 8
  %i.lb = add i64 %i.kl, -8
  %i.lc = sub i64 %i.lb, %i.km
  %i.ld = and i64 %i.lc, -8                       ; 2 uses
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.ld
  %scevgep307 = getelementptr i8, ptr %.sroa.0148.0219, i64 8
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.ld
  %bound0 = icmp ult ptr %i.kv, %scevgep308
  %bound1 = icmp ult ptr %.sroa.0148.0219, %scevgep306
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i57.preheader348, label %vector.ph311

vector.ph311:                                     ; preds = %vector.memcheck304
  %n.vec312 = and i64 %i.la, 4611686018427387900  ; 3 uses
  %i.le = shl i64 %n.vec312, 3                    ; 2 uses
  %i.lf = getelementptr i8, ptr %i.kv, i64 %i.le  ; 2 uses
  %i.lg = getelementptr i8, ptr %.sroa.0148.0219, i64 %i.le
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph311
  %index314 = phi i64 [ 0, %vector.ph311 ], [ %index.next319, %vector.body313 ] ; 2 uses
  %i.lh = shl i64 %index314, 3                    ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.kv, i64 %i.lh ; 2 uses
  %next.gep316 = getelementptr i8, ptr %.sroa.0148.0219, i64 %i.lh ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5056)
  call void @llvm.experimental.noalias.scope.decl(metadata !5057)
  %i.li = getelementptr i8, ptr %next.gep316, i64 16 ; 2 uses
  %wide.load317 = load <2 x ptr>, ptr %next.gep316, align 8, !tbaa !100, !alias.scope !5058, !noalias !5056
  %wide.load318 = load <2 x ptr>, ptr %i.li, align 8, !tbaa !100, !alias.scope !5058, !noalias !5056
  %i.lj = getelementptr i8, ptr %next.gep315, i64 16
  store <2 x ptr> %wide.load317, ptr %next.gep315, align 8, !tbaa !100, !alias.scope !5059, !noalias !5058
  store <2 x ptr> %wide.load318, ptr %i.lj, align 8, !tbaa !100, !alias.scope !5059, !noalias !5058
  store <2 x ptr> splat (ptr null), ptr %next.gep316, align 8, !tbaa !100, !alias.scope !5058, !noalias !5056
  store <2 x ptr> splat (ptr null), ptr %i.li, align 8, !tbaa !100, !alias.scope !5058, !noalias !5056
  %index.next319 = add nuw i64 %index314, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next319, %n.vec312
  br i1 %i.lk, label %middle.block320, label %vector.body313, !llvm.loop !4989

middle.block320:                                  ; preds = %vector.body313
  %cmp.n321 = icmp eq i64 %i.la, %n.vec312
  br i1 %cmp.n321, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i61, label %.lr.ph.i.i.i.i.i57.preheader348

.lr.ph.i.i.i.i.i57.preheader348:                  ; preds = %vector.memcheck304, %.lr.ph.i.i.i.i.i57.preheader, %middle.block320
  %.012.i.i.i.i.i58.ph = phi ptr [ %i.kv, %vector.memcheck304 ], [ %i.kv, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.lf, %middle.block320 ]
  %.0911.i.i.i.i.i59.ph = phi ptr [ %.sroa.0148.0219, %vector.memcheck304 ], [ %.sroa.0148.0219, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.lg, %middle.block320 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader348, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi ptr [ %i.ln, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader348 ] ; 2 uses
  %.0911.i.i.i.i.i59 = phi ptr [ %i.lm, %.lr.ph.i.i.i.i.i57 ], [ %.0911.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader348 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5056)
  call void @llvm.experimental.noalias.scope.decl(metadata !5057)
  %i.ll = load ptr, ptr %.0911.i.i.i.i.i59, align 8, !tbaa !100, !alias.scope !5057, !noalias !5056
  store ptr %i.ll, ptr %.012.i.i.i.i.i58, align 8, !tbaa !100, !alias.scope !5056, !noalias !5057
  store ptr null, ptr %.0911.i.i.i.i.i59, align 8, !tbaa !100, !alias.scope !5057, !noalias !5056
  %i.lm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i59, i64 8 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i58, i64 8 ; 2 uses
  %.not.i.i.i.i.i60 = icmp eq ptr %i.lm, %.sroa.12.0218
  br i1 %.not.i.i.i.i.i60, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i61, label %.lr.ph.i.i.i.i.i57, !llvm.loop !4990

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i61: ; preds = %.lr.ph.i.i.i.i.i57, %middle.block320, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i53
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.kv, %_ZNKSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i53 ], [ %i.lf, %middle.block320 ], [ %i.ln, %.lr.ph.i.i.i.i.i57 ]
  %.not.i23.i.i63 = icmp eq ptr %.sroa.0148.0219, null
  br i1 %.not.i23.i.i63, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i64, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0148.0219, i64 noundef %i.kn) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i64

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i64: ; preds = %bb.w, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i61
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.kt
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit65

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit65: ; preds = %bb.t, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i64
  %.sroa.20.4 = phi ptr [ %i.lo, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i64 ], [ %.sroa.20.0217, %bb.t ] ; 2 uses
  %.0.lcssa.i.i.i.i.i62.pn = phi ptr [ %.0.lcssa.i.i.i.i.i62, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i64 ], [ %.sroa.12.0218, %bb.t ]
  %.sroa.0148.4 = phi ptr [ %i.kv, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i64 ], [ %.sroa.0148.0219, %bb.t ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i62.pn, i64 8
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0122.0216, i64 8 ; 2 uses
  %.not202 = icmp eq ptr %i.lp, %i.kd
  br i1 %.not202, label %._crit_edge222.loopexit, label %.lr.ph221

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.p, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit
  %.sroa.20.1 = phi ptr [ %.sroa.20.2, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE7reserveEm.exit ], [ %.sroa.20.0.lcssa, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit ], [ %i.jz, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.20.2, %bb.p ]
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_116FunctionCompiler22compileReturnCallRefOpEj:_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit
  %7 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %8 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %9 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 4 uses
  %10 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 4 uses
  %11 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 3 uses
  %12 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %13 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %14 = alloca [1 x %"class.WasmEdge::LLVM::Value"], align 8 ; 4 uses
  %15 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %16 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 5 uses
  %17 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 6 uses
  %18 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %19 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %20 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 3 uses
  %21 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %22 = alloca [3 x %"class.WasmEdge::LLVM::Type"], align 8 ; 6 uses
  %23 = alloca [3 x %"class.WasmEdge::LLVM::Value"], align 8 ; 6 uses
  %24 = alloca %"class.std::vector.101", align 8  ; 7 uses
  %25 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %26 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %27 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !100
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !52, !noalias !5169
  %i.h = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.g, ptr noundef %i.f, ptr noundef nonnull @.str.127) #17, !noalias !5169 ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !100
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !52, !noalias !5170
  %i.l = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.k, ptr noundef %i.j, ptr noundef nonnull @.str.128) #17, !noalias !5170 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 33 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %.in, align 8, !tbaa !232, !noalias !5171
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !100, !noalias !5171
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.s, ptr %i.r, align 8, !tbaa !143, !noalias !5171
  %i.v = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %i.x = load i64, ptr %i.w, align 8, !tbaa !71
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5172
  %i.aa = tail call ptr @LLVMBuildBitCast(ptr noundef %i.z, ptr noundef %i.u, ptr noundef %i.y, ptr noundef nonnull @.str.13) #17, !noalias !5172 ; 2 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !100
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !52, !noalias !5173
  %i.ae = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.ad, ptr noundef %i.ac, ptr noundef nonnull @.str.129) #17, !noalias !5173 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.af = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !5174
  %i.ah = tail call ptr @LLVMInt64TypeInContext(ptr noundef %i.ag) #17, !noalias !5174
  %i.ai = tail call ptr @LLVMConstInt(ptr noundef %i.ah, i64 noundef 1, i32 noundef 0) #17, !noalias !5175
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5176
  %i.ak = tail call ptr @LLVMBuildExtractElement(ptr noundef %i.aj, ptr noundef %i.aa, ptr noundef %i.ai, ptr noundef nonnull @.str.13) #17, !noalias !5176
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !5177
  %i.am = tail call ptr @LLVMInt64TypeInContext(ptr noundef %i.al) #17, !noalias !5177
  %i.an = tail call ptr @LLVMConstInt(ptr noundef %i.am, i64 noundef 0, i32 noundef 0) #17, !noalias !5178
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5179
  %i.ap = tail call ptr @LLVMBuildICmp(ptr noundef %i.ao, i32 noundef 33, ptr noundef %i.ak, ptr noundef %i.an, ptr noundef nonnull @.str.13) #17, !noalias !5179
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5180
  %i.ar = tail call ptr @LLVMGetInsertBlock(ptr noundef %i.aq) #17, !noalias !5180
  %i.as = tail call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.ar) #17, !noalias !5180
  %i.at = tail call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.as) #17, !noalias !5180
  %i.au = tail call noundef ptr @LLVMGetModuleContext(ptr noundef %i.at) #17, !noalias !5180
  %i.av = tail call ptr @LLVMInt1TypeInContext(ptr noundef %i.au) #17, !noalias !5180 ; 2 uses
  %i.aw = load i32, ptr @_ZN8WasmEdge4LLVM4Core6ExpectE, align 4, !tbaa !63, !noalias !5180
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !5180
  %i.ax = ptrtoint ptr %i.av to i64
  store i64 %i.ax, ptr %5, align 8, !tbaa !71, !noalias !5180
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !5180
  %i.ay = ptrtoint ptr %i.ap to i64
  store i64 %i.ay, ptr %7, align 8, !tbaa !100, !noalias !5180
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5181)
  %i.ba = tail call ptr @LLVMConstInt(ptr noundef %i.av, i64 noundef 1, i32 noundef 0) #17, !noalias !5182
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !99, !alias.scope !5181, !noalias !5180
  store ptr %7, ptr %6, align 8, !tbaa !234, !noalias !5180
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 2, ptr %i.bb, align 8, !tbaa !235, !noalias !5180
  call void @_ZN8WasmEdge4LLVM7Builder15createIntrinsicEjN5cxx204spanIKNS0_4TypeELm18446744073709551615EEENS3_IKNS0_5ValueELm18446744073709551615EEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef %i.aw, ptr nonnull %5, i64 1, ptr noundef nonnull byval(%"struct.cxx20::span.146") align 8 %6, ptr noundef nonnull @.str.13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !5180
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !5180
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bc = load i64, ptr %8, align 8, !tbaa !100
  %i.bd = inttoptr i64 %i.bc to ptr
  call void @llvm.experimental.noalias.scope.decl(metadata !5183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1043, ptr %i.b, align 4, !tbaa !28, !noalias !5183
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !237, !noalias !5183
  %.not.not.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.not.i.i.i, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.bh, %bb.a ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !211, !noalias !5183 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !28, !noalias !5183
  %i.bk = icmp eq i32 %i.bj, 1043
  br i1 %i.bk, label %.loopexit5.i, label %bb.b, !llvm.loop !1

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !181, !noalias !5183 ; 2 uses
  %i.bn = urem i64 1043, %i.bm                    ; 2 uses
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !180, !noalias !5183
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !238, !noalias !5183 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !211, !noalias !5183 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !28, !noalias !5183
  %i.bu = icmp eq i32 %i.bt, 1043
  br i1 %i.bu, label %.loopexit5.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.bv = icmp eq i32 %i.by, 1043
  br i1 %i.bv, label %.loopexit5.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i = phi ptr [ %i.bw, %bb.f ], [ %i.br, %bb.e ]
  %i.bw = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !211, !noalias !5183 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !28, !noalias !5183 ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = urem i64 %i.bz, %i.bm
  %.not19.i.i.i.i.i = icmp eq i64 %i.ca, %i.bn
  br i1 %.not19.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.g
  br label %.loopexit.i, !llvm.loop !2

.loopexit5.i:                                     ; preds = %bb.f, %bb.c, %bb.e
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.br, %bb.e ], [ %i.bw, %bb.f ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !212, !noalias !5183 ; 2 uses
  store i64 %i.cc, ptr %9, align 8, !tbaa !212, !alias.scope !5183
  %i.cd = inttoptr i64 %i.cc to ptr
  br label %_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i, %bb.b, %..loopexit_crit_edge21.i.i.i.i.i, %bb.d
  %i.ce = load i64, ptr %i.d, align 8, !tbaa !100, !noalias !5183
  %i.cf = inttoptr i64 %i.ce to ptr
  call void @llvm.experimental.noalias.scope.decl(metadata !5184)
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !52, !noalias !5185
  %i.ch = call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.cg, ptr noundef %i.cf, ptr noundef nonnull @.str.70) #17, !noalias !5185
  store ptr %i.ch, ptr %9, align 8, !tbaa !200, !alias.scope !5185
  %i.ci = call { ptr, i8 } @_ZNSt10_HashtableIN8WasmEdge7ErrCode5ValueESt4pairIKS2_NS0_4LLVM10BasicBlockEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS2_RS6_EEES3_INS9_14_Node_iteratorIS7_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 0 uses
  %.pre = load ptr, ptr %9, align 8, !tbaa !212, !noalias !5186
  br label %_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit

_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit: ; preds = %.loopexit5.i, %.loopexit.i
  %i.cj = phi ptr [ %i.cd, %.loopexit5.i ], [ %.pre, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ck = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5186
  %i.cl = call ptr @LLVMBuildCondBr(ptr noundef %i.ck, ptr noundef %i.bd, ptr noundef %i.ae, ptr noundef %i.cj) #17, !noalias !5186 ; 0 uses
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !108
  call void @LLVMPositionBuilderAtEnd(ptr noundef %i.cm, ptr noundef %i.ae) #17
  %i.cn = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 288
  %i.cp = zext i32 %1 to i64
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !139
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !157 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %.sroa.021.0.copyload = load ptr, ptr %i.cn, align 8, !tbaa !52
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 248
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !71
  call fastcc void @_ZN12_GLOBAL__N_110toLLVMTypeEN8WasmEdge4LLVM7ContextENS1_4TypeERKNS0_3AST12FunctionTypeE(ptr dead_on_unwind noalias writable align 8 %10, ptr %.sroa.021.0.copyload, i64 %i.cv, ptr noundef nonnull align 8 dereferenceable(72) %i.ct) #17
  %i.cw = load ptr, ptr %10, align 8, !noalias !5187 ; 3 uses
  %i.cx = call ptr @LLVMGetReturnType(ptr noundef %i.cw) #17, !noalias !5187 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !160 ; 2 uses
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !161 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 6 uses
  %i.de = ashr exact i64 %i.dd, 3                 ; 21 uses
  %i.df = call i32 @LLVMGetTypeKind(ptr noundef %i.cx) #17
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !160
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !161
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 3
  br label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit, %bb.h
  %i.dp = phi i64 [ %i.do, %bb.h ], [ 0, %_ZN12_GLOBAL__N_116FunctionCompiler9getTrapBBEN8WasmEdge7ErrCode5ValueE.exit ] ; 4 uses
  %i.dq = add nsw i64 %i.de, 1                    ; 4 uses
  %i.dr = icmp ugt i64 %i.dq, 1152921504606846975
  br i1 %i.dr, label %bb.j, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #18
  unreachable

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.ds = shl nuw nsw i64 %i.dq, 3
  %i.dt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #20 ; 4 uses
  %i.du = add i64 %i.dd, 8                        ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dt, i8 0, i64 %i.du, i1 false), !tbaa !100
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dq
  %scevgep = getelementptr i8, ptr %i.dt, i64 %i.du
  %i.dw = ptrtoint ptr %scevgep to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.dx, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.083.0 = phi ptr [ null, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.dt, %.lr.ph.preheader.i.i.i.i.i.i ] ; 18 uses
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.dw, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.083.0154 = ptrtoaddr ptr %.sroa.083.0 to i64 ; 2 uses
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !99, !noalias !5188
  %i.dz = call ptr @LLVMGetFirstParam(ptr noundef %i.dy) #17, !noalias !5188
  store ptr %i.dz, ptr %.sroa.083.0, align 8, !tbaa !100
  %.not = icmp eq ptr %i.cz, %i.da
  br i1 %.not, label %bb.k, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit
  %.val4.i28 = load ptr, ptr %i.n, align 8, !tbaa !219, !noalias !5189
  %.val5.i29 = load ptr, ptr %i.o, align 8, !tbaa !219, !noalias !5189
  %i.ea = icmp eq ptr %.val4.i28, %.val5.i29
  %.promoted = load ptr, ptr %i.r, align 8        ; 9 uses
  %.promoted153 = ptrtoaddr ptr %.promoted to i64 ; 2 uses
  br i1 %i.ea, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.eb = load ptr, ptr %i.p, align 8, !tbaa !232, !noalias !5189 ; 5 uses
  %min.iters.check163 = icmp ult i64 %i.de, 10
  br i1 %min.iters.check163, label %.critedge.thread.i32.us.preheader, label %vector.memcheck160

vector.memcheck160:                               ; preds = %.lr.ph.split.us
  %i.ec = add i64 %i.dd, %.sroa.083.0154
  %i.ed = sub i64 %.promoted153, %i.ec
  %i.ee = add i64 %i.ed, -9
  %diff.check161 = icmp ult i64 %i.ee, 31
  br i1 %diff.check161, label %.critedge.thread.i32.us.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %vector.memcheck160
  %n.vec165 = and i64 %i.de, -4                   ; 4 uses
  %i.ef = mul i64 %n.vec165, -8
  %i.eg = getelementptr i8, ptr %.promoted, i64 %i.ef ; 2 uses
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next174, %vector.body166 ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted, %vector.ph164 ], [ %ptr.ind, %vector.body166 ] ; 3 uses
  %i.eh = sub nuw i64 %i.de, %index167
  %i.ei = getelementptr inbounds i8, ptr %pointer.phi, i64 -16
  %i.ej = getelementptr inbounds i8, ptr %pointer.phi, i64 -32
  %wide.load168 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !100, !noalias !5189
  %wide.load169 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !100, !noalias !5189
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.eh ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -24
  %reverse172 = inttoptr <2 x i64> %wide.load168 to <2 x ptr>
  %reverse173 = inttoptr <2 x i64> %wide.load169 to <2 x ptr>
  store <2 x ptr> %reverse172, ptr %i.el, align 8, !tbaa !100
  store <2 x ptr> %reverse173, ptr %i.em, align 8, !tbaa !100
  %index.next174 = add nuw i64 %index167, 4       ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -32
  %i.en = icmp eq i64 %index.next174, %n.vec165
  br i1 %i.en, label %middle.block175, label %vector.body166, !llvm.loop !5119

middle.block175:                                  ; preds = %vector.body166
  %cmp.n176 = icmp eq i64 %i.de, %n.vec165
  br i1 %cmp.n176, label %._crit_edge, label %.critedge.thread.i32.us.preheader

.critedge.thread.i32.us.preheader:                ; preds = %vector.memcheck160, %.lr.ph.split.us, %middle.block175
  %.ph = phi ptr [ %.promoted, %vector.memcheck160 ], [ %.promoted, %.lr.ph.split.us ], [ %i.eg, %middle.block175 ] ; 2 uses
  %.0120.us.ph = phi i64 [ 0, %vector.memcheck160 ], [ 0, %.lr.ph.split.us ], [ %n.vec165, %middle.block175 ] ; 3 uses
  %xtraiter188 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.critedge.thread.i32.us.prol.loopexit, label %.critedge.thread.i32.us.prol

.critedge.thread.i32.us.prol:                     ; preds = %.critedge.thread.i32.us.preheader, %.critedge.thread.i32.us.prol
  %i.eo = phi ptr [ %i.er, %.critedge.thread.i32.us.prol ], [ %.ph, %.critedge.thread.i32.us.preheader ] ; 2 uses
  %.0120.us.prol = phi i64 [ %i.ev, %.critedge.thread.i32.us.prol ], [ %.0120.us.ph, %.critedge.thread.i32.us.preheader ] ; 2 uses
  %prol.iter190 = phi i64 [ %prol.iter190.next, %.critedge.thread.i32.us.prol ], [ 0, %.critedge.thread.i32.us.preheader ]
  %i.ep = sub nuw i64 %i.de, %.0120.us.prol
  %i.eq = icmp ne ptr %i.eb, %i.eo
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 -8 ; 4 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !100, !noalias !5189
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.ep
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !100
  %i.ev = add nuw i64 %.0120.us.prol, 1           ; 2 uses
  %prol.iter190.next = add i64 %prol.iter190, 1   ; 2 uses
  %prol.iter190.cmp.not = icmp eq i64 %prol.iter190.next, %xtraiter188
  br i1 %prol.iter190.cmp.not, label %.critedge.thread.i32.us.prol.loopexit, label %.critedge.thread.i32.us.prol, !llvm.loop !5120

.critedge.thread.i32.us.prol.loopexit:            ; preds = %.critedge.thread.i32.us.prol, %.critedge.thread.i32.us.preheader
  %.lcssa.unr = phi ptr [ poison, %.critedge.thread.i32.us.preheader ], [ %i.er, %.critedge.thread.i32.us.prol ]
  %.unr191 = phi ptr [ %.ph, %.critedge.thread.i32.us.preheader ], [ %i.er, %.critedge.thread.i32.us.prol ]
  %.0120.us.unr = phi i64 [ %.0120.us.ph, %.critedge.thread.i32.us.preheader ], [ %i.ev, %.critedge.thread.i32.us.prol ]
  %i.ew = sub nsw i64 %.0120.us.ph, %i.de
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %._crit_edge, label %.critedge.thread.i32.us.preheader.new

.critedge.thread.i32.us.preheader.new:            ; preds = %.critedge.thread.i32.us.prol.loopexit
  %i.ey = getelementptr i8, ptr %.sroa.083.0, i64 %i.dd
  br label %.critedge.thread.i32.us

.critedge.thread.i32.us:                          ; preds = %.critedge.thread.i32.us, %.critedge.thread.i32.us.preheader.new
  %i.ez = phi ptr [ %.unr191, %.critedge.thread.i32.us.preheader.new ], [ %i.fr, %.critedge.thread.i32.us ] ; 5 uses
  %.0120.us = phi i64 [ %.0120.us.unr, %.critedge.thread.i32.us.preheader.new ], [ %i.fv, %.critedge.thread.i32.us ] ; 3 uses
  %i.fa = sub nuw i64 %i.de, %.0120.us            ; 3 uses
  %i.fb = icmp ne ptr %i.eb, %i.ez
  call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds i8, ptr %i.ez, i64 -8 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !100, !noalias !5189
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.fa
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !100
  %.neg192 = xor i64 %.0120.us, -1
  %i.fg = icmp ne ptr %i.eb, %i.fc
  call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds i8, ptr %i.ez, i64 -16 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !100, !noalias !5189
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = getelementptr [8 x i8], ptr %i.ey, i64 %.neg192
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !100
  %i.fl = icmp ne ptr %i.eb, %i.fh
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds i8, ptr %i.ez, i64 -24 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !100, !noalias !5189
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = getelementptr [8 x i8], ptr %.sroa.083.0, i64 %i.fa
  %28 = getelementptr i8, ptr %i.fp, i64 -16
  store ptr %i.fo, ptr %28, align 8, !tbaa !100
  %i.fq = icmp ne ptr %i.eb, %i.fm
  call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds i8, ptr %i.ez, i64 -32 ; 3 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !100, !noalias !5189
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = getelementptr [8 x i8], ptr %.sroa.083.0, i64 %i.fa
  %29 = getelementptr i8, ptr %i.fu, i64 -24
  store ptr %i.ft, ptr %29, align 8, !tbaa !100
  %i.fv = add nuw i64 %.0120.us, 4                ; 2 uses
  %exitcond132.not.3 = icmp eq i64 %i.fv, %i.de
  br i1 %exitcond132.not.3, label %._crit_edge, label %.critedge.thread.i32.us, !llvm.loop !5121

.lr.ph.split:                                     ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %i.de, 12
  br i1 %min.iters.check, label %.critedge.i30.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split
  %i.fw = add i64 %i.dd, %.sroa.083.0154
  %i.fx = sub i64 %.promoted153, %i.fw
  %i.fy = add i64 %i.fx, -9
  %diff.check = icmp ult i64 %i.fy, 31
  br i1 %diff.check, label %.critedge.i30.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.de, -4                      ; 4 uses
  %i.fz = mul i64 %n.vec, -8
  %i.ga = getelementptr i8, ptr %.promoted, i64 %i.fz ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gb = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.gb ; 2 uses
  %i.gc = sub nuw i64 %i.de, %index
  %i.gd = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ge = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <2 x i64>, ptr %i.gd, align 8, !tbaa !100, !noalias !5189
  %wide.load155 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !100, !noalias !5189
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.gc ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -8
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 -24
  %reverse157 = inttoptr <2 x i64> %wide.load to <2 x ptr>
  %reverse158 = inttoptr <2 x i64> %wide.load155 to <2 x ptr>
  store <2 x ptr> %reverse157, ptr %i.gg, align 8, !tbaa !100
  store <2 x ptr> %reverse158, ptr %i.gh, align 8, !tbaa !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !5122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.critedge.i30.preheader

.critedge.i30.preheader:                          ; preds = %vector.memcheck, %.lr.ph.split, %middle.block
  %.ph179 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph.split ], [ %i.ga, %middle.block ] ; 2 uses
  %.0120.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.de, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i30.prol.loopexit, label %.critedge.i30.prol

.critedge.i30.prol:                               ; preds = %.critedge.i30.preheader, %.critedge.i30.prol
  %i.gj = phi ptr [ %i.gl, %.critedge.i30.prol ], [ %.ph179, %.critedge.i30.preheader ]
  %.0120.prol = phi i64 [ %i.gp, %.critedge.i30.prol ], [ %.0120.ph, %.critedge.i30.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.critedge.i30.prol ], [ 0, %.critedge.i30.preheader ]
  %i.gk = sub nuw i64 %i.de, %.0120.prol
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 -8 ; 4 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !100, !noalias !5189
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.gk
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !100
  %i.gp = add nuw i64 %.0120.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.critedge.i30.prol.loopexit, label %.critedge.i30.prol, !llvm.loop !5123

.critedge.i30.prol.loopexit:                      ; preds = %.critedge.i30.prol, %.critedge.i30.preheader
  %.lcssa181.unr = phi ptr [ poison, %.critedge.i30.preheader ], [ %i.gl, %.critedge.i30.prol ]
  %.unr = phi ptr [ %.ph179, %.critedge.i30.preheader ], [ %i.gl, %.critedge.i30.prol ]
  %.0120.unr = phi i64 [ %.0120.ph, %.critedge.i30.preheader ], [ %i.gp, %.critedge.i30.prol ]
  %i.gq = sub nsw i64 %.0120.ph, %i.de
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %._crit_edge, label %.critedge.i30.preheader.new

.critedge.i30.preheader.new:                      ; preds = %.critedge.i30.prol.loopexit
  %i.gs = getelementptr i8, ptr %.sroa.083.0, i64 %i.dd
  br label %.critedge.i30

._crit_edge:                                      ; preds = %.critedge.i30.prol.loopexit, %.critedge.i30, %.critedge.thread.i32.us.prol.loopexit, %.critedge.thread.i32.us, %middle.block, %middle.block175
  %.us-phi = phi ptr [ %i.fr, %.critedge.thread.i32.us ], [ %i.eg, %middle.block175 ], [ %i.ga, %middle.block ], [ %.lcssa.unr, %.critedge.thread.i32.us.prol.loopexit ], [ %.lcssa181.unr, %.critedge.i30.prol.loopexit ], [ %i.ji, %.critedge.i30 ]
  store ptr %.us-phi, ptr %i.r, align 8, !tbaa !232, !noalias !5189
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_.exit
  %i.gt = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gu = call ptr @LLVMPointerType(ptr noundef %i.cw, i32 noundef 0) #17, !noalias !5190
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.gv = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 176
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !71
  store i64 %i.gx, ptr %13, align 8, !tbaa !71
  call void @llvm.experimental.noalias.scope.decl(metadata !5191)
  %i.gy = call ptr @LLVMFunctionType(ptr noundef %i.gu, ptr noundef nonnull %13, i32 noundef 1, i32 noundef 0) #17, !noalias !5191
  store ptr %i.gy, ptr %12, align 8, !tbaa !70, !alias.scope !5191
  call void @_ZN8WasmEdge4LLVM8Compiler14CompileContext12getIntrinsicERNS0_7BuilderENS_10Executable10IntrinsicsENS0_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.WasmEdge::LLVM::FunctionCallee") align 8 %11, ptr noundef nonnull align 8 dereferenceable(456) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef 37, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i64 %i.af, ptr %14, align 8, !tbaa !100
  %i.gz = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5192
  %i.ha = load ptr, ptr %11, align 8, !tbaa !71, !noalias !5192
  %i.hb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !100, !noalias !5192
  %i.hd = call ptr @LLVMBuildCall2(ptr noundef %i.gz, ptr noundef %i.ha, ptr noundef %i.hc, ptr noundef nonnull %14, i32 noundef 1, ptr noundef nonnull @.str.13) #17, !noalias !5192 ; 3 uses
  %i.he = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5192
  %i.hf = call ptr @LLVMGetInsertBlock(ptr noundef %i.he) #17, !noalias !5192
  %i.hg = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.hf) #17, !noalias !5192
  %i.hh = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.hg) #17, !noalias !5192
  %i.hi = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.hh) #17, !noalias !5192
  %i.hj = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !5192
  %i.hk = call ptr @LLVMCreateEnumAttribute(ptr noundef %i.hi, i32 noundef %i.hj, i64 noundef 0) #17, !noalias !5192
  call void @LLVMAddCallSiteAttribute(ptr noundef %i.hd, i32 noundef -1, ptr noundef %i.hk) #17, !noalias !5192
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.hl = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5193
  %i.hm = call ptr @LLVMBuildIsNull(ptr noundef %i.hl, ptr noundef %i.hd, ptr noundef nonnull @.str.13) #17, !noalias !5193
  %i.hn = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5194
  %i.ho = call ptr @LLVMBuildNot(ptr noundef %i.hn, ptr noundef %i.hm, ptr noundef nonnull @.str.13) #17, !noalias !5194
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.hp = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5195
  %i.hq = call ptr @LLVMGetInsertBlock(ptr noundef %i.hp) #17, !noalias !5195
  %i.hr = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.hq) #17, !noalias !5195
  %i.hs = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.hr) #17, !noalias !5195
  %i.ht = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.hs) #17, !noalias !5195
  %i.hu = call ptr @LLVMInt1TypeInContext(ptr noundef %i.ht) #17, !noalias !5195 ; 2 uses
  %i.hv = load i32, ptr @_ZN8WasmEdge4LLVM4Core6ExpectE, align 4, !tbaa !63, !noalias !5195
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !5195
  %i.hw = ptrtoint ptr %i.hu to i64
  store i64 %i.hw, ptr %2, align 8, !tbaa !71, !noalias !5195
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !5195
  %i.hx = ptrtoint ptr %i.ho to i64
  store i64 %i.hx, ptr %4, align 8, !tbaa !100, !noalias !5195
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5196)
  %i.hz = call ptr @LLVMConstInt(ptr noundef %i.hu, i64 noundef 1, i32 noundef 0) #17, !noalias !5197
  store ptr %i.hz, ptr %i.hy, align 8, !tbaa !99, !alias.scope !5196, !noalias !5195
  store ptr %4, ptr %3, align 8, !tbaa !234, !noalias !5195
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.ia, align 8, !tbaa !235, !noalias !5195
  call void @_ZN8WasmEdge4LLVM7Builder15createIntrinsicEjN5cxx204spanIKNS0_4TypeELm18446744073709551615EEENS3_IKNS0_5ValueELm18446744073709551615EEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef %i.hv, ptr nonnull %2, i64 1, ptr noundef nonnull byval(%"struct.cxx20::span.146") align 8 %3, ptr noundef nonnull @.str.13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !5195
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !5195
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ib = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5198
  %i.ic = load ptr, ptr %15, align 8, !tbaa !100, !noalias !5198
  %i.id = call ptr @LLVMBuildCondBr(ptr noundef %i.ib, ptr noundef %i.ic, ptr noundef %i.h, ptr noundef %i.l) #17, !noalias !5198 ; 0 uses
  %i.ie = load ptr, ptr %i.m, align 8, !tbaa !108
  call void @LLVMPositionBuilderAtEnd(ptr noundef %i.ie, ptr noundef %i.h) #17
  %i.if = ptrtoint ptr %.sroa.083.0 to i64        ; 2 uses
  %i.ig = sub i64 %.0.lcssa.i.i.i.i.i.i, %i.if
  %i.ih = lshr exact i64 %i.ig, 3
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5199
  %i.ik = call ptr @LLVMBuildCall2(ptr noundef %i.ij, ptr noundef %i.cw, ptr noundef %i.hd, ptr noundef nonnull %.sroa.083.0, i32 noundef %i.ii, ptr noundef nonnull @.str.13) #17, !noalias !5199 ; 2 uses
  %i.il = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5199
  %i.im = call ptr @LLVMGetInsertBlock(ptr noundef %i.il) #17, !noalias !5199
  %i.in = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.im) #17, !noalias !5199
  %i.io = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.in) #17, !noalias !5199
  %i.ip = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.io) #17, !noalias !5199
  %i.iq = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !5199
  %i.ir = call ptr @LLVMCreateEnumAttribute(ptr noundef %i.ip, i32 noundef %i.iq, i64 noundef 0) #17, !noalias !5199
  call void @LLVMAddCallSiteAttribute(ptr noundef %i.ik, i32 noundef -1, ptr noundef %i.ir) #17, !noalias !5199
  %i.is = icmp eq i64 %i.dp, 0                    ; 2 uses
  %i.it = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !50 ; 2 uses
  br i1 %i.is, label %bb.l, label %bb.m

.critedge.i30:                                    ; preds = %.critedge.i30, %.critedge.i30.preheader.new
  %i.iu = phi ptr [ %.unr, %.critedge.i30.preheader.new ], [ %i.ji, %.critedge.i30 ] ; 4 uses
  %.0120 = phi i64 [ %.0120.unr, %.critedge.i30.preheader.new ], [ %i.jm, %.critedge.i30 ] ; 3 uses
  %i.iv = sub nuw i64 %i.de, %.0120               ; 3 uses
  %i.iw = getelementptr inbounds i8, ptr %i.iu, i64 -8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !100, !noalias !5189
  %i.iy = inttoptr i64 %i.ix to ptr
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.iv
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !100
  %.neg = xor i64 %.0120, -1
  %i.ja = getelementptr inbounds i8, ptr %i.iu, i64 -16
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !100, !noalias !5189
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = getelementptr [8 x i8], ptr %i.gs, i64 %.neg
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !100
  %i.je = getelementptr inbounds i8, ptr %i.iu, i64 -24
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !100, !noalias !5189
  %i.jg = inttoptr i64 %i.jf to ptr
  %i.jh = getelementptr [8 x i8], ptr %.sroa.083.0, i64 %i.iv
  %30 = getelementptr i8, ptr %i.jh, i64 -16
  store ptr %i.jg, ptr %30, align 8, !tbaa !100
  %i.ji = getelementptr inbounds i8, ptr %i.iu, i64 -32 ; 3 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !100, !noalias !5189
  %i.jk = inttoptr i64 %i.jj to ptr
  %i.jl = getelementptr [8 x i8], ptr %.sroa.083.0, i64 %i.iv
  %31 = getelementptr i8, ptr %i.jl, i64 -24
  store ptr %i.jk, ptr %31, align 8, !tbaa !100
  %i.jm = add nuw i64 %.0120, 4                   ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.jm, %i.de
  br i1 %exitcond.not.3, label %._crit_edge, label %.critedge.i30, !llvm.loop !5142

bb.l:                                             ; preds = %bb.k
  %i.jn = call ptr @LLVMBuildRetVoid(ptr noundef %i.it) #17, !noalias !5200 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.jo = call ptr @LLVMBuildRet(ptr noundef %i.it, ptr noundef %i.ik) #17, !noalias !5201 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.jp = load ptr, ptr %i.m, align 8, !tbaa !108
  call void @LLVMPositionBuilderAtEnd(ptr noundef %i.jp, ptr noundef %i.l) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @_ZN8WasmEdge4LLVM7Builder11createArrayEmj(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.de, i32 noundef 16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @_ZN8WasmEdge4LLVM7Builder11createArrayEmj(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.dp, i32 noundef 16) #17
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.083.0, i64 8
  %i.jr = load i64, ptr %16, align 8, !tbaa !100
  store i64 %i.jr, ptr %18, align 8, !tbaa !100
  %i.js = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 88
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !71
  store i64 %i.ju, ptr %19, align 8, !tbaa !71
  call void @_ZN8WasmEdge4LLVM7Builder19createArrayPtrStoreEN5cxx204spanIKNS0_5ValueELm18446744073709551615EEES4_NS0_4TypeEjPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr nonnull %i.jq, i64 %i.de, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %18, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %19, i32 noundef 16, ptr noundef nonnull @.str.13) #17
  %i.jv = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 80
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !71
  %i.jy = inttoptr i64 %i.jx to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 176
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !71
  store i64 %i.ka, ptr %22, align 8, !tbaa !71
  %i.kb = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 200
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !71 ; 2 uses
  store i64 %i.kd, ptr %i.kb, align 8, !tbaa !71
  %i.ke = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %i.kd, ptr %i.ke, align 8, !tbaa !71
  call void @llvm.experimental.noalias.scope.decl(metadata !5202)
  %i.kf = call ptr @LLVMFunctionType(ptr noundef %i.jy, ptr noundef nonnull %22, i32 noundef 3, i32 noundef 0) #17, !noalias !5202
  store ptr %i.kf, ptr %21, align 8, !tbaa !70, !alias.scope !5202
  call void @_ZN8WasmEdge4LLVM8Compiler14CompileContext12getIntrinsicERNS0_7BuilderENS_10Executable10IntrinsicsENS0_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.WasmEdge::LLVM::FunctionCallee") align 8 %20, ptr noundef nonnull align 8 dereferenceable(456) %i.jv, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef 3, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %21) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  store i64 %i.af, ptr %23, align 8, !tbaa !100
  %i.kg = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kh = load i64, ptr %16, align 8, !tbaa !100
  store i64 %i.kh, ptr %i.kg, align 8, !tbaa !100
  %i.ki = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.kj = load i64, ptr %17, align 8, !tbaa !100
  store i64 %i.kj, ptr %i.ki, align 8, !tbaa !100
  %i.kk = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5203
  %i.kl = load ptr, ptr %20, align 8, !tbaa !71, !noalias !5203
  %i.km = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !100, !noalias !5203
  %i.ko = call ptr @LLVMBuildCall2(ptr noundef %i.kk, ptr noundef %i.kl, ptr noundef %i.kn, ptr noundef nonnull %23, i32 noundef 3, ptr noundef nonnull @.str.13) #17, !noalias !5203
  %i.kp = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5203
  %i.kq = call ptr @LLVMGetInsertBlock(ptr noundef %i.kp) #17, !noalias !5203
  %i.kr = call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.kq) #17, !noalias !5203
  %i.ks = call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.kr) #17, !noalias !5203
  %i.kt = call noundef ptr @LLVMGetModuleContext(ptr noundef %i.ks) #17, !noalias !5203
  %i.ku = load i32, ptr @_ZN8WasmEdge4LLVM4Core8StrictFPE, align 4, !tbaa !63, !noalias !5203
  %i.kv = call ptr @LLVMCreateEnumAttribute(ptr noundef %i.kt, i32 noundef %i.ku, i64 noundef 0) #17, !noalias !5203
  call void @LLVMAddCallSiteAttribute(ptr noundef %i.ko, i32 noundef -1, ptr noundef %i.kv) #17, !noalias !5203
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br i1 %i.is, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.kw = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5204
  %i.kx = call ptr @LLVMBuildRetVoid(ptr noundef %i.kw) #17, !noalias !5204 ; 0 uses
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit36

bb.p:                                             ; preds = %bb.n
  %i.ky = icmp eq i64 %i.dp, 1
  br i1 %i.ky, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.kz = load i64, ptr %17, align 8, !tbaa !100
  %i.la = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 88
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !71
  %i.ld = inttoptr i64 %i.lc to ptr               ; 2 uses
  %i.le = inttoptr i64 %i.kz to ptr
  %i.lf = call ptr @LLVMGetTypeContext(ptr noundef %i.ld) #17, !noalias !5205
  %i.lg = call ptr @LLVMInt64TypeInContext(ptr noundef %i.lf) #17, !noalias !5205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !5205
  %i.lh = call ptr @LLVMConstInt(ptr noundef %i.lg, i64 noundef 0, i32 noundef 0) #17, !noalias !5206
  store ptr %i.lh, ptr %i.a, align 8, !tbaa !100, !noalias !5205
  %i.li = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5205
  %i.lj = call ptr @LLVMBuildInBoundsGEP2(ptr noundef %i.li, ptr noundef %i.ld, ptr noundef %i.le, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull @.str.13) #17, !noalias !5205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !5205
  %i.lk = call ptr @LLVMPointerType(ptr noundef %i.cx, i32 noundef 0) #17, !noalias !5207
  %i.ll = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5208
  %i.lm = call ptr @LLVMBuildBitCast(ptr noundef %i.ll, ptr noundef %i.lj, ptr noundef %i.lk, ptr noundef nonnull @.str.13) #17, !noalias !5208
  %i.ln = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5209
  %i.lo = call ptr @LLVMBuildLoad2(ptr noundef %i.ln, ptr noundef %i.cx, ptr noundef %i.lm, ptr noundef nonnull @.str.13) #17, !noalias !5209
  %i.lp = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5210
  %i.lq = call ptr @LLVMBuildRet(ptr noundef %i.lp, ptr noundef %i.lo) #17, !noalias !5210 ; 0 uses
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit36

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %i.lr = ptrtoint ptr %i.cx to i64
  store i64 %i.lr, ptr %25, align 8, !tbaa !71
  %i.ls = load i64, ptr %17, align 8, !tbaa !100
  store i64 %i.ls, ptr %26, align 8, !tbaa !100
  %i.lt = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 88
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !71
  store i64 %i.lv, ptr %27, align 8, !tbaa !71
  call void @_ZN8WasmEdge4LLVM7Builder18createArrayPtrLoadEmNS0_4TypeENS0_5ValueES2_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.101") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.dp, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %25, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %26, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %27, i32 noundef 16, ptr noundef nonnull @.str.13) #17
  %i.lw = load ptr, ptr %24, align 8, !tbaa !142  ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !143
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lw to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = lshr exact i64 %i.mb, 3
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.m, align 8, !tbaa !108, !noalias !5211
  %i.mf = call ptr @LLVMBuildAggregateRet(ptr noundef %i.me, ptr noundef %i.lw, i32 noundef %i.md) #17, !noalias !5211 ; 0 uses
  %i.mg = load ptr, ptr %24, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mh = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !141
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mg to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.ml) #19
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit36

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit36: ; preds = %bb.q, %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.mm = sub i64 %.sroa.12.0, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0, i64 noundef %i.mm) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge4LLVM7Builder12createLikelyENS0_5ValueE(ptr dead_on_unwind noalias writable sret(%"class.WasmEdge::LLVM::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %4 = alloca %"struct.cxx20::span.146", align 8  ; 3 uses
  %5 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !108
  %i.b = tail call ptr @LLVMGetInsertBlock(ptr noundef %i.a) #17
  %i.c = tail call noundef ptr @LLVMGetBasicBlockParent(ptr noundef %i.b) #17
  %i.d = tail call noundef ptr @LLVMGetGlobalParent(ptr noundef %i.c) #17
  %i.e = tail call noundef ptr @LLVMGetModuleContext(ptr noundef %i.d) #17
  %i.f = tail call ptr @LLVMInt1TypeInContext(ptr noundef %i.e) #17 ; 2 uses
  %i.g = load i32, ptr @_ZN8WasmEdge4LLVM4Core6ExpectE, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = ptrtoint ptr %i.f to i64
  store i64 %i.h, ptr %3, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.i = load i64, ptr %2, align 8, !tbaa !100
  store i64 %i.i, ptr %5, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5214)
  %i.k = tail call ptr @LLVMConstInt(ptr noundef %i.f, i64 noundef 1, i32 noundef 0) #17, !noalias !5214
  store ptr %i.k, ptr %i.j, align 8, !tbaa !99, !alias.scope !5214
  store ptr %5, ptr %4, align 8, !tbaa !234
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.l, align 8, !tbaa !235
  call void @_ZN8WasmEdge4LLVM7Builder15createIntrinsicEjN5cxx204spanIKNS0_4TypeELm18446744073709551615EEENS3_IKNS0_5ValueELm18446744073709551615EEEPKc(ptr dead_on_unwind writable sret(%"class.WasmEdge::LLVM::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.g, ptr nonnull %3, i64 1, ptr noundef nonnull byval(%"struct.cxx20::span.146") align 8 %4, ptr noundef nonnull @.str.13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS2_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #18
  unreachable

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit.thread, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit.thread: ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit
end_hunk_2
