Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/CodeGenX64?download=true
inline.NumInlined: 154
inline.NumDeleted: 63
begin_hunk_0
@.str.5 = private unnamed_addr constant [10 x i8] c"; return\0A\00", align 1
@_ZN5FFlag20LuauCodegenNoEcbDataE = external local_unnamed_addr global %"struct.Luau::FValue", align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau7CodeGen3X6419initHeaderFunctionsERNS0_18BaseCodeGenContextE(ptr noundef nonnull align 8 dereferenceable(2848) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.28", align 8    ; 15 uses
  %2 = alloca [5 x %"struct.Luau::CodeGen::X64::RegisterX64"], align 4 ; 6 uses
  %3 = alloca %"class.std::vector.28", align 8    ; 9 uses
  %4 = alloca [8 x %"struct.Luau::CodeGen::X64::RegisterX64"], align 8 ; 5 uses
  %5 = alloca %"class.Luau::CodeGen::X64::AssemblyBuilderX64", align 8 ; 55 uses
  %6 = alloca %"struct.Luau::CodeGen::CodeAllocationData", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX64C1EPNS0_10LogBuilderEbj(ptr noundef nonnull align 8 dereferenceable(268) %5, ptr noundef null, i1 noundef zeroext false, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 14 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 0)
          to label %bb.b unwind label %bb.bi

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645alignEjNS1_16AlignmentDataX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i32 noundef 32, i32 noundef 2)
          to label %.noexc unwind label %bb.bi

.noexc:                                           ; preds = %bb.b
  %i.f = invoke i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelEv(ptr noundef nonnull align 8 dereferenceable(268) %5)
          to label %.noexc20 unwind label %bb.bi

.noexc20:                                         ; preds = %.noexc
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !55, !noalias !56
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !56
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc21 unwind label %bb.bi, !inline_history !49

.noexc21:                                         ; preds = %.noexc20
  %i.j = invoke i8 @_ZN4Luau7CodeGen3X6416IrCallWrapperX6423suggestArgumentRegisterILm0EEENS1_11RegisterX64ENS1_7SizeX64ERNS1_18AssemblyBuilderX64E(i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(268) %5)
          to label %.noexc22 unwind label %bb.bi

.noexc22:                                         ; preds = %.noexc21
  %i.k = invoke i8 @_ZN4Luau7CodeGen3X6416IrCallWrapperX6423suggestArgumentRegisterILm1EEENS1_11RegisterX64ENS1_7SizeX64ERNS1_18AssemblyBuilderX64E(i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(268) %5)
          to label %.noexc23 unwind label %bb.bi

.noexc23:                                         ; preds = %.noexc22
  %i.l = invoke i8 @_ZN4Luau7CodeGen3X6416IrCallWrapperX6423suggestArgumentRegisterILm2EEENS1_11RegisterX64ENS1_7SizeX64ERNS1_18AssemblyBuilderX64E(i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(268) %5)
          to label %.noexc24 unwind label %bb.bi

.noexc24:                                         ; preds = %.noexc23
  %i.m = invoke i8 @_ZN4Luau7CodeGen3X6416IrCallWrapperX6423suggestArgumentRegisterILm3EEENS1_11RegisterX64ENS1_7SizeX64ERNS1_18AssemblyBuilderX64E(i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(268) %5)
          to label %.noexc25 unwind label %bb.bi

.noexc25:                                         ; preds = %.noexc24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 8 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57, !noalias !56
  %i.p = icmp eq i32 %i.o, 1
  %i.q = lshr i64 %i.f, 32                        ; 2 uses
  %i.r = trunc nuw i64 %i.q to i32                ; 2 uses
  br i1 %i.p, label %bb.c, label %.noexc27

bb.c:                                             ; preds = %.noexc25
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644pushENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 271351808)
          to label %.noexc26 unwind label %bb.bi

.noexc26:                                         ; preds = %bb.c
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 271351808, i64 270827520)
          to label %.noexc27 unwind label %bb.bi

.noexc27:                                         ; preds = %.noexc26, %.noexc25
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644pushENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 270303232)
          to label %.noexc28 unwind label %bb.bi

.noexc28:                                         ; preds = %.noexc27
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644pushENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 275021824)
          to label %.noexc29 unwind label %bb.bi

.noexc29:                                         ; preds = %.noexc28
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644pushENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 275546112)
          to label %.noexc30 unwind label %bb.bi

