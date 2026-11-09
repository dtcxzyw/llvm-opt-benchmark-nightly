Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Inlining?download=true
inline.NumInlined: 788
inline.NumDeleted: 443
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::DenseMap.167" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::SmallVector.170" = type { %"class.llvh::SmallVectorImpl.171", %"struct.llvh::SmallVectorStorage.174" }
%"class.llvh::SmallVectorImpl.171" = type { %"class.llvh::SmallVectorTemplateBase.172" }
%"class.llvh::SmallVectorTemplateBase.172" = type { %"class.llvh::SmallVectorTemplateCommon.173" }
%"class.llvh::SmallVectorTemplateCommon.173" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.174" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.175"] }
%"struct.llvh::AlignedCharArrayUnion.175" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [8 x i8] }
%"class.llvh::SmallVector.176" = type { %"class.llvh::SmallVectorImpl.177", %"struct.llvh::SmallVectorStorage.180" }
%"class.llvh::SmallVectorImpl.177" = type { %"class.llvh::SmallVectorTemplateBase.178" }
%"class.llvh::SmallVectorTemplateBase.178" = type { %"class.llvh::SmallVectorTemplateCommon.179" }
%"class.llvh::SmallVectorTemplateCommon.179" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.180" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.181"] }
%"struct.llvh::AlignedCharArrayUnion.181" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::SmallVector.148" = type { %"class.llvh::SmallVectorImpl.149", %"struct.llvh::SmallVectorStorage.152" }
%"class.llvh::SmallVectorImpl.149" = type { %"class.llvh::SmallVectorTemplateBase.150" }
%"class.llvh::SmallVectorTemplateBase.150" = type { %"class.llvh::SmallVectorTemplateCommon.151" }
%"class.llvh::SmallVectorTemplateCommon.151" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.152" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.153"] }
%"struct.llvh::AlignedCharArrayUnion.153" = type { %"struct.llvh::AlignedCharArray" }
%"class.hermes::IRBuilder" = type { ptr, %"class.llvh::ilist_iterator.131", ptr, %"class.llvh::SMLoc", ptr }
%"class.llvh::ilist_iterator.131" = type { ptr }
%"class.llvh::SMLoc" = type { ptr }
%"class.std::unique_ptr.132" = type { %"struct.std::__uniq_ptr_data.133" }
%"struct.std::__uniq_ptr_data.133" = type { %"class.std::__uniq_ptr_impl.134" }
%"class.std::__uniq_ptr_impl.134" = type { %"class.std::tuple.135" }
%"class.std::tuple.135" = type { %"struct.std::_Tuple_impl.136" }
%"struct.std::_Tuple_impl.136" = type { %"struct.std::_Head_base.139" }
%"struct.std::_Head_base.139" = type { ptr }
%"struct.llvh::detail::DenseSetEmpty" = type { i8 }
%"struct.std::pair.161" = type <{ %"class.llvh::DenseMapIterator", i8, [7 x i8] }>
%"class.llvh::DenseMapIterator" = type { ptr, ptr }
%"class.llvh::SmallDenseSet.154" = type { %"class.llvh::detail::DenseSetImpl.155" }
%"class.llvh::detail::DenseSetImpl.155" = type { %"class.llvh::SmallDenseMap.156" }
%"class.llvh::SmallDenseMap.156" = type { i32, i32, %"struct.llvh::AlignedCharArrayUnion.158" }
%"struct.llvh::AlignedCharArrayUnion.158" = type { %"struct.llvh::AlignedCharArray.159" }
%"struct.llvh::AlignedCharArray.159" = type { [32 x i8] }
%"struct.llvh::AlignedCharArrayUnion.164" = type { %"struct.llvh::AlignedCharArray.159" }

$_ZN6hermes8InliningD0Ev = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_ = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvh13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructEOS4_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_ = comdat any

$_ZN4llvh8DenseMapIPN6hermes5ValueES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE4growEj = comdat any

$_ZN4llvh11raw_ostreamlsEPKc = comdat any

$_ZN4llvh11raw_ostreamlsENS_9StringRefE = comdat any

$_ZN4llvh11raw_ostreamlsEc = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructERKS4_ = comdat any

$_ZN6hermes4PassD2Ev = comdat any

