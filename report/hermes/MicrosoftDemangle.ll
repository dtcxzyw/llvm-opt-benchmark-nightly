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
define hidden noundef i32 @_Z22countTrailingNullBytesPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
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
define hidden noundef i32 @_Z18countEmbeddedNullsPKhj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
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
define hidden noundef range(i32 1, 5) i32 @_Z17guessCharByteSizePKhjj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
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

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView:bb.a
  br i1 %i.fi, label %bb.aq, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.aq:                                            ; preds = %bb.ap
  %i.fj = zext nneg i8 %i.el to i64
  %i.fk = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 -97
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9
  %i.fn = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fn, ptr %1, align 8, !tbaa !69
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.fo = add i8 %i.el, -65
  %or.cond.i12.i = icmp ult i8 %i.fo, 26
  br i1 %or.cond.i12.i, label %bb.as, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.as:                                            ; preds = %bb.ar
  %i.fp = zext nneg i8 %i.el to i64
  %i.fq = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 -65
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !9
  %i.ft = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.ft, ptr %1, align 8, !tbaa !69
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.an, %bb.am, %_ZNK10StringView10startsWithEc.exit.thread.i6.i
  %.1.i7.ph.i = phi i8 [ %i.eh, %_ZNK10StringView10startsWithEc.exit.thread.i6.i ], [ %i.fs, %bb.as ], [ %i.fm, %bb.aq ], [ %i.ff, %bb.an ], [ %i.fa, %bb.am ]
  %i.fu = zext i8 %.1.i.i.ph to i32
  %i.fv = shl nuw nsw i32 %i.fu, 8
  %i.fw = zext i8 %.1.i7.ph.i to i32
  %i.fx = or disjoint i32 %i.fv, %i.fw
  br label %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i: ; preds = %bb.af, %bb.ad, %bb.z, %bb.y, %bb.x, %bb.w, %bb.ar, %bb.ap, %bb.al, %bb.ak, %bb.aj, %bb.ai
  store i8 1, ptr %i.bo, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit: ; preds = %bb.at, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i
  %i.fy = phi i8 [ 1, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i ], [ 0, %bb.at ]
  %.0.i = phi i32 [ 0, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i ], [ %i.fx, %bb.at ]
  %.not = icmp eq i64 %.086, 2
  br i1 %.not, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit
  %i.fz = load i8, ptr %i.cg, align 8, !tbaa !108, !range !55, !noundef !56
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.0.i)
  %.pre = load i8, ptr %i.bo, align 8, !tbaa !20, !range !55
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gb = phi i8 [ %.pre, %bb.av ], [ %i.fy, %bb.au ]
  %i.gc = add i64 %.086, -2
  %i.gd = trunc nuw i8 %i.gb to i1
  br i1 %i.gd, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.v

bb.ax:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit, %bb.ax
  %i.ge = phi ptr [ %i.by, %bb.ax ], [ %i.hy, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit ] ; 13 uses
  %.055 = phi i32 [ 0, %bb.ax ], [ %i.hz, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit ] ; 6 uses
  %i.gf = icmp eq ptr %i.ge, %i.ab
  br i1 %i.gf, label %_ZNK10StringView10startsWithEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i65

_ZNK10StringView10startsWithEc.exit.i65:          ; preds = %bb.ay
  %i.gg = load i8, ptr %i.ge, align 1, !tbaa !9
  %i.gh = icmp eq i8 %i.gg, 64
  br i1 %i.gh, label %bb.bk, label %_ZNK10StringView10startsWithEc.exit.i67

_ZNK10StringView10startsWithEc.exit.i67:          ; preds = %_ZNK10StringView10startsWithEc.exit.i65
  %i.gi = load i8, ptr %i.ge, align 1, !tbaa !9
  %i.gj = icmp eq i8 %i.gi, 63
  br i1 %i.gj, label %bb.az, label %_ZNK10StringView10startsWithEc.exit.thread.i

_ZNK10StringView10startsWithEc.exit.thread.i:     ; preds = %bb.ay, %_ZNK10StringView10startsWithEc.exit.i67
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 2 uses
  store ptr %i.gk, ptr %1, align 8, !tbaa !40
  %i.gl = load i8, ptr %i.ge, align 1, !tbaa !9
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.az:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i67
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 6 uses
  store ptr %i.gm, ptr %1, align 8, !tbaa !69
  %i.gn = icmp eq ptr %i.gm, %i.ab
  br i1 %i.gn, label %.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i69

