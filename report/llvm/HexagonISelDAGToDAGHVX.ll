Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN12_GLOBAL__N_111ResultStack4pushERKNS_12NodeTemplateE:bb.a
  br i1 %i.as, label %bb.h, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_15OpRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i, !prof !301

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIN12_GLOBAL__N_15OpRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i: ; preds = %bb.g
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #25 ; 4 uses
  %.val7.i.i.pre.i.i = load ptr, ptr %i.ak, align 8, !tbaa !298 ; 2 uses
  %.val8.i.i.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !298 ; 2 uses
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !281
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !282
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %.val7.i.i.pre.i.i, %.val8.i.i.pre.i.i
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_112NodeTemplateC2ERKS0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_15OpRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.at, %_ZNSt12_Vector_baseIN12_GLOBAL__N_15OpRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val7.i.i.pre.i.i, %_ZNSt12_Vector_baseIN12_GLOBAL__N_15OpRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.06.08.i.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !291
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %.val8.i.i.pre.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_112NodeTemplateC2ERKS0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !868

_ZN12_GLOBAL__N_112NodeTemplateC2ERKS0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN12_GLOBAL__N_15OpRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN12_GLOBAL__N_15OpRefESaIS1_EEC2EmRKS2_.exit.i.i.thread.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %_ZNSt12_Vector_baseIN12_GLOBAL__N_15OpRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i ], [ null, %_ZNSt12_Vector_baseIN12_GLOBAL__N_15OpRefESaIS1_EEC2EmRKS2_.exit.i.i.thread.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.ay, align 8, !tbaa !283
  br i1 %i.ab, label %_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_112NodeTemplateC2ERKS0_.exit.i.i, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %i.ah, %_ZN12_GLOBAL__N_112NodeTemplateC2ERKS0_.exit.i.i ] ; 4 uses
  %.092.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %_ZN12_GLOBAL__N_112NodeTemplateC2ERKS0_.exit.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.092.i.i.i.i.i, i64 6, i1 false), !alias.scope !875
  %i.az = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !298, !alias.scope !874
  store <2 x ptr> %i.bb, ptr %i.az, align 8, !tbaa !298, !alias.scope !873
  %i.bc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !282, !alias.scope !874
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !282, !alias.scope !873
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false), !alias.scope !874
  %i.bf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !872

_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN12_GLOBAL__N_112NodeTemplateC2ERKS0_.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ah, %_ZN12_GLOBAL__N_112NodeTemplateC2ERKS0_.exit.i.i ], [ %i.bg, %.lr.ph.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i27.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !300
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.bk) #27
  br label %_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !284
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !285
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !300
  br label %_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZN12_GLOBAL__N_112NodeTemplateC2ERKS0_.exit.i, %_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.val2 = phi ptr [ %i.v, %_ZN12_GLOBAL__N_112NodeTemplateC2ERKS0_.exit.i ], [ %i.bh, %_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %.val = phi ptr [ %.val.pre, %_ZN12_GLOBAL__N_112NodeTemplateC2ERKS0_.exit.i ], [ %i.ah, %_ZNSt6vectorIN12_GLOBAL__N_112NodeTemplateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.bm = ptrtoint ptr %.val2 to i64
  %i.bn = ptrtoint ptr %.val to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = lshr exact i64 %i.bo, 5
  %i.bq = trunc i64 %i.bp to i32
  %i.br = add i32 %i.bq, -1
  ret i32 %i.br
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm11HvxSelector5packsEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefES3_RNS1_11ResultStackENS_15MutableArrayRefIiEEj(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %.0.val, i64 %.8.val, ptr nofree noundef byval(%"struct.(anonymous namespace)::OpRef") align 8 captures(none) %2, ptr nofree noundef byval(%"struct.(anonymous namespace)::OpRef") align 8 captures(none) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %4, ptr nofree captures(none) %5, i64 %6) unnamed_addr #1 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %7 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 4 uses
  %8 = alloca [2 x %"struct.(anonymous namespace)::OpRef"], align 16 ; 6 uses
  %9 = alloca %"class.llvm::SmallVector", align 8 ; 13 uses
  %10 = alloca %"class.llvm::SmallVector.225", align 8 ; 8 uses
  %11 = alloca %"struct.(anonymous namespace)::ShuffleMask", align 8 ; 5 uses
  %12 = alloca %"class.llvm::SmallVector.225", align 8 ; 9 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %.sroa.075 = alloca [40 x i8], align 8          ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %14 = alloca %"struct.std::pair.228", align 8   ; 6 uses
  %.sroa.072 = alloca [64 x i8], align 8          ; 6 uses
  %.sroa.045 = alloca %"class.llvm::SDValue", align 8 ; 4 uses
  %i.c = alloca [2 x i32], align 4                ; 5 uses
  %15 = alloca %"struct.std::pair.228", align 8   ; 6 uses
  %.sroa.533 = alloca [24 x i8], align 4          ; 4 uses
  %.sroa.634 = alloca [24 x i8], align 4          ; 4 uses
  %i.d = alloca [2 x i32], align 4                ; 5 uses
  %16 = alloca %"class.llvm::SmallVector", align 8 ; 16 uses
  %17 = alloca %"class.llvm::SmallVector", align 8 ; 7 uses
  %.val236 = load ptr, ptr %2, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.val237 = load i32, ptr %i.e, align 8          ; 2 uses
  %i.f = icmp ne ptr %.val236, null
  %i.g = and i32 %.val237, 268435456
  %.not.i = icmp eq i32 %i.g, 0
  %i.h = select i1 %i.f, i1 true, i1 %.not.i
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val234 = load ptr, ptr %3, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.val235 = load i32, ptr %i.i, align 8          ; 2 uses
  %i.j = icmp ne ptr %.val234, null
  %i.k = and i32 %.val235, 268435456
  %.not.i248 = icmp eq i32 %i.k, 0
  %i.l = select i1 %i.j, i1 true, i1 %.not.i248
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 16, i1 false), !alias.scope !893
  store i32 268435456, ptr %i.m, align 8, !tbaa !293, !alias.scope !893
  br label %bb.bo

bb.d:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %.val235, 0
  br i1 %i.n, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %.8.val, 1
  br i1 %i.o, label %bb.f, label %bb.g, !prof !35

bb.f:                                             ; preds = %bb.e
  %.idx.i = shl nuw nsw i64 %.8.val, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %.0.val, i64 %.idx.i, i1 false)
  br label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i64 %.8.val, 1
  br i1 %i.p, label %bb.h, label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %.0.val, align 4, !tbaa !34
  store i32 %i.q, ptr %5, align 4, !tbaa !34
  br label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit

_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !291
  br label %bb.bo

bb.i:                                             ; preds = %bb.d
  %i.r = icmp slt i32 %.val237, 0
  br i1 %i.r, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.s = icmp ugt i64 %.8.val, 1
  br i1 %i.s, label %bb.k, label %bb.l, !prof !35

bb.k:                                             ; preds = %bb.j
  %.idx.i249 = shl nuw nsw i64 %.8.val, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %.0.val, i64 %.idx.i249, i1 false)
  br label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit250

bb.l:                                             ; preds = %bb.j
  %i.t = icmp eq i64 %.8.val, 1
  br i1 %i.t, label %bb.m, label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit250

bb.m:                                             ; preds = %bb.l
  %i.u = load i32, ptr %.0.val, align 4, !tbaa !34
  store i32 %i.u, ptr %5, align 4, !tbaa !34
  br label %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit250

_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit250: ; preds = %bb.k, %bb.l, %bb.m
  %i.v = trunc i64 %6 to i32                      ; 5 uses
  %.not17.i = icmp eq i32 %i.v, 0
  br i1 %.not17.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit250
  %i.w = and i64 %6, 4294967295                   ; 3 uses
  %i.x = sub i32 0, %i.v                          ; 2 uses
  %min.iters.check25 = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check25, label %.lr.ph.i.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %.lr.ph.preheader.i
  %n.vec27 = and i64 %6, 4294967292               ; 3 uses
  %broadcast.splatinsert28 = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %broadcast.splat29 = shufflevector <4 x i32> %broadcast.splatinsert28, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert30 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat31 = shufflevector <4 x i32> %broadcast.splatinsert30, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body32

vector.body32:                                    ; preds = %pred.store.continue42, %vector.ph26
  %index33 = phi i64 [ 0, %vector.ph26 ], [ %index.next43, %pred.store.continue42 ] ; 5 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index33 ; 2 uses
  %wide.load34 = load <4 x i32>, ptr %i.y, align 4, !tbaa !34 ; 3 uses
  %i.z = icmp sgt <4 x i32> %wide.load34, splat (i32 -1) ; 4 uses
  %i.aa = icmp slt <4 x i32> %wide.load34, %broadcast.splat31
  %i.ab = select <4 x i1> %i.aa, <4 x i32> %broadcast.splat31, <4 x i32> %broadcast.splat29
  %i.ac = add <4 x i32> %i.ab, %wide.load34       ; 4 uses
  %i.ad = extractelement <4 x i1> %i.z, i64 0
  br i1 %i.ad, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %vector.body32
  %i.ae = extractelement <4 x i32> %i.ac, i64 0
  store i32 %i.ae, ptr %i.y, align 4, !tbaa !34
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %vector.body32
  %i.af = extractelement <4 x i1> %i.z, i64 1
  br i1 %i.af, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = extractelement <4 x i32> %i.ac, i64 1
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !34
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %i.aj = extractelement <4 x i1> %i.z, i64 2
  br i1 %i.aj, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = extractelement <4 x i32> %i.ac, i64 2
  store i32 %i.am, ptr %i.al, align 4, !tbaa !34
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.an = extractelement <4 x i1> %i.z, i64 3
  br i1 %i.an, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = extractelement <4 x i32> %i.ac, i64 3
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !34
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %index.next43 = add nuw i64 %index33, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next43, %n.vec27
  br i1 %i.ar, label %middle.block44, label %vector.body32, !llvm.loop !878

middle.block44:                                   ; preds = %pred.store.continue42
  %cmp.n45 = icmp eq i64 %i.w, %n.vec27
  br i1 %cmp.n45, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block44
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec27, %middle.block44 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !34 ; 3 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.av = icmp slt i32 %i.at, %i.v
  %.sink.p.i = select i1 %i.av, i32 %i.v, i32 %i.x
  %.sink.i = add i32 %.sink.p.i, %i.at
  store i32 %.sink.i, ptr %i.as, align 4, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i251 = icmp eq i64 %indvars.iv.next.i, %i.w
  br i1 %.not.i251, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i, !llvm.loop !879

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit: ; preds = %bb.n, %middle.block44, %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !291
  br label %bb.bo

bb.o:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !243 ; 4 uses
  switch i32 %i.ax, label %_ZN4llvm3MVT11getVectorVTES0_j.exit [
    i32 1, label %_ZN4llvm3MVT11getVectorVTES0_j.exit333
    i32 2, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread203
    i32 3, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread206
    i32 4, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread209
    i32 5, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread
    i32 6, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split121
    i32 7, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split122
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread212
    i32 16, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread215
    i32 32, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread218
    i32 64, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126
    i32 128, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127
    i32 256, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128
    i32 512, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129
    i32 1024, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split130
  ]

_ZN4llvm3MVT11getVectorVTES0_j.exit.thread203:    ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit333

_ZN4llvm3MVT11getVectorVTES0_j.exit.thread206:    ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit333

_ZN4llvm3MVT11getVectorVTES0_j.exit.thread209:    ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit333

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split121: ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split122: ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread

_ZN4llvm3MVT11getVectorVTES0_j.exit.thread212:    ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit333

_ZN4llvm3MVT11getVectorVTES0_j.exit.thread215:    ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit333