.noexc30:                                         ; preds = %.noexc29
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644pushENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 276070400)
          to label %.noexc31 unwind label %bb.bi

.noexc31:                                         ; preds = %.noexc30
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644pushENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 276594688)
          to label %.noexc32 unwind label %bb.bi

.noexc32:                                         ; preds = %.noexc31
  %i.s = load i32, ptr %i.n, align 4, !tbaa !57, !noalias !56 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc32
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644pushENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 272400384)
          to label %.noexc33 unwind label %bb.bi

.noexc33:                                         ; preds = %bb.d
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644pushENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 271876096)
          to label %.noexc34 unwind label %bb.bi

.noexc34:                                         ; preds = %.noexc33
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644pushENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 271351808)
          to label %.noexc35 unwind label %bb.bi

.noexc35:                                         ; preds = %.noexc34
  %.pre.i = load i32, ptr %i.n, align 4, !tbaa !57, !noalias !56
  br label %bb.e

bb.e:                                             ; preds = %.noexc35, %.noexc32
  %i.u = phi i32 [ %.pre.i, %.noexc35 ], [ %i.s, %.noexc32 ]
  %i.v = icmp eq i32 %i.u, 1                      ; 2 uses
  %i.w = select i1 %i.v, i8 16, i8 10             ; 3 uses
  %i.x = zext nneg i8 %i.w to i32                 ; 2 uses
  %i.y = shl nuw nsw i32 %i.x, 4
  %i.z = add nsw i32 %i.y, -96
  %.0.i.i = select i1 %i.v, i32 0, i32 %i.z
  %i.aa = load i8, ptr @_ZN5FFlag20LuauCodegenNoEcbDataE, align 8, !tbaa !44, !range !45, !noalias !56, !noundef !46
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = select i1 %i.ab, i32 256, i32 176       ; 3 uses
  %i.ad = add nuw nsw i32 %.0.i.i, %i.ac
  %i.ae = or disjoint i32 %i.ad, 8                ; 3 uses
  %.sroa.5393.0.insert.ext.i = zext nneg i32 %i.ae to i64
  %.sroa.5393.0.insert.shift.i = shl nuw nsw i64 %.sroa.5393.0.insert.ext.i, 32
  %.sroa.0389.0.insert.insert.i = or disjoint i64 %.sroa.5393.0.insert.shift.i, 276856834 ; 2 uses
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643subENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 270827520, i64 %.sroa.0389.0.insert.insert.i)
          to label %.noexc36 unwind label %bb.bi

.noexc36:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10, !noalias !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !noalias !56
  %i.af = load i32, ptr %i.n, align 4, !tbaa !57, !noalias !56
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNSt12_Vector_baseIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_M_allocateEm.exit.i.i, label %.loopexit455.i

_ZNSt12_Vector_baseIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %.noexc36
  %i.ah = add nsw i32 %i.x, -6
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #11
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56 ; 4 uses

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_M_allocateEm.exit.i.i
  %i.am = load ptr, ptr %1, align 8, !tbaa !60, !noalias !56 ; 4 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !61, !noalias !56
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %i.am, i64 %i.aq, i1 false), !noalias !56
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i

_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i: ; preds = %bb.f, %.noexc.i
  %.not.i8.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i8.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE7reserveEm.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !62, !noalias !56
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.au) #12, !noalias !56
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE7reserveEm.exit.i