@_ZTVN6hermes8InliningE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes8InliningD0Ev, ptr @_ZN6hermes8Inlining11runOnModuleEPNS_6ModuleE] }, align 8, !guid !9
@.str = private unnamed_addr constant [23 x i8] c"INVALID OPERAND FOR : \00", align 1, !guid !10
@.str.1 = private unnamed_addr constant [23 x i8] c"INVALID OPERAND     : \00", align 1, !guid !11
@.str.2 = private unnamed_addr constant [9 x i8] c"Inlining\00", align 1, !guid !12

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes8Inlining11runOnModuleEPNS_6ModuleE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 !guid !83 {
bb.a:
  %2 = alloca %"class.llvh::DenseMap.167", align 8 ; 30 uses
  %3 = alloca %"class.llvh::SmallVector.170", align 8 ; 15 uses
  %4 = alloca %"class.llvh::SmallVector.176", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.llvh::SmallVector.148", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvh::SmallVector.148", align 8 ; 7 uses
  %7 = alloca %"class.hermes::IRBuilder", align 8 ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 633
  %i.f = load i8, ptr %i.e, align 1, !tbaa !88, !range !17, !noundef !18
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.0172.0251 = load ptr, ptr %i.h, align 8, !tbaa !91 ; 2 uses
  %.not187252 = icmp eq ptr %.sroa.0172.0251, %i.i
  br i1 %.not187252, label %.loopexit, label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 18 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 18 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph256, %._crit_edge250
  %.sroa.0172.0254 = phi ptr [ %.sroa.0172.0251, %.lr.ph256 ], [ %.sroa.0172.0, %._crit_edge250 ] ; 2 uses
  %.038253 = phi i1 [ false, %.lr.ph256 ], [ %.139.lcssa, %._crit_edge250 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0172.0254, i64 16
  %i.y = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #11 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !21 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  %.not245 = icmp eq i32 %i.ab, 0
  br i1 %.not245, label %._crit_edge250, label %.lr.ph249

._crit_edge250:                                   ; preds = %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread, %bb.c
  %.139.lcssa = phi i1 [ %.038253, %bb.c ], [ %.4, %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0172.0254, i64 8
  %.sroa.0172.0 = load ptr, ptr %i.ae, align 8, !tbaa !91 ; 2 uses
  %.not187 = icmp eq ptr %.sroa.0172.0, %i.i
  br i1 %.not187, label %.loopexit, label %bb.c

.lr.ph249:                                        ; preds = %bb.c, %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread
  %.036247 = phi ptr [ %i.zm, %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread ], [ %i.z, %bb.c ] ; 2 uses
  %.139246 = phi i1 [ %.4, %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread ], [ %.038253, %bb.c ] ; 8 uses
  %i.af = load ptr, ptr %.036247, align 8, !tbaa !93 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 5 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !31
  %i.ai = add i8 %i.ah, -75
  %i.aj = icmp ult i8 %i.ai, -6
  %.not42188 = icmp eq ptr %i.af, null
  %.not42 = or i1 %.not42188, %i.aj
  br i1 %.not42, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph249
  %i.ak = call noundef zeroext i1 @_ZNK6hermes5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #11
  br i1 %i.ak, label %bb.e, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #11
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !93
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !31
  %.not43 = icmp eq i8 %i.ap, 91
  br i1 %.not43, label %bb.f, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #11
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !93 ; 9 uses
  %i.at = call noundef zeroext i1 @_ZN6hermes14isDirectCalleeEPNS_5ValueEPNS_8CallInstE(ptr noundef nonnull %i.ag, ptr noundef %i.as) #11
  br i1 %i.at, label %bb.g, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !104
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !113 ; 2 uses
  %i.ay = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.af, i32 noundef 0) #11 ; 8 uses
  %i.az = icmp eq ptr %i.ay, null
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -16 ; 2 uses
  %i.bb = select i1 %i.az, ptr null, ptr %i.ba    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !137 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 160
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !21
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !20 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx.i = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i
  %.not54.i = icmp eq i32 %i.bj, 0
  br i1 %.not54.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.03455.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.03455.i = phi ptr [ %i.bm, %bb.i ], [ %i.bh, %bb.h ] ; 2 uses
  %i.bn = load ptr, ptr %.03455.i, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !52
  %.not40.i = icmp eq ptr %i.bp, %i.bb
  br i1 %.not40.i, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread, label %bb.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 172 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !138, !range !17, !noundef !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 188
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !138, !range !17, !noundef !18
  %.not49.i = icmp eq i8 %i.br, %i.bt
  br i1 %.not49.i, label %bb.j, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread

bb.j:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.bu = getelementptr i8, ptr %i.ay, i64 72     ; 2 uses
  %.val.i = load ptr, ptr %i.bu, align 8, !tbaa !91
  call fastcc void @_ZN6hermesL8orderDFSEPNS_8FunctionE(ptr dead_on_unwind noalias writable align 8 %6, ptr %.val.i)
  %i.bv = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.bw = load i32, ptr %i.j, align 8, !tbaa !21  ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %.idx67.i = shl nuw nsw i64 %i.bx, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx67.i
  %.not4262.i = icmp eq i32 %i.bw, 0
  br i1 %.not4262.i, label %.thread47.i, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %bb.j, %._crit_edge61.i
  %.063.i = phi ptr [ %i.co, %._crit_edge61.i ], [ %i.bv, %bb.j ] ; 2 uses
  %i.bz = load ptr, ptr %.063.i, align 8, !tbaa !53 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 56 ; 2 uses
  %.sroa.043.056.i = load ptr, ptr %i.ca, align 8, !tbaa !91 ; 2 uses
  %.not5057.i = icmp eq ptr %.sroa.043.056.i, %i.cb
  br i1 %.not5057.i, label %._crit_edge61.i, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %.lr.ph66.i, %.critedge.i
  %.sroa.043.058.i = phi ptr [ %.sroa.043.0.i, %.critedge.i ], [ %.sroa.043.056.i, %.lr.ph66.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.043.058.i, i64 16
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !31
  switch i8 %i.cd, label %.critedge.i [
    i8 55, label %.thread47.i
    i8 61, label %.thread47.i
    i8 70, label %.thread47.i
    i8 71, label %.thread47.i
    i8 93, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph60.i
  %i.ce = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.043.058.i, i32 noundef 0) #11
end_hunk_0
begin_hunk_1_@_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE

declare void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes9IRBuilder33transferInstructionToCurrentBlockEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6hermes9IRBuilder22setInsertionPointAfterEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes14createInliningEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.132") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 !guid !157 {
_ZNSt10unique_ptrIN6hermes8InliningESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12, !noalias !158 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !163, !noalias !158
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.2, ptr %i.c, align 8, !tbaa !164, !noalias !158
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !165, !noalias !158
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes8InliningE, i64 16), ptr %i.a, align 8, !tbaa !167, !noalias !158
  store ptr %i.a, ptr %0, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes8InliningD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !guid !171 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermesL8orderDFSEPNS_8FunctionE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.88.val) unnamed_addr #0 !guid !177 {
.lr.ph15:
  %1 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %2 = alloca %"struct.std::pair.161", align 8    ; 4 uses
  %3 = alloca %"class.llvh::SmallVector.148", align 8 ; 10 uses
  %4 = alloca %"class.llvh::SmallDenseSet.154", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 4, ptr %i.d, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 4, ptr %i.g, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i32 1, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !72
  %.07.i.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.07.i.i.i.i.ptr.i, align 8, !tbaa !53
  %i.i = ptrtoint ptr %.88.val to i64
  store i64 %i.i, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph15, %.loopexit
  %i.k = phi i32 [ 1, %.lr.ph15 ], [ %.pr, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.l = load ptr, ptr %3, align 8, !tbaa !20
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53
  store ptr %i.p, ptr %i.a, align 8, !tbaa !53
  %i.q = add i32 %i.k, -1
  store i32 %i.q, ptr %i.f, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11, !noalias !178
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.161") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !178
  %i.r = load i8, ptr %i.j, align 8, !tbaa !56, !range !17, !noalias !178, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11, !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11, !noalias !178
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %.loopexitthread-pre-split, !llvm.loop !174

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !55
  %.not.i9 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i9, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit11, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 8) #11
  %.pre.i10 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit11

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit11: ; preds = %bb.b, %bb.c
  %i.v = phi i32 [ %.pre.i10, %bb.c ], [ %i.t, %bb.b ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !20
  %i.x = zext i32 %i.v to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load i64, ptr %i.a, align 8
  store i64 %i.z, ptr %i.y, align 1
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !21
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.c, align 8, !tbaa !21
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ad = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ac) #11, !noalias !179
  %i.ae = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ac) #11, !noalias !179 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %.loopexitthread-pre-split, label %_ZN6hermes10successorsEPNS_10BasicBlockE.exit