_ZN4llvm3MVT11getVectorVTES0_j.exit.thread218:    ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit333

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126: ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127: ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128: ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129: ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split130: ; preds = %bb.o
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread

_ZN4llvm3MVT11getVectorVTES0_j.exit.thread:       ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split130, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split122, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split121, %bb.o
  %.sroa.0.0.i.ph = phi i16 [ 54, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split130 ], [ 46, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split122 ], [ 45, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split121 ], [ 50, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126 ], [ 53, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129 ], [ 52, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128 ], [ 51, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127 ], [ 44, %bb.o ]
  %i.ay = shl nuw nsw i32 %i.ax, 1
  br label %bb.p

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %bb.o
  %i.az = shl i32 %i.ax, 1                        ; 2 uses
  %switch.tableidx = add i32 %i.az, -2            ; 3 uses
  %i.ba = icmp ult i32 %switch.tableidx, 63
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 4611686019501146197, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond47 = select i1 %i.ba, i1 %switch.lobit, i1 false
  br i1 %or.cond47, label %switch.lookup, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread
  %i.bb = phi i32 [ %i.ay, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread ], [ %i.az, %_ZN4llvm3MVT11getVectorVTES0_j.exit ] ; 2 uses
  %.sroa.0.0.i200 = phi i16 [ %.sroa.0.0.i.ph, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread ], [ 0, %_ZN4llvm3MVT11getVectorVTES0_j.exit ] ; 5 uses
  %i.bc = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.bb)
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %.split, label %bb.q

.split:                                           ; preds = %bb.p
  %i.be = tail call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %i.bb, i1 true)
  switch i32 %i.be, label %bb.q [
    i32 7, label %_ZN4llvm3MVT11getVectorVTES0_j.exit333
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split136
    i32 9, label %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split137
    i32 10, label %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split138
  ]

bb.q:                                             ; preds = %bb.p, %.split
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit333

_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split136: ; preds = %.split
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit333

_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split137: ; preds = %.split
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit333

_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split138: ; preds = %.split
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit333

switch.lookup:                                    ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit
  %i.bf = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm11HvxSelector7perfectEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE, i64 %i.bf
  %switch.load = load i8, ptr %switch.gep, align 2
  %switch.ext = zext i8 %switch.load to i16
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit333

_ZN4llvm3MVT11getVectorVTES0_j.exit333:           ; preds = %switch.lookup, %bb.o, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread218, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread215, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread212, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread209, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread206, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread203, %.split, %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split138, %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split137, %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split136, %bb.q
  %.sroa.0.0.i199 = phi i16 [ %.sroa.0.0.i200, %bb.q ], [ 0, %switch.lookup ], [ 43, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread209 ], [ %.sroa.0.0.i200, %.split ], [ %.sroa.0.0.i200, %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split136 ], [ 42, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread206 ], [ %.sroa.0.0.i200, %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split137 ], [ 40, %bb.o ], [ 49, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread218 ], [ 48, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread215 ], [ 47, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread212 ], [ %.sroa.0.0.i200, %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split138 ], [ 41, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread203 ] ; 5 uses
  %.sroa.0.0.i332 = phi i16 [ 0, %bb.q ], [ %switch.ext, %switch.lookup ], [ 47, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread209 ], [ 51, %.split ], [ 52, %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split136 ], [ 45, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread206 ], [ 53, %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split137 ], [ 41, %bb.o ], [ 50, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread218 ], [ 49, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread215 ], [ 48, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread212 ], [ 54, %_ZN4llvm3MVT11getVectorVTES0_j.exit333.fold.split138 ], [ 43, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread203 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !291
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !291
  %i.bh = trunc i64 %.8.val to i32                ; 5 uses
  %i.bi = lshr i32 %i.ax, 1                       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bj, ptr %9, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 128, ptr %i.bl, align 4, !tbaa !33
  %.idx.i252 = shl i64 %.8.val, 2                 ; 2 uses
  %i.bm = icmp ugt i64 %.8.val, 128
  br i1 %i.bm, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit333
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %9, ptr noundef nonnull %i.bj, i64 noundef %.8.val, i64 noundef 4) #23
  %.pre8.pre.i.i = load i32, ptr %i.bk, align 8, !tbaa !32
  %i.bn = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %9, align 8, !tbaa !31
  br label %bb.r

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit333
  %.not.i.i.i = icmp eq i64 %.8.val, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i
  %i.bo = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ %i.bj, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.bn, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 4 %.0.val, i64 %.idx.i252, i1 false)
  %.pre.i.i = load i32, ptr %i.bk, align 8, !tbaa !32
  br label %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %bb.r
  %i.bq = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.r ]
  %i.br = add i32 %i.bq, %i.bh
  store i32 %i.br, ptr %i.bk, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %.0.val, ptr %11, align 8, !tbaa !286
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.8.val, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !250
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i32 -1, ptr %i.bs, align 8, !tbaa !289
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  store i32 -1, ptr %i.bt, align 4, !tbaa !290
  %.not12.i = icmp eq i64 %.8.val, 0
  br i1 %.not12.i, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit264, label %.lr.ph.i254.preheader