_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE7reserveEm.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  store ptr %i.al, ptr %1, align 8, !tbaa !60, !noalias !56
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !61, !noalias !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  store ptr %i.av, ptr %i.aj, align 8, !tbaa !62, !noalias !56
  %wide.trip.count.i = zext nneg i8 %i.w to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE9push_backERKS3_.exit.i, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE7reserveEm.exit.i
  %indvars.iv.i = phi i64 [ 6, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE7reserveEm.exit.i ], [ %indvars.iv.next.i, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE9push_backERKS3_.exit.i ] ; 2 uses
  %.0160459.i = phi i32 [ 0, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE7reserveEm.exit.i ], [ %i.bx, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE9push_backERKS3_.exit.i ]
  %i.aw = shl nuw nsw i64 %indvars.iv.i, 3
  %i.ax = or disjoint i64 %i.aw, 5                ; 3 uses
  %i.ay = and i32 %.0160459.i, 255                ; 2 uses
  %i.az = add nuw nsw i32 %i.ay, %i.ac
  %.sroa.21.0.insert.ext.i.i = zext nneg i32 %i.az to i64
  %.sroa.21.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.21.0.insert.ext.i.i, 32
  %.sroa.0376.0.insert.insert.i = or disjoint i64 %.sroa.21.0.insert.shift.i.i, 354713601
  %.sroa.3373.0.insert.shift.i = shl nuw nsw i64 %i.ax, 16
  %.sroa.2372.0.insert.insert.i = add nuw nsw i64 %.sroa.3373.0.insert.shift.i, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovapsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 %.sroa.0376.0.insert.insert.i, i64 %.sroa.2372.0.insert.insert.i)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !61, !noalias !56 ; 3 uses
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !62, !noalias !56
  %.not.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = trunc nuw i64 %i.ax to i8
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !63, !noalias !56
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !61, !noalias !56
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !61, !noalias !56
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE9push_backERKS3_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %1, align 8, !tbaa !60, !noalias !56 ; 4 uses
  %i.bg = ptrtoint ptr %i.ba to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 7 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775807
  br i1 %i.bj, label %bb.l, label %_ZNKSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #13
          to label %.noexc170.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

.noexc170.i:                                      ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bk = add i64 %.sroa.speculated.i.i.i.i, %i.bi ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bi
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 9223372036854775807)
  %i.bn = select i1 %i.bl, i64 9223372036854775807, i64 %i.bm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #11
          to label %.noexc171.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56 ; 4 uses

.noexc171.i:                                      ; preds = %_ZNKSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi ; 2 uses
  %i.bq = trunc nuw i64 %i.ax to i8
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !63, !noalias !56
  %i.br = icmp sgt i64 %i.bi, 0
  br i1 %i.br, label %bb.m, label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.m:                                             ; preds = %.noexc171.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %i.bf, i64 %i.bi, i1 false), !noalias !56
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.m, %.noexc171.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !62, !noalias !56
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bv) #12, !noalias !56
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bo, ptr %1, align 8, !tbaa !60, !noalias !56
  store ptr %i.bs, ptr %i.ak, align 8, !tbaa !61, !noalias !56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store ptr %i.bw, ptr %i.aj, align 8, !tbaa !62, !noalias !56
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE9push_backERKS3_.exit.i

_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE9push_backERKS3_.exit.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bx = add nuw nsw i32 %i.ay, 16
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit455.i, label %bb.h, !llvm.loop !50

