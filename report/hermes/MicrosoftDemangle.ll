inline.NumInlined: 804
inline.NumDeleted: 199
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.OutputStream = type { ptr, i64, i64, i32, i32 }
%"class.(anonymous namespace)::Demangler" = type { ptr, i8, %"class.llvh::ms_demangle::ArenaAllocator", %"struct.(anonymous namespace)::BackrefContext" }
%"class.llvh::ms_demangle::ArenaAllocator" = type { ptr }
%"struct.(anonymous namespace)::BackrefContext" = type { [10 x ptr], i64, [10 x ptr], i64 }
%class.StringView = type { ptr, ptr }

$_ZN12OutputStreamlsEc = comdat any

$_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_ = comdat any

$_ZN12OutputStream13writeUnsignedEmb = comdat any

$_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_ = comdat any

@_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE5Basic = internal unnamed_addr constant [36 x i8] c"\00\00\01\02\03\04\05\06\07\08\09\00\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !", align 16
@_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE5Under = internal unnamed_addr constant [36 x i8] c"\22#$%&'(\00\00\00\00\00\00)*+,-./01234\00\00\00\00567\00\00\00\00", align 16
@_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE11DoubleUnder = internal unnamed_addr constant <{ [22 x i8], [14 x i8] }> <{ [22 x i8] c"\00\00\00\00\00\00\00\00\00\0089:;\00\00<=>\00\00?", [14 x i8] zeroinitializer }>, align 16
@_ZTVN12_GLOBAL__N_19DemanglerE = internal unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_19DemanglerD2Ev, ptr @_ZN12_GLOBAL__N_19DemanglerD0Ev] }, align 8
@_ZTVN4llvh11ms_demangle10SymbolNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle17QualifiedNameNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle13NodeArrayNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"`RTTI Type Descriptor'\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"`RTTI Base Class Array'\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"`RTTI Class Hierarchy Descriptor'\00", align 1
@_ZTVN4llvh11ms_demangle24EncodedStringLiteralNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.33 = private unnamed_addr constant [11 x i8] c",/\\:. \0A\09'-\00", align 1
@__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup = private unnamed_addr constant [26 x i8] c"\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34 = private unnamed_addr constant [26 x i8] c"\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA", align 16
@.str.35 = private unnamed_addr constant [10 x i8] c"`vftable'\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"`vbtable'\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"`local vftable'\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"`RTTI Complete Object Locator'\00", align 1
@_ZTVN4llvh11ms_demangle22StructorIdentifierNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle32ConversionOperatorIdentifierNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle29LiteralOperatorIdentifierNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle30TemplateParameterReferenceNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle18IntegerLiteralNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.60 = private unnamed_addr constant [22 x i8] c"`anonymous namespace'\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"::`\00", align 1
@_ZTVN4llvh11ms_demangle22SpecialTableSymbolNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle18FunctionSymbolNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle24VcallThunkIdentifierNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle18ThunkSignatureNodeE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle30LocalStaticGuardIdentifierNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle28LocalStaticGuardVariableNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle11TagTypeNodeE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle15PointerTypeNodeE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle13ArrayTypeNodeE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle14CustomTypeNodeE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle17PrimitiveTypeNodeE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle18VariableSymbolNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle27RttiBaseClassDescriptorNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvh11ms_demangle29DynamicStructorIdentifierNodeE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.73 = private unnamed_addr constant [38 x i8] c"%d function parameter backreferences\0A\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"  [%d] - %.*s\0A\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"%d name backreferences\0A\00", align 1
@switch.table._Z30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroup = private unnamed_addr constant [3 x ptr] [ptr @_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE5Basic, ptr @_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE5Under, ptr @_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE11DoubleUnder], align 8
@switch.table._ZN12_GLOBAL__N_19Demangler5parseER10StringView = private unnamed_addr constant [16 x ptr] [ptr @.str.35, ptr @.str.36, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.38, ptr @.str.37], align 8
@switch.table._ZN12_GLOBAL__N_19Demangler5parseER10StringView.5 = private unnamed_addr constant [16 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @.str.35, i64 9), ptr getelementptr inbounds nuw (i8, ptr @.str.36, i64 9), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @.str.38, i64 30), ptr getelementptr inbounds nuw (i8, ptr @.str.37, i64 15)], align 8
@switch.table._ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 poison, i32 2], align 4
@switch.table._ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.10 = private unnamed_addr constant [17 x i8] c"\01\01\02\02\03\03\04\04\05\05\00\00\06\06\07\07\08", align 1
@switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11 = private unnamed_addr constant [20 x i8] [i8 0, i8 1, i8 2, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 1, i8 2, i8 3], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i8 @_Z30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroup(i8 noundef signext %0, i32 noundef %1) local_unnamed_addr #0 {
switch.lookup:
  %i.a = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Z30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroup, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.b = add i8 %0, -48
  %or.cond = icmp ult i8 %i.b, 10
  %.v = select i1 %or.cond, i64 -48, i64 -55
  %i.c = sext i8 %0 to i64
  %i.d = getelementptr i8, ptr %switch.load, i64 %.v
  %i.e = getelementptr i8, ptr %i.d, i64 %i.c
  %.0 = load i8, ptr %i.e, align 1, !tbaa !7
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_Z22countTrailingNullBytesPKhi(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0712.pn = phi ptr [ %.0712, %bb.b ], [ %i.c, %.lr.ph.preheader ]
  %.011 = phi i32 [ %i.f, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0712 = getelementptr inbounds i8, ptr %.0712.pn, i64 -1 ; 2 uses
  %i.d = load i8, ptr %.0712, align 1, !tbaa !9
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i32 %.011, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.f, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !10

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %1, %bb.b ], [ %.011, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_Z18countEmbeddedNullsPKhj(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.a, 4294967288               ; 4 uses
  %i.b = trunc nuw i64 %n.vec to i32
  %i.c = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !9
  %wide.load11 = load <4 x i8>, ptr %i.d, align 1, !tbaa !9
  %i.e = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.f = icmp eq <4 x i8> %wide.load11, zeroinitializer
  %i.g = zext <4 x i1> %i.e to <4 x i32>
  %i.h = zext <4 x i1> %i.f to <4 x i32>
  %i.i = add <4 x i32> %vec.phi, %i.g             ; 2 uses
  %i.j = add <4 x i32> %vec.phi10, %i.h           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.b, %middle.block ]
  %.058.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  %.067.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.c, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.05.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %middle.block ], [ %spec.select, %.lr.ph ]
  ret i32 %.05.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader13, %.lr.ph
  %.09 = phi i32 [ %i.q, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader13 ]
  %.058 = phi i32 [ %spec.select, %.lr.ph ], [ %.058.ph, %.lr.ph.preheader13 ]
  %.067 = phi ptr [ %i.m, %.lr.ph ], [ %.067.ph, %.lr.ph.preheader13 ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.067, i64 1
  %i.n = load i8, ptr %.067, align 1, !tbaa !9
  %i.o = icmp eq i8 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %spec.select = add i32 %.058, %i.p              ; 2 uses
  %i.q = add nuw i32 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 1, 5) i32 @_Z17guessCharByteSizePKhjj(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %2, 32
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %.thread

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.0712.pn.i = phi ptr [ %.0712.i, %bb.d ], [ %i.e, %.lr.ph.preheader.i ]
  %.011.i = phi i32 [ %i.h, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.0712.i = getelementptr inbounds i8, ptr %.0712.pn.i, i64 -1 ; 2 uses
  %i.f = load i8, ptr %.0712.i, align 1, !tbaa !9
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_Z22countTrailingNullBytesPKhi.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = add nuw nsw i32 %.011.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.h, %1
  br i1 %exitcond.not.i, label %_Z22countTrailingNullBytesPKhi.exit, label %.lr.ph.i, !llvm.loop !10

_Z22countTrailingNullBytesPKhi.exit:              ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ %.011.i, %.lr.ph.i ], [ %1, %bb.d ]
  %.0.lcssa.i.fr = freeze i32 %.0.lcssa.i         ; 2 uses
  %i.i = icmp samesign ugt i32 %.0.lcssa.i.fr, 1
  %. = select i1 %i.i, i32 2, i32 1
  %.inv = icmp ult i32 %.0.lcssa.i.fr, 4
  %spec.select = select i1 %.inv, i32 %., i32 4
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_Z18countEmbeddedNullsPKhj.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %bb.e
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i17.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.preheader
  %n.vec = and i64 %i.j, 4294967288               ; 4 uses
  %i.k = trunc nuw i64 %n.vec to i32
  %i.l = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi26 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !9
  %wide.load27 = load <4 x i8>, ptr %i.m, align 1, !tbaa !9
  %i.n = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.o = icmp eq <4 x i8> %wide.load27, zeroinitializer
  %i.p = zext <4 x i1> %i.n to <4 x i32>
  %i.q = zext <4 x i1> %i.o to <4 x i32>
  %i.r = add <4 x i32> %vec.phi, %i.p             ; 2 uses
  %i.s = add <4 x i32> %vec.phi26, %i.q           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.s, %i.r
  %i.u = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %_Z18countEmbeddedNullsPKhj.exit, label %.lr.ph.i17.preheader29

.lr.ph.i17.preheader29:                           ; preds = %.lr.ph.i17.preheader, %middle.block
  %.09.i.ph = phi i32 [ 0, %.lr.ph.i17.preheader ], [ %i.k, %middle.block ]
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19Demangler5parseER10StringView:bb.a
  br i1 %i.bf, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.thread

_ZNK10StringView10startsWithEc.exit.thread:       ; preds = %_ZNK10StringView10startsWithES_.exit.thread91, %_ZNK10StringView10startsWithEc.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bg, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZNK10StringView10startsWithEc.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 28 uses
  store ptr %i.bh, ptr %1, align 8, !tbaa !69
  %.pre = ptrtoint ptr %i.bh to i64
  %.pre142 = sub i64 %i.d, %.pre                  ; 2 uses
  %i.bi = icmp ult i64 %.pre142, 3
  br i1 %i.bi, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread, label %_ZNK10StringView10startsWithES_.exit.i.i

_ZNK10StringView10startsWithES_.exit.i.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit
  %i.bj = load i16, ptr %i.bh, align 1
  %i.bk = xor i16 24383, %i.bj
  %i.bl = getelementptr i8, ptr %i.bh, i64 2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i16
  %i.bo = xor i16 55, %i.bn
  %i.bp = or i16 %i.bk, %i.bo
  %i.bq = icmp ne i16 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZN10StringView12consumeFrontES_.exit.i, label %_ZNK10StringView10startsWithES_.exit.i17.i

_ZNK10StringView10startsWithES_.exit.i17.i:       ; preds = %_ZNK10StringView10startsWithES_.exit.i.i
  %i.bs = load i16, ptr %i.bh, align 1
  %i.bt = xor i16 24383, %i.bs
  %i.bu = getelementptr i8, ptr %i.bh, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 56, %i.bw
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %.not9.i.i.i.i.i.i19.i = icmp eq i32 %i.ca, 0
  br i1 %.not9.i.i.i.i.i.i19.i, label %_ZN10StringView12consumeFrontES_.exit.i, label %_ZNK10StringView10startsWithES_.exit.i24.i

_ZNK10StringView10startsWithES_.exit.i24.i:       ; preds = %_ZNK10StringView10startsWithES_.exit.i17.i
  %i.cb = load i16, ptr %i.bh, align 1
  %i.cc = xor i16 24383, %i.cb
  %i.cd = getelementptr i8, ptr %i.bh, i64 2
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i16
  %i.cg = xor i16 57, %i.cf
  %i.ch = or i16 %i.cc, %i.cg
  %i.ci = icmp ne i16 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %.not9.i.i.i.i.i.i26.i = icmp eq i32 %i.cj, 0
  br i1 %.not9.i.i.i.i.i.i26.i, label %bb.z, label %_ZNK10StringView10startsWithES_.exit.i31.i

_ZNK10StringView10startsWithES_.exit.i31.i:       ; preds = %_ZNK10StringView10startsWithES_.exit.i24.i
  %i.ck = load i16, ptr %i.bh, align 1
  %i.cl = xor i16 24383, %i.ck
  %i.cm = getelementptr i8, ptr %i.bh, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i16
  %i.cp = xor i16 65, %i.co
  %i.cq = or i16 %i.cl, %i.cp
  %i.cr = icmp ne i16 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %.not9.i.i.i.i.i.i33.i = icmp eq i32 %i.cs, 0
  br i1 %.not9.i.i.i.i.i.i33.i, label %_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split, label %_ZNK10StringView10startsWithES_.exit.i38.i

_ZNK10StringView10startsWithES_.exit.i38.i:       ; preds = %_ZNK10StringView10startsWithES_.exit.i31.i
  %i.ct = load i16, ptr %i.bh, align 1
  %i.cu = xor i16 24383, %i.ct
  %i.cv = getelementptr i8, ptr %i.bh, i64 2
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i16
  %i.cy = xor i16 66, %i.cx
  %i.cz = or i16 %i.cu, %i.cy
  %i.da = icmp ne i16 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %.not9.i.i.i.i.i.i40.i = icmp eq i32 %i.db, 0
  br i1 %.not9.i.i.i.i.i.i40.i, label %bb.aa, label %_ZNK10StringView10startsWithES_.exit.i45.i

_ZNK10StringView10startsWithES_.exit.i45.i:       ; preds = %_ZNK10StringView10startsWithES_.exit.i38.i
  %i.dc = load i16, ptr %i.bh, align 1
  %i.dd = xor i16 24383, %i.dc
  %i.de = getelementptr i8, ptr %i.bh, i64 2
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i16
  %i.dh = xor i16 67, %i.dg
  %i.di = or i16 %i.dd, %i.dh
  %i.dj = icmp ne i16 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %.not9.i.i.i.i.i.i47.i = icmp eq i32 %i.dk, 0
  br i1 %.not9.i.i.i.i.i.i47.i, label %bb.n, label %.thread90.i

.thread90.i:                                      ; preds = %_ZNK10StringView10startsWithES_.exit.i45.i
  %i.dl = load i16, ptr %i.bh, align 1
  %i.dm = xor i16 24383, %i.dl
  %i.dn = getelementptr i8, ptr %i.bh, i64 2
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = zext i8 %i.do to i16
  %i.dq = xor i16 80, %i.dp
  %i.dr = or i16 %i.dm, %i.dq
  %i.ds = icmp ne i16 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %.not9.i.i.i.i.i.i67 = icmp eq i32 %i.dt, 0
  br i1 %.not9.i.i.i.i.i.i67, label %_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split, label %.thread90.i.thread

.thread90.i.thread:                               ; preds = %.thread90.i
  %i.du = icmp eq i64 %.pre142, 3
  br i1 %i.du, label %.thread154, label %bb.f

bb.f:                                             ; preds = %.thread90.i.thread
  %i.dv = load i32, ptr %i.bh, align 1
  %i.dw = icmp ne i32 810704703, %i.dv
  %i.dx = zext i1 %i.dw to i32
  %.not9.i.i.i.i.i.i62 = icmp eq i32 %i.dx, 0
  br i1 %.not9.i.i.i.i.i.i62, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dy = load i32, ptr %i.bh, align 1
  %i.dz = icmp ne i32 827481919, %i.dy
  %i.ea = zext i1 %i.dz to i32
  %.not9.i.i.i.i.i.i57 = icmp eq i32 %i.ea, 0
  br i1 %.not9.i.i.i.i.i.i57, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eb = load i32, ptr %i.bh, align 1
  %i.ec = icmp ne i32 844259135, %i.eb
  %i.ed = zext i1 %i.ec to i32
  %.not9.i.i.i.i.i.i52 = icmp eq i32 %i.ed, 0
  br i1 %.not9.i.i.i.i.i.i52, label %bb.ag, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ee = load i32, ptr %i.bh, align 1
  %i.ef = icmp ne i32 861036351, %i.ee
  %i.eg = zext i1 %i.ef to i32
  %.not9.i.i.i.i.i.i47 = icmp eq i32 %i.eg, 0
  br i1 %.not9.i.i.i.i.i.i47, label %bb.ah, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eh = load i32, ptr %i.bh, align 1
  %i.ei = icmp ne i32 877813567, %i.eh
  %i.ej = zext i1 %i.ei to i32
  %.not9.i.i.i.i.i.i42 = icmp eq i32 %i.ej, 0
  br i1 %.not9.i.i.i.i.i.i42, label %_ZN10StringView12consumeFrontES_.exit.i, label %.thread154.thread

.thread154:                                       ; preds = %.thread90.i.thread
  %i.ek = load i16, ptr %i.bh, align 1
  %i.el = xor i16 24383, %i.ek
  %i.em = getelementptr i8, ptr %i.bh, i64 2
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i16
  %i.ep = xor i16 83, %i.eo
  %i.eq = or i16 %i.el, %i.ep
  %i.er = icmp ne i16 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %.not9.i.i.i.i.i.i37 = icmp eq i32 %i.es, 0
  br i1 %.not9.i.i.i.i.i.i37, label %_ZN10StringView12consumeFrontES_.exit.i, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread

.thread154.thread:                                ; preds = %bb.j
  %i.et = load i16, ptr %i.bh, align 1
  %i.eu = xor i16 24383, %i.et
  %i.ev = getelementptr i8, ptr %i.bh, i64 2
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i16
  %i.ey = xor i16 83, %i.ex
  %i.ez = or i16 %i.eu, %i.ey
  %i.fa = icmp ne i16 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %.not9.i.i.i.i.i.i37173 = icmp eq i32 %i.fb, 0
  br i1 %.not9.i.i.i.i.i.i37173, label %_ZN10StringView12consumeFrontES_.exit.i, label %bb.k

bb.k:                                             ; preds = %.thread154.thread
  %i.fc = load i32, ptr %i.bh, align 1
  %i.fd = icmp ne i32 1163878207, %i.fc
  %i.fe = zext i1 %i.fd to i32
  %.not9.i.i.i.i.i.i32 = icmp eq i32 %i.fe, 0
  br i1 %.not9.i.i.i.i.i.i32, label %bb.aj, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ff = load i32, ptr %i.bh, align 1
  %i.fg = icmp ne i32 1180655423, %i.ff
  %i.fh = zext i1 %i.fg to i32
  %.not9.i.i.i.i.i.i27 = icmp eq i32 %i.fh, 0
  br i1 %.not9.i.i.i.i.i.i27, label %bb.ak, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fi = load i32, ptr %i.bh, align 1
  %i.fj = icmp ne i32 1247764287, %i.fi
  %i.fk = zext i1 %i.fj to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread

bb.n:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i45.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.fl, ptr %1, align 8, !tbaa !69
  %i.fm = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

_ZN10StringView12consumeFrontES_.exit.i:          ; preds = %.thread154.thread, %.thread154, %bb.j, %_ZNK10StringView10startsWithES_.exit.i17.i, %_ZNK10StringView10startsWithES_.exit.i.i
  %.sink162 = phi i64 [ 5, %bb.j ], [ 4, %_ZNK10StringView10startsWithES_.exit.i.i ], [ 4, %_ZNK10StringView10startsWithES_.exit.i17.i ], [ 4, %.thread154 ], [ 4, %.thread154.thread ]
  %.0.i24.ph = phi i64 [ 14, %bb.j ], [ 0, %_ZNK10StringView10startsWithES_.exit.i.i ], [ 1, %_ZNK10StringView10startsWithES_.exit.i17.i ], [ 15, %.thread154 ], [ 15, %.thread154.thread ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink162
  store ptr %i.fn, ptr %1, align 8, !tbaa !69
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !33 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !28
  %i.fr = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !34
  %i.fu = add i64 %i.fr, 7
  %i.fv = add i64 %i.fu, %i.ft
  %i.fw = and i64 %i.fv, -8                       ; 2 uses
  %reass.sub.i.i = sub i64 %i.fw, %i.fr
  %i.fx = add i64 %reass.sub.i.i, 40              ; 2 uses
  store i64 %i.fx, ptr %i.fs, align 8, !tbaa !34
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !32
  %i.ga = icmp ult i64 %i.fx, %i.fz
  br i1 %i.ga, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.gb = inttoptr i64 %i.fw to ptr
  br label %bb.q

bb.p:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.gc = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !71 ; 5 uses
  %i.gd = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20, !inline_history !71 ; 2 uses
  store ptr %i.gd, ptr %i.gc, align 8, !tbaa !28
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store ptr %i.fp, ptr %i.ge, align 8, !tbaa !31
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i64 4096, ptr %i.gf, align 8, !tbaa !32
  store ptr %i.gc, ptr %i.fo, align 8, !tbaa !33
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 40, ptr %i.gg, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink13.i.i = phi ptr [ %i.gd, %bb.p ], [ %i.gb, %bb.o ] ; 6 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 5, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %3, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 32
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_19Demangler5parseER10StringView, i64 %.0.i24.ph
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep181 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_19Demangler5parseER10StringView.5, i64 %.0.i24.ph
  %switch.load182 = load ptr, ptr %switch.gep181, align 8
  store ptr %switch.load, ptr %4, align 8, !tbaa !69
  store ptr %switch.load182, ptr %.sroa.489.0..sroa_idx, align 8, !tbaa !69
  %i.gh = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink13.i.i), !inline_history !71
  %i.gi = load ptr, ptr %i.fo, align 8, !tbaa !33 ; 4 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !28
  %i.gk = ptrtoint ptr %i.gj to i64               ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !34
  %i.gn = add i64 %i.gk, 7
  %i.go = add i64 %i.gn, %i.gm
  %i.gp = and i64 %i.go, -8                       ; 2 uses
  %reass.sub.i21.i = sub i64 %i.gp, %i.gk
  %i.gq = add i64 %reass.sub.i21.i, 40            ; 2 uses
  store i64 %i.gq, ptr %i.gl, align 8, !tbaa !34
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !32
  %i.gt = icmp ult i64 %i.gq, %i.gs
  br i1 %i.gt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gu = inttoptr i64 %i.gp to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i

bb.s:                                             ; preds = %bb.q
  %i.gv = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !71 ; 5 uses
  %i.gw = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20, !inline_history !71 ; 2 uses
  store ptr %i.gw, ptr %i.gv, align 8, !tbaa !28
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  store ptr %i.gi, ptr %i.gx, align 8, !tbaa !31
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store i64 4096, ptr %i.gy, align 8, !tbaa !32
  store ptr %i.gv, ptr %i.fo, align 8, !tbaa !33
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i64 40, ptr %i.gz, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i: ; preds = %bb.s, %bb.r
  %.sink13.i22.i = phi ptr [ %i.gw, %bb.s ], [ %i.gu, %bb.r ] ; 7 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 8
  store i32 28, ptr %i.ha, align 8, !tbaa !60
  %i.hb = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle22SpecialTableSymbolNodeE, i64 16), ptr %.sink13.i22.i, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 24 ; 2 uses
  store ptr null, ptr %i.hc, align 8, !tbaa !72
  store ptr %i.gh, ptr %i.hb, align 8, !tbaa !63
  %i.hd = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 2 uses
  store ptr %i.he, ptr %1, align 8, !tbaa !40
  %i.hf = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hg = add i8 %i.hf, -56
  %or.cond.i = icmp ult i8 %i.hg, -2
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 2 ; 5 uses
  store ptr %i.hh, ptr %1, align 8, !tbaa !40
  %i.hi = load i8, ptr %i.he, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.hi, -65            ; 3 uses
  %i.hj = icmp ult i8 %switch.tableidx, 20
  br i1 %i.hj, label %switch.hole_check, label %bb.u

bb.u:                                             ; preds = %switch.hole_check, %bb.t
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hk, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i

switch.hole_check:                                ; preds = %bb.t
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.u

switch.lookup:                                    ; preds = %switch.hole_check
  %i.hl = zext nneg i8 %switch.tableidx to i64
  %switch.gep.a = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.hl
  %switch.load.a = load i8, ptr %switch.gep.a, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i: ; preds = %switch.lookup, %bb.u
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.u ], [ %switch.load.a, %switch.lookup ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.sink13.i22.i, i64 32
  store i8 %.sroa.0.0.i.i, ptr %i.hm, align 8, !tbaa !75
  %i.hn = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.ho = icmp eq ptr %i.hh, %i.hn
  br i1 %i.ho, label %_ZL15startsWithDigit10StringView.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i
  %i.hp = load i8, ptr %i.hh, align 1, !tbaa !9   ; 3 uses
  %i.hq = icmp eq i8 %i.hp, 64
  br i1 %i.hq, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZL15startsWithDigit10StringView.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  store ptr %i.hr, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.hs = sext i8 %i.hp to i32
  %isdigittmp.i.i = add nsw i32 %i.hs, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.v, label %_ZL15startsWithDigit10StringView.exit.thread.i

bb.v:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %i.ht = sext i8 %i.hp to i64
  %i.hu = add nsw i64 %i.ht, -48                  ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !51
  %.not.i.i = icmp ult i64 %i.hu, %i.hw
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hx, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

bb.x:                                             ; preds = %bb.v
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  store ptr %i.hy, ptr %1, align 8, !tbaa !69
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hu
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZL15startsWithDigit10StringView.exit.thread.i:   ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit.i, %_ZL15startsWithDigit10StringView.exit.i
  %i.ic = ptrtoint ptr %i.hn to i64
  %i.id = ptrtoint ptr %i.hh to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = icmp ult i64 %i.ie, 2
  br i1 %i.if, label %_ZNK10StringView10startsWithES_.exit.thread9.i, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.ig = load i16, ptr %i.hh, align 1
  %i.ih = icmp ne i16 9279, %i.ig
  %i.ii = zext i1 %i.ih to i32
  %.not9.i.i.i.i.i.i167 = icmp eq i32 %i.ii, 0
  br i1 %.not9.i.i.i.i.i.i167, label %_ZNK10StringView10startsWithES_.exit.thread.i, label %_ZNK10StringView10startsWithES_.exit.thread9.i

_ZNK10StringView10startsWithES_.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.ij = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !76
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZNK10StringView10startsWithES_.exit.thread9.i:   ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.ik = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit: ; preds = %bb.w, %bb.x, %_ZNK10StringView10startsWithES_.exit.thread.i, %_ZNK10StringView10startsWithES_.exit.thread9.i
  %.0.i = phi ptr [ %i.ik, %_ZNK10StringView10startsWithES_.exit.thread9.i ], [ %i.ij, %_ZNK10StringView10startsWithES_.exit.thread.i ], [ null, %bb.w ], [ %i.ib, %bb.x ]
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.im = load i8, ptr %i.il, align 8, !tbaa !20, !range !55, !noundef !56
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %i.io = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.0.i), !inline_history !77
  %i.ip = load i8, ptr %i.il, align 8, !tbaa !20, !range !55, !noundef !56
  %i.iq = trunc nuw i8 %i.ip to i1
  %..i.i = select i1 %i.iq, ptr null, ptr %i.io
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit.i: ; preds = %bb.y, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %.1.i.i = phi ptr [ %..i.i, %bb.y ], [ null, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit ]
  store ptr %.1.i.i, ptr %i.hc, align 8, !tbaa !72
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

bb.z:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i24.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.ir, ptr %1, align 8, !tbaa !69
  %i.is = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleVcallThunkNodeER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.aa:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i38.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.it, ptr %1, align 8, !tbaa !69
  %i.iu = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleLocalStaticGuardER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.ab:                                            ; preds = %bb.f
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.iv, ptr %1, align 8, !tbaa !69
  %i.iw = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2), !inline_history !70
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iy = load i8, ptr %i.ix, align 8, !tbaa !20, !range !55, !noundef !56
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ja = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.jb = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = icmp ult i64 %i.je, 2
  br i1 %i.jf, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jg = load i16, ptr %i.jb, align 1
  %i.jh = icmp ne i16 14400, %i.jg
  %i.ji = zext i1 %i.jh to i32
  %.not9.i.i.i.i.i.i170 = icmp eq i32 %i.ji, 0
  br i1 %.not9.i.i.i.i.i.i170, label %bb.ae, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 2 ; 2 uses
  store ptr %i.jj, ptr %1, align 8, !tbaa !69
  %i.jk = icmp eq ptr %i.jj, %i.ja
  br i1 %i.jk, label %bb.af, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split

bb.af:                                            ; preds = %bb.ae
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jm = tail call fastcc noundef ptr @_ZL18synthesizeVariableRN4llvh11ms_demangle14ArenaAllocatorEPNS0_8TypeNodeE10StringView(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr noundef %i.iw, ptr nonnull @.str.2, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.2, i64 22)), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.ag:                                            ; preds = %bb.h
  %i.jn = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jn, ptr %1, align 8, !tbaa !69
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jp = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler23demangleUntypedVariableERN4llvh11ms_demangle14ArenaAllocatorER10StringViewS5_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.jo, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull @.str.3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 23)), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.ah:                                            ; preds = %bb.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jq, ptr %1, align 8, !tbaa !69
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.js = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler23demangleUntypedVariableERN4llvh11ms_demangle14ArenaAllocatorER10StringViewS5_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull @.str.4, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.4, i64 33)), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.ai:                                            ; preds = %bb.g
  %i.jt = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jt, ptr %1, align 8, !tbaa !69
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jv = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler35demangleRttiBaseClassDescriptorNodeERN4llvh11ms_demangle14ArenaAllocatorER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.aj:                                            ; preds = %bb.k
  %i.jw = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jw, ptr %1, align 8, !tbaa !69
  %i.jx = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleInitFiniStubER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

bb.ak:                                            ; preds = %bb.l
  %i.jy = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.jy, ptr %1, align 8, !tbaa !69
  %i.jz = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleInitFiniStubER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true), !inline_history !70
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit

_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split: ; preds = %bb.m, %.thread90.i, %_ZNK10StringView10startsWithES_.exit.i31.i
  %.sink164 = phi i64 [ 4, %.thread90.i ], [ 4, %_ZNK10StringView10startsWithES_.exit.i31.i ], [ 5, %bb.m ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink164
  store ptr %i.ka, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split

_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit: ; preds = %bb.af, %bb.n, %bb.z, %bb.aa, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %.1.i = phi ptr [ %i.jz, %bb.ak ], [ %i.jv, %bb.ai ], [ %i.fm, %bb.n ], [ %i.jx, %bb.aj ], [ %i.is, %bb.z ], [ %i.iu, %bb.aa ], [ %i.jm, %bb.af ], [ %i.jp, %bb.ag ], [ %i.js, %bb.ah ] ; 2 uses
  %.not.not = icmp eq ptr %.1.i, null
  br i1 %.not.not, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split: ; preds = %bb.ac, %bb.ad, %bb.ab, %bb.ae, %_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_22SpecialTableSymbolNodeEJEEEPT_DpOT0_.exit.i
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.kb, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread

_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread: ; preds = %.thread154, %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread.sink.split, %_ZN10StringView12consumeFrontEc.exit, %bb.m, %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit
  %i.kc = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ke = load i8, ptr %i.kd, align 8, !tbaa !20, !range !55, !noundef !56
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132, label %bb.al

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread
  %i.kg = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.kc), !inline_history !78 ; 3 uses
  %i.kh = load i8, ptr %i.kd, align 8, !tbaa !20, !range !55, !noundef !56
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132, label %bb.am

bb.am:                                            ; preds = %bb.al
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_19Demangler22demangleVcallThunkNodeER10StringView:bb.a
  %.pre22 = ptrtoint ptr %i.ag to i64             ; 2 uses
  %.pre24 = add i64 %.pre22, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.pre-phi25 = phi i64 [ %.pre-phi21, %bb.d ], [ %.pre24, %bb.e ]
  %.pre-phi23 = phi i64 [ %.pre-phi, %bb.d ], [ %.pre22, %bb.e ]
  %i.ak = phi i64 [ %i.t, %bb.d ], [ 4096, %bb.e ]
  %i.al = phi i64 [ %i.ac, %bb.d ], [ 32, %bb.e ]
  %i.am = phi ptr [ %i.v, %bb.d ], [ %i.af, %bb.e ] ; 2 uses
  %.sink13.i14 = phi ptr [ %i.ae, %bb.d ], [ %i.ag, %bb.e ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 8
  store i32 6, ptr %i.an, align 8, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 16
  store ptr null, ptr %i.ao, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle24VcallThunkIdentifierNodeE, i64 16), ptr %.sink13.i14, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 24 ; 3 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !110
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = add i64 %i.al, %.pre-phi25
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %reass.sub.i15 = sub i64 %i.as, %.pre-phi23
  %i.at = add i64 %reass.sub.i15, 72              ; 2 uses
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !34
  %i.au = icmp ult i64 %i.at, %i.ak
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.av = inttoptr i64 %i.as to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

bb.g:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.aw = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ax = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.am, ptr %i.ay, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 4096, ptr %i.az, align 8, !tbaa !32
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 72, ptr %i.ba, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %.sink27.i = phi ptr [ %i.ax, %bb.g ], [ %i.av, %bb.f ] ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 8
  store i32 13, ptr %i.bb, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 12
  store i8 0, ptr %i.bc, align 4, !tbaa !112
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 16
  store i32 0, ptr %i.bd, align 8, !tbaa !113
  %i.be = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 20
  store i8 0, ptr %i.be, align 4, !tbaa !114
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 22
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 24
  store i32 0, ptr %i.bg, align 8, !tbaa !115
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 32
  store ptr null, ptr %i.bh, align 8, !tbaa !95
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 40
  store i8 0, ptr %i.bi, align 8, !tbaa !116
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 48
  store ptr null, ptr %i.bj, align 8, !tbaa !117
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle18ThunkSignatureNodeE, i64 16), ptr %.sink27.i, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store ptr %.sink27.i, ptr %i.y, align 8, !tbaa !92
  store i16 256, ptr %i.bf, align 2, !tbaa !118
  %i.bl = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink13.i14)
  store ptr %i.bl, ptr %i.x, align 8, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !20, !range !55, !noundef !56
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.thread42, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42 ; 4 uses
  %i.br = load ptr, ptr %1, align 8, !tbaa !40    ; 4 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.bu, 2
  br i1 %i.bv, label %.thread36, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.h
  %i.bw = load i16, ptr %i.br, align 1
  %i.bx = icmp ne i16 16932, %i.bw
  %i.by = zext i1 %i.bx to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.i, label %.thread36

.thread36:                                        ; preds = %_ZNK10StringView10startsWithES_.exit.i, %bb.h
  store i8 1, ptr %i.bm, align 8, !tbaa !20
  br label %.thread42

bb.i:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 2 ; 5 uses
  store ptr %i.bz, ptr %1, align 8, !tbaa !69
  store i8 0, ptr %i.bm, align 8, !tbaa !20
  %i.ca = icmp eq ptr %i.bz, %i.bq
  br i1 %i.ca, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.i
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cc = icmp eq i8 %i.cb, 63
  br i1 %i.cc, label %bb.j, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.j:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 3 ; 2 uses
  store ptr %i.cd, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.j, %_ZNK10StringView10startsWithEc.exit.i.i.i, %bb.i
  %i.ce = phi ptr [ %i.cd, %bb.j ], [ %i.bz, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.bz, %bb.i ] ; 6 uses
  %i.cf = phi i1 [ true, %bb.j ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %bb.i ]
  %i.cg = icmp eq ptr %i.ce, %i.bq
  br i1 %i.cg, label %.thread39, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.ch = load i8, ptr %i.ce, align 1, !tbaa !9   ; 2 uses
  %i.ci = sext i8 %i.ch to i32
  %isdigittmp.i.i.i = add nsw i32 %i.ci, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.k, label %.lr.ph.preheader.i.i

bb.k:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.cj = sext i8 %i.ch to i64
  %i.ck = add nsw i64 %i.cj, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.cl = ptrtoint ptr %i.ce to i64
  %i.cm = sub i64 %i.bs, %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.cu, %bb.m ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.ct, %bb.m ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.02557.i.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !9   ; 2 uses
  %i.cp = icmp eq i8 %i.co, 64
  br i1 %i.cp, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.cq = add i8 %i.co, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.cq, 16
  br i1 %or.cond.i.i, label %bb.m, label %.thread39

bb.m:                                             ; preds = %bb.l
  %i.cr = shl i64 %.03656.i.i, 4
  %i.cs = zext nneg i8 %i.cq to i64
  %i.ct = or disjoint i64 %i.cr, %i.cs
  %i.cu = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cu, %i.cm
  br i1 %exitcond.not.i.i, label %.thread39, label %.lr.ph.i.i, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.k
  %.pn.i = phi ptr [ %i.ce, %bb.k ], [ %i.cv, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 3 uses
  %.sroa.0.4.i.i = phi i64 [ %i.ck, %bb.k ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !69
  br i1 %i.cf, label %.thread39, label %bb.n

.thread39:                                        ; preds = %bb.l, %bb.m, %_ZN10StringView12consumeFrontEc.exit.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %.sroa.0.4.i9.ph.i = phi i64 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ 0, %bb.m ], [ 0, %bb.l ]
  store i8 1, ptr %i.bm, align 8, !tbaa !20
  store i64 %.sroa.0.4.i9.ph.i, ptr %i.ap, align 8, !tbaa !110
  br label %.thread42

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  store i64 %.sroa.0.4.i.i, ptr %i.ap, align 8, !tbaa !110
  %i.cw = icmp eq ptr %storemerge.i, %i.bq
  br i1 %i.cw, label %.thread44, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.n
  %i.cx = load i8, ptr %storemerge.i, align 1, !tbaa !9
  %i.cy = icmp eq i8 %i.cx, 65
  br i1 %i.cy, label %bb.o, label %.thread44

.thread44:                                        ; preds = %_ZNK10StringView10startsWithEc.exit.i, %bb.n
  store i8 1, ptr %i.bm, align 8, !tbaa !20
  br label %.thread42

bb.o:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2
  store i8 0, ptr %i.bm, align 8, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %.pn.i, i64 3
  store ptr %i.da, ptr %1, align 8, !tbaa !40
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.db, -65            ; 2 uses
  %i.dc = icmp ult i8 %switch.tableidx, 17
  br i1 %i.dc, label %switch.lookup, label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

switch.lookup:                                    ; preds = %bb.o
  %i.dd = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.10, i64 %i.dd
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit: ; preds = %bb.o, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.o ]
  %i.de = load ptr, ptr %i.y, align 8, !tbaa !92
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store i8 %.0.i, ptr %i.df, align 4, !tbaa !114
  br label %.thread42

.thread42:                                        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit, %.thread36, %.thread39, %.thread44, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.dg = phi ptr [ %.sink13.i, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit ], [ null, %.thread44 ], [ null, %.thread39 ], [ null, %.thread36 ], [ null, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit ]
  ret ptr %i.dg
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleLocalStaticGuardER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 32                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.b, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 32, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 7, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30LocalStaticGuardIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 2 uses
  store i32 0, ptr %i.v, align 8, !tbaa !119
  %i.w = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink13.i)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.ac = add i64 %i.z, 7
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %reass.sub.i14 = sub i64 %i.ae, %i.z
  %i.af = add i64 %reass.sub.i14, 32              ; 2 uses
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.ai = icmp ult i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.aj = inttoptr i64 %i.ae to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ak = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.al = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.x, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 4096, ptr %i.an, align 8, !tbaa !32
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 32, ptr %i.ao, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink13.i15 = phi ptr [ %i.al, %bb.e ], [ %i.aj, %bb.d ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 8
  store i32 25, ptr %i.ap, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle28LocalStaticGuardVariableNodeE, i64 16), ptr %.sink13.i15, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 24 ; 2 uses
  store i8 0, ptr %i.ar, align 8, !tbaa !121
  store ptr %i.w, ptr %i.aq, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 4 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult i64 %i.ax, 3
  br i1 %i.ay, label %bb.f, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit
  %i.az = load i16, ptr %i.au, align 1
  %i.ba = xor i16 18740, %i.az
  %i.bb = getelementptr i8, ptr %i.au, i64 2
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i16
  %i.be = xor i16 65, %i.bd
  %i.bf = or i16 %i.ba, %i.be
  %i.bg = icmp ne i16 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit
  %i.bi = icmp eq ptr %i.at, %i.au
  br i1 %i.bi, label %bb.g, label %_ZNK10StringView10startsWithES_.exit.i17

_ZNK10StringView10startsWithES_.exit.i17:         ; preds = %bb.f
  %rhsc = load i8, ptr %i.au, align 1
  %.not9.i.i.i.i.i.i19 = icmp eq i8 %rhsc, 53
  br i1 %.not9.i.i.i.i.i.i19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i17, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bj, align 8, !tbaa !20
  br label %bb.m

bb.h:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i17, %_ZNK10StringView10startsWithES_.exit.i
  %.sink = phi i64 [ 3, %_ZNK10StringView10startsWithES_.exit.i ], [ 1, %_ZNK10StringView10startsWithES_.exit.i17 ]
  %storemerge = phi i8 [ 0, %_ZNK10StringView10startsWithES_.exit.i ], [ 1, %_ZNK10StringView10startsWithES_.exit.i17 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sink ; 5 uses
  store ptr %i.bk, ptr %1, align 8, !tbaa !69
  store i8 %storemerge, ptr %i.ar, align 8, !tbaa !121
  %i.bl = icmp eq ptr %i.bk, %i.at
  br i1 %i.bl, label %bb.m, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.h
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bn = icmp eq i8 %i.bm, 63                    ; 2 uses
  br i1 %i.bn, label %bb.i, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.i:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  store ptr %i.bo, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.i, %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.bp = phi ptr [ %i.bo, %bb.i ], [ %i.bk, %_ZNK10StringView10startsWithEc.exit.i.i.i ] ; 6 uses
  %i.bq = icmp eq ptr %i.bp, %i.at
  br i1 %i.bq, label %.sink.split.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.bs = sext i8 %i.br to i32                    ; 2 uses
  %isdigittmp.i.i.i = add nsw i32 %i.bs, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.j, label %.lr.ph.preheader.i.i

bb.j:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bt = add nsw i32 %i.bs, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub i64 %i.av, %i.bu
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.cd, %bb.l ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i32 [ %i.cc, %bb.l ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.02557.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9   ; 2 uses
  %i.by = icmp eq i8 %i.bx, 64
  br i1 %i.by, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bz = add i8 %i.bx, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.bz, 16
  br i1 %or.cond.i.i, label %bb.l, label %.sink.split.i

bb.l:                                             ; preds = %bb.k
  %i.ca = shl i32 %.03656.i.i, 4
  %i.cb = zext nneg i8 %i.bz to i32
  %i.cc = or disjoint i32 %i.ca, %i.cb
  %i.cd = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %i.bv
  br i1 %exitcond.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !107

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.j
  %.pn.i = phi ptr [ %i.bp, %bb.j ], [ %i.ce, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i32 [ %i.bt, %bb.j ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !69
  br i1 %i.bn, label %.sink.split.i, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

.sink.split.i:                                    ; preds = %bb.l, %bb.k, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit.i.i
  %.sroa.0.4.i9.ph.i = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ 0, %bb.k ], [ 0, %bb.l ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cf, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %.sink.split.i
  %.sroa.0.4.i9.i = phi i32 [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %.sroa.0.4.i9.ph.i, %.sink.split.i ]
  store i32 %.sroa.0.4.i9.i, ptr %i.v, align 8, !tbaa !119
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit, %bb.g
  %.0 = phi ptr [ null, %bb.g ], [ %.sink13.i15, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit ], [ %.sink13.i15, %bb.h ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  switch i32 %2, label %_ZN10StringView12consumeFrontEc.exit.thread [
    i32 1, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !40
  %i.i = load i8, ptr %i.g, align 1, !tbaa !9
  %switch.tableidx350 = add i8 %i.i, -65          ; 3 uses
  %i.j = icmp ult i8 %switch.tableidx350, 20
  br i1 %i.j, label %switch.hole_check, label %bb.c

bb.c:                                             ; preds = %switch.hole_check, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.k, align 8, !tbaa !20
  br label %_ZN10StringView12consumeFrontEc.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !40     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZN10StringView12consumeFrontEc.exit.thread, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.d
  %i.p = load i8, ptr %i.l, align 1, !tbaa !9
  %i.q = icmp eq i8 %i.p, 63
  br i1 %i.q, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.s, ptr %1, align 8, !tbaa !40
  %i.t = load i8, ptr %i.r, align 1, !tbaa !9
  %switch.tableidx351 = add i8 %i.t, -65          ; 3 uses
  %i.u = icmp ult i8 %switch.tableidx351, 20
  br i1 %i.u, label %switch.hole_check353, label %bb.f

bb.f:                                             ; preds = %switch.hole_check353, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.v, align 8, !tbaa !20
  br label %_ZN10StringView12consumeFrontEc.exit.thread

switch.hole_check:                                ; preds = %bb.b
  %switch.maskindex = zext nneg i8 %switch.tableidx350 to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %switch.hole_check
  %i.w = zext nneg i8 %switch.tableidx350 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN10StringView12consumeFrontEc.exit.thread

switch.hole_check353:                             ; preds = %bb.e
  %switch.maskindex355 = zext nneg i8 %switch.tableidx351 to i32
  %switch.shifted356 = lshr i32 983055, %switch.maskindex355
  %switch.lobit357 = trunc i32 %switch.shifted356 to i1
  br i1 %switch.lobit357, label %switch.lookup354, label %bb.f

switch.lookup354:                                 ; preds = %switch.hole_check353
  %i.x = zext nneg i8 %switch.tableidx351 to i64
  %switch.gep358 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.x
  %switch.load359 = load i8, ptr %switch.gep358, align 1
  br label %_ZN10StringView12consumeFrontEc.exit.thread

_ZN10StringView12consumeFrontEc.exit.thread:      ; preds = %switch.lookup354, %switch.lookup, %bb.f, %bb.c, %bb.d, %_ZNK10StringView10startsWithEc.exit.i, %bb.a
  %.0211 = phi i8 [ 0, %bb.a ], [ 0, %bb.d ], [ %switch.load, %switch.lookup ], [ 0, %_ZNK10StringView10startsWithEc.exit.i ], [ 0, %bb.c ], [ 0, %bb.f ], [ %switch.load359, %switch.lookup354 ]
  %.sroa.09.0.copyload = load ptr, ptr %1, align 8, !tbaa !69 ; 25 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.y = load i8, ptr %.sroa.09.0.copyload, align 1, !tbaa !9 ; 4 uses
  %i.z = and i8 %i.y, -4
  %switch.i = icmp eq i8 %i.z, 84
  br i1 %switch.i, label %bb.g, label %bb.u

bb.g:                                             ; preds = %_ZN10StringView12consumeFrontEc.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 1
  store ptr %i.aa, ptr %1, align 8, !tbaa !40
  %i.ab = load i8, ptr %.sroa.09.0.copyload, align 1, !tbaa !9
  switch i8 %i.ab, label %bb.t [
    i8 84, label %bb.h
    i8 85, label %bb.k
    i8 86, label %bb.n
    i8 87, label %bb.q
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.ai = add i64 %i.af, 7
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = and i64 %i.aj, -8                       ; 2 uses
  %reass.sub.i69 = sub i64 %i.ak, %i.af
  %i.al = add i64 %reass.sub.i69, 32              ; 2 uses
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = icmp ult i64 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = inttoptr i64 %i.ak to ptr
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.aq = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ar = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ad, ptr %i.as, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 4096, ptr %i.at, align 8, !tbaa !32
  store ptr %i.aq, ptr %i.ac, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 32, ptr %i.au, align 8, !tbaa !34
  br label %.sink.split

bb.k:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !28
  %i.ay = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !34
  %i.bb = add i64 %i.ay, 7
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = and i64 %i.bc, -8                       ; 2 uses
  %reass.sub.i66 = sub i64 %i.bd, %i.ay
  %i.be = add i64 %reass.sub.i66, 32              ; 2 uses
  store i64 %i.be, ptr %i.az, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !32
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = inttoptr i64 %i.bd to ptr
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.bj = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.bk = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.aw, ptr %i.bl, align 8, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 4096, ptr %i.bm, align 8, !tbaa !32
  store ptr %i.bj, ptr %i.av, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 32, ptr %i.bn, align 8, !tbaa !34
  br label %.sink.split

bb.n:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !28
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !34
  %i.bu = add i64 %i.br, 7
  %i.bv = add i64 %i.bu, %i.bt
  %i.bw = and i64 %i.bv, -8                       ; 2 uses
  %reass.sub.i63 = sub i64 %i.bw, %i.br
  %i.bx = add i64 %reass.sub.i63, 32              ; 2 uses
  store i64 %i.bx, ptr %i.bs, align 8, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !32
  %i.ca = icmp ult i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = inttoptr i64 %i.bw to ptr
  br label %.sink.split

bb.p:                                             ; preds = %bb.n
  %i.cc = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.cd = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.bp, ptr %i.ce, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 4096, ptr %i.cf, align 8, !tbaa !32
  store ptr %i.cc, ptr %i.bo, align 8, !tbaa !33
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 32, ptr %i.cg, align 8, !tbaa !34
  br label %.sink.split

bb.q:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 2
  store ptr %i.ch, ptr %1, align 8, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !33 ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !28
  %i.cl = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34
  %i.co = add i64 %i.cl, 7
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = and i64 %i.cp, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.cq, %i.cl
  %i.cr = add i64 %reass.sub.i, 32                ; 2 uses
  store i64 %i.cr, ptr %i.cm, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !32
  %i.cu = icmp ult i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = inttoptr i64 %i.cq to ptr
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  %i.cw = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.cx = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.cj, ptr %i.cy, align 8, !tbaa !31
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 4096, ptr %i.cz, align 8, !tbaa !32
  store ptr %i.cw, ptr %i.ci, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 32, ptr %i.da, align 8, !tbaa !34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i
  %.sink19.i.sink303 = phi ptr [ %i.cb, %bb.o ], [ %i.bi, %bb.l ], [ %i.ap, %bb.i ], [ %i.ar, %bb.j ], [ %i.bk, %bb.m ], [ %i.cd, %bb.p ], [ %i.cx, %bb.s ], [ %i.cv, %bb.r ] ; 6 uses
  %.sink = phi i32 [ 0, %bb.o ], [ 1, %bb.l ], [ 2, %bb.i ], [ 2, %bb.j ], [ 1, %bb.m ], [ 0, %bb.p ], [ 3, %bb.s ], [ 3, %bb.r ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sink19.i.sink303, i64 8
  store i32 15, ptr %i.db, align 8, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink19.i.sink303, i64 12
  store i8 0, ptr %i.dc, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle11TagTypeNodeE, i64 16), ptr %.sink19.i.sink303, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.sink19.i.sink303, i64 16
  store ptr null, ptr %i.dd, align 8, !tbaa !123
  %i.de = getelementptr inbounds nuw i8, ptr %.sink19.i.sink303, i64 24
  store i32 %.sink, ptr %i.de, align 8, !tbaa !126
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.g
  %.0.i = phi ptr [ null, %bb.g ], [ %.sink19.i.sink303, %.sink.split ] ; 2 uses
  %i.df = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !127
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !123
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.u:                                             ; preds = %_ZN10StringView12consumeFrontEc.exit.thread
  %.sroa.28.0.copyload = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !69 ; 8 uses
  %i.dh = ptrtoint ptr %.sroa.28.0.copyload to i64 ; 2 uses
  %i.di = ptrtoint ptr %.sroa.09.0.copyload to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 3                   ; 2 uses
  br i1 %i.dk, label %_ZNK10StringView10startsWithES_.exit.thread4.i, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.u
  %i.dl = load i16, ptr %.sroa.09.0.copyload, align 1
  %i.dm = xor i16 9252, %i.dl
  %i.dn = getelementptr i8, ptr %.sroa.09.0.copyload, i64 2
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = zext i8 %i.do to i16
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a
  %.sroa.0.2.i = phi ptr [ %.sroa.0.1.i, %_ZN10StringView12consumeFrontEc.exit2.i ], [ %spec.select13.i, %_ZNK10StringView10startsWithEc.exit.i3.i ]
  %i.eh = load i8, ptr %.sroa.0.2.i, align 1, !tbaa !9
  %.off.i = add i8 %i.eh, -81
  %switch.i47 = icmp ult i8 %.off.i, 4
  br i1 %switch.i47, label %bb.y, label %_ZL15isMemberPointer10StringView.exit.thread

bb.y:                                             ; preds = %bb.x, %_ZL15isMemberPointer10StringView.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !33 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !28
  %i.el = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !34
  %i.eo = add i64 %i.el, 7
  %i.ep = add i64 %i.eo, %i.en
  %i.eq = and i64 %i.ep, -8                       ; 2 uses
  %reass.sub.i86 = sub i64 %i.eq, %i.el
  %i.er = add i64 %reass.sub.i86, 40              ; 2 uses
  store i64 %i.er, ptr %i.em, align 8, !tbaa !34
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.et = load i64, ptr %i.es, align 8, !tbaa !32
  %i.eu = icmp ult i64 %i.er, %i.et
  br i1 %i.eu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ev = inttoptr i64 %i.eq to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit

bb.aa:                                            ; preds = %bb.y
  %i.ew = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ex = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ex, ptr %i.ew, align 8, !tbaa !28
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store ptr %i.ej, ptr %i.ey, align 8, !tbaa !31
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 4096, ptr %i.ez, align 8, !tbaa !32
  store ptr %i.ew, ptr %i.ei, align 8, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 40, ptr %i.fa, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.z, %bb.aa
  %.sink14.i = phi ptr [ %i.ex, %bb.aa ], [ %i.ev, %bb.z ] ; 9 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 14, ptr %i.fb, align 8, !tbaa !60
  %i.fc = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 12 ; 3 uses
  store i8 0, ptr %i.fc, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle15PointerTypeNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16 ; 2 uses
  store i32 0, ptr %i.fd, align 8, !tbaa !128
  %i.fe = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false)
  %i.ff = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !42 ; 5 uses
  %i.fg = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = icmp ult i64 %i.fj, 3
  br i1 %i.fk, label %bb.ac, label %_ZNK10StringView10startsWithES_.exit.i.i82

_ZNK10StringView10startsWithES_.exit.i.i82:       ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit
  %i.fl = load i16, ptr %i.fg, align 1
  %i.fm = xor i16 9252, %i.fl
  %i.fn = getelementptr i8, ptr %i.fg, i64 2
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = zext i8 %i.fo to i16
  %i.fq = xor i16 81, %i.fp
  %i.fr = or i16 %i.fm, %i.fq
  %i.fs = icmp ne i16 %i.fr, 0
  %i.ft = zext i1 %i.fs to i32
  %.not9.i.i.i.i.i.i.i84 = icmp eq i32 %i.ft, 0
  br i1 %.not9.i.i.i.i.i.i.i84, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i.i82
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 3 ; 2 uses
  store ptr %i.fu, ptr %1, align 8, !tbaa !69
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit

bb.ac:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i.i82, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 1 ; 6 uses
  store ptr %i.fv, ptr %1, align 8, !tbaa !40
  %i.fw = load i8, ptr %i.fg, align 1, !tbaa !9
  switch i8 %i.fw, label %bb.ag [
    i8 65, label %_ZL27demanglePointerCVQualifiersR10StringView.exit
    i8 83, label %bb.af
    i8 81, label %bb.ad
    i8 82, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit

bb.ae:                                            ; preds = %bb.ac
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit

bb.af:                                            ; preds = %bb.ac
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit

bb.ag:                                            ; preds = %bb.ac
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit

_ZL27demanglePointerCVQualifiersR10StringView.exit: ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %i.fx = phi ptr [ %i.fu, %bb.ab ], [ %i.fv, %bb.ag ], [ %i.fv, %bb.af ], [ %i.fv, %bb.ac ], [ %i.fv, %bb.ad ], [ %i.fv, %bb.ae ] ; 5 uses
  %.sroa.0.0.i85 = phi i64 [ 12884901888, %bb.ab ], [ 4294967296, %bb.ag ], [ 4294967299, %bb.af ], [ 8589934592, %bb.ac ], [ 4294967297, %bb.ad ], [ 4294967298, %bb.ae ] ; 2 uses
  %.sroa.0176.0.extract.trunc = trunc i64 %.sroa.0.0.i85 to i8 ; 2 uses
  %.sroa.4178.0.extract.shift = lshr i64 %.sroa.0.0.i85, 32
  %.sroa.4178.0.extract.trunc = trunc nuw nsw i64 %.sroa.4178.0.extract.shift to i32
  store i8 %.sroa.0176.0.extract.trunc, ptr %i.fc, align 4, !tbaa !75
  store i32 %.sroa.4178.0.extract.trunc, ptr %i.fd, align 8, !tbaa !130
  %i.fy = icmp eq ptr %i.fx, %i.ff
  br i1 %i.fy, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i81

_ZNK10StringView10startsWithEc.exit.i.i81:        ; preds = %_ZL27demanglePointerCVQualifiersR10StringView.exit
  %i.fz = load i8, ptr %i.fx, align 1, !tbaa !9
  %i.ga = icmp eq i8 %i.fz, 69
  br i1 %i.ga, label %bb.ah, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.ah:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i81
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  store ptr %i.gb, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.ah, %_ZNK10StringView10startsWithEc.exit.i.i81, %_ZL27demanglePointerCVQualifiersR10StringView.exit
  %i.gc = phi ptr [ %i.gb, %bb.ah ], [ %i.fx, %_ZNK10StringView10startsWithEc.exit.i.i81 ], [ %i.fx, %_ZL27demanglePointerCVQualifiersR10StringView.exit ] ; 5 uses
  %i.gd = phi i8 [ 64, %bb.ah ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i81 ], [ 0, %_ZL27demanglePointerCVQualifiersR10StringView.exit ] ; 3 uses
  %i.ge = icmp eq ptr %i.gc, %i.ff
  br i1 %i.ge, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.gf = load i8, ptr %i.gc, align 1, !tbaa !9
  %i.gg = icmp eq i8 %i.gf, 73
  br i1 %i.gg, label %bb.ai, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.ai:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  store ptr %i.gh, ptr %1, align 8, !tbaa !69
  %i.gi = or disjoint i8 %i.gd, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.ai, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.gj = phi ptr [ %i.gh, %bb.ai ], [ %i.gc, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.gc, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.gk = phi i8 [ %i.gi, %bb.ai ], [ %i.gd, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.gd, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.gl = icmp eq ptr %i.gj, %i.ff
  br i1 %i.gl, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i8.i

_ZNK10StringView10startsWithEc.exit.i8.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i
  %i.gm = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gn = icmp eq i8 %i.gm, 70
  br i1 %i.gn, label %bb.aj, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

bb.aj:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  store ptr %i.go, ptr %1, align 8, !tbaa !69
  %i.gp = or i8 %i.gk, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.aj
  %i.gq = phi i8 [ %i.gp, %bb.aj ], [ %i.gk, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.gk, %_ZN10StringView12consumeFrontEc.exit7.thread.i ]
  %i.gr = or i8 %i.gq, %.sroa.0176.0.extract.trunc
  store i8 %i.gr, ptr %i.fc, align 4, !tbaa !112
  %i.gs = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.gt = icmp eq ptr %i.ff, %i.gs
  br i1 %i.gt, label %bb.al, label %_ZNK10StringView10startsWithES_.exit.i75

_ZNK10StringView10startsWithES_.exit.i75:         ; preds = %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %rhsc243 = load i8, ptr %i.gs, align 1
  %.not9.i.i.i.i.i.i77 = icmp eq i8 %rhsc243, 56
  br i1 %.not9.i.i.i.i.i.i77, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i75
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  store ptr %i.gu, ptr %1, align 8, !tbaa !69
  %i.gv = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !131
  store ptr %i.gv, ptr %i.fe, align 8, !tbaa !132
  %i.gw = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true), !inline_history !131
  %i.gx = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !133
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.al:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i75, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  store ptr %i.gy, ptr %1, align 8, !tbaa !40
  %i.gz = load i8, ptr %i.gs, align 1, !tbaa !9
  %switch.tableidx360 = add i8 %i.gz, -65         ; 3 uses
  %i.ha = icmp ult i8 %switch.tableidx360, 20
  br i1 %i.ha, label %switch.hole_check362, label %bb.am

bb.am:                                            ; preds = %switch.hole_check362, %bb.al
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hb, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit73

switch.hole_check362:                             ; preds = %bb.al
  %switch.maskindex364 = zext nneg i8 %switch.tableidx360 to i32
  %switch.shifted365 = lshr i32 983055, %switch.maskindex364
  %switch.lobit366 = trunc i32 %switch.shifted365 to i1
  br i1 %switch.lobit366, label %switch.lookup363, label %bb.am

switch.lookup363:                                 ; preds = %switch.hole_check362
  %i.hc = zext nneg i8 %switch.tableidx360 to i64
  %switch.gep367 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.hc
  %switch.load368 = load i8, ptr %switch.gep367, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit73

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit73: ; preds = %switch.lookup363, %bb.am
  %.sroa.0.0.i72 = phi i8 [ 0, %bb.am ], [ %switch.load368, %switch.lookup363 ]
  %i.hd = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !131
  store ptr %i.hd, ptr %i.fe, align 8, !tbaa !132
  %i.he = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !131 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !133
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  store i8 %.sroa.0.0.i72, ptr %i.hg, align 4, !tbaa !112
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

_ZL15isMemberPointer10StringView.exit.thread:     ; preds = %bb.v, %bb.v, %bb.x, %_ZL15isMemberPointer10StringView.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !33 ; 4 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !28
  %i.hk = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !34
  %i.hn = add i64 %i.hk, 7
  %i.ho = add i64 %i.hn, %i.hm
  %i.hp = and i64 %i.ho, -8                       ; 2 uses
  %reass.sub.i105 = sub i64 %i.hp, %i.hk
  %i.hq = add i64 %reass.sub.i105, 40             ; 2 uses
  store i64 %i.hq, ptr %i.hl, align 8, !tbaa !34
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !32
  %i.ht = icmp ult i64 %i.hq, %i.hs
  br i1 %i.ht, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZL15isMemberPointer10StringView.exit.thread
  %i.hu = inttoptr i64 %i.hp to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit107

bb.ao:                                            ; preds = %_ZL15isMemberPointer10StringView.exit.thread
  %i.hv = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.hw = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.hw, ptr %i.hv, align 8, !tbaa !28
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store ptr %i.hi, ptr %i.hx, align 8, !tbaa !31
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store i64 4096, ptr %i.hy, align 8, !tbaa !32
  store ptr %i.hv, ptr %i.hh, align 8, !tbaa !33
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 40, ptr %i.hz, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit107

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit107: ; preds = %bb.an, %bb.ao
  %.sink14.i106 = phi ptr [ %i.hw, %bb.ao ], [ %i.hu, %bb.an ] ; 9 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sink14.i106, i64 8
  store i32 14, ptr %i.ia, align 8, !tbaa !60
  %i.ib = getelementptr inbounds nuw i8, ptr %.sink14.i106, i64 12 ; 3 uses
  store i8 0, ptr %i.ib, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle15PointerTypeNodeE, i64 16), ptr %.sink14.i106, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.sink14.i106, i64 16 ; 2 uses
  store i32 0, ptr %i.ic, align 8, !tbaa !128
  %i.id = getelementptr inbounds nuw i8, ptr %.sink14.i106, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, i8 0, i64 16, i1 false)
  %i.ie = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !42 ; 5 uses
  %i.if = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = icmp ult i64 %i.ii, 3
  br i1 %i.ij, label %bb.aq, label %_ZNK10StringView10startsWithES_.exit.i.i100

_ZNK10StringView10startsWithES_.exit.i.i100:      ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit107
  %i.ik = load i16, ptr %i.if, align 1
  %i.il = xor i16 9252, %i.ik
  %i.im = getelementptr i8, ptr %i.if, i64 2
  %i.in = load i8, ptr %i.im, align 1
  %i.io = zext i8 %i.in to i16
  %i.ip = xor i16 81, %i.io
  %i.iq = or i16 %i.il, %i.ip
  %i.ir = icmp ne i16 %i.iq, 0
  %i.is = zext i1 %i.ir to i32
  %.not9.i.i.i.i.i.i.i102 = icmp eq i32 %i.is, 0
  br i1 %.not9.i.i.i.i.i.i.i102, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i.i100
  %i.it = getelementptr inbounds nuw i8, ptr %i.if, i64 3 ; 2 uses
  store ptr %i.it, ptr %1, align 8, !tbaa !69
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit104

bb.aq:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i.i100, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_15PointerTypeNodeEJEEEPT_DpOT0_.exit107
  %i.iu = getelementptr inbounds nuw i8, ptr %i.if, i64 1 ; 6 uses
  store ptr %i.iu, ptr %1, align 8, !tbaa !40
  %i.iv = load i8, ptr %i.if, align 1, !tbaa !9
  switch i8 %i.iv, label %bb.au [
    i8 65, label %_ZL27demanglePointerCVQualifiersR10StringView.exit104
    i8 83, label %bb.at
    i8 81, label %bb.ar
    i8 82, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit104

bb.as:                                            ; preds = %bb.aq
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit104

bb.at:                                            ; preds = %bb.aq
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit104

bb.au:                                            ; preds = %bb.aq
  br label %_ZL27demanglePointerCVQualifiersR10StringView.exit104

_ZL27demanglePointerCVQualifiersR10StringView.exit104: ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au
  %i.iw = phi ptr [ %i.it, %bb.ap ], [ %i.iu, %bb.au ], [ %i.iu, %bb.at ], [ %i.iu, %bb.aq ], [ %i.iu, %bb.ar ], [ %i.iu, %bb.as ] ; 3 uses
  %.sroa.0.0.i103 = phi i64 [ 12884901888, %bb.ap ], [ 4294967296, %bb.au ], [ 4294967299, %bb.at ], [ 8589934592, %bb.aq ], [ 4294967297, %bb.ar ], [ 4294967298, %bb.as ] ; 2 uses
  %.sroa.0183.0.extract.trunc = trunc i64 %.sroa.0.0.i103 to i8 ; 2 uses
  %.sroa.4185.0.extract.shift = lshr i64 %.sroa.0.0.i103, 32
  %.sroa.4185.0.extract.trunc = trunc nuw nsw i64 %.sroa.4185.0.extract.shift to i32
  store i8 %.sroa.0183.0.extract.trunc, ptr %i.ib, align 4, !tbaa !75
  store i32 %.sroa.4185.0.extract.trunc, ptr %i.ic, align 8, !tbaa !130
  %i.ix = icmp eq ptr %i.ie, %i.iw
  br i1 %i.ix, label %bb.aw, label %_ZNK10StringView10startsWithES_.exit.i94

_ZNK10StringView10startsWithES_.exit.i94:         ; preds = %_ZL27demanglePointerCVQualifiersR10StringView.exit104
  %rhsc = load i8, ptr %i.iw, align 1
  %.not9.i.i.i.i.i.i96 = icmp eq i8 %rhsc, 54
  br i1 %.not9.i.i.i.i.i.i96, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i94
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  store ptr %i.iy, ptr %1, align 8, !tbaa !69
  %i.iz = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false), !inline_history !134
  %i.ja = getelementptr inbounds nuw i8, ptr %.sink14.i106, i64 32
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !133
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.aw:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i94, %_ZL27demanglePointerCVQualifiersR10StringView.exit104
  %i.jb = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.jc = icmp eq ptr %i.jb, %i.ie
  br i1 %i.jc, label %_ZN10StringView12consumeFrontEc.exit.thread.i88, label %_ZNK10StringView10startsWithEc.exit.i.i87

_ZNK10StringView10startsWithEc.exit.i.i87:        ; preds = %bb.aw
  %i.jd = load i8, ptr %i.jb, align 1, !tbaa !9
  %i.je = icmp eq i8 %i.jd, 69
  br i1 %i.je, label %bb.ax, label %_ZN10StringView12consumeFrontEc.exit.thread.i88

bb.ax:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i87
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 1 ; 2 uses
  store ptr %i.jf, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i88

_ZN10StringView12consumeFrontEc.exit.thread.i88:  ; preds = %bb.ax, %_ZNK10StringView10startsWithEc.exit.i.i87, %bb.aw
  %i.jg = phi ptr [ %i.jf, %bb.ax ], [ %i.jb, %_ZNK10StringView10startsWithEc.exit.i.i87 ], [ %i.jb, %bb.aw ] ; 5 uses
  %i.jh = phi i8 [ 64, %bb.ax ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i87 ], [ 0, %bb.aw ] ; 3 uses
  %i.ji = icmp eq ptr %i.jg, %i.ie
  br i1 %i.ji, label %_ZN10StringView12consumeFrontEc.exit7.thread.i90, label %_ZNK10StringView10startsWithEc.exit.i6.i89

_ZNK10StringView10startsWithEc.exit.i6.i89:       ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i88
  %i.jj = load i8, ptr %i.jg, align 1, !tbaa !9
  %i.jk = icmp eq i8 %i.jj, 73
  br i1 %i.jk, label %bb.ay, label %_ZN10StringView12consumeFrontEc.exit7.thread.i90

bb.ay:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i89
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 1 ; 2 uses
  store ptr %i.jl, ptr %1, align 8, !tbaa !69
  %i.jm = or disjoint i8 %i.jh, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i90

_ZN10StringView12consumeFrontEc.exit7.thread.i90: ; preds = %bb.ay, %_ZNK10StringView10startsWithEc.exit.i6.i89, %_ZN10StringView12consumeFrontEc.exit.thread.i88
  %i.jn = phi ptr [ %i.jl, %bb.ay ], [ %i.jg, %_ZNK10StringView10startsWithEc.exit.i6.i89 ], [ %i.jg, %_ZN10StringView12consumeFrontEc.exit.thread.i88 ] ; 3 uses
  %i.jo = phi i8 [ %i.jm, %bb.ay ], [ %i.jh, %_ZNK10StringView10startsWithEc.exit.i6.i89 ], [ %i.jh, %_ZN10StringView12consumeFrontEc.exit.thread.i88 ] ; 3 uses
  %i.jp = icmp eq ptr %i.jn, %i.ie
  br i1 %i.jp, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit92, label %_ZNK10StringView10startsWithEc.exit.i8.i91

_ZNK10StringView10startsWithEc.exit.i8.i91:       ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i90
  %i.jq = load i8, ptr %i.jn, align 1, !tbaa !9
  %i.jr = icmp eq i8 %i.jq, 70
  br i1 %i.jr, label %bb.az, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit92

bb.az:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i91
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  store ptr %i.js, ptr %1, align 8, !tbaa !69
  %i.jt = or i8 %i.jo, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit92

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit92: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i90, %_ZNK10StringView10startsWithEc.exit.i8.i91, %bb.az
  %i.ju = phi i8 [ %i.jt, %bb.az ], [ %i.jo, %_ZNK10StringView10startsWithEc.exit.i8.i91 ], [ %i.jo, %_ZN10StringView12consumeFrontEc.exit7.thread.i90 ]
  %i.jv = or i8 %i.ju, %.sroa.0183.0.extract.trunc
  store i8 %i.jv, ptr %i.ib, align 4, !tbaa !112
  %i.jw = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1), !inline_history !134
  %i.jx = getelementptr inbounds nuw i8, ptr %.sink14.i106, i64 32
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !133
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.thread4.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 1 ; 5 uses
  store ptr %i.jy, ptr %1, align 8, !tbaa !40
  %i.jz = icmp eq ptr %i.jy, %.sroa.28.0.copyload
  br i1 %i.jz, label %_ZN10StringView12consumeFrontEc.exit.i130thread-pre-split, label %_ZNK10StringView10startsWithEc.exit.i.i129

_ZNK10StringView10startsWithEc.exit.i.i129:       ; preds = %bb.ba
  %i.ka = load i8, ptr %i.jy, align 1, !tbaa !9   ; 2 uses
  %i.kb = icmp eq i8 %i.ka, 63
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a
  store i64 %i.oq, ptr %i.on, align 8, !tbaa !34
  %i.or = icmp ult i64 %i.oq, %i.od
  br i1 %i.or, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.os = inttoptr i64 %i.op to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.br:                                            ; preds = %bb.bp
  %i.ot = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ou = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ou, ptr %i.ot, align 8, !tbaa !28
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  store ptr %i.og, ptr %i.ov, align 8, !tbaa !31
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  store i64 4096, ptr %i.ow, align 8, !tbaa !32
  store ptr %i.ot, ptr %i.kx, align 8, !tbaa !33
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store i64 16, ptr %i.ox, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.bq, %bb.br
  %.sink.i = phi ptr [ %i.ou, %bb.br ], [ %i.os, %bb.bq ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i8 0, i64 16, i1 false)
  %i.oy = getelementptr inbounds nuw i8, ptr %.033.i250, i64 8
  store ptr %.sink.i, ptr %i.oy, align 8, !tbaa !141
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit
  %.235.i.ph = phi ptr [ %.033.i250, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit ], [ %.sink.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ]
  %exitcond.not = icmp eq i64 %i.ok, %.sroa.0.4.i140
  br i1 %exitcond.not, label %.critedge.i, label %bb.bh, !llvm.loop !142

.critedge.i:                                      ; preds = %bb.bs
  %i.oz = tail call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef nonnull %.sink.i126, i64 noundef %.sroa.0.4.i140), !inline_history !143
  store ptr %i.oz, ptr %i.ls, align 8, !tbaa !144
  %i.pa = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !42
  %i.pb = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = ptrtoint ptr %i.pb to i64
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = icmp ult i64 %i.pe, 3
  br i1 %i.pf, label %_ZN10StringView12consumeFrontES_.exit116.thread, label %_ZNK10StringView10startsWithES_.exit.i111

_ZNK10StringView10startsWithES_.exit.i111:        ; preds = %.critedge.i
  %i.pg = load i16, ptr %i.pb, align 1
  %i.ph = xor i16 9252, %i.pg
  %i.pi = getelementptr i8, ptr %i.pb, i64 2
  %i.pj = load i8, ptr %i.pi, align 1
  %i.pk = zext i8 %i.pj to i16
  %i.pl = xor i16 67, %i.pk
  %i.pm = or i16 %i.ph, %i.pl
  %i.pn = icmp ne i16 %i.pm, 0
  %i.po = zext i1 %i.pn to i32
  %.not9.i.i.i.i.i.i113 = icmp eq i32 %i.po, 0
  br i1 %.not9.i.i.i.i.i.i113, label %bb.bt, label %_ZN10StringView12consumeFrontES_.exit116.thread

bb.bt:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i111
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pb, i64 3
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  store ptr %i.pq, ptr %1, align 8, !tbaa !40
  %i.pr = load i8, ptr %i.pp, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.pr, -65            ; 2 uses
  %i.ps = icmp ult i8 %switch.tableidx, 4
  br i1 %i.ps, label %.critedge37.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i8 1, ptr %i.ml, align 8, !tbaa !20
  br label %.critedge37.i

.critedge37.i:                                    ; preds = %bb.bt, %bb.bu
  %.sroa.0.0.i108.ph = phi i8 [ 0, %bb.bu ], [ %switch.tableidx, %bb.bt ]
  store i8 %.sroa.0.0.i108.ph, ptr %i.lr, align 4, !tbaa !75
  br label %_ZN10StringView12consumeFrontES_.exit116.thread

_ZN10StringView12consumeFrontES_.exit116.thread:  ; preds = %.critedge.i, %_ZNK10StringView10startsWithES_.exit.i111, %.critedge37.i
  %i.pt = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !143
  %i.pu = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %i.pt, ptr %i.pu, align 8, !tbaa !146
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.bv:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.thread4.i
  %i.pv = icmp ult i64 %i.dj, 6
  br i1 %i.pv, label %_ZNK10StringView10startsWithES_.exit.thread12.i, label %_ZNK10StringView10startsWithES_.exit.i49

_ZNK10StringView10startsWithES_.exit.i49:         ; preds = %bb.bv
  %i.pw = load i32, ptr %.sroa.09.0.copyload, align 1
  %i.px = xor i32 943793188, %i.pw
  %i.py = getelementptr i8, ptr %.sroa.09.0.copyload, i64 4
  %i.pz = load i16, ptr %i.py, align 1
  %i.qa = zext i16 %i.pz to i32
  %i.qb = xor i32 16448, %i.qa
  %i.qc = or i32 %i.px, %i.qb
  %i.qd = icmp ne i32 %i.qc, 0
  %i.qe = zext i1 %i.qd to i32
  %.not9.i.i.i.i.i.i51 = icmp eq i32 %i.qe, 0
  br i1 %.not9.i.i.i.i.i.i51, label %bb.bw, label %_ZL14isFunctionType10StringView.exit.thread288

_ZNK10StringView10startsWithES_.exit.thread12.i:  ; preds = %bb.bv
  %i.qf = icmp samesign ult i64 %i.dj, 4
  br i1 %i.qf, label %_ZL14isFunctionType10StringView.exit.thread234, label %_ZL14isFunctionType10StringView.exit

_ZL14isFunctionType10StringView.exit:             ; preds = %_ZNK10StringView10startsWithES_.exit.thread12.i
  %i.qg = load i32, ptr %.sroa.09.0.copyload, align 1
  %i.qh = icmp ne i32 910238756, %i.qg
  %i.qi = zext i1 %i.qh to i32
  %.not9.i.i.i.i.i3.i = icmp eq i32 %i.qi, 0
  br i1 %.not9.i.i.i.i.i3.i, label %_ZNK10StringView10startsWithES_.exit.i56, label %_ZL14isFunctionType10StringView.exit.thread234

_ZL14isFunctionType10StringView.exit.thread288:   ; preds = %_ZNK10StringView10startsWithES_.exit.i49
  %i.qj = load i32, ptr %.sroa.09.0.copyload, align 1
  %i.qk = icmp ne i32 910238756, %i.qj
  %i.ql = zext i1 %i.qk to i32
  %.not9.i.i.i.i.i3.i290 = icmp eq i32 %i.ql, 0
  br i1 %.not9.i.i.i.i.i3.i290, label %_ZNK10StringView10startsWithES_.exit.i56, label %_ZL14isFunctionType10StringView.exit.thread234

bb.bw:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i49
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 6
  store ptr %i.qm, ptr %1, align 8, !tbaa !69
  %i.qn = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

_ZNK10StringView10startsWithES_.exit.i56:         ; preds = %_ZL14isFunctionType10StringView.exit.thread288, %_ZL14isFunctionType10StringView.exit
  %i.qo = load i32, ptr %.sroa.09.0.copyload, align 1
  %i.qp = icmp ne i32 910238756, %i.qo
  %i.qq = zext i1 %i.qp to i32
  %.not9.i.i.i.i.i.i58 = icmp eq i32 %i.qq, 0
  br i1 %.not9.i.i.i.i.i.i58, label %_ZNK10StringView10startsWithES_.exit.thread.i60, label %_ZN10StringView12consumeFrontES_.exit61

_ZNK10StringView10startsWithES_.exit.thread.i60:  ; preds = %_ZNK10StringView10startsWithES_.exit.i56
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 4
  store ptr %i.qr, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontES_.exit61

_ZN10StringView12consumeFrontES_.exit61:          ; preds = %_ZNK10StringView10startsWithES_.exit.i56, %_ZNK10StringView10startsWithES_.exit.thread.i60
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !33 ; 4 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !28
  %i.qv = ptrtoint ptr %i.qu to i64               ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !34
  %i.qy = add i64 %i.qv, 7
  %i.qz = add i64 %i.qy, %i.qx
  %i.ra = and i64 %i.qz, -8                       ; 2 uses
  %reass.sub.i151 = sub i64 %i.ra, %i.qv
  %i.rb = add i64 %reass.sub.i151, 56             ; 2 uses
  store i64 %i.rb, ptr %i.qw, align 8, !tbaa !34
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !32
  %i.re = icmp ult i64 %i.rb, %i.rd
  br i1 %i.re, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit61
  %i.rf = inttoptr i64 %i.ra to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

bb.by:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit61
  %i.rg = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.rh = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.rh, ptr %i.rg, align 8, !tbaa !28
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  store ptr %i.qt, ptr %i.ri, align 8, !tbaa !31
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  store i64 4096, ptr %i.rj, align 8, !tbaa !32
  store ptr %i.rg, ptr %i.qs, align 8, !tbaa !33
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store i64 56, ptr %i.rk, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.bx, %bb.by
  %.sink19.i152 = phi ptr [ %i.rh, %bb.by ], [ %i.rf, %bb.bx ] ; 12 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.sink19.i152, i64 8
  store i32 3, ptr %i.rl, align 8, !tbaa !60
  %i.rm = getelementptr inbounds nuw i8, ptr %.sink19.i152, i64 12
  store i8 0, ptr %i.rm, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i152, align 8, !tbaa !18
  %i.rn = getelementptr inbounds nuw i8, ptr %.sink19.i152, i64 16
  store i32 0, ptr %i.rn, align 8, !tbaa !113
  %i.ro = getelementptr inbounds nuw i8, ptr %.sink19.i152, i64 20 ; 2 uses
  store i8 0, ptr %i.ro, align 4, !tbaa !114
  %i.rp = getelementptr inbounds nuw i8, ptr %.sink19.i152, i64 22
  store i16 8, ptr %i.rp, align 2, !tbaa !118
  %i.rq = getelementptr inbounds nuw i8, ptr %.sink19.i152, i64 24
  store i32 0, ptr %i.rq, align 8, !tbaa !115
  %i.rr = getelementptr inbounds nuw i8, ptr %.sink19.i152, i64 32 ; 2 uses
  store ptr null, ptr %i.rr, align 8, !tbaa !95
  %i.rs = getelementptr inbounds nuw i8, ptr %.sink19.i152, i64 40
  store i8 0, ptr %i.rs, align 8, !tbaa !116
  %i.rt = getelementptr inbounds nuw i8, ptr %.sink19.i152, i64 48 ; 2 uses
  store ptr null, ptr %i.rt, align 8, !tbaa !117
  %i.ru = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 1 ; 3 uses
  store ptr %i.rv, ptr %1, align 8, !tbaa !40
  %i.rw = load i8, ptr %i.ru, align 1, !tbaa !9
  %switch.tableidx369 = add i8 %i.rw, -65         ; 2 uses
  %i.rx = icmp ult i8 %switch.tableidx369, 17
  br i1 %i.rx, label %switch.lookup370, label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

switch.lookup370:                                 ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.ry = zext nneg i8 %switch.tableidx369 to i64
  %switch.gep371 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.10, i64 %i.ry
  %switch.load372 = load i8, ptr %switch.gep371, align 1
  br label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit: ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit, %switch.lookup370
  %.0.i150 = phi i8 [ %switch.load372, %switch.lookup370 ], [ 0, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit ]
  store i8 %.0.i150, ptr %i.ro, align 4, !tbaa !114
  %i.rz = icmp eq ptr %i.rv, %.sroa.28.0.copyload
  br i1 %i.rz, label %bb.bz, label %_ZNK10StringView10startsWithEc.exit.i148

_ZNK10StringView10startsWithEc.exit.i148:         ; preds = %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.sa = load i8, ptr %i.rv, align 1, !tbaa !9
  %i.sb = icmp eq i8 %i.sa, 64
  br i1 %i.sb, label %_ZN10StringView12consumeFrontEc.exit149, label %bb.bz

_ZN10StringView12consumeFrontEc.exit149:          ; preds = %_ZNK10StringView10startsWithEc.exit.i148
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ru, i64 2
  store ptr %i.sc, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.exit

bb.bz:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i148, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.sd = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2), !inline_history !147
  store ptr %i.sd, ptr %i.rr, align 8, !tbaa !95
  br label %_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit149, %bb.bz
  %i.se = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleFunctionParameterListER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !147
  store ptr %i.se, ptr %i.rt, align 8, !tbaa !117
  %i.sf = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.sg = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !42
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %bb.ca, label %_ZNK10StringView10startsWithEc.exit.i.i146

_ZNK10StringView10startsWithEc.exit.i.i146:       ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.exit
  %i.si = load i8, ptr %i.sf, align 1, !tbaa !9
  %i.sj = icmp eq i8 %i.si, 90
  br i1 %i.sj, label %_ZN10StringView12consumeFrontEc.exit.i147, label %bb.ca

_ZN10StringView12consumeFrontEc.exit.i147:        ; preds = %_ZNK10StringView10startsWithEc.exit.i.i146
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sf, i64 1
  store ptr %i.sk, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.ca:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i146, %_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.exit
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.sl, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

_ZL14isFunctionType10StringView.exit.thread234:   ; preds = %_ZL14isFunctionType10StringView.exit.thread288, %_ZNK10StringView10startsWithES_.exit.thread12.i, %_ZL14isFunctionType10StringView.exit
  %i.sm = icmp eq i8 %i.y, 63
  br i1 %i.sm, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %_ZL14isFunctionType10StringView.exit.thread234
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 1
  store ptr %i.sn, ptr %1, align 8, !tbaa !40
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !33 ; 4 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !28
  %i.sr = ptrtoint ptr %i.sq to i64               ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 8 ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !34
  %i.su = add i64 %i.sr, 7
  %i.sv = add i64 %i.su, %i.st
  %i.sw = and i64 %i.sv, -8                       ; 2 uses
  %reass.sub.i155 = sub i64 %i.sw, %i.sr
  %i.sx = add i64 %reass.sub.i155, 24             ; 2 uses
  store i64 %i.sx, ptr %i.ss, align 8, !tbaa !34
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !32
  %i.ta = icmp ult i64 %i.sx, %i.sz
  br i1 %i.ta, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.tb = inttoptr i64 %i.sw to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_14CustomTypeNodeEJEEEPT_DpOT0_.exit

bb.cd:                                            ; preds = %bb.cb
  %i.tc = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.td = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.td, ptr %i.tc, align 8, !tbaa !28
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 24
  store ptr %i.sp, ptr %i.te, align 8, !tbaa !31
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  store i64 4096, ptr %i.tf, align 8, !tbaa !32
  store ptr %i.tc, ptr %i.so, align 8, !tbaa !33
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  store i64 24, ptr %i.tg, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_14CustomTypeNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_14CustomTypeNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.cc, %bb.cd
  %.sink12.i = phi ptr [ %i.td, %bb.cd ], [ %i.tb, %bb.cc ] ; 5 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 8
  store i32 17, ptr %i.th, align 8, !tbaa !60
  %i.ti = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 12
  store i8 0, ptr %i.ti, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle14CustomTypeNodeE, i64 16), ptr %.sink12.i, align 8, !tbaa !18
  %i.tj = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.tk = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 16
  store ptr %i.tj, ptr %i.tk, align 8, !tbaa !148
  %i.tl = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.tm = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !42
  %i.tn = icmp ne ptr %i.tl, %i.tm
  tail call void @llvm.assume(i1 %i.tn)
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 1
  store ptr %i.to, ptr %1, align 8, !tbaa !69
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !20, !range !55
  %i.tp = trunc nuw i8 %.pre to i1
  %i.tq = select i1 %i.tp, ptr null, ptr %.sink12.i
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.ce:                                            ; preds = %_ZL14isFunctionType10StringView.exit.thread234
  br i1 %i.dk, label %bb.ci, label %_ZNK10StringView10startsWithES_.exit.i.i

_ZNK10StringView10startsWithES_.exit.i.i:         ; preds = %bb.ce
  %i.tr = load i16, ptr %.sroa.09.0.copyload, align 1
  %i.ts = xor i16 9252, %i.tr
  %i.tt = getelementptr i8, ptr %.sroa.09.0.copyload, i64 2
  %i.tu = load i8, ptr %i.tt, align 1
  %i.tv = zext i8 %i.tu to i16
  %i.tw = xor i16 84, %i.tv
  %i.tx = or i16 %i.ts, %i.tw
  %i.ty = icmp ne i16 %i.tx, 0
  %i.tz = zext i1 %i.ty to i32
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %i.tz, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i.i
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 3
  store ptr %i.ua, ptr %1, align 8, !tbaa !69
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !33 ; 4 uses
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !28
  %i.ue = ptrtoint ptr %i.ud to i64               ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 8 ; 2 uses
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !34
  %i.uh = add i64 %i.ue, 7
  %i.ui = add i64 %i.uh, %i.ug
  %i.uj = and i64 %i.ui, -8                       ; 2 uses
  %reass.sub.i.i = sub i64 %i.uj, %i.ue
  %i.uk = add i64 %reass.sub.i.i, 24              ; 2 uses
  store i64 %i.uk, ptr %i.uf, align 8, !tbaa !34
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !32
  %i.un = icmp ult i64 %i.uk, %i.um
  br i1 %i.un, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.uo = inttoptr i64 %i.uj to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_.exit.i

bb.ch:                                            ; preds = %bb.cf
  %i.up = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.uq = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.uq, ptr %i.up, align 8, !tbaa !28
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  store ptr %i.uc, ptr %i.ur, align 8, !tbaa !31
  %i.us = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  store i64 4096, ptr %i.us, align 8, !tbaa !32
  store ptr %i.up, ptr %i.ub, align 8, !tbaa !33
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  store i64 24, ptr %i.ut, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_.exit.i

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_.exit.i: ; preds = %bb.ch, %bb.cg
  %.sink17.i.i = phi ptr [ %i.uq, %bb.ch ], [ %i.uo, %bb.cg ] ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.sink17.i.i, i64 8
  store i32 2, ptr %i.uu, align 8, !tbaa !60
  %i.uv = getelementptr inbounds nuw i8, ptr %.sink17.i.i, i64 12
  store i8 0, ptr %i.uv, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle17PrimitiveTypeNodeE, i64 16), ptr %.sink17.i.i, align 8, !tbaa !18
  %i.uw = getelementptr inbounds nuw i8, ptr %.sink17.i.i, i64 16
  store i32 19, ptr %i.uw, align 8, !tbaa !150
  br label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit

bb.ci:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i.i, %bb.ce
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 1 ; 3 uses
  store ptr %i.ux, ptr %1, align 8, !tbaa !40
  %i.uy = load i8, ptr %.sroa.09.0.copyload, align 1, !tbaa !9
  switch i8 %i.uy, label %bb.ef [
    i8 88, label %bb.cj
    i8 68, label %bb.cm
    i8 67, label %bb.cp
    i8 69, label %bb.cs
    i8 70, label %bb.cv
    i8 71, label %bb.cy
    i8 72, label %bb.db
    i8 73, label %bb.de
    i8 74, label %bb.dh
    i8 75, label %bb.dk
    i8 77, label %bb.dn
    i8 78, label %bb.dq
    i8 79, label %bb.dt
    i8 95, label %bb.dw
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !33 ; 4 uses
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !28
  %i.vc = ptrtoint ptr %i.vb to i64               ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb:bb.a
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  store ptr %i.i, ptr %1, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.a, %_ZL15startsWithDigit10StringView.exit
  %i.m = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.n = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %_ZNK10StringView10startsWithES_.exit.thread9, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZL15startsWithDigit10StringView.exit.thread
  %i.q = load i16, ptr %.sroa.0.0.copyload, align 1
  %i.r = icmp ne i16 9279, %i.q
  %i.s = zext i1 %i.r to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.thread9

_ZNK10StringView10startsWithES_.exit.thread:      ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.t = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZNK10StringView10startsWithES_.exit.thread9:     ; preds = %_ZL15startsWithDigit10StringView.exit.thread, %_ZNK10StringView10startsWithES_.exit
  %i.u = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit: ; preds = %bb.d, %bb.c, %_ZNK10StringView10startsWithES_.exit.thread9, %_ZNK10StringView10startsWithES_.exit.thread
  %.0 = phi ptr [ %i.u, %_ZNK10StringView10startsWithES_.exit.thread9 ], [ %i.t, %_ZNK10StringView10startsWithES_.exit.thread ], [ null, %bb.c ], [ %i.l, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 56                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.b, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 56, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink19.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 8
  store i32 3, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 12 ; 3 uses
  store i8 0, ptr %i.u, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !113
  %i.w = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 20 ; 2 uses
  store i8 0, ptr %i.w, align 4, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 22
  store i16 8, ptr %i.x, align 2, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 24 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !115
  %i.z = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 32 ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !95
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 40
  store i8 0, ptr %i.aa, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 48 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !117
  %.pre = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  br i1 %2, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 4 uses
  %i.ae = icmp eq ptr %.pre, %i.ad
  br i1 %i.ae, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.d
  %i.af = load i8, ptr %.pre, align 1, !tbaa !9
  %i.ag = icmp eq i8 %i.af, 69
  br i1 %i.ag, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  store ptr %i.ah, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.ai = phi ptr [ %i.ah, %bb.e ], [ %.pre, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %.pre, %bb.d ] ; 5 uses
  %i.aj = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.ak = icmp eq ptr %i.ai, %i.ad
  br i1 %i.ak, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.am = icmp eq i8 %i.al, 73
  br i1 %i.am, label %bb.f, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !69
  %i.ao = or disjoint i8 %i.aj, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.ap = phi ptr [ %i.an, %bb.f ], [ %i.ai, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.ai, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 5 uses
  %i.aq = phi i8 [ %i.ao, %bb.f ], [ %i.aj, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.aj, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.ar = icmp eq ptr %i.ap, %i.ad
  br i1 %i.ar, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i8.i

_ZNK10StringView10startsWithEc.exit.i8.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.at = icmp eq i8 %i.as, 70
  br i1 %i.at, label %bb.g, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

bb.g:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  store ptr %i.au, ptr %1, align 8, !tbaa !69
  %i.av = or i8 %i.aq, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.g
  %i.aw = phi ptr [ %i.au, %bb.g ], [ %i.ap, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.ap, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 5 uses
  %i.ax = phi i8 [ %i.av, %bb.g ], [ %i.aq, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.aq, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 3 uses
  store i8 %i.ax, ptr %i.u, align 4, !tbaa !112
  %i.ay = icmp eq ptr %i.aw, %i.ad
  br i1 %i.ay, label %_ZL28demangleFunctionRefQualifierR10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i.i18

_ZNK10StringView10startsWithEc.exit.i.i18:        ; preds = %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !9
  switch i8 %i.az, label %_ZL28demangleFunctionRefQualifierR10StringView.exit [
    i8 71, label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i
    i8 72, label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split
  ]

_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18
  br label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i

_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split
  %.0.ph.i = phi i32 [ 1, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ 2, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  br label %_ZL28demangleFunctionRefQualifierR10StringView.exit

_ZL28demangleFunctionRefQualifierR10StringView.exit: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i
  %i.bb = phi ptr [ %i.aw, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ %i.aw, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit ], [ %i.ba, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i ] ; 2 uses
  %.0.i = phi i32 [ 0, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ 0, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit ], [ %.0.ph.i, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i ]
  store i32 %.0.i, ptr %i.y, align 8, !tbaa !115
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 2 uses
  store ptr %i.bc, ptr %1, align 8, !tbaa !40
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.bd, -65            ; 3 uses
  %i.be = icmp ult i8 %switch.tableidx, 20
  br i1 %i.be, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %_ZL28demangleFunctionRefQualifierR10StringView.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bf, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

switch.hole_check:                                ; preds = %_ZL28demangleFunctionRefQualifierR10StringView.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bg = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.bg
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.bh = or i8 %switch.load, %i.ax
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit: ; preds = %switch.lookup, %bb.h
  %.sroa.0.0.i = phi i8 [ %i.ax, %bb.h ], [ %i.bh, %switch.lookup ]
  store i8 %.sroa.0.0.i, ptr %i.u, align 4, !tbaa !112
  br label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bi = phi ptr [ %i.bc, %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit ], [ %.pre, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 3 uses
  store ptr %i.bj, ptr %1, align 8, !tbaa !40
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !9
  %switch.tableidx27 = add i8 %i.bk, -65          ; 2 uses
  %i.bl = icmp ult i8 %switch.tableidx27, 17
  br i1 %i.bl, label %switch.lookup28, label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

switch.lookup28:                                  ; preds = %bb.i
  %i.bm = zext nneg i8 %switch.tableidx27 to i64
  %switch.gep29 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.10, i64 %i.bm
  %switch.load30 = load i8, ptr %switch.gep29, align 1
  br label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit: ; preds = %bb.i, %switch.lookup28
  %.0.i19 = phi i8 [ %switch.load30, %switch.lookup28 ], [ 0, %bb.i ]
  store i8 %.0.i19, ptr %i.w, align 4, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !42
  %i.bp = icmp eq ptr %i.bj, %i.bo
  br i1 %i.bp, label %bb.j, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.br = icmp eq i8 %i.bq, 64
  br i1 %i.br, label %_ZN10StringView12consumeFrontEc.exit, label %bb.j

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bs, ptr %1, align 8, !tbaa !69
  br label %bb.k

bb.j:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.bt = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2)
  store ptr %i.bt, ptr %i.z, align 8, !tbaa !95
  br label %bb.k

bb.k:                                             ; preds = %_ZN10StringView12consumeFrontEc.exit, %bb.j
  %i.bu = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleFunctionParameterListER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  store ptr %i.bu, ptr %i.ab, align 8, !tbaa !117
  %i.bv = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !42
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.l, label %_ZNK10StringView10startsWithEc.exit.i.i20

_ZNK10StringView10startsWithEc.exit.i.i20:        ; preds = %bb.k
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.bz = icmp eq i8 %i.by, 90
  br i1 %i.bz, label %_ZN10StringView12consumeFrontEc.exit.i, label %bb.l

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %_ZNK10StringView10startsWithEc.exit.i.i20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store ptr %i.ca, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler26demangleThrowSpecificationER10StringView.exit

bb.l:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i20, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cb, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler26demangleThrowSpecificationER10StringView.exit

_ZN12_GLOBAL__N_19Demangler26demangleThrowSpecificationER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit.i, %bb.l
  ret ptr %.sink19.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleFunctionParameterListER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !tbaa !9
  %i.g = icmp eq i8 %i.f, 88
  br i1 %i.g, label %_ZN10StringView12consumeFrontEc.exit, label %bb.b

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !69
  br label %bb.p

bb.b:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  %i.o = add i64 %i.l, 7
  %i.p = add i64 %i.o, %i.n
  %i.q = and i64 %i.p, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.q, %i.l
  %i.r = add i64 %reass.sub.i, 16                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = inttoptr i64 %i.q to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.w = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.j, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 4096, ptr %i.z, align 8, !tbaa !32
  store ptr %i.w, ptr %i.i, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 16, ptr %i.aa, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi ptr [ %i.x, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i8 0, i64 16, i1 false)
  store ptr %.sink.i, ptr %i.a, align 8, !tbaa !178
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !20, !range !55, !noundef !56
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.backedge
  %.03259 = phi ptr [ %i.a, %.lr.ph ], [ %.032.be, %.backedge ] ; 3 uses
  %.03458 = phi i64 [ 0, %.lr.ph ], [ %.034.be, %.backedge ] ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !40    ; 4 uses
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZNK10StringView10startsWithEc.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.e
  %i.aj = add i64 %.03458, 1
  br label %bb.k

_ZNK10StringView10startsWithEc.exit:              ; preds = %bb.e
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !9   ; 3 uses
  switch i8 %i.ak, label %_ZL15startsWithDigit10StringView.exit [
    i8 64, label %bb.o
    i8 90, label %bb.o
  ]

_ZL15startsWithDigit10StringView.exit:            ; preds = %_ZNK10StringView10startsWithEc.exit
  %i.al = add i64 %.03458, 1                      ; 2 uses
  %i.am = sext i8 %i.ak to i32
  %isdigittmp.i = add nsw i32 %i.am, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.an = sext i8 %i.ak to i64
  %i.ao = add nsw i64 %i.an, -48                  ; 2 uses
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !43
  %.not = icmp ult i64 %i.ao, %i.ap
  br i1 %.not, label %bb.g, label %.thread50

.thread50:                                        ; preds = %bb.f
  store i8 1, ptr %i.ab, align 8, !tbaa !20
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.aq, ptr %1, align 8, !tbaa !69
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !33  ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !34
  %i.aw = add i64 %i.at, 7
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = and i64 %i.ax, -8                       ; 2 uses
  %reass.sub.i39 = sub i64 %i.ay, %i.at
  %i.az = add i64 %reass.sub.i39, 16              ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !32
  %i.bc = icmp ult i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = inttoptr i64 %i.ay to ptr
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.be = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.bf = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.ar, ptr %i.bg, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 4096, ptr %i.bh, align 8, !tbaa !32
  store ptr %i.be, ptr %i.i, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 16, ptr %i.bi, align 8, !tbaa !34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i40 = phi ptr [ %i.bf, %bb.i ], [ %i.bd, %bb.h ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i40, i8 0, i64 16, i1 false)
  store ptr %.sink.i40, ptr %.03259, align 8, !tbaa !178
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView:bb.a
  %.not36 = icmp eq ptr %.030, null
  br i1 %.not36, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jr = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !60
  %i.jt = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store i32 %i.js, ptr %i.jt, align 8, !tbaa !60
  %i.ju = getelementptr inbounds nuw i8, ptr %.031, i64 12
  %i.jv = load i8, ptr %i.ju, align 4, !tbaa !112
  %i.jw = getelementptr inbounds nuw i8, ptr %.030, i64 12
  store i8 %i.jv, ptr %i.jw, align 4, !tbaa !112
  %i.jx = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %.031, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jx, ptr noundef nonnull align 8 dereferenceable(40) %i.jy, i64 40, i1 false)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.1 = phi ptr [ %.030, %bb.cf ], [ %.031, %bb.ce ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.1, i64 22
  store i16 %i.ad, ptr %i.jz, align 2, !tbaa !118
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !33 ; 4 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !28
  %i.kd = ptrtoint ptr %i.kc to i64               ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !34
  %i.kg = add i64 %i.kd, 7
  %i.kh = add i64 %i.kg, %i.kf
  %i.ki = and i64 %i.kh, -8                       ; 2 uses
  %reass.sub.i113 = sub i64 %i.ki, %i.kd
  %i.kj = add i64 %reass.sub.i113, 32             ; 2 uses
  store i64 %i.kj, ptr %i.ke, align 8, !tbaa !34
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.km = icmp ult i64 %i.kj, %i.kl
  br i1 %i.km, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.kn = inttoptr i64 %i.ki to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

bb.ci:                                            ; preds = %bb.cg
  %i.ko = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.kp = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.kp, ptr %i.ko, align 8, !tbaa !28
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  store ptr %i.kb, ptr %i.kq, align 8, !tbaa !31
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  store i64 4096, ptr %i.kr, align 8, !tbaa !32
  store ptr %i.ko, ptr %i.ka, align 8, !tbaa !33
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i64 32, ptr %i.ks, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.ch, %bb.ci
  %.sink13.i = phi ptr [ %i.kp, %bb.ci ], [ %i.kn, %bb.ch ] ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 26, ptr %i.kt, align 8, !tbaa !60
  %i.ku = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.ku, align 8, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18FunctionSymbolNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.kv = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %.1, ptr %i.kv, align 8, !tbaa !92
  ret ptr %.sink13.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i8 noundef zeroext range(i8 0, 6) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 40                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.b, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 40, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink14.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24 ; 2 uses
  store i8 0, ptr %i.v, align 8, !tbaa !154
  %i.w = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !157
  %i.x = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) ; 6 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !157
  store i8 %2, ptr %i.v, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !60
  %cond = icmp eq i32 %i.z, 14
  br i1 %cond, label %bb.d, label %bb.n

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !112
  %i.ac = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 5 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.d
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !9
  %i.ah = icmp eq i8 %i.ag, 69
  br i1 %i.ah, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %i.ac, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.ac, %bb.d ] ; 5 uses
  %i.ak = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.al = icmp eq ptr %i.aj, %i.ae
  br i1 %i.al, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.an = icmp eq i8 %i.am, 73
  br i1 %i.an, label %bb.f, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.ao, ptr %1, align 8, !tbaa !69
  %i.ap = or disjoint i8 %i.ak, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.aq = phi ptr [ %i.ao, %bb.f ], [ %i.aj, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.aj, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 5 uses
  %i.ar = phi i8 [ %i.ap, %bb.f ], [ %i.ak, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.ak, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.as = icmp eq ptr %i.aq, %i.ae
  br i1 %i.as, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i8.i

_ZNK10StringView10startsWithEc.exit.i8.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.au = icmp eq i8 %i.at, 70
  br i1 %i.au, label %bb.g, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

bb.g:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.aw = or i8 %i.ar, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.g
  %i.ax = phi ptr [ %i.av, %bb.g ], [ %i.aq, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.aq, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 3 uses
  %i.ay = phi i8 [ %i.aw, %bb.g ], [ %i.ar, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.ar, %_ZN10StringView12consumeFrontEc.exit7.thread.i ]
  %i.az = or i8 %i.ay, %i.ab
  store i8 %i.az, ptr %i.aa, align 4, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 5 uses
  store ptr %i.ba, ptr %1, align 8, !tbaa !40
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !9
  %switch.tableidx = add i8 %i.bb, -65            ; 3 uses
  %i.bc = icmp ult i8 %switch.tableidx, 20
  br i1 %i.bc, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bd, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

switch.hole_check:                                ; preds = %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.be = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.be
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit: ; preds = %switch.lookup, %bb.h
  %.sroa.0.0.i = phi i8 [ 0, %bb.h ], [ %switch.load, %switch.lookup ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !132
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit, label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit
  %i.bh = icmp eq ptr %i.ba, %i.ae
  br i1 %i.bh, label %_ZL15startsWithDigit10StringView.exit.thread.i, label %_ZL15startsWithDigit10StringView.exit.i

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %bb.i
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !9   ; 2 uses
  %i.bj = sext i8 %i.bi to i32
  %isdigittmp.i.i = add nsw i32 %i.bj, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.j, label %_ZL15startsWithDigit10StringView.exit.thread.i

bb.j:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %i.bk = sext i8 %i.bi to i64
  %i.bl = add nsw i64 %i.bk, -48                  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !51
  %.not.i.i = icmp ult i64 %i.bl, %i.bn
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bo, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

bb.l:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store ptr %i.bp, ptr %1, align 8, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bl
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !52
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZL15startsWithDigit10StringView.exit.thread.i:   ; preds = %_ZL15startsWithDigit10StringView.exit.i, %bb.i
  %i.bt = ptrtoint ptr %i.ae to i64
  %i.bu = ptrtoint ptr %i.ba to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ult i64 %i.bv, 2
  br i1 %i.bw, label %_ZNK10StringView10startsWithES_.exit.thread9.i, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.bx = load i16, ptr %i.ba, align 1
  %i.by = icmp ne i16 9279, %i.bx
  %i.bz = zext i1 %i.by to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread.i, label %_ZNK10StringView10startsWithES_.exit.thread9.i

_ZNK10StringView10startsWithES_.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.ca = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !202
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZNK10StringView10startsWithES_.exit.thread9.i:   ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.cb = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit: ; preds = %bb.k, %bb.l, %_ZNK10StringView10startsWithES_.exit.thread.i, %_ZNK10StringView10startsWithES_.exit.thread9.i
  %.0.i = phi ptr [ %i.cb, %_ZNK10StringView10startsWithES_.exit.thread9.i ], [ %i.ca, %_ZNK10StringView10startsWithES_.exit.thread.i ], [ null, %bb.k ], [ %i.bs, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !20, !range !55, !noundef !56
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %i.cf = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.0.i), !inline_history !203 ; 0 uses
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit: ; preds = %bb.m, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit, %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !133
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !112
  %i.ck = or i8 %i.cj, %.sroa.0.0.i
  store i8 %i.ck, ptr %i.ci, align 4, !tbaa !112
  br label %bb.p

bb.n:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.cl = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store ptr %i.cm, ptr %1, align 8, !tbaa !40
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !9
  %switch.tableidx31 = add i8 %i.cn, -65          ; 3 uses
  %i.co = icmp ult i8 %switch.tableidx31, 20
  br i1 %i.co, label %switch.hole_check33, label %bb.o

bb.o:                                             ; preds = %switch.hole_check33, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cp, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18

switch.hole_check33:                              ; preds = %bb.n
  %switch.maskindex35 = zext nneg i8 %switch.tableidx31 to i32
  %switch.shifted36 = lshr i32 983055, %switch.maskindex35
  %switch.lobit37 = trunc i32 %switch.shifted36 to i1
  br i1 %switch.lobit37, label %switch.lookup34, label %bb.o

switch.lookup34:                                  ; preds = %switch.hole_check33
  %i.cq = zext nneg i8 %switch.tableidx31 to i64
  %switch.gep38 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.cq
  %switch.load39 = load i8, ptr %switch.gep38, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18: ; preds = %switch.lookup34, %bb.o
  %.sroa.0.0.i17 = phi i8 [ 0, %bb.o ], [ %switch.load39, %switch.lookup34 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i8 %.sroa.0.0.i17, ptr %i.cr, align 4, !tbaa !112
  br label %bb.p

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18, %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit
  ret ptr %.sink14.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"_ZTSN4llvh11ms_demangle21IntrinsicFunctionKindE", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !11, !14, !13}
!16 = distinct !{!16, !11, !13, !14}
!17 = distinct !{!17, !11, !14, !13}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !6, i64 0}
!20 = !{!21, !22, i64 8}
!21 = !{!"_ZTSN12_GLOBAL__N_19DemanglerE", !22, i64 8, !23, i64 16, !26, i64 24}
!22 = !{!"bool", !5, i64 0}
!23 = !{!"_ZTSN4llvh11ms_demangle14ArenaAllocatorE", !24, i64 0}
!24 = !{!"p1 _ZTSN4llvh11ms_demangle14ArenaAllocator13AllocatorNodeE", !25, i64 0}
!25 = !{!"any pointer", !5, i64 0}
!26 = !{!"_ZTSN12_GLOBAL__N_114BackrefContextE", !5, i64 0, !27, i64 80, !5, i64 88, !27, i64 168}
!27 = !{!"long", !5, i64 0}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSN4llvh11ms_demangle14ArenaAllocator13AllocatorNodeE", !30, i64 0, !27, i64 8, !27, i64 16, !24, i64 24}
!30 = !{!"p1 omnipotent char", !25, i64 0}
!31 = !{!29, !24, i64 24}
!32 = !{!29, !27, i64 16}
!33 = !{!23, !24, i64 0}
!34 = !{!29, !27, i64 8}
!35 = !{!26, !27, i64 80}
!36 = !{!26, !27, i64 168}
!37 = !{!38, !4, i64 24}
!38 = !{!"_ZTS12OutputStream", !30, i64 0, !27, i64 8, !27, i64 16, !4, i64 24, !4, i64 28}
!39 = !{!38, !4, i64 28}
!40 = !{!41, !30, i64 0}
!41 = !{!"_ZTS10StringView", !30, i64 0, !30, i64 8}
!42 = !{!41, !30, i64 8}
!43 = !{!21, !27, i64 104}
!44 = !{!38, !27, i64 8}
!45 = !{!38, !30, i64 0}
!46 = !{!38, !27, i64 16}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTSN4llvh11ms_demangle8TypeNodeE", !25, i64 0}
!49 = distinct !{null}
!50 = distinct !{!50, !11}
!51 = !{!21, !27, i64 192}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTSN4llvh11ms_demangle19NamedIdentifierNodeE", !25, i64 0}
!54 = distinct !{!54, !11}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!27, !27, i64 0}
!58 = !{ptr @_ZN12_GLOBAL__N_19DemanglerD2Ev}
!59 = distinct !{!59, !11}
!60 = !{!61, !62, i64 8}
!61 = !{!"_ZTSN4llvh11ms_demangle4NodeE", !62, i64 8}
!62 = !{!"_ZTSN4llvh11ms_demangle8NodeKindE", !5, i64 0}
!63 = !{!64, !65, i64 16}
!64 = !{!"_ZTSN4llvh11ms_demangle10SymbolNodeE", !61, i64 0, !65, i64 16}
!65 = !{!"p1 _ZTSN4llvh11ms_demangle17QualifiedNameNodeE", !25, i64 0}
!66 = !{!67, !68, i64 16}
!67 = !{!"_ZTSN4llvh11ms_demangle14IdentifierNodeE", !61, i64 0, !68, i64 16}
!68 = !{!"p1 _ZTSN4llvh11ms_demangle13NodeArrayNodeE", !25, i64 0}
!69 = !{!30, !30, i64 0}
!70 = distinct !{null}
!71 = distinct !{null, null}
!72 = !{!73, !65, i64 24}
!73 = !{!"_ZTSN4llvh11ms_demangle22SpecialTableSymbolNodeE", !64, i64 0, !65, i64 24, !74, i64 32}
!74 = !{!"_ZTSN4llvh11ms_demangle10QualifiersE", !5, i64 0}
!75 = !{!74, !74, i64 0}
!76 = distinct !{null, null, null, ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView}
!77 = distinct !{null, null, ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView}
!78 = distinct !{null}
!79 = !{!80, !68, i64 16}
!80 = !{!"_ZTSN4llvh11ms_demangle17QualifiedNameNodeE", !61, i64 0, !68, i64 16}
!81 = !{!82, !83, i64 16}
!82 = !{!"_ZTSN4llvh11ms_demangle13NodeArrayNodeE", !61, i64 0, !83, i64 16, !27, i64 24}
!83 = !{!"p2 _ZTSN4llvh11ms_demangle4NodeE", !84, i64 0}
!84 = !{!"any p2 pointer", !25, i64 0}
!85 = !{!82, !27, i64 24}
!86 = !{!87, !87, i64 0}
!87 = !{!"p1 _ZTSN4llvh11ms_demangle4NodeE", !25, i64 0}
!88 = !{!89, !90, i64 24}
!89 = !{!"_ZTSN4llvh11ms_demangle22StructorIdentifierNodeE", !67, i64 0, !90, i64 24, !22, i64 32}
!90 = !{!"p1 _ZTSN4llvh11ms_demangle14IdentifierNodeE", !25, i64 0}
!91 = distinct !{null}
!92 = !{!93, !94, i64 24}
!93 = !{!"_ZTSN4llvh11ms_demangle18FunctionSymbolNodeE", !64, i64 0, !94, i64 24}
!94 = !{!"p1 _ZTSN4llvh11ms_demangle21FunctionSignatureNodeE", !25, i64 0}
!95 = !{!96, !48, i64 32}
!96 = !{!"_ZTSN4llvh11ms_demangle21FunctionSignatureNodeE", !97, i64 0, !98, i64 16, !99, i64 20, !100, i64 22, !101, i64 24, !48, i64 32, !22, i64 40, !68, i64 48}
!97 = !{!"_ZTSN4llvh11ms_demangle8TypeNodeE", !61, i64 0, !74, i64 12}
!98 = !{!"_ZTSN4llvh11ms_demangle15PointerAffinityE", !5, i64 0}
!99 = !{!"_ZTSN4llvh11ms_demangle11CallingConvE", !5, i64 0}
!100 = !{!"_ZTSN4llvh11ms_demangle9FuncClassE", !5, i64 0}
!101 = !{!"_ZTSN4llvh11ms_demangle20FunctionRefQualifierE", !5, i64 0}
!102 = !{!103, !48, i64 24}
!103 = !{!"_ZTSN4llvh11ms_demangle32ConversionOperatorIdentifierNodeE", !67, i64 0, !48, i64 24}
!104 = !{!105, !106, i64 44}
!105 = !{!"_ZTSN4llvh11ms_demangle24EncodedStringLiteralNodeE", !64, i64 0, !41, i64 24, !22, i64 40, !106, i64 44}
!106 = !{!"_ZTSN4llvh11ms_demangle8CharKindE", !5, i64 0}
!107 = distinct !{!107, !11}
!108 = !{!105, !22, i64 40}
!109 = distinct !{!109, !11}
!110 = !{!111, !27, i64 24}
!111 = !{!"_ZTSN4llvh11ms_demangle24VcallThunkIdentifierNodeE", !67, i64 0, !27, i64 24}
!112 = !{!97, !74, i64 12}
!113 = !{!96, !98, i64 16}
!114 = !{!96, !99, i64 20}
!115 = !{!96, !101, i64 24}
!116 = !{!96, !22, i64 40}
!117 = !{!96, !68, i64 48}
!118 = !{!96, !100, i64 22}
!119 = !{!120, !4, i64 24}
!120 = !{!"_ZTSN4llvh11ms_demangle30LocalStaticGuardIdentifierNodeE", !67, i64 0, !4, i64 24}
!121 = !{!122, !22, i64 24}
!122 = !{!"_ZTSN4llvh11ms_demangle28LocalStaticGuardVariableNodeE", !64, i64 0, !22, i64 24}
!123 = !{!124, !65, i64 16}
!124 = !{!"_ZTSN4llvh11ms_demangle11TagTypeNodeE", !97, i64 0, !65, i64 16, !125, i64 24}
!125 = !{!"_ZTSN4llvh11ms_demangle7TagKindE", !5, i64 0}
!126 = !{!124, !125, i64 24}
!127 = distinct !{null}
!128 = !{!129, !98, i64 16}
end_hunk_6