.lr.ph.i254.preheader:                            ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit
  %i.bu = add i64 %.idx.i252, -4                  ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm11HvxSelector5packsEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefES3_RNS1_11ResultStackENS_15MutableArrayRefIiEEj:bb.a
  %i.ja = and i32 %i.iz, 268435455
  %i.jb = or disjoint i32 %i.ja, 1610612736
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.jc = getelementptr inbounds nuw i8, ptr %15, i64 24
  %.232 = select i1 %i.in, ptr %2, ptr %3
  %.233 = select i1 %i.in, ptr %3, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull readonly align 8 dereferenceable(24) %.232, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull readonly align 8 dereferenceable(24) %.233, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.533)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.634)
  %.sroa.533.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.533, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.533.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %15, i64 20, i1 false), !tbaa.struct !291
  %i.jd = getelementptr inbounds nuw i8, ptr %15, i64 24
  %.sroa.634.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.634, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.634.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %i.jd, i64 20, i1 false), !tbaa.struct !291
  %i.je = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25 ; 7 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.je, i8 0, i64 16, i1 false)
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store i32 %i.jb, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.533, i64 24, i1 false)
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.634.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.634, i64 24, i1 false)
  call fastcc void @_ZN12_GLOBAL__N_111ResultStack4pushEjN4llvm3MVTEOSt6vectorINS_5OpRefESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 3177, i16 %.sroa.0.0.i199, ptr nonnull %i.je, ptr nonnull %i.jf)
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef 72) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.634)
  %.val224 = load ptr, ptr %i.gt, align 8, !tbaa !284
  %.val225 = load ptr, ptr %i.gu, align 8, !tbaa !285
  %i.jg = ptrtoint ptr %.val225 to i64
  %i.jh = ptrtoint ptr %.val224 to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = lshr exact i64 %i.ji, 5
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = add i32 %i.jk, 268435455
  %i.jm = and i32 %i.jl, 268435455
  %i.jn = or disjoint i32 %i.jm, 1610612736
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 %i.jn, ptr %i.e, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 %.4, ptr %i.d, align 4, !tbaa !34
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.4178, ptr %i.jo, align 4, !tbaa !34
  %i.jp = load ptr, ptr %9, align 8, !tbaa !31
  call fastcc void @_ZL15packSegmentMaskN4llvm8ArrayRefIiEENS0_IjEEjNS_15MutableArrayRefIiEE(ptr %.0.val, i64 %.8.val, ptr nonnull %i.d, i64 2, i32 noundef %i.bi, ptr %i.jp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit277, %bb.at, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit280, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge, %bb.au
  %i.jq = load ptr, ptr %9, align 8, !tbaa !31    ; 4 uses
  %i.jr = load i32, ptr %i.bk, align 8, !tbaa !32 ; 4 uses
  %i.js = zext i32 %i.jr to i64                   ; 3 uses
  %.idx.i285 = shl nuw nsw i64 %i.js, 2           ; 2 uses
  %.not12.i286 = icmp eq i32 %i.jr, 0
  br i1 %.not12.i286, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294.thread, label %.lr.ph.i287.preheader

.lr.ph.i287.preheader:                            ; preds = %bb.av
  %i.jt = add nsw i64 %.idx.i285, -4              ; 3 uses
  %i.ju = lshr exact i64 %i.jt, 2
  %i.jv = add nuw nsw i64 %i.ju, 1                ; 2 uses
  %i.jw = icmp eq i64 %i.jt, 0
  br i1 %i.jw, label %.lr.ph.i287.epil.preheader, label %.lr.ph.i287.preheader.new

.lr.ph.i287.preheader.new:                        ; preds = %.lr.ph.i287.preheader
  %unroll_iter71 = and i64 %i.jv, 9223372036854775806
  br label %.lr.ph.i287

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294.thread: ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.jx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.jx, ptr %16, align 8, !tbaa !31
  %i.jy = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 128, ptr %i.jz, align 4, !tbaa !33
  br label %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit300

.lr.ph.i287:                                      ; preds = %bb.aw, %.lr.ph.i287.preheader.new
  %.sroa.11.0 = phi i32 [ -1, %.lr.ph.i287.preheader.new ], [ %.sroa.11.1.1, %bb.aw ]
  %.sroa.8.0 = phi i32 [ -1, %.lr.ph.i287.preheader.new ], [ %.sroa.8.1.1, %bb.aw ]
  %.013.i288 = phi ptr [ %i.jq, %.lr.ph.i287.preheader.new ], [ %i.kw, %bb.aw ] ; 3 uses
  %.else.val.i289 = phi i32 [ -1, %.lr.ph.i287.preheader.new ], [ %i.kv, %bb.aw ] ; 3 uses
  %i.ka = phi i32 [ -1, %.lr.ph.i287.preheader.new ], [ %i.ku, %bb.aw ] ; 3 uses
  %niter72 = phi i64 [ 0, %.lr.ph.i287.preheader.new ], [ %niter72.next.1, %bb.aw ]
  %i.kb = load i32, ptr %.013.i288, align 4, !tbaa !34 ; 5 uses
  %i.kc = icmp eq i32 %i.kb, -1
  br i1 %i.kc, label %.lr.ph.i287.1, label %.cont.i290

.cont.i290:                                       ; preds = %.lr.ph.i287
  %i.kd = icmp eq i32 %.else.val.i289, -1
  %i.ke = call i32 @llvm.smin.i32(i32 %i.kb, i32 %.else.val.i289)
  %i.kf = select i1 %i.kd, i32 %i.kb, i32 %i.ke   ; 2 uses
  %i.kg = icmp eq i32 %i.ka, -1
  %i.kh = call i32 @llvm.smax.i32(i32 %i.ka, i32 %i.kb)
  %i.ki = select i1 %i.kg, i32 %i.kb, i32 %i.kh   ; 2 uses
  br label %.lr.ph.i287.1

.lr.ph.i287.1:                                    ; preds = %.cont.i290, %.lr.ph.i287
  %.sroa.11.1 = phi i32 [ %.sroa.11.0, %.lr.ph.i287 ], [ %i.ki, %.cont.i290 ]
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %.lr.ph.i287 ], [ %i.kf, %.cont.i290 ]
  %i.kj = phi i32 [ %i.ka, %.lr.ph.i287 ], [ %i.ki, %.cont.i290 ] ; 3 uses
  %i.kk = phi i32 [ %.else.val.i289, %.lr.ph.i287 ], [ %i.kf, %.cont.i290 ] ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.013.i288, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !34 ; 5 uses
  %i.kn = icmp eq i32 %i.km, -1
  br i1 %i.kn, label %bb.aw, label %.cont.i290.1