.loopexit455.i:                                   ; preds = %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE9push_backERKS3_.exit.i, %.noexc36
  %i.by = invoke i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelEv(ptr noundef nonnull align 8 dereferenceable(268) %5)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.o:                                             ; preds = %.loopexit455.i
  %i.bz = lshr i64 %i.by, 32                      ; 2 uses
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = sub i32 %i.ca, %i.r                     ; 2 uses
  %i.cc = load i32, ptr %i.n, align 4, !tbaa !57, !noalias !56
  switch i32 %i.cc, label %bb.x [
    i32 1, label %bb.p
    i32 0, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10, !noalias !56
  store <4 x i8> <i8 28, i8 100, i8 108, i8 116>, ptr %2, align 4, !tbaa !63, !noalias !56
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 124, ptr %i.cd, align 4, !tbaa !63, !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10, !noalias !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !56
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !55, !noalias !56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !56
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.cb, i32 noundef %i.ae, i1 noundef zeroext true, ptr nonnull %2, i64 5, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.s, !noalias !56

bb.q:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %3, align 8, !tbaa !60, !noalias !56 ; 3 uses
  %.not.i.i.i172.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i172.i, label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !62, !noalias !56
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #12, !noalias !56
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10, !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10, !noalias !56
  br label %bb.x

bb.s:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %3, align 8, !tbaa !60, !noalias !56 ; 3 uses
  %.not.i.i.i173.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i173.i, label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit174.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !62, !noalias !56
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #12, !noalias !56
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit174.i

_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit174.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10, !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10, !noalias !56
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10, !noalias !56
  store <8 x i8> <i8 28, i8 100, i8 108, i8 116, i8 124, i8 60, i8 52, i8 44>, ptr %4, align 8, !tbaa !63, !noalias !56
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !55, !noalias !56
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !56
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.cb, i32 noundef %i.ae, i1 noundef zeroext false, ptr nonnull %4, i64 8, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.v unwind label %bb.w, !noalias !56

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10, !noalias !56
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10, !noalias !56
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.x:                                             ; preds = %bb.v, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit.i, %bb.o
  %.sroa.3363.0.insert.ext.i = zext i8 %i.j to i64
  %.sroa.3363.0.insert.shift.i = shl nuw nsw i64 %.sroa.3363.0.insert.ext.i, 16
  %.sroa.2362.0.insert.insert.i = or disjoint i64 %.sroa.3363.0.insert.shift.i, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 276594688, i64 %.sroa.2362.0.insert.insert.i)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.y:                                             ; preds = %bb.x
  %.sroa.3353.0.insert.ext.i = zext i8 %i.m to i64
  %.sroa.3353.0.insert.shift.i = shl nuw nsw i64 %.sroa.3353.0.insert.ext.i, 16
  %.sroa.2352.0.insert.insert.i = or disjoint i64 %.sroa.3353.0.insert.shift.i, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 275546112, i64 %.sroa.2352.0.insert.insert.i)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 276070400, i64 69063180289)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 268730368, i64 137782657025)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 268730368, i64 34695577601)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 268730368, i64 335839233)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 206496366593, i64 268730368)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ae:                                            ; preds = %bb.ad
  %.sroa.3.0.insert.ext.i.tr.i = zext i8 %i.k to i64
  %i.cy = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.tr.i, 16 ; 2 uses
  %.sroa.0279.0.insert.insert.i = or disjoint i64 %i.cy, 34695315457
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 275021824, i64 %.sroa.0279.0.insert.insert.i)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.af:                                            ; preds = %bb.ae
  %.sroa.0264.0.insert.insert.i = or disjoint i64 %i.cy, 69055053825
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 268730368, i64 %.sroa.0264.0.insert.insert.i)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 240856104961, i64 268730368)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ah:                                            ; preds = %bb.ag
  %.sroa.3256.0.insert.ext.i = zext i8 %i.l to i64
  %.sroa.3256.0.insert.shift.i = shl nuw nsw i64 %.sroa.3256.0.insert.ext.i, 16
  %.sroa.2255.0.insert.insert.i = or disjoint i64 %.sroa.3256.0.insert.shift.i, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jmpENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 %.sroa.2255.0.insert.insert.i)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ai:                                            ; preds = %bb.ah
  %i.cz = invoke i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelEv(ptr noundef nonnull align 8 dereferenceable(268) %5)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.aj:                                            ; preds = %bb.ai
  %i.da = load i32, ptr %i.n, align 4, !tbaa !57, !noalias !56
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %bb.aj
  %wide.trip.count470.i = zext nneg i8 %i.w to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ak, %.preheader.preheader.i
  %indvars.iv467.i = phi i64 [ 6, %.preheader.preheader.i ], [ %indvars.iv.next468.i, %bb.ak ] ; 2 uses
  %.0161462.i = phi i32 [ 0, %.preheader.preheader.i ], [ %i.df, %bb.ak ]
  %i.dc = shl i64 %indvars.iv467.i, 19
  %i.dd = and i32 %.0161462.i, 255                ; 2 uses
  %i.de = add nuw nsw i32 %i.dd, %i.ac
  %.sroa.21.0.insert.ext.i189.i = zext nneg i32 %i.de to i64
  %.sroa.21.0.insert.shift.i190.i = shl nuw nsw i64 %.sroa.21.0.insert.ext.i189.i, 32
  %.sroa.0247.0.insert.insert.i = or disjoint i64 %.sroa.21.0.insert.shift.i190.i, 354713601
  %.sroa.2250.0.insert.insert.i = or i64 %i.dc, 268795904
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovapsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 %.sroa.2250.0.insert.insert.i, i64 %.sroa.0247.0.insert.insert.i)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ak:                                            ; preds = %.preheader.i
  %indvars.iv.next468.i = add nuw nsw i64 %indvars.iv467.i, 1 ; 2 uses
  %i.df = add nuw nsw i32 %i.dd, 16
  %exitcond471.not.i = icmp eq i64 %indvars.iv.next468.i, %wide.trip.count470.i
  br i1 %exitcond471.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !51

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %_ZNKSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.h, %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %.loopexit.i, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.loopexit455.i, %bb.l, %_ZNSt12_Vector_baseIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EE11_M_allocateEm.exit.i.i
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %bb.ak, %bb.aj
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643addENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 270827520, i64 %.sroa.0389.0.insert.insert.i)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.al:                                            ; preds = %.loopexit.i
  %i.dg = load i32, ptr %i.n, align 4, !tbaa !57, !noalias !56
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643popENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 271351808)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643popENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 271876096)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643popENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 272400384)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ap:                                            ; preds = %bb.ao, %bb.al
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643popENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 276594688)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643popENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 276070400)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643popENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 275546112)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643popENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 275021824)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643popENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 270303232)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.au:                                            ; preds = %bb.at
  %i.di = load i32, ptr %i.n, align 4, !tbaa !57, !noalias !56
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643popENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %5, i64 271351808)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.aw:                                            ; preds = %bb.av, %bb.au
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643retEv(ptr noundef nonnull align 8 dereferenceable(268) %5)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ax:                                            ; preds = %bb.aw
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !55, !noalias !56
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !56
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.r, i32 noundef -1)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