_ZNK10StringView10startsWithEc.exit.i.i69:        ; preds = %bb.az
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !9   ; 8 uses
  %i.gp = icmp eq i8 %i.go, 36
  br i1 %i.gp, label %bb.ba, label %_ZL15startsWithDigit10StringView.exit.i70

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i69
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ge, i64 2 ; 6 uses
  store ptr %i.gq, ptr %1, align 8, !tbaa !69
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %i.ad, %i.gr
  %i.gt = icmp ult i64 %i.gs, 2
  br i1 %i.gt, label %.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gu = load i8, ptr %i.gq, align 1, !tbaa !9
  %i.gv = add i8 %i.gu, -65                       ; 2 uses
  %i.gw = icmp ult i8 %i.gv, 16
  br i1 %i.gw, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ge, i64 3
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !9
  %i.gz = add i8 %i.gy, -65                       ; 2 uses
  %i.ha = icmp ult i8 %i.gz, 16
  br i1 %i.ha, label %bb.bd, label %.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  store ptr %i.hb, ptr %1, align 8, !tbaa !69
  %i.hc = shl nuw i8 %i.gv, 4
  %i.hd = or disjoint i8 %i.gz, %i.hc
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

_ZL15startsWithDigit10StringView.exit.i70:        ; preds = %_ZNK10StringView10startsWithEc.exit.i.i69
  %i.he = sext i8 %i.go to i32
  %isdigittmp.i.i71 = add nsw i32 %i.he, -48
  %isdigit.i.i72 = icmp ult i32 %isdigittmp.i.i71, 10
  br i1 %isdigit.i.i72, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i70
  %i.hf = sext i8 %i.go to i64
  %i.hg = getelementptr i8, ptr @.str.33, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.hg, i64 -48
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !9
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ge, i64 2 ; 2 uses
  store ptr %i.hj, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.bf:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i70
  %i.hk = icmp sgt i8 %i.go, 96
  br i1 %i.hk, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hl = icmp samesign ult i8 %i.go, 123
  br i1 %i.hl, label %bb.bh, label %.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.hm = zext nneg i8 %i.go to i64
  %i.hn = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -97
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !9
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ge, i64 2 ; 2 uses
  store ptr %i.hq, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.bi:                                            ; preds = %bb.bf
  %i.hr = add i8 %i.go, -65
  %or.cond.i73 = icmp ult i8 %i.hr, 26
  br i1 %or.cond.i73, label %bb.bj, label %.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.hs = zext nneg i8 %i.go to i64
  %i.ht = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 -65
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ge, i64 2 ; 2 uses
  store ptr %i.hw, ptr %1, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

.thread.i:                                        ; preds = %bb.bi, %bb.bg, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %i.hx = phi ptr [ %i.gm, %bb.bi ], [ %i.gm, %bb.bg ], [ %i.gq, %bb.bc ], [ %i.gq, %bb.bb ], [ %i.gq, %bb.ba ], [ %i.gm, %bb.az ]
  store i8 1, ptr %i.bo, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit: ; preds = %_ZNK10StringView10startsWithEc.exit.thread.i, %bb.bd, %bb.be, %bb.bh, %bb.bj, %.thread.i
  %i.hy = phi ptr [ %i.hx, %.thread.i ], [ %i.hb, %bb.bd ], [ %i.hj, %bb.be ], [ %i.hq, %bb.bh ], [ %i.hw, %bb.bj ], [ %i.gk, %_ZNK10StringView10startsWithEc.exit.thread.i ]
  %.1.i68 = phi i8 [ 0, %.thread.i ], [ %i.hd, %bb.bd ], [ %i.hi, %bb.be ], [ %i.hp, %bb.bh ], [ %i.hv, %bb.bj ], [ %i.gl, %_ZNK10StringView10startsWithEc.exit.thread.i ]
  %i.hz = add i32 %.055, 1
  %i.ia = zext i32 %.055 to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ia
  store i8 %.1.i68, ptr %i.ib, align 1, !tbaa !9
  br label %bb.ay, !llvm.loop !109

bb.bk:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i65
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store ptr %i.ic, ptr %1, align 8, !tbaa !69
  %i.id = zext i32 %.055 to i64
  %i.ie = icmp ugt i64 %.sroa.0.4.i, %i.id
  br i1 %i.ie, label %bb.bl, label %switch.lookup

bb.bl:                                            ; preds = %bb.bk
  %i.if = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  store i8 1, ptr %i.if, align 8, !tbaa !108
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.bl, %bb.bk
  %i.ig = trunc i64 %.sroa.0.4.i to i32
  %i.ih = call noundef i32 @_Z17guessCharByteSizePKhjj(ptr noundef nonnull %i.a, i32 noundef %.055, i32 noundef %i.ig) ; 7 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %3 = getelementptr [4 x i8], ptr @switch.table._ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView, i64 %i.ii
  %switch.gep = getelementptr i8, ptr %3, i64 -4
  %switch.load = load i32, ptr %switch.gep, align 4
  store i32 %switch.load, ptr %i.z, align 4, !tbaa !104
  %.not99 = icmp ugt i32 %i.ih, %.055
  br i1 %.not99, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup
  %i.ij = udiv i32 %.055, %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  %i.il = zext i32 %i.ij to i64
  %exitcond.not.i74 = icmp eq i32 %i.ih, 1
  %exitcond.not.i74.1 = icmp eq i32 %i.ih, 2
  %exitcond.not.i74.2 = icmp eq i32 %i.ih, 3
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.bq, %.thread143, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bs