.cont.i290.1:                                     ; preds = %.lr.ph.i287.1
  %i.ko = icmp eq i32 %i.kk, -1
  %i.kp = call i32 @llvm.smin.i32(i32 %i.km, i32 %i.kk)
  %i.kq = select i1 %i.ko, i32 %i.km, i32 %i.kp   ; 2 uses
  %i.kr = icmp eq i32 %i.kj, -1
  %i.ks = call i32 @llvm.smax.i32(i32 %i.kj, i32 %i.km)
  %i.kt = select i1 %i.kr, i32 %i.km, i32 %i.ks   ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.cont.i290.1, %.lr.ph.i287.1
  %.sroa.11.1.1 = phi i32 [ %.sroa.11.1, %.lr.ph.i287.1 ], [ %i.kt, %.cont.i290.1 ] ; 3 uses
  %.sroa.8.1.1 = phi i32 [ %.sroa.8.1, %.lr.ph.i287.1 ], [ %i.kq, %.cont.i290.1 ] ; 3 uses
  %i.ku = phi i32 [ %i.kj, %.lr.ph.i287.1 ], [ %i.kt, %.cont.i290.1 ] ; 2 uses
  %i.kv = phi i32 [ %i.kk, %.lr.ph.i287.1 ], [ %i.kq, %.cont.i290.1 ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.013.i288, i64 8 ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292.unr-lcssa, label %.lr.ph.i287

_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292.unr-lcssa: ; preds = %bb.aw
  %i.kx = and i64 %i.jt, 4
  %lcmp.mod67.not.not = icmp eq i64 %i.kx, 0
  br i1 %lcmp.mod67.not.not, label %.lr.ph.i287.epil.preheader, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292

.lr.ph.i287.epil.preheader:                       ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292.unr-lcssa, %.lr.ph.i287.preheader
  %.sroa.11.0.epil.init = phi i32 [ -1, %.lr.ph.i287.preheader ], [ %.sroa.11.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292.unr-lcssa ]
  %.sroa.8.0.epil.init = phi i32 [ -1, %.lr.ph.i287.preheader ], [ %.sroa.8.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292.unr-lcssa ]
  %.013.i288.epil.init = phi ptr [ %i.jq, %.lr.ph.i287.preheader ], [ %i.kw, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292.unr-lcssa ]
  %.else.val.i289.epil.init = phi i32 [ -1, %.lr.ph.i287.preheader ], [ %i.kv, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292.unr-lcssa ] ; 2 uses
  %.epil.init66 = phi i32 [ -1, %.lr.ph.i287.preheader ], [ %i.ku, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292.unr-lcssa ] ; 2 uses
  %lcmp.mod70 = trunc i64 %i.jv to i1
  call void @llvm.assume(i1 %lcmp.mod70)
  %i.ky = load i32, ptr %.013.i288.epil.init, align 4, !tbaa !34 ; 5 uses
  %i.kz = icmp eq i32 %i.ky, -1
  br i1 %i.kz, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292, label %.cont.i290.epil

.cont.i290.epil:                                  ; preds = %.lr.ph.i287.epil.preheader
  %i.la = icmp eq i32 %.else.val.i289.epil.init, -1
  %i.lb = call i32 @llvm.smin.i32(i32 %i.ky, i32 %.else.val.i289.epil.init)
  %i.lc = select i1 %i.la, i32 %i.ky, i32 %i.lb
  %i.ld = icmp eq i32 %.epil.init66, -1
  %i.le = call i32 @llvm.smax.i32(i32 %.epil.init66, i32 %i.ky)
  %i.lf = select i1 %i.ld, i32 %i.ky, i32 %i.le
  br label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292

_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292: ; preds = %.lr.ph.i287.epil.preheader, %.cont.i290.epil, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292.unr-lcssa
  %.sroa.11.1.lcssa = phi i32 [ %.sroa.11.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292.unr-lcssa ], [ %.sroa.11.0.epil.init, %.lr.ph.i287.epil.preheader ], [ %i.lf, %.cont.i290.epil ]
  %.sroa.8.1.lcssa = phi i32 [ %.sroa.8.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292.unr-lcssa ], [ %.sroa.8.0.epil.init, %.lr.ph.i287.epil.preheader ], [ %i.lc, %.cont.i290.epil ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.lg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.lg, ptr %16, align 8, !tbaa !31
  %i.lh = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i32 0, ptr %i.lh, align 8, !tbaa !32
  %i.li = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 128, ptr %i.li, align 4, !tbaa !33
  %i.lj = icmp ugt i32 %i.jr, 128
  br i1 %i.lj, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i298, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i298: ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %16, ptr noundef nonnull %i.lg, i64 noundef %i.js, i64 noundef 4) #23
  %.pre8.pre.i.i299 = load i32, ptr %i.lh, align 8, !tbaa !32
  %i.lk = zext i32 %.pre8.pre.i.i299 to i64
  %.pre166 = load ptr, ptr %16, align 8, !tbaa !31
  br label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294: ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i298
  %i.ll = phi ptr [ %.pre166, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i298 ], [ %i.lg, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292 ]
  %.pre8.i5.i296 = phi i64 [ %i.lk, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i298 ], [ 0, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit292 ]
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %.pre8.i5.i296
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lm, ptr align 4 %i.jq, i64 %.idx.i285, i1 false)
  %.pre.i.i297 = load i32, ptr %i.lh, align 8, !tbaa !32
  %i.ln = sub nsw i32 %.sroa.11.1.lcssa, %.sroa.8.1.lcssa
  br label %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit300