bb.ay:                                            ; preds = %bb.ax
  %i.dn = load ptr, ptr %1, align 8, !tbaa !60, !noalias !56 ; 3 uses
  %.not.i.i.i193.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i193.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !62, !noalias !56
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #12, !noalias !56
  br label %bb.bb

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit174.i
  %.pn166.pn.i = phi { ptr, i32 } [ %i.cx, %bb.w ], [ %i.cn, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit174.i ], [ %lpad.loopexit.split-lp56, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dt = load ptr, ptr %1, align 8, !tbaa !60, !noalias !56 ; 3 uses
  %.not.i.i.i195.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i195.i, label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit196.i, label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !62, !noalias !56
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #12, !noalias !56
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit196.i

_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit196.i: ; preds = %bb.ba, %.loopexit.split-lp.loopexit.split-lp.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10, !noalias !56
  br label %.body

bb.bb:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10, !noalias !56
  %i.dz = invoke noundef zeroext i1 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648finalizeEv(ptr noundef nonnull align 8 dereferenceable(268) %5)
          to label %bb.bc unwind label %bb.bi     ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8
  invoke void %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = load ptr, ptr %5, align 8, !tbaa !65    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !66
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = shl i64 %i.ej, 32
  %i.el = ashr exact i64 %i.ek, 32
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !65 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !66
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = shl i64 %i.es, 32
  %i.eu = ashr exact i64 %i.et, 32
  invoke void @_ZN4Luau7CodeGen13CodeAllocator8allocateEPKhmS3_m(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::CodeGen::CodeAllocationData") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.ed, ptr noundef %i.ee, i64 noundef %i.el, ptr noundef %i.en, i64 noundef %i.eu)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ev, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !90
  %.not = icmp ne ptr %i.ew, null                 ; 2 uses
  br i1 %.not, label %bb.bg, label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.body

bb.bg:                                            ; preds = %bb.be
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !91 ; 2 uses
  %i.fa = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  invoke void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.bz)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.q
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !92
  %.sroa.9.20.extract.shift = lshr i64 %i.cz, 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.9.20.extract.shift
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !93
  br label %bb.bj

bb.bi:                                            ; preds = %bb.a, %bb.e, %.noexc34, %.noexc33, %bb.d, %.noexc31, %.noexc30, %.noexc29, %.noexc28, %.noexc27, %.noexc26, %bb.c, %.noexc24, %.noexc23, %.noexc22, %.noexc21, %.noexc20, %.noexc, %bb.b, %bb.bb, %bb.bc, %bb.bg
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bj:                                            ; preds = %bb.be, %bb.bh
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX64D1Ev(ptr noundef nonnull align 8 dead_on_return(268) dereferenceable(268) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.not

.body:                                            ; preds = %bb.bf, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit196.i, %bb.bi
  %.pn.pn = phi { ptr, i32 } [ %.pn166.pn.i, %_ZNSt6vectorIN4Luau7CodeGen3X6411RegisterX64ESaIS3_EED2Ev.exit196.i ], [ %i.ex, %bb.bf ], [ %i.fh, %bb.bi ]
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX64D1Ev(ptr noundef nonnull align 8 dead_on_return(268) dereferenceable(268) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