_ZN6hermes10successorsEPNS_10BasicBlockE.exit:    ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit11
  %i.af = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ae) #11, !noalias !179 ; 2 uses
  %.not12 = icmp eq i32 %i.af, 0
  br i1 %.not12, label %.loopexitthread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes10successorsEPNS_10BasicBlockE.exit, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit19
  %.sroa.4.013 = phi i32 [ %i.aq, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit19 ], [ 0, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit ] ; 2 uses
  %i.ag = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ad, i32 noundef %.sroa.4.013) #11
  %i.ah = load i32, ptr %i.f, align 8, !tbaa !21  ; 2 uses
  %i.ai = load i32, ptr %i.g, align 4, !tbaa !55
  %.not.i17 = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i17, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit19, label %bb.d, !prof !65

bb.d:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 8) #11
  %.pre.i18 = load i32, ptr %i.f, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit19

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit19: ; preds = %.lr.ph, %bb.d
  %i.aj = phi i32 [ %.pre.i18, %bb.d ], [ %i.ah, %.lr.ph ]
  %i.ak = load ptr, ptr %3, align 8, !tbaa !20
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = ptrtoint ptr %i.ag to i64
  store i64 %i.an, ptr %i.am, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !21
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !21
  %i.aq = add nuw nsw i32 %.sroa.4.013, 1         ; 2 uses
  %.not = icmp eq i32 %i.aq, %i.af
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexitthread-pre-split:                        ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit11, %bb.a, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit
  %.pr.pr = load i32, ptr %i.f, align 8, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit19, %.loopexitthread-pre-split
  %.pr = phi i32 [ %.pr.pr, %.loopexitthread-pre-split ], [ %i.ap, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit19 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not.i8 = icmp eq i32 %.pr, 0
  br i1 %.not.i8, label %._crit_edge, label %bb.a

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load i32, ptr %4, align 8
  %i.ar = and i32 %.pre, 1
  %.not.i.i.i20 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i20, label %bb.e, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit

bb.e:                                             ; preds = %._crit_edge
  %i.as = load ptr, ptr %.07.i.i.i.i.ptr.i, align 8, !tbaa !181
  call void @_ZdlPv(ptr noundef %i.as) #11
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit: ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.at = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.e
  br i1 %i.au, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit
  call void @free(ptr noundef %i.at) #11
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit: ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.161") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 !guid !182 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %1, align 8                ; 3 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.c, 0             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 4 ; 9 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !53     ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = lshr i32 %i.m, 9
  %i.p = xor i32 %i.n, %i.o
  %i.q = add i32 %i.i, -1                         ; 2 uses
  %.02745.i.i = and i32 %i.p, %i.q                ; 2 uses
  %i.r = zext nneg i32 %.02745.i.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.r ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53   ; 2 uses
  %i.u = icmp eq ptr %i.k, %i.t
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i, !prof !64

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.v = phi ptr [ %i.af, %bb.d ], [ %i.t, %bb.b ] ; 2 uses
  %i.w = phi ptr [ %i.ae, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02745.i.i, %bb.b ]
  %.047.i.i = phi i32 [ %i.ab, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.x = icmp eq ptr %i.v, inttoptr (i64 -8 to ptr)
  br i1 %i.x, label %bb.c, label %bb.d, !prof !65

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02946.i.i, null
  %i.y = select i1 %.not.i.i, ptr %i.w, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = icmp eq ptr %i.v, inttoptr (i64 -16 to ptr)
  %i.aa = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %i.z, i1 %i.aa, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.w, ptr %.02946.i.i
  %i.ab = add i32 %.047.i.i, 1
  %i.ac = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.ac, %i.q                 ; 2 uses
  %i.ad = zext i32 %.027.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53 ; 2 uses
  %i.ag = icmp eq ptr %i.k, %i.af
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i.i, !prof !66, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.y, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !74
  %i.ah = lshr i32 %i.b, 1                        ; 2 uses
  %i.ai = shl i32 %i.ah, 2
  %i.aj = add i32 %i.ai, 4
  %i.ak = mul i32 %i.i, 3
  %.not.i.i6 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i6, label %bb.f, label %bb.e, !prof !65

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.al = shl i32 %i.i, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !72
  %.neg.i.i = xor i32 %i.ah, -1
  %.neg13.i.i = add i32 %i.i, %.neg.i.i
  %i.ao = sub i32 %.neg13.i.i, %i.an
  %i.ap = lshr i32 %i.i, 3
  %.not10.i.i = icmp ugt i32 %i.ao, %i.ap
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !65

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i7 = phi i32 [ %i.al, %bb.e ], [ %i.i, %bb.f ]
  tail call void @_ZN4llvh13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.sink.i.i7)
  %i.aq = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %1, align 8             ; 2 uses
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !74
  %.pre9.i = and i32 %.pre.i, 1
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %.pre-phi.i = phi i32 [ %.pre9.i, %.sink.split.i.i ], [ %i.c, %bb.f ]
  %i.ar = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 3 uses
  %i.as = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.b, %bb.f ]
  %4 = and i32 %i.as, -2
  %i.at = add i32 %4, 2
  %5 = or disjoint i32 %i.at, %.pre-phi.i
  store i32 %5, ptr %1, align 8
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.av = icmp eq ptr %i.au, inttoptr (i64 -8 to ptr)
  br i1 %i.av, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !72
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !72
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = load ptr, ptr %2, align 8, !tbaa !53
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !53
  %i.ba = load i32, ptr %1, align 8
  %i.bb = and i32 %i.ba, 1
  %.not.i.i.i.i8 = icmp eq i32 %i.bb, 0           ; 2 uses
  %i.bc = load ptr, ptr %i.d, align 8
  %i.bd = select i1 %.not.i.i.i.i8, ptr %i.bc, ptr %i.d
  %i.be = load i32, ptr %i.g, align 8
  %i.bf = select i1 %.not.i.i.i.i8, i32 %i.be, i32 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit
  %.sink37 = phi i32 [ %i.bf, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit ], [ %i.i, %bb.b ], [ %i.i, %bb.d ]
  %.sink35 = phi ptr [ %i.bd, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit ], [ %i.f, %bb.b ], [ %i.f, %bb.d ]
  %.sink34 = phi ptr [ %i.ar, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit ], [ %i.s, %bb.b ], [ %i.ae, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.bg = zext i32 %.sink37 to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sink35, i64 %i.bg
  store ptr %.sink34, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bi, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !186 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i.i, i32 %i.g, i32 4   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !53     ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = lshr i32 %i.l, 9
  %i.o = xor i32 %i.m, %i.n
  %i.p = add i32 %i.h, -1                         ; 2 uses
  %.02745.i = and i32 %i.o, %i.p                  ; 2 uses
  %i.q = zext nneg i32 %.02745.i to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 2 uses
  %i.t = icmp eq ptr %i.j, %i.s
  br i1 %i.t, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %.lr.ph.i, !prof !64

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.u = phi ptr [ %i.ae, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.ad, %bb.d ], [ %i.r, %bb.b ] ; 2 uses
  %.02748.i = phi i32 [ %.027.i, %bb.d ], [ %.02745.i, %bb.b ]
  %.047.i = phi i32 [ %i.aa, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.w = icmp eq ptr %i.u, inttoptr (i64 -8 to ptr)
  br i1 %i.w, label %bb.c, label %bb.d, !prof !65

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02946.i, null
  %i.x = select i1 %.not.i, ptr %i.v, ptr %.02946.i
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = icmp eq ptr %i.u, inttoptr (i64 -16 to ptr)
  %i.z = icmp eq ptr %.02946.i, null
  %or.cond.not.i = select i1 %i.y, i1 %i.z, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.v, ptr %.02946.i
  %i.aa = add i32 %.047.i, 1
  %i.ab = add i32 %.047.i, %.02748.i
  %.027.i = and i32 %i.ab, %i.p                   ; 2 uses
  %i.ac = zext i32 %.027.i to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %i.af = icmp eq ptr %i.j, %i.ae
  br i1 %i.af, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %.lr.ph.i, !prof !66, !llvm.loop !1

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.x, %bb.c ], [ null, %bb.a ], [ %i.r, %bb.b ], [ %i.ad, %bb.d ]
  %.234.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !74
  ret i1 %.234.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !187 {
bb.a:
  %2 = alloca %"struct.llvh::AlignedCharArrayUnion.164", align 8 ; 7 uses
  %i.a = icmp ugt i32 %1, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %i.e = or i64 %i.d, %i.c                        ; 2 uses
  %i.f = lshr i64 %i.e, 2
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 4
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 8
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 16
  %i.m = or i64 %i.l, %i.k
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.o, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.027 = phi i32 [ %.sroa.speculated, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %i.p = load i32, ptr %0, align 8                ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i32 %.027, 4
  br i1 %i.r, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53   ; 2 uses
  %magicptr = ptrtoint ptr %i.t to i64
  switch i64 %magicptr, label %bb.f [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store ptr %i.t, ptr %2, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %.1 = phi ptr [ %2, %bb.e ], [ %2, %bb.e ], [ %i.u, %bb.f ] ; 4 uses
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %.0.ptr.1, align 8, !tbaa !53 ; 2 uses
  %magicptr.1 = ptrtoint ptr %i.v to i64
  switch i64 %magicptr.1, label %bb.h [
    i64 -8, label %bb.i
    i64 -16, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %.1, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.g
  %.1.1 = phi ptr [ %.1, %bb.g ], [ %.1, %bb.g ], [ %i.w, %bb.h ] ; 4 uses
  %.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %.0.ptr.2, align 8, !tbaa !53 ; 2 uses
  %magicptr.2 = ptrtoint ptr %i.x to i64
  switch i64 %magicptr.2, label %bb.j [
    i64 -8, label %bb.k
    i64 -16, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  store ptr %i.x, ptr %.1.1, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.i
  %.1.2 = phi ptr [ %.1.1, %bb.i ], [ %.1.1, %bb.i ], [ %i.y, %bb.j ] ; 4 uses
  %.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %.0.ptr.3, align 8, !tbaa !53 ; 2 uses
  %magicptr.3 = ptrtoint ptr %i.z to i64
  switch i64 %magicptr.3, label %bb.l [
    i64 -8, label %bb.m
    i64 -16, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  store ptr %i.z, ptr %.1.2, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.2, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.k
  %.1.3 = phi ptr [ %.1.2, %bb.k ], [ %.1.2, %bb.k ], [ %i.aa, %bb.l ]
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, -2
  store i32 %4, ptr %0, align 8
  %5 = zext i32 %.027 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #14
  store ptr %7, ptr %i.s, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.027, ptr %i.ab, align 8
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %2, ptr noundef nonnull %.1.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.r

bb.n:                                             ; preds = %bb.c
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.a = load ptr, ptr %8, align 8, !tbaa !74 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload.a = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !8
  %9 = icmp ult i32 %.027, 5
  br i1 %9, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %10 = or disjoint i32 %i.p, 1
  store i32 %10, ptr %0, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %11 = zext i32 %.027 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #14
  store ptr %13, ptr %8, align 8
  store i32 %.027, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %14 = zext i32 %.sroa.6.0.copyload.a to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.a, i64 %14
  tail call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.sroa.0.0.copyload.a, ptr noundef %15)
  tail call void @_ZdlPv(ptr noundef %.sroa.0.0.copyload.a) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.q, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !guid !191 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 1                              ; 2 uses
  store i32 %5, ptr %0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %6, align 4, !tbaa !72
  %.not.i.i.i.i = icmp eq i32 %5, 0               ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %.not.i.i.i.i, ptr %8, ptr %7    ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %11 = load i32, ptr %10, align 8
  %12 = select i1 %.not.i.i.i.i, i32 %11, i32 4   ; 2 uses
  %13 = zext i32 %12 to i64
  %.idx.i = shl nuw nsw i64 %13, 3                ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 %.idx.i
  %.not6.i = icmp eq i32 %12, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %3
  %15 = add nsw i64 %.idx.i, -8                   ; 2 uses
  %16 = lshr exact i64 %15, 3
  %17 = add nuw nsw i64 %16, 1
  %xtraiter = and i64 %17, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %18, %.lr.ph.i.prol ], [ %9, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !53
  %18 = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !188

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %9, %.lr.ph.i.preheader ], [ %18, %.lr.ph.i.prol ]
  %19 = icmp ult i64 %15, 56
  br i1 %19, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %27, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !53
  %20 = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %20, align 8, !tbaa !53
  %21 = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %21, align 8, !tbaa !53
  %22 = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %22, align 8, !tbaa !53
  %23 = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %23, align 8, !tbaa !53
  %24 = getelementptr inbounds nuw i8, ptr %.07.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %24, align 8, !tbaa !53
  %25 = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %25, align 8, !tbaa !53
  %26 = getelementptr inbounds nuw i8, ptr %.07.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %26, align 8, !tbaa !53
  %27 = getelementptr inbounds nuw i8, ptr %.07.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %27, %14
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !189

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %3
  %.not20 = icmp eq ptr %1, %2
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %65, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, %65
  %.021 = phi ptr [ %66, %65 ], [ %1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit ] ; 2 uses
  %28 = load ptr, ptr %.021, align 8, !tbaa !53   ; 4 uses
  %magicptr = ptrtoint ptr %28 to i64             ; 2 uses
  switch i64 %magicptr, label %29 [
    i64 -8, label %65
    i64 -16, label %65
  ]

29:                                               ; preds = %.lr.ph
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 1
  %.not.i.i.i.i15 = icmp eq i32 %31, 0            ; 2 uses
  %32 = load ptr, ptr %7, align 8
  %33 = select i1 %.not.i.i.i.i15, ptr %32, ptr %7 ; 2 uses
  %34 = load i32, ptr %10, align 8
  %35 = select i1 %.not.i.i.i.i15, i32 %34, i32 4 ; 2 uses
  %36 = icmp ne i32 %35, 0
  tail call void @llvm.assume(i1 %36)
  %37 = trunc i64 %magicptr to i32                ; 2 uses
  %38 = lshr i32 %37, 4
  %39 = lshr i32 %37, 9
  %40 = xor i32 %38, %39
  %41 = add i32 %35, -1                           ; 2 uses
  %.02745.i.i = and i32 %41, %40                  ; 2 uses
  %42 = zext nneg i32 %.02745.i.i to i64
  %43 = getelementptr inbounds nuw [8 x i8], ptr %33, i64 %42 ; 3 uses
  %44 = load ptr, ptr %43, align 8, !tbaa !53     ; 2 uses
  %45 = icmp eq ptr %28, %44
  br i1 %45, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %.lr.ph.i.i, !prof !64

.lr.ph.i.i:                                       ; preds = %29, %51
  %46 = phi ptr [ %58, %51 ], [ %44, %29 ]        ; 2 uses
  %47 = phi ptr [ %57, %51 ], [ %43, %29 ]        ; 2 uses
  %.02748.i.i = phi i32 [ %.027.i.i, %51 ], [ %.02745.i.i, %29 ]
  %.047.i.i = phi i32 [ %54, %51 ], [ 1, %29 ]    ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i, %51 ], [ null, %29 ] ; 4 uses
  %48 = icmp eq ptr %46, inttoptr (i64 -8 to ptr)
  br i1 %48, label %49, label %51, !prof !65

49:                                               ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02946.i.i, null
  %50 = select i1 %.not.i.i, ptr %47, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

51:                                               ; preds = %.lr.ph.i.i
  %52 = icmp eq ptr %46, inttoptr (i64 -16 to ptr)
  %53 = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %52, i1 %53, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %47, ptr %.02946.i.i
  %54 = add i32 %.047.i.i, 1
  %55 = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %55, %41                    ; 2 uses
  %56 = zext i32 %.027.i.i to i64
  %57 = getelementptr inbounds nuw [8 x i8], ptr %33, i64 %56 ; 3 uses
  %58 = load ptr, ptr %57, align 8, !tbaa !53     ; 2 uses
  %59 = icmp eq ptr %28, %58
  br i1 %59, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %.lr.ph.i.i, !prof !66, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %51, %29, %49
  %.sink.i.i = phi ptr [ %50, %49 ], [ %43, %29 ], [ %57, %51 ]
  store ptr %28, ptr %.sink.i.i, align 8, !tbaa !53
  %60 = load i32, ptr %0, align 8                 ; 2 uses
  %61 = and i32 %60, -2
  %62 = add i32 %61, 2
  %63 = and i32 %60, 1
  %64 = or disjoint i32 %62, %63
  store i32 %64, ptr %0, align 8
  br label %65

65:                                               ; preds = %.lr.ph, %.lr.ph, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %66 = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %66, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !190
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder22createCoerceThisNSInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermesL15cloneScopesIntoEPNS_8FunctionEPNS_9ScopeDescES3_RN4llvh8DenseMapIPNS_5ValueES7_NS4_12DenseMapInfoIS7_EENS4_6detail12DenseMapPairIS7_S7_EEEE(ptr nofree noundef readnone captures(address) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(20) %3) unnamed_addr #0 !guid !192 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %.not = icmp eq ptr %i.d, %0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %1, ptr %i.a, align 8, !tbaa !58
  %i.e = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructEOS4_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not3234 = icmp eq i32 %i.j, 0
  br i1 %.not3234, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx40 = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx40
  %.not3336 = icmp eq i32 %i.p, 0
  br i1 %.not3336, label %.loopexit, label %.lr.ph39

.lr.ph39:                                         ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 144
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.035 = phi ptr [ %i.ab, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %i.x = load ptr, ptr %.035, align 8, !tbaa !193 ; 2 uses
  %i.y = call noundef ptr @_ZN6hermes8Variable17cloneIntoNewScopeEPNS_9ScopeDescE(ptr noundef nonnull align 8 dereferenceable(65) %i.x, ptr noundef %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr %i.x, ptr %i.b, align 8, !tbaa !58
  %i.z = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructEOS4_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.ab = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %.not32 = icmp eq ptr %i.ab, %i.l
  br i1 %.not32, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph39, %_ZN6hermes9ScopeDesc16createInnerScopeEv.exit
  %.03037 = phi ptr [ %i.n, %.lr.ph39 ], [ %i.be, %_ZN6hermes9ScopeDesc16createInnerScopeEv.exit ] ; 2 uses
  %i.ac = load ptr, ptr %.03037, align 8, !tbaa !40
  %i.ad = call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #12 ; 21 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i16 1023, ptr %i.ae, align 2, !tbaa !194
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i16 7, ptr %i.af, align 2, !tbaa !195
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 0, ptr %i.ai, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  store i32 2, ptr %i.aj, align 4, !tbaa !55
  store i8 120, ptr %i.ad, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %2, ptr %i.ak, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store ptr %i.am, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i32 0, ptr %i.an, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  store i32 8, ptr %i.ao, align 4, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store i32 0, ptr %i.as, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 164
  store i32 8, ptr %i.at, align 4, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 232
  store i8 0, ptr %i.au, align 8, !tbaa !196
  %i.av = load i32, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  %i.aw = load i32, ptr %i.u, align 4, !tbaa !55
  %.not.i.i = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i.i, label %_ZN6hermes9ScopeDesc16createInnerScopeEv.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 8) #11
  %.pre.i.i = load i32, ptr %i.t, align 8, !tbaa !21
  br label %_ZN6hermes9ScopeDesc16createInnerScopeEv.exit

_ZN6hermes9ScopeDesc16createInnerScopeEv.exit:    ; preds = %bb.c, %bb.d
  %i.ax = phi i32 [ %.pre.i.i, %bb.d ], [ %i.av, %bb.c ] ; 2 uses
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  store ptr %i.ad, ptr %i.ba, align 8, !tbaa !40
  %i.bb = add i32 %i.ax, 1
  store i32 %i.bb, ptr %i.t, align 8, !tbaa !21
  %i.bc = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !52
  call fastcc void @_ZN6hermesL15cloneScopesIntoEPNS_8FunctionEPNS_9ScopeDescES3_RN4llvh8DenseMapIPNS_5ValueES7_NS4_12DenseMapInfoIS7_EENS4_6detail12DenseMapPairIS7_S7_EEEE(ptr noundef %0, ptr noundef %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.be = getelementptr inbounds nuw i8, ptr %.03037, i64 8 ; 2 uses
  %.not33 = icmp eq ptr %i.be, %i.r
  br i1 %.not33, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_ZN6hermes9ScopeDesc16createInnerScopeEv.exit, %._crit_edge, %bb.a
  ret void
}

declare noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN6hermesL14inlineFunctionERNS_9IRBuilderEPNS_8FunctionEPNS_8CallInstEPNS_10BasicBlockEENK3$_0clEPNS_11InstructionE"(ptr initializes((8, 12)) %.0.val, ptr %.8.val, ptr noundef nonnull %0) unnamed_addr #7 align 2 !guid !199 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !21
  %i.c = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #11 ; 2 uses
  %.not15 = icmp eq i32 %i.c, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit
  %.016 = phi i32 [ 0, %.lr.ph ], [ %i.bq, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.g = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %.016) #11 ; 6 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !58
  %i.h = load i8, ptr %i.g, align 8, !tbaa !31
  %.fr14 = freeze i8 %i.h                         ; 5 uses
  %.not12 = icmp eq i8 %.fr14, 124
  br i1 %.not12, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !62 ; 4 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !63   ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = lshr i32 %i.m, 9
  %i.p = xor i32 %i.n, %i.o
  %i.q = add i32 %i.j, -1                         ; 2 uses
  %.02744.i.i.i = and i32 %i.q, %i.p              ; 2 uses
  %i.r = zext nneg i32 %.02744.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58   ; 2 uses
  %i.u = icmp eq ptr %i.g, %i.t
  br i1 %i.u, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit, label %.lr.ph.i.i.i, !prof !64

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %i.v = phi ptr [ %i.ab, %bb.e ], [ %i.t, %bb.d ]
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.e ], [ %.02744.i.i.i, %bb.d ]
end_hunk_1
begin_hunk_2_@llvm.umax.i32
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !54}
!1 = distinct !{!1, !54}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{i64 -223957475976008608}
!10 = !{i64 -2229616780417984550}
!11 = !{i64 -576082622977666211}
!12 = !{i64 9195447586692759422}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!15 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!"_ZTSN4llvh15SmallVectorBaseE", !13, i64 0, !7, i64 8, !7, i64 12}
!20 = !{!19, !13, i64 0}
!21 = !{!19, !7, i64 8}
!22 = !{!"_ZTSN6hermes9ValueKindE", !6, i64 0}
!23 = !{!"short", !6, i64 0}
!24 = !{!"_ZTSN6hermes4TypeE", !23, i64 0, !23, i64 2}
!25 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !19, i64 0}
!26 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !25, i64 0}
!27 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !26, i64 0}
!28 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !6, i64 0}
!29 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !27, i64 0, !28, i64 16}
!30 = !{!"_ZTSN6hermes5ValueE", !22, i64 0, !24, i64 2, !29, i64 8}
!31 = !{!30, !22, i64 0}
!32 = !{!"p1 _ZTSN6hermes10BasicBlockE", !13, i64 0}
!33 = !{!"p1 _ZTSN6hermes9ScopeDescE", !13, i64 0}
!34 = !{!"p1 omnipotent char", !13, i64 0}
!35 = !{!"p1 _ZTSN6hermes8FunctionE", !13, i64 0}
!36 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !13, i64 0}
!37 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !15, i64 8}
!38 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !37, i64 0}
!39 = !{!"p1 _ZTSN6hermes8VariableE", !13, i64 0}
!40 = !{!33, !33, i64 0}
!41 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ScopeDescEvEE", !19, i64 0}
!42 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EEE", !41, i64 0}
!43 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ScopeDescEEE", !42, i64 0}
!44 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ScopeDescELj8EEE", !6, i64 0}
!45 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ScopeDescELj8EEE", !43, i64 0, !44, i64 16}
!46 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes8VariableEvEE", !19, i64 0}
!47 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EEE", !46, i64 0}
!48 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes8VariableEEE", !47, i64 0}
!49 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes8VariableELj8EEE", !6, i64 0}
!50 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes8VariableELj8EEE", !48, i64 0, !49, i64 16}
!51 = !{!"_ZTSN6hermes9ScopeDescE", !30, i64 0, !33, i64 40, !45, i64 48, !38, i64 128, !35, i64 144, !50, i64 152, !16, i64 232}
!52 = !{!51, !35, i64 144}
!53 = !{!32, !32, i64 0}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!19, !7, i64 12}
!56 = !{!16, !16, i64 0}
!57 = !{!"p1 _ZTSN6hermes5ValueE", !13, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!51, !33, i64 40}
!60 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes5ValueES4_EE", !13, i64 0}
!61 = !{!"_ZTSN4llvh8DenseMapIPN6hermes5ValueES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEEE", !60, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!62 = !{!61, !60, i64 0}
!63 = !{!61, !7, i64 16}
!64 = !{!"branch_weights", i32 1999, i32 1}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = !{!"branch_weights", i32 1, i32 0}
!67 = !{!61, !7, i64 8}
!68 = !{!61, !7, i64 12}
!69 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm32EEE", !6, i64 0}
!70 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA4_NS_6detail12DenseSetPairIPN6hermes10BasicBlockEEENS_13SmallDenseMapIS5_NS1_13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_EES6_E8LargeRepEccccccccEE", !69, i64 0}
!71 = !{!"_ZTSN4llvh13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEEE", !7, i64 0, !7, i64 0, !7, i64 4, !70, i64 8}
!72 = !{!71, !7, i64 4}
!73 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPN6hermes10BasicBlockEEE", !13, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!60, !60, i64 0}
!77 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !6, i64 0}
!78 = !{!"_ZTSN4llvh11raw_ostreamE", !34, i64 8, !34, i64 16, !34, i64 24, !77, i64 32}
!79 = !{!78, !34, i64 16}
!80 = !{!78, !34, i64 24}
!81 = distinct !{!81, !54}
!82 = distinct !{!82, !54}
!83 = !{i64 5815588799146224044}
!84 = !{!"p1 _ZTSN6hermes7ContextE", !13, i64 0}
!85 = !{!"_ZTSSt12__shared_ptrIN6hermes7ContextELN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0, !15, i64 8}
!86 = !{!85, !84, i64 0}
!87 = !{!"_ZTSN6hermes20OptimizationSettingsE", !16, i64 0, !16, i64 1, !16, i64 2, !16, i64 3, !16, i64 4, !16, i64 5}
!88 = !{!87, !16, i64 1}
!89 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !13, i64 0}
!90 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !89, i64 0, !89, i64 8}
!91 = !{!90, !89, i64 8}
!92 = !{!"p1 _ZTSN6hermes11InstructionE", !13, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !90, i64 0}
!95 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes11InstructionEJEEE", !94, i64 0}
!96 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes11InstructionENS1_10BasicBlockEJEEE", !95, i64 0}
!97 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt4pairIPN6hermes5ValueEjEvEE", !19, i64 0}
!98 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes5ValueEjELb1EEE", !97, i64 0}
!99 = !{!"_ZTSN4llvh15SmallVectorImplISt4pairIPN6hermes5ValueEjEEE", !98, i64 0}
!100 = !{!"_ZTSN4llvh18SmallVectorStorageISt4pairIPN6hermes5ValueEjELj2EEE", !6, i64 0}
!101 = !{!"_ZTSN4llvh11SmallVectorISt4pairIPN6hermes5ValueEjELj2EEE", !99, i64 0, !100, i64 16}
!102 = !{!"_ZTSN4llvh5SMLocE", !34, i64 0}
!103 = !{!"_ZTSN6hermes11InstructionE", !96, i64 0, !30, i64 16, !32, i64 56, !101, i64 64, !33, i64 112, !102, i64 120, !7, i64 128}
!104 = !{!103, !32, i64 56}
!105 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !90, i64 0}
!106 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes10BasicBlockEJEEE", !105, i64 0}
!107 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes10BasicBlockENS1_8FunctionEJEEE", !106, i64 0}
!108 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !94, i64 0}
!109 = !{!"_ZTSN4llvh12simple_ilistIN6hermes11InstructionEJEEE", !108, i64 0}
!110 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes11InstructionEJEEENS_12ilist_traitsIS3_EEEE", !109, i64 0}
!111 = !{!"_ZTSN4llvh6iplistIN6hermes11InstructionEJEEE", !110, i64 0}
!112 = !{!"_ZTSN6hermes10BasicBlockE", !107, i64 0, !30, i64 16, !111, i64 56, !35, i64 72}
!113 = !{!112, !35, i64 72}
!114 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !90, i64 0}
!115 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes8FunctionEJEEE", !114, i64 0}
!116 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes8FunctionENS1_6ModuleEJEEE", !115, i64 0}
!117 = !{!"p1 _ZTSN6hermes6ModuleE", !13, i64 0}
!118 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !105, i64 0}
!119 = !{!"_ZTSN4llvh12simple_ilistIN6hermes10BasicBlockEJEEE", !118, i64 0}
!120 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes10BasicBlockEJEEENS_12ilist_traitsIS3_EEEE", !119, i64 0}
!121 = !{!"_ZTSN4llvh6iplistIN6hermes10BasicBlockEJEEE", !120, i64 0}
!122 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ParameterEvEE", !19, i64 0}
!123 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ParameterELb1EEE", !122, i64 0}
!124 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ParameterEEE", !123, i64 0}
!125 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ParameterELj8EEE", !6, i64 0}
!126 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ParameterELj8EEE", !124, i64 0, !125, i64 16}
!127 = !{!"p1 _ZTSN6hermes12UniqueStringE", !13, i64 0}
!128 = !{!"_ZTSN6hermes10IdentifierE", !127, i64 0}
!129 = !{!"_ZTSN6hermes8Function14DefinitionKindE", !6, i64 0}
!130 = !{!"_ZTSN4llvh7SMRangeE", !102, i64 0, !102, i64 8}
!131 = !{!"_ZTSN6hermes16SourceVisibilityE", !6, i64 0}
!132 = !{!"p1 _ZTSN6hermes9ParameterE", !13, i64 0}
!133 = !{!"_ZTSN6hermes8OptValueIjEE", !7, i64 0, !16, i64 4}
!134 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !6, i64 0}
!135 = !{!"_ZTSN6hermes10LazySourceE", !134, i64 0, !7, i64 4, !130, i64 8, !16, i64 24, !16, i64 25}
!136 = !{!"_ZTSN6hermes8FunctionE", !116, i64 0, !30, i64 16, !117, i64 56, !16, i64 64, !33, i64 72, !121, i64 80, !126, i64 96, !128, i64 176, !129, i64 184, !16, i64 188, !130, i64 192, !131, i64 208, !128, i64 216, !132, i64 224, !7, i64 232, !133, i64 236, !135, i64 248, !38, i64 280, !39, i64 296}
!137 = !{!136, !33, i64 72}
!138 = !{!136, !16, i64 188}
!139 = !{!"_ZTSN6hermes7LiteralE", !30, i64 0}
!140 = !{!"_ZTSN4llvh14FoldingSetBase4NodeE", !13, i64 0}
!141 = !{!"double", !6, i64 0}
!142 = !{!"_ZTSN6hermes13LiteralNumberE", !139, i64 0, !140, i64 40, !141, i64 48}
!143 = !{!142, !141, i64 48}
!144 = !{!"p1 _ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !13, i64 0}
!145 = !{!"_ZTSN4llvh14ilist_iteratorINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEELb0ELb0EEE", !144, i64 0}
!146 = !{!"_ZTSN6hermes9IRBuilderE", !117, i64 0, !145, i64 8, !32, i64 16, !102, i64 24, !33, i64 32}
!147 = !{!146, !117, i64 0}
!148 = !{!136, !132, i64 224}
!149 = !{!132, !132, i64 0}
!150 = !{!90, !89, i64 0}
!151 = !{!103, !33, i64 112}
!152 = !{!103, !7, i64 128}
!153 = !{!"p1 _ZTSN6hermes7PhiInstE", !13, i64 0}
!154 = !{!153, !153, i64 0}
!155 = distinct !{!155, i1 true, !"_ZSt11make_uniqueIN6hermes8InliningEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!156 = distinct !{!156, !155, !"_ZSt11make_uniqueIN6hermes8InliningEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!157 = !{i64 -1301770017085574749}
!158 = !{!156}
!159 = !{!"_ZTSN6hermes4Pass8PassKindE", !6, i64 0}
!160 = !{!"long", !6, i64 0}
!161 = !{!"_ZTSN4llvh9StringRefE", !34, i64 0, !160, i64 8}
!162 = !{!"_ZTSN6hermes4PassE", !159, i64 8, !161, i64 16}
!163 = !{!162, !159, i64 8}
!164 = !{!34, !34, i64 0}
!165 = !{!160, !160, i64 0}
!166 = !{!"vtable pointer", !5, i64 0}
!167 = !{!166, !166, i64 0}
!168 = !{!"p1 _ZTSN6hermes4PassE", !13, i64 0}
!169 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes4PassELb0EE", !168, i64 0}
!170 = !{!169, !168, i64 0}
!171 = !{i64 -8372848765862523375}
!172 = distinct !{!172, i1 true, !"_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertERKS4_"}
!173 = distinct !{!173, !172, !"_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertERKS4_: argument 0"}
!174 = distinct !{!174, !54}
!175 = distinct !{!175, i1 true, !"_ZN6hermes10successorsEPNS_10BasicBlockE"}
!176 = distinct !{!176, !175, !"_ZN6hermes10successorsEPNS_10BasicBlockE: argument 0"}
!177 = !{i64 4996760355048050179}
!178 = !{!173}
!179 = !{!176}
!180 = !{!"_ZTSN4llvh13SmallDenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE8LargeRepE", !73, i64 0, !7, i64 8}
!181 = !{!180, !73, i64 0}
!182 = !{i64 4793222556039220430}
!183 = !{!"_ZTSN4llvh16DenseMapIteratorIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EELb0EEE", !73, i64 0, !73, i64 8}
!184 = !{!"_ZTSSt4pairIN4llvh16DenseMapIteratorIPN6hermes10BasicBlockENS0_6detail13DenseSetEmptyENS0_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EELb0EEEbE", !183, i64 0, !16, i64 16}
!185 = !{!184, !16, i64 16}
!186 = !{i64 -309198741761903842}
!187 = !{i64 -8203496831067797957}
!188 = distinct !{!188, !75}
!189 = distinct !{!189, !54}
!190 = distinct !{!190, !54}
!191 = !{i64 -8830500870873788910}
!192 = !{i64 -864935005477774949}
!193 = !{!39, !39, i64 0}
!194 = !{!24, !23, i64 0}
!195 = !{!24, !23, i64 2}
!196 = !{!51, !16, i64 232}
!197 = distinct !{!197, !54}
!198 = distinct !{!198, !54}
!199 = !{i64 2398691052242012046}
!200 = !{i64 2326271830882561023}
!201 = !{i64 8721637659914152188}
!202 = distinct !{!202, !75}
!203 = distinct !{!203, !54}
!204 = distinct !{!204, !75}
!205 = distinct !{!205, !54}
!206 = !{i64 9074700386964376397}
!207 = !{i64 -7749503919426087632}
!208 = !{i64 -437960276890006326}
!209 = !{i64 -2102579242960109732}
!210 = !{!6, !6, i64 0}
!211 = !{i64 1209044262841520412}
!212 = !{i64 8477964516562754903}
end_hunk_2