bb.bm:                                            ; preds = %bb.br, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.br ] ; 2 uses
  %i.im = trunc nuw i64 %indvars.iv to i32
  %i.in = mul i32 %i.ih, %i.im
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.io ; 4 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !9
  %i.ir = zext i8 %i.iq to i32                    ; 2 uses
  br i1 %exitcond.not.i74, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !9
  %i.iu = zext i8 %i.it to i32
  %i.iv = shl nuw nsw i32 %i.iu, 8
  %i.iw = or disjoint i32 %i.iv, %i.ir            ; 2 uses
  br i1 %exitcond.not.i74.1, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !9
  %i.iz = zext i8 %i.iy to i32
  %i.ja = shl nuw nsw i32 %i.iz, 16
  %i.jb = or disjoint i32 %i.ja, %i.iw            ; 2 uses
  br i1 %exitcond.not.i74.2, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ip, i64 3
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !9
  %i.je = zext i8 %i.jd to i32
  %i.jf = shl nuw i32 %i.je, 24
  %i.jg = or disjoint i32 %i.jf, %i.jb
  br label %_ZL19decodeMultiByteCharPKhjj.exit

_ZL19decodeMultiByteCharPKhjj.exit:               ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %.lcssa156 = phi i32 [ %i.ir, %bb.bm ], [ %i.iw, %bb.bn ], [ %i.jb, %bb.bo ], [ %i.jg, %bb.bp ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jh = icmp samesign ult i64 %indvars.iv.next, %i.il
  br i1 %i.jh, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZL19decodeMultiByteCharPKhjj.exit
  %i.ji = load i8, ptr %i.ik, align 8, !tbaa !108, !range !55, !noundef !56
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %.thread143, label %._crit_edge

.thread143:                                       ; preds = %bb.bq
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.lcssa156)
  br label %._crit_edge

bb.br:                                            ; preds = %_ZL19decodeMultiByteCharPKhjj.exit
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.lcssa156)
  br label %bb.bm

bb.bs:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit, %._crit_edge
  %i.jk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12OutputStreamlsEc(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 0) ; 0 uses
  %i.jl = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.jm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jl) #21
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jm
  %i.jo = call fastcc { ptr, ptr } @_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %i.jl, ptr nonnull %i.jn) ; 2 uses
  %i.jp = extractvalue { ptr, ptr } %i.jo, 0
  %i.jq = extractvalue { ptr, ptr } %i.jo, 1
  store ptr %i.jp, ptr %i.y, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 32
  store ptr %i.jq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !69
  call void @free(ptr noundef %i.jl) #19
  br label %bb.bt

_ZN10StringView12consumeFrontES_.exit.thread:     ; preds = %bb.aw, %bb.n, %bb.m, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit, %_ZNK10StringView10startsWithES_.exit.i, %bb.o, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit, %bb.e, %bb.d
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.jr, align 8, !tbaa !20
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit.thread, %bb.bs
  %.0 = phi ptr [ null, %_ZN10StringView12consumeFrontES_.exit.thread ], [ %.sink15.i, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleVcallThunkNodeER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = add i64 %i.d, 7                          ; 2 uses
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 32                 ; 3 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.b, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 32, ptr %i.s, align 8, !tbaa !34
  %.pre = ptrtoint ptr %i.p to i64                ; 2 uses
  %.pre20 = add i64 %.pre, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi21 = phi i64 [ %i.g, %bb.b ], [ %.pre20, %bb.c ] ; 2 uses
  %.pre-phi = phi i64 [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.t = phi i64 [ %i.l, %bb.b ], [ 4096, %bb.c ] ; 2 uses
  %i.u = phi i64 [ %i.j, %bb.b ], [ 32, %bb.c ]
  %i.v = phi ptr [ %i.b, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.sink13.i = phi ptr [ %i.n, %bb.b ], [ %i.p, %bb.c ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 26, ptr %i.w, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18FunctionSymbolNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = add i64 %i.u, %.pre-phi21
  %i.ab = and i64 %i.aa, -8                       ; 2 uses
  %reass.sub.i13 = sub i64 %i.ab, %.pre-phi
  %i.ac = add i64 %reass.sub.i13, 32              ; 3 uses
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !34
  %i.ad = icmp ult i64 %i.ac, %i.t
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ae = inttoptr i64 %i.ab to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit
  %i.af = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.ag = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 4096, ptr %i.ai, align 8, !tbaa !32
  store ptr %i.af, ptr %i.a, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 32, ptr %i.aj, align 8, !tbaa !34
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
end_hunk_1