_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit300: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294.thread, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294
  %i.lo = phi ptr [ %i.jy, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294.thread ], [ %i.lh, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294 ] ; 2 uses
  %i.lp = phi ptr [ %i.jx, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294.thread ], [ %i.lg, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294 ]
  %i.lq = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294.thread ], [ %.pre.i.i297, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294 ]
  %i.lr = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294.thread ], [ %i.ln, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i294 ]
  %i.ls = add i32 %i.lq, %i.jr                    ; 2 uses
  store i32 %i.ls, ptr %i.lo, align 8, !tbaa !32
  %i.lt = load i32, ptr %i.aw, align 8, !tbaa !243
  %.not199 = icmp slt i32 %i.lr, %i.lt
  br i1 %.not199, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit300
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(528) %17, ptr %i.jq, i64 %i.js)
  %i.lu = load ptr, ptr %17, align 8, !tbaa !31   ; 10 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !32 ; 7 uses
  %i.lx = zext i32 %i.lw to i64                   ; 3 uses
  %.not17.i301 = icmp eq i32 %i.lw, 0
  br i1 %.not17.i301, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319, label %.lr.ph.i303.preheader

.lr.ph.i303.preheader:                            ; preds = %bb.ax
  %i.ly = sub i32 0, %i.lw                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.lw, 4
  br i1 %min.iters.check, label %.lr.ph.i303.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i303.preheader
  %n.vec = and i64 %i.lx, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ly, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2 = insertelement <4 x i32> poison, i32 %i.lw, i64 0
  %broadcast.splat3 = shufflevector <4 x i32> %broadcast.splatinsert2, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue9, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue9 ] ; 5 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %index ; 2 uses
  %wide.load.a = load <4 x i32>, ptr %i.lz, align 4, !tbaa !34 ; 3 uses
  %i.ma = icmp sgt <4 x i32> %wide.load.a, splat (i32 -1) ; 4 uses
  %i.mb = icmp slt <4 x i32> %wide.load.a, %broadcast.splat3
  %i.mc = select <4 x i1> %i.mb, <4 x i32> %broadcast.splat3, <4 x i32> %broadcast.splat
  %i.md = add <4 x i32> %i.mc, %wide.load.a       ; 4 uses
  %i.me = extractelement <4 x i1> %i.ma, i64 0
  br i1 %i.me, label %pred.store.if.a, label %pred.store.continue.a

pred.store.if.a:                                  ; preds = %vector.body
  %i.mf = extractelement <4 x i32> %i.md, i64 0
  store i32 %i.mf, ptr %i.lz, align 4, !tbaa !34
  br label %pred.store.continue.a

pred.store.continue.a:                            ; preds = %pred.store.if.a, %vector.body
  %i.mg = extractelement <4 x i1> %i.ma, i64 1
  br i1 %i.mg, label %pred.store.if4, label %pred.store.continue5

pred.store.if4:                                   ; preds = %pred.store.continue.a
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %index
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mj = extractelement <4 x i32> %i.md, i64 1
  store i32 %i.mj, ptr %i.mi, align 4, !tbaa !34
  br label %pred.store.continue5

pred.store.continue5:                             ; preds = %pred.store.if4, %pred.store.continue.a
  %i.mk = extractelement <4 x i1> %i.ma, i64 2
  br i1 %i.mk, label %pred.store.if6, label %pred.store.continue7

pred.store.if6:                                   ; preds = %pred.store.continue5
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %index
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = extractelement <4 x i32> %i.md, i64 2
  store i32 %i.mn, ptr %i.mm, align 4, !tbaa !34
  br label %pred.store.continue7

pred.store.continue7:                             ; preds = %pred.store.if6, %pred.store.continue5
  %i.mo = extractelement <4 x i1> %i.ma, i64 3
  br i1 %i.mo, label %pred.store.if8, label %pred.store.continue9

pred.store.if8:                                   ; preds = %pred.store.continue7
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %index
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  %i.mr = extractelement <4 x i32> %i.md, i64 3
  store i32 %i.mr, ptr %i.mq, align 4, !tbaa !34
  br label %pred.store.continue9

pred.store.continue9:                             ; preds = %pred.store.if8, %pred.store.continue7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ms = icmp eq i64 %index.next, %n.vec
  br i1 %i.ms, label %middle.block, label %vector.body, !llvm.loop !887

middle.block:                                     ; preds = %pred.store.continue9
  %cmp.n = icmp eq i64 %n.vec, %i.lx
  br i1 %cmp.n, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit310, label %.lr.ph.i303.preheader50

.lr.ph.i303.preheader50:                          ; preds = %.lr.ph.i303.preheader, %middle.block
  %indvars.iv.i304.ph = phi i64 [ 0, %.lr.ph.i303.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i303

.lr.ph.i303:                                      ; preds = %.lr.ph.i303.preheader50, %bb.ay
  %indvars.iv.i304 = phi i64 [ %indvars.iv.next.i308, %bb.ay ], [ %indvars.iv.i304.ph, %.lr.ph.i303.preheader50 ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv.i304 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !34 ; 3 uses
  %i.mv = icmp slt i32 %i.mu, 0
  br i1 %i.mv, label %bb.ay, label %.sink.split.i305

.sink.split.i305:                                 ; preds = %.lr.ph.i303
  %i.mw = icmp slt i32 %i.mu, %i.lw
  %.sink.p.i306 = select i1 %i.mw, i32 %i.lw, i32 %i.ly
  %.sink.i307 = add i32 %.sink.p.i306, %i.mu
  store i32 %.sink.i307, ptr %i.mt, align 4, !tbaa !34
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split.i305, %.lr.ph.i303
  %indvars.iv.next.i308 = add nuw nsw i64 %indvars.iv.i304, 1 ; 2 uses
  %.not.i309 = icmp eq i64 %indvars.iv.next.i308, %i.lx
  br i1 %.not.i309, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit310, label %.lr.ph.i303, !llvm.loop !888

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit310: ; preds = %bb.ay, %middle.block
  %.pre167 = load i32, ptr %i.lv, align 8, !tbaa !32 ; 2 uses
  %i.mx = zext i32 %.pre167 to i64                ; 2 uses
  %.not12.i313 = icmp eq i32 %.pre167, 0
  br i1 %.not12.i313, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319, label %.lr.ph.i314.preheader

.lr.ph.i314.preheader:                            ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit310
  %i.my = add nuw nsw i64 %i.mx, 4611686018427387903 ; 2 uses
  %i.mz = and i64 %i.my, 4611686018427387903      ; 2 uses
  %i.na = add nuw nsw i64 %i.mz, 1                ; 2 uses
  %i.nb = icmp eq i64 %i.mz, 0
  br i1 %i.nb, label %.lr.ph.i314.epil.preheader, label %.lr.ph.i314.preheader.new

.lr.ph.i314.preheader.new:                        ; preds = %.lr.ph.i314.preheader
  %unroll_iter80 = and i64 %i.na, 9223372036854775806
  br label %.lr.ph.i314

.lr.ph.i314:                                      ; preds = %bb.az, %.lr.ph.i314.preheader.new
  %.sroa.10.0 = phi i32 [ -1, %.lr.ph.i314.preheader.new ], [ %.sroa.10.1.1, %bb.az ]
  %.sroa.7.0 = phi i32 [ -1, %.lr.ph.i314.preheader.new ], [ %.sroa.7.1.1, %bb.az ]
  %.013.i315 = phi ptr [ %i.lu, %.lr.ph.i314.preheader.new ], [ %i.ny, %bb.az ] ; 3 uses
  %.else.val.i316 = phi i32 [ -1, %.lr.ph.i314.preheader.new ], [ %i.nx, %bb.az ] ; 3 uses
  %i.nc = phi i32 [ -1, %.lr.ph.i314.preheader.new ], [ %i.nw, %bb.az ] ; 3 uses
  %niter81 = phi i64 [ 0, %.lr.ph.i314.preheader.new ], [ %niter81.next.1, %bb.az ]
  %i.nd = load i32, ptr %.013.i315, align 4, !tbaa !34 ; 5 uses
  %i.ne = icmp eq i32 %i.nd, -1
  br i1 %i.ne, label %.lr.ph.i314.1, label %.cont.i317

.cont.i317:                                       ; preds = %.lr.ph.i314
  %i.nf = icmp eq i32 %.else.val.i316, -1
  %i.ng = call i32 @llvm.smin.i32(i32 %i.nd, i32 %.else.val.i316)
  %i.nh = select i1 %i.nf, i32 %i.nd, i32 %i.ng   ; 2 uses
  %i.ni = icmp eq i32 %i.nc, -1
  %i.nj = call i32 @llvm.smax.i32(i32 %i.nc, i32 %i.nd)
  %i.nk = select i1 %i.ni, i32 %i.nd, i32 %i.nj   ; 2 uses
  br label %.lr.ph.i314.1

.lr.ph.i314.1:                                    ; preds = %.cont.i317, %.lr.ph.i314
  %.sroa.10.1 = phi i32 [ %.sroa.10.0, %.lr.ph.i314 ], [ %i.nk, %.cont.i317 ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0, %.lr.ph.i314 ], [ %i.nh, %.cont.i317 ]
  %i.nl = phi i32 [ %i.nc, %.lr.ph.i314 ], [ %i.nk, %.cont.i317 ] ; 3 uses
  %i.nm = phi i32 [ %.else.val.i316, %.lr.ph.i314 ], [ %i.nh, %.cont.i317 ] ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.013.i315, i64 4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !34 ; 5 uses
  %i.np = icmp eq i32 %i.no, -1
  br i1 %i.np, label %bb.az, label %.cont.i317.1

.cont.i317.1:                                     ; preds = %.lr.ph.i314.1
  %i.nq = icmp eq i32 %i.nm, -1
  %i.nr = call i32 @llvm.smin.i32(i32 %i.no, i32 %i.nm)
  %i.ns = select i1 %i.nq, i32 %i.no, i32 %i.nr   ; 2 uses
  %i.nt = icmp eq i32 %i.nl, -1
  %i.nu = call i32 @llvm.smax.i32(i32 %i.nl, i32 %i.no)
  %i.nv = select i1 %i.nt, i32 %i.no, i32 %i.nu   ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %.cont.i317.1, %.lr.ph.i314.1
  %.sroa.10.1.1 = phi i32 [ %.sroa.10.1, %.lr.ph.i314.1 ], [ %i.nv, %.cont.i317.1 ] ; 3 uses
  %.sroa.7.1.1 = phi i32 [ %.sroa.7.1, %.lr.ph.i314.1 ], [ %i.ns, %.cont.i317.1 ] ; 3 uses
  %i.nw = phi i32 [ %i.nl, %.lr.ph.i314.1 ], [ %i.nv, %.cont.i317.1 ] ; 2 uses
  %i.nx = phi i32 [ %i.nm, %.lr.ph.i314.1 ], [ %i.ns, %.cont.i317.1 ] ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.013.i315, i64 8 ; 2 uses
  %niter81.next.1 = add i64 %niter81, 2           ; 2 uses
  %niter81.ncmp.1 = icmp eq i64 %niter81.next.1, %unroll_iter80
  br i1 %niter81.ncmp.1, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit.unr-lcssa, label %.lr.ph.i314

_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit.unr-lcssa: ; preds = %bb.az
  %i.nz = and i64 %i.my, 1
  %lcmp.mod76.not.not = icmp eq i64 %i.nz, 0
  br i1 %lcmp.mod76.not.not, label %.lr.ph.i314.epil.preheader, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit

.lr.ph.i314.epil.preheader:                       ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit.unr-lcssa, %.lr.ph.i314.preheader
  %.sroa.10.0.epil.init = phi i32 [ -1, %.lr.ph.i314.preheader ], [ %.sroa.10.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit.unr-lcssa ]
  %.sroa.7.0.epil.init = phi i32 [ -1, %.lr.ph.i314.preheader ], [ %.sroa.7.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit.unr-lcssa ]
  %.013.i315.epil.init = phi ptr [ %i.lu, %.lr.ph.i314.preheader ], [ %i.ny, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit.unr-lcssa ]
  %.else.val.i316.epil.init = phi i32 [ -1, %.lr.ph.i314.preheader ], [ %i.nx, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init75 = phi i32 [ -1, %.lr.ph.i314.preheader ], [ %i.nw, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i64 %i.na to i1
  call void @llvm.assume(i1 %lcmp.mod79)
  %i.oa = load i32, ptr %.013.i315.epil.init, align 4, !tbaa !34 ; 5 uses
  %i.ob = icmp eq i32 %i.oa, -1
  br i1 %i.ob, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit, label %.cont.i317.epil

.cont.i317.epil:                                  ; preds = %.lr.ph.i314.epil.preheader
  %i.oc = icmp eq i32 %.else.val.i316.epil.init, -1
  %i.od = call i32 @llvm.smin.i32(i32 %i.oa, i32 %.else.val.i316.epil.init)
  %i.oe = select i1 %i.oc, i32 %i.oa, i32 %i.od
  %i.of = icmp eq i32 %.epil.init75, -1
  %i.og = call i32 @llvm.smax.i32(i32 %.epil.init75, i32 %i.oa)
  %i.oh = select i1 %i.of, i32 %i.oa, i32 %i.og
  br label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit

_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit: ; preds = %.lr.ph.i314.epil.preheader, %.cont.i317.epil, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit.unr-lcssa
  %.sroa.10.1.lcssa = phi i32 [ %.sroa.10.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit.unr-lcssa ], [ %.sroa.10.0.epil.init, %.lr.ph.i314.epil.preheader ], [ %i.oh, %.cont.i317.epil ]
  %.sroa.7.1.lcssa = phi i32 [ %.sroa.7.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit.unr-lcssa ], [ %.sroa.7.0.epil.init, %.lr.ph.i314.epil.preheader ], [ %i.oe, %.cont.i317.epil ]
  %i.oi = sub nsw i32 %.sroa.10.1.lcssa, %.sroa.7.1.lcssa
  br label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319

_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319: ; preds = %bb.ax, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit310
  %i.oj = phi i64 [ 0, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit310 ], [ %i.mx, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit ], [ 0, %bb.ax ]
  %i.ok = phi i32 [ 0, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit310 ], [ %i.oi, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319.loopexit ], [ 0, %bb.ax ]
  %i.ol = load i32, ptr %i.aw, align 8, !tbaa !243
  %i.om = icmp slt i32 %i.ok, %i.ol
  br i1 %i.om, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.oj
  call void @_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef %i.lu, ptr noundef %i.on)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !291
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.pre168 = load ptr, ptr %17, align 8, !tbaa !31
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319
  %i.oo = phi ptr [ %.pre168, %bb.ba ], [ %i.lu, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit319 ] ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef %i.oo) #23
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit:          ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %.pre169 = load i32, ptr %i.lo, align 8, !tbaa !32
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit300
  %i.or = phi i32 [ %.pre169, %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit ], [ %i.ls, %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit300 ] ; 2 uses
  %i.os = load ptr, ptr %16, align 8, !tbaa !31   ; 7 uses
  %i.ot = ptrtoaddr ptr %i.os to i64
  %.not12.i322 = icmp eq i32 %i.or, 0
  br i1 %.not12.i322, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit328, label %.lr.ph.i323.preheader

.lr.ph.i323.preheader:                            ; preds = %bb.bd
  %i.ou = zext i32 %i.or to i64
  %i.ov = add nuw nsw i64 %i.ou, 4611686018427387903 ; 2 uses
  %i.ow = and i64 %i.ov, 4611686018427387903      ; 2 uses
  %i.ox = add nuw nsw i64 %i.ow, 1                ; 2 uses
  %i.oy = icmp eq i64 %i.ow, 0
  br i1 %i.oy, label %.lr.ph.i323.epil.preheader, label %.lr.ph.i323.preheader.new

.lr.ph.i323.preheader.new:                        ; preds = %.lr.ph.i323.preheader
  %unroll_iter89 = and i64 %i.ox, 9223372036854775806
  br label %.lr.ph.i323

.lr.ph.i323:                                      ; preds = %bb.be, %.lr.ph.i323.preheader.new
  %.sroa.9.0 = phi i32 [ -1, %.lr.ph.i323.preheader.new ], [ %.sroa.9.1.1, %bb.be ]
  %.sroa.54.0 = phi i32 [ -1, %.lr.ph.i323.preheader.new ], [ %.sroa.54.1.1, %bb.be ]
  %.013.i324 = phi ptr [ %i.os, %.lr.ph.i323.preheader.new ], [ %i.pv, %bb.be ] ; 3 uses
  %.else.val.i325 = phi i32 [ -1, %.lr.ph.i323.preheader.new ], [ %i.pu, %bb.be ] ; 3 uses
  %i.oz = phi i32 [ -1, %.lr.ph.i323.preheader.new ], [ %i.pt, %bb.be ] ; 3 uses
  %niter90 = phi i64 [ 0, %.lr.ph.i323.preheader.new ], [ %niter90.next.1, %bb.be ]
  %i.pa = load i32, ptr %.013.i324, align 4, !tbaa !34 ; 5 uses
  %i.pb = icmp eq i32 %i.pa, -1
  br i1 %i.pb, label %.lr.ph.i323.1, label %.cont.i326

.cont.i326:                                       ; preds = %.lr.ph.i323
  %i.pc = icmp eq i32 %.else.val.i325, -1
  %i.pd = call i32 @llvm.smin.i32(i32 %i.pa, i32 %.else.val.i325)
  %i.pe = select i1 %i.pc, i32 %i.pa, i32 %i.pd   ; 2 uses
  %i.pf = icmp eq i32 %i.oz, -1
  %i.pg = call i32 @llvm.smax.i32(i32 %i.oz, i32 %i.pa)
  %i.ph = select i1 %i.pf, i32 %i.pa, i32 %i.pg   ; 2 uses
  br label %.lr.ph.i323.1

end_hunk_1
