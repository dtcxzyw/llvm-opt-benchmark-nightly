Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/MicrosoftDemangle?download=true
inline.NumInlined: 805
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
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
@switch.table._ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView = private unnamed_addr constant [4 x i8] [i8 0, i8 1, i8 poison, i8 2], align 4
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
  %.0 = load i8, ptr %i.e, align 1, !tbaa !14
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
  %i.d = load i8, ptr %.0712, align 1, !tbaa !15
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i32 %.011, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.f, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !0

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
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !15
  %wide.load11 = load <4 x i8>, ptr %i.d, align 1, !tbaa !15
  %i.e = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.f = icmp eq <4 x i8> %wide.load11, zeroinitializer
  %i.g = zext <4 x i1> %i.e to <4 x i32>
  %i.h = zext <4 x i1> %i.f to <4 x i32>
  %i.i = add <4 x i32> %vec.phi, %i.g             ; 2 uses
  %i.j = add <4 x i32> %vec.phi10, %i.h           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !120

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
  %i.n = load i8, ptr %.067, align 1, !tbaa !15
  %i.o = icmp eq i8 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %spec.select = add i32 %.058, %i.p              ; 2 uses
  %i.q = add nuw i32 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121
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
  %i.f = load i8, ptr %.0712.i, align 1, !tbaa !15
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_Z22countTrailingNullBytesPKhi.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = add nuw nsw i32 %.011.i, 1               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL17outputEscapedCharR12OutputStreamj:bb.a
bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i.i:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i, %bb.ak
  %i.ex = phi i64 [ %i.eq, %bb.ak ], [ %.pre6.i.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i ]
  %i.ey = phi ptr [ %.pre.i.i.i, %bb.ak ], [ %i.ev, %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i32 808482908, ptr %i.ez, align 1
  %i.fa = load i64, ptr %i.ep, align 8, !tbaa !43
  %i.fb = add i64 %i.fa, 4
  store i64 %i.fb, ptr %i.ep, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.a, i8 0, i64 17, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.i ], [ 14, %bb.an ] ; 3 uses
  %.01226.i = phi i32 [ %i.fq, %.preheader.i ], [ %1, %bb.an ] ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.fd = trunc i32 %.01226.i to i8               ; 3 uses
  %i.fe = and i8 %i.fd, 15                        ; 3 uses
  %i.ff = icmp samesign ult i8 %i.fe, 10
  %i.fg = or disjoint i8 %i.fe, 48
  %i.fh = add nuw nsw i8 %i.fe, 55
  %i.fi = select i1 %i.ff, i8 %i.fg, i8 %i.fh
  store i8 %i.fi, ptr %i.fc, align 2, !tbaa !15
  %i.fj = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.fk = getelementptr i8, ptr %i.fj, i64 -1
  %i.fl = lshr i8 %i.fd, 4                        ; 2 uses
  %i.fm = icmp ult i8 %i.fd, -96
  %i.fn = or disjoint i8 %i.fl, 48
  %i.fo = add nuw nsw i8 %i.fl, 55
  %i.fp = select i1 %i.fm, i8 %i.fn, i8 %i.fo
  store i8 %i.fp, ptr %i.fk, align 1, !tbaa !15
  %i.fq = lshr i32 %.01226.i, 8                   ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fc, i64 -2
  store i8 120, ptr %i.fr, align 2, !tbaa !15
  %indvars.iv.next = add nsw i64 %indvars.iv, -4  ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fc, i64 -3
  store i8 92, ptr %i.fs, align 1, !tbaa !15
  %.not.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i, label %bb.ao, label %.preheader.i, !llvm.loop !173

bb.ao:                                            ; preds = %.preheader.i
  %i.ft = shl i64 %indvars.iv.next, 32
  %i.fu = ashr exact i64 %i.ft, 32
  %i.fv = getelementptr i8, ptr %i.a, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 1      ; 2 uses
  %i.fx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fw) #21 ; 4 uses
  %i.fy = icmp samesign eq i64 %i.fx, 0
  br i1 %i.fy, label %_ZN12OutputStreamlsE10StringView.exit21.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !43 ; 2 uses
  %i.gb = add i64 %i.ga, %i.fx                    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i15.i = icmp ult i64 %i.gb, %i.gd
  %.pre.i.i16.i = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i15.i, label %_ZN12OutputStream4growEm.exit.i.i20.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ge = shl i64 %i.gd, 1
  %spec.store.select.i.i.i17.i = tail call i64 @llvm.umax.i64(i64 %i.ge, i64 %i.gb) ; 2 uses
  store i64 %spec.store.select.i.i.i17.i, ptr %i.gc, align 8, !tbaa !45
  %i.gf = tail call ptr @realloc(ptr noundef %.pre.i.i16.i, i64 noundef %spec.store.select.i.i.i17.i) #24 ; 3 uses
  store ptr %i.gf, ptr %0, align 8, !tbaa !44
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.ar, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i: ; preds = %bb.aq
  %.pre6.i.i19.i = load i64, ptr %i.fz, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i20.i

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i20.i:            ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i, %bb.ap
  %i.gh = phi i64 [ %i.ga, %bb.ap ], [ %.pre6.i.i19.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i ]
  %i.gi = phi ptr [ %.pre.i.i16.i, %bb.ap ], [ %i.gf, %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr nonnull align 1 %i.fw, i64 %i.fx, i1 false)
  %i.gk = load i64, ptr %i.fz, align 8, !tbaa !43
  %i.gl = add i64 %i.gk, %i.fx
  store i64 %i.gl, ptr %i.fz, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit21.i

_ZN12OutputStreamlsE10StringView.exit21.i:        ; preds = %_ZN12OutputStream4growEm.exit.i.i20.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN12OutputStreamlsE10StringView.exit

_ZN12OutputStreamlsE10StringView.exit:            ; preds = %_ZN12OutputStreamlsE10StringView.exit21.i, %_ZN12OutputStream4growEm.exit.i.i.i, %_ZN12OutputStream4growEm.exit.i.i78, %_ZN12OutputStream4growEm.exit.i.i71, %_ZN12OutputStream4growEm.exit.i.i64, %_ZN12OutputStream4growEm.exit.i.i57, %_ZN12OutputStream4growEm.exit.i.i50, %_ZN12OutputStream4growEm.exit.i.i43, %_ZN12OutputStream4growEm.exit.i.i36, %_ZN12OutputStream4growEm.exit.i.i29, %_ZN12OutputStream4growEm.exit.i.i22, %_ZN12OutputStream4growEm.exit.i.i, %_ZN12OutputStreamlsEc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN12OutputStreamlsEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %.not.i.i = icmp ult i64 %i.c, %i.e
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !44  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStreampLEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %i.e, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.c) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.d, align 8, !tbaa !45
  %i.g = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #24 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !44
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.b
  %.pre1.i = load i64, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %.pre2.i = add i64 %.pre1.i, 1
  br label %_ZN12OutputStreampLEc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreampLEc.exit:                       ; preds = %bb.a, %._ZN12OutputStream4growEm.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre2.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.c, %bb.a ]
  %i.i = phi i64 [ %.pre1.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.b, %bb.a ]
  %i.j = phi ptr [ %i.g, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %.pre.i, %bb.a ]
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 %1, ptr %i.k, align 1, !tbaa !15
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr %1, ptr %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = add i64 %i.i, %i.e                       ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 4096) ; 2 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.speculated.i, ptr %i.s, align 8, !tbaa !33
  store ptr %i.o, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.e, ptr %i.t, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit

_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %i.j, %bb.a ] ; 3 uses
  %i.u = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) %1) #19 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.d
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.0.i, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.v, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca [21 x i8], align 16                 ; 4 uses
  %4 = alloca %class.OutputStream, align 8        ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 16                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !33
  store ptr %i.o, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 16, ptr %i.t, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  store i64 0, ptr %i.u, align 8
  store ptr %2, ptr %.sink.i, align 8, !tbaa !106
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 19 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.d

bb.d:                                             ; preds = %bb.ar, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %.020 = phi ptr [ %.sink.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ], [ %.sink.i22, %bb.ar ] ; 2 uses
  %.019 = phi i64 [ 1, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ], [ %i.ah, %bb.ar ] ; 2 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.ae = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %._crit_edge, label %_ZNK10StringView10startsWithES_.exit.i

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %bb.e

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.d
  %rhsc = load i8, ptr %i.ae, align 1
  %.not9.i.i.i.i.i.i = icmp eq i8 %rhsc, 64
  %.pre111 = load ptr, ptr %i.a, align 8, !tbaa !34 ; 4 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.as, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZNK10StringView10startsWithES_.exit.i
  %i.ag = phi ptr [ %.pre, %._crit_edge ], [ %.pre111, %_ZNK10StringView10startsWithES_.exit.i ] ; 3 uses
  %i.ah = add i64 %.019, 1
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !35
  %i.am = add i64 %i.aj, 7
  %i.an = add i64 %i.am, %i.al
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %reass.sub.i21 = sub i64 %i.ao, %i.aj
  %i.ap = add i64 %reass.sub.i21, 16              ; 2 uses
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.as = icmp ult i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = inttoptr i64 %i.ao to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23

bb.g:                                             ; preds = %bb.e
  %i.au = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.av = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 4096, ptr %i.ay, align 8, !tbaa !33
  store ptr %i.au, ptr %i.a, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 16, ptr %i.az, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23: ; preds = %bb.f, %bb.g
  %.sink.i22 = phi ptr [ %i.av, %bb.g ], [ %i.at, %bb.f ] ; 4 uses
  store i64 0, ptr %.sink.i22, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink.i22, i64 8
  store ptr %.020, ptr %i.ba, align 8, !tbaa !107
  %i.bb = load ptr, ptr %1, align 8, !tbaa !40    ; 9 uses
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %.critedge, label %_ZL15startsWithDigit10StringView.exit

.critedge:                                        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23
  store i8 1, ptr %i.w, align 8, !tbaa !28
  br label %.thread

_ZL15startsWithDigit10StringView.exit:            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !15  ; 3 uses
  %i.bf = sext i8 %i.be to i32
  %isdigittmp.i = add nsw i32 %i.bf, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.bg = sext i8 %i.be to i64
  %i.bh = add nsw i64 %i.bg, -48                  ; 2 uses
  %i.bi = load i64, ptr %i.ab, align 8, !tbaa !48
  %.not.i41 = icmp ult i64 %i.bh, %i.bi
  br i1 %.not.i41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.w, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

bb.j:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bj, ptr %1, align 8, !tbaa !55
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bh
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

bb.k:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.bm = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bb to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bo, 2
  br i1 %i.bp, label %_ZNK10StringView10startsWithEc.exit.i.i26, label %_ZNK10StringView10startsWithES_.exit40

_ZNK10StringView10startsWithES_.exit40:           ; preds = %bb.k
  %i.bq = load i16, ptr %i.bb, align 1
  %i.br = icmp ne i16 9279, %i.bq
  %i.bs = zext i1 %i.br to i32
  %.not9.i.i.i.i.i38 = icmp eq i32 %i.bs, 0
  br i1 %.not9.i.i.i.i.i38, label %_ZNK10StringView10startsWithES_.exit40.thread, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit40.thread:    ; preds = %_ZNK10StringView10startsWithES_.exit40
  %i.bt = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !174
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZNK10StringView10startsWithES_.exit40
  %i.bu = load i16, ptr %i.bb, align 1
  %i.bv = icmp ne i16 16703, %i.bu
  %i.bw = zext i1 %i.bv to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN10StringView12consumeFrontES_.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i26

_ZN10StringView12consumeFrontES_.exit.i:          ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store ptr %i.bx, ptr %1, align 8, !tbaa !55
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !31
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !35
  %i.cd = add i64 %i.ca, 7
  %i.ce = add i64 %i.cd, %i.cc
  %i.cf = and i64 %i.ce, -8                       ; 2 uses
  %reass.sub.i.i27 = sub i64 %i.cf, %i.ca
  %i.cg = add i64 %reass.sub.i.i27, 40            ; 2 uses
  store i64 %i.cg, ptr %i.cb, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !33
  %i.cj = icmp ult i64 %i.cg, %i.ci
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.ck = inttoptr i64 %i.cf to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28

bb.m:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.cl = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.cm = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !31
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 4096, ptr %i.cp, align 8, !tbaa !33
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 40, ptr %i.cq, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28: ; preds = %bb.m, %bb.l
  %.sink13.i.i29 = phi ptr [ %i.cm, %bb.m ], [ %i.ck, %bb.l ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 8
  store i32 5, ptr %i.cr, align 8, !tbaa !58
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 16
  store ptr null, ptr %i.cs, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i29, align 8, !tbaa !20
  %i.ct = getelementptr inbounds nuw i8, ptr %.sink13.i.i29, i64 24
  store <2 x ptr> <ptr @.str.60, ptr getelementptr inbounds nuw (i8, ptr @.str.60, i64 21)>, ptr %i.ct, align 8, !tbaa !55
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %i.cv = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 2 uses
  %.not.i30 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i30, label %_ZNK10StringView4findEcm.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28
  %i.cz = call noundef ptr @memchr(ptr noundef %i.cv, i32 noundef 64, i64 noundef %i.cy) #21 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i31, label %_ZNK10StringView4findEcm.exit.thread.i, label %_ZNK10StringView4findEcm.exit.i32

_ZNK10StringView4findEcm.exit.i32:                ; preds = %bb.n
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.cx                    ; 4 uses
  %i.dc = icmp eq i64 %i.db, -1
  br i1 %i.dc, label %_ZNK10StringView4findEcm.exit.thread.i, label %bb.o

_ZNK10StringView4findEcm.exit.thread.i:           ; preds = %_ZNK10StringView4findEcm.exit.i32, %bb.n, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28
  store i8 1, ptr %i.w, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

bb.o:                                             ; preds = %_ZNK10StringView4findEcm.exit.i32
  %i.dd = add i64 %i.cy, -1
  %spec.select.i.i33 = call i64 @llvm.umin.i64(i64 %i.db, i64 %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 %spec.select.i.i33
  call fastcc void @_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %i.cv, ptr %i.de)
  %i.df = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %i.di = load ptr, ptr %i.v, align 8, !tbaa !41
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE:bb.a

bb.p:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i26
  %i.do = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 5 uses
  %i.dp = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dq = sub i64 %i.bm, %i.dp                    ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 2
  br i1 %i.dr, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = call noundef ptr @memchr(ptr noundef nonnull %i.do, i32 noundef 63, i64 noundef %i.dq) #21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %_ZNK10StringView4findEcm.exit.i

_ZNK10StringView4findEcm.exit.i:                  ; preds = %bb.q
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.dp                    ; 2 uses
  %i.dv = icmp eq i64 %i.du, -1
  br i1 %i.dv, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK10StringView4findEcm.exit.i
  %i.dw = add i64 %i.dq, -1
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.du, i64 %i.dw) ; 3 uses
  switch i64 %spec.select.i.i, label %bb.t [
    i64 0, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.dx = load i8, ptr %i.do, align 1, !tbaa !15  ; 2 uses
  %i.dy = icmp eq i8 %i.dx, 64
  %i.dz = add i8 %i.dx, -48
  %spec.select.i = icmp ult i8 %i.dz, 10
  %or.cond = or i1 %i.dy, %spec.select.i
  br i1 %or.cond, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread61, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 %spec.select.i.i
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -1 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.ec, 64
  br i1 %.not.i, label %bb.u, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ed = load i8, ptr %i.do, align 1, !tbaa !15
  %i.ee = add i8 %i.ed, -81
  %or.cond.i = icmp ult i8 %i.ee, -15
  br i1 %or.cond.i, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = icmp eq i64 %spec.select.i.i, 2
  br i1 %i.ef, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread61, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  br label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn4950.i, i64 1 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.eb
  br i1 %i.ei, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread61, label %.lr.ph.i, !llvm.loop !175

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %.pn4950.i = phi ptr [ %i.eh, %bb.w ], [ %i.eg, %.lr.ph.preheader.i ] ; 2 uses
  %i.ej = load i8, ptr %.pn4950.i, align 1, !tbaa !15
  %i.ek = add i8 %i.ej, -65
  %or.cond46.i = icmp ult i8 %i.ek, 16
  br i1 %or.cond46.i, label %bb.w, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

_ZL27startsWithLocalScopePattern10StringView.exit.thread61: ; preds = %bb.w, %bb.v, %bb.s
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !31
  %i.en = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !35
  %i.eq = add i64 %i.en, 7
  %i.er = add i64 %i.eq, %i.ep
  %i.es = and i64 %i.er, -8                       ; 2 uses
  %reass.sub.i.i = sub i64 %i.es, %i.en
  %i.et = add i64 %reass.sub.i.i, 40              ; 2 uses
  store i64 %i.et, ptr %i.eo, align 8, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !33
  %i.ew = icmp ult i64 %i.et, %i.ev
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZL27startsWithLocalScopePattern10StringView.exit.thread61
  %i.ex = inttoptr i64 %i.es to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

bb.y:                                             ; preds = %_ZL27startsWithLocalScopePattern10StringView.exit.thread61
  %i.ey = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !176 ; 5 uses
  %i.ez = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20, !inline_history !176 ; 2 uses
  store ptr %i.ez, ptr %i.ey, align 8, !tbaa !31
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 4096, ptr %i.fc, align 8, !tbaa !33
  store ptr %i.ey, ptr %i.a, align 8, !tbaa !34
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 40, ptr %i.fd, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i: ; preds = %bb.y, %bb.x
  %.sink13.i.i = phi ptr [ %i.ez, %bb.y ], [ %i.ex, %bb.x ] ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 5, ptr %i.fe, align 8, !tbaa !58
  %i.ff = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %i.ff, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false)
  %i.fh = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.fi = load ptr, ptr %i.v, align 8, !tbaa !41  ; 5 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.fk = load i8, ptr %i.fh, align 1, !tbaa !15
  %i.fl = icmp eq i8 %i.fk, 63
  br i1 %i.fl, label %bb.z, label %_ZN10StringView12consumeFrontEc.exit.i

bb.z:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 2 uses
  store ptr %i.fm, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %bb.z, %_ZNK10StringView10startsWithEc.exit.i.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.fn = phi ptr [ %i.fm, %bb.z ], [ %i.fh, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.fh, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i ] ; 5 uses
  %i.fo = icmp eq ptr %i.fn, %i.fi
  br i1 %i.fo, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !15
  %i.fq = icmp eq i8 %i.fp, 63
  br i1 %i.fq, label %bb.aa, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.aa:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 1 ; 2 uses
  store ptr %i.fr, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.aa, %_ZNK10StringView10startsWithEc.exit.i.i.i, %_ZN10StringView12consumeFrontEc.exit.i
  %i.fs = phi ptr [ %i.fr, %bb.aa ], [ %i.fn, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.fn, %_ZN10StringView12consumeFrontEc.exit.i ] ; 7 uses
  %i.ft = icmp eq ptr %i.fs, %i.fi
  br i1 %i.ft, label %.thread43.i.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.fu = load i8, ptr %i.fs, align 1, !tbaa !15  ; 2 uses
  %i.fv = sext i8 %i.fu to i32
  %isdigittmp.i.i.i = add nsw i32 %i.fv, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.ab, label %.lr.ph.preheader.i.i

bb.ab:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.fw = sext i8 %i.fu to i64
  %i.fx = add nsw i64 %i.fw, -47
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 2 uses
  store ptr %i.fy, ptr %1, align 8, !tbaa !55
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.fz = ptrtoint ptr %i.fi to i64
  %i.ga = ptrtoint ptr %i.fs to i64
  %i.gb = sub i64 %i.fz, %i.ga
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.gj, %bb.ad ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.gi, %bb.ad ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.02557.i.i
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !15  ; 2 uses
  %i.ge = icmp eq i8 %i.gd, 64
  br i1 %i.ge, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.gf = add i8 %i.gd, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.gf, 16
  br i1 %or.cond.i.i, label %bb.ad, label %.thread43.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.gg = shl i64 %.03656.i.i, 4
  %i.gh = zext nneg i8 %i.gf to i64
  %i.gi = or disjoint i64 %i.gg, %i.gh
  %i.gj = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gj, %i.gb
  br i1 %exitcond.not.i.i, label %.thread43.i.i, label %.lr.ph.i.i, !llvm.loop !4

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.02557.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1 ; 2 uses
  store ptr %i.gl, ptr %1, align 8, !tbaa !55
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.thread43.i.i:                                    ; preds = %bb.ad, %bb.ac, %_ZN10StringView12consumeFrontEc.exit.i.i
  store i8 1, ptr %i.w, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %.thread43.i.i, %bb.ae, %bb.ab
  %i.gm = phi ptr [ %i.fy, %bb.ab ], [ %i.fs, %.thread43.i.i ], [ %i.gl, %bb.ae ] ; 3 uses
  %.sroa.0.4.i.i = phi i64 [ %i.fx, %bb.ab ], [ 0, %.thread43.i.i ], [ %.03656.i.i, %bb.ae ] ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.fi
  br i1 %i.gn, label %_ZN10StringView12consumeFrontEc.exit15.i, label %_ZNK10StringView10startsWithEc.exit.i14.i

_ZNK10StringView10startsWithEc.exit.i14.i:        ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !15
  %i.gp = icmp eq i8 %i.go, 63
  br i1 %i.gp, label %bb.af, label %_ZN10StringView12consumeFrontEc.exit15.i

bb.af:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i14.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  store ptr %i.gq, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit15.i

_ZN10StringView12consumeFrontEc.exit15.i:         ; preds = %bb.af, %_ZNK10StringView10startsWithEc.exit.i14.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %i.gr = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !176 ; 2 uses
  %i.gs = load i8, ptr %i.w, align 8, !tbaa !28, !range !51, !noundef !52
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 -1, ptr %i.x, align 8, !tbaa !37
  store i32 -1, ptr %i.y, align 4, !tbaa !38
  %i.gu = call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #22, !inline_history !176 ; 3 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.ah, label %_ZN12OutputStreamlsEc.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt9terminatev() #23, !inline_history !176
  unreachable

_ZN12OutputStreamlsEc.exit.i:                     ; preds = %bb.ag
  store ptr %i.gu, ptr %4, align 8, !tbaa !44
  store i64 1024, ptr %i.aa, align 8, !tbaa !45
  store i64 1, ptr %i.z, align 8, !tbaa !43
  store i8 96, ptr %i.gu, align 1, !tbaa !15
  %i.gw = load ptr, ptr %i.gr, align 8, !tbaa !20
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(12) %i.gr, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0) #19, !inline_history !176
  %i.gz = load i64, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.ha = add i64 %i.gz, 1                        ; 3 uses
  %i.hb = load i64, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i16.i = icmp ult i64 %i.ha, %i.hb
  %.pre.i.i17.i = load ptr, ptr %4, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i16.i, label %_ZN12OutputStreamlsEc.exit23.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN12OutputStreamlsEc.exit.i
  %i.hc = shl i64 %i.hb, 1
  %spec.store.select.i.i.i18.i = call i64 @llvm.umax.i64(i64 %i.hc, i64 %i.ha) ; 2 uses
  store i64 %spec.store.select.i.i.i18.i, ptr %i.aa, align 8, !tbaa !45
  %i.hd = call ptr @realloc(ptr noundef %.pre.i.i17.i, i64 noundef %spec.store.select.i.i.i18.i) #24, !inline_history !176 ; 3 uses
  store ptr %i.hd, ptr %4, align 8, !tbaa !44
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.aj, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i: ; preds = %bb.ai
  %.pre1.i.i20.i = load i64, ptr %i.z, align 8, !tbaa !43 ; 2 uses
  %.pre2.i.i21.i = add i64 %.pre1.i.i20.i, 1
  br label %_ZN12OutputStreamlsEc.exit23.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt9terminatev() #23, !inline_history !176
  unreachable

_ZN12OutputStreamlsEc.exit23.i:                   ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i, %_ZN12OutputStreamlsEc.exit.i
  %.pre-phi.i.i22.i = phi i64 [ %.pre2.i.i21.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %i.ha, %_ZN12OutputStreamlsEc.exit.i ]
  %i.hf = phi i64 [ %.pre1.i.i20.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %i.gz, %_ZN12OutputStreamlsEc.exit.i ]
  %i.hg = phi ptr [ %i.hd, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %.pre.i.i17.i, %_ZN12OutputStreamlsEc.exit.i ]
  store i64 %.pre-phi.i.i22.i, ptr %i.z, align 8, !tbaa !43
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hf
  store i8 39, ptr %i.hh, align 1, !tbaa !15
  %i.hi = load i64, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.hj = add i64 %i.hi, 3                        ; 2 uses
  %i.hk = load i64, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i24.i = icmp ult i64 %i.hj, %i.hk
  %.pre.i.i25.i = load ptr, ptr %4, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i24.i, label %_ZN12OutputStream4growEm.exit.i.i.i, label %5

5:                                                ; preds = %_ZN12OutputStreamlsEc.exit23.i
  %6 = shl i64 %i.hk, 1
  %spec.store.select.i.i.i26.i = call i64 @llvm.umax.i64(i64 %6, i64 %i.hj) ; 2 uses
  store i64 %spec.store.select.i.i.i26.i, ptr %i.aa, align 8, !tbaa !45
  %7 = call ptr @realloc(ptr noundef %.pre.i.i25.i, i64 noundef %spec.store.select.i.i.i26.i) #24, !inline_history !176 ; 3 uses
  store ptr %7, ptr %4, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i: ; preds = %5
  %.pre6.i.i.i = load i64, ptr %i.z, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i.i

9:                                                ; preds = %5
  call void @_ZSt9terminatev() #23, !inline_history !176
  unreachable

_ZN12OutputStream4growEm.exit.i.i.i:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i, %_ZN12OutputStreamlsEc.exit23.i
  %10 = phi i64 [ %i.hi, %_ZN12OutputStreamlsEc.exit23.i ], [ %.pre6.i.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i ]
  %11 = phi ptr [ %.pre.i.i25.i, %_ZN12OutputStreamlsEc.exit23.i ], [ %7, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i ]
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %12, ptr noundef nonnull align 1 dereferenceable(3) @.str.61, i64 3, i1 false)
  %13 = load i64, ptr %i.z, align 8, !tbaa !43    ; 2 uses
  %14 = add i64 %13, 3                            ; 5 uses
  store i64 %14, ptr %i.z, align 8, !tbaa !43
  %15 = icmp eq i64 %.sroa.0.4.i.i, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %_ZN12OutputStream4growEm.exit.i.i.i
  %17 = add i64 %13, 4                            ; 3 uses
  %18 = load i64, ptr %i.aa, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i.i48 = icmp ult i64 %17, %18
  %.pre.i.i.i49 = load ptr, ptr %4, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i.i48, label %_ZN12OutputStreamlsEc.exit.i54, label %bb.ak

bb.ak:                                            ; preds = %16
  %i.hl = shl i64 %18, 1
  %spec.store.select.i.i.i26.i.a = call i64 @llvm.umax.i64(i64 %i.hl, i64 %17) ; 2 uses
  store i64 %spec.store.select.i.i.i26.i.a, ptr %i.aa, align 8, !tbaa !45
  %i.hm = call ptr @realloc(ptr noundef %.pre.i.i.i49, i64 noundef %spec.store.select.i.i.i26.i.a) #24 ; 3 uses
  store ptr %i.hm, ptr %4, align 8, !tbaa !44
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.al, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i.a

._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i.a: ; preds = %bb.ak
  %.pre6.i.i.i.a = load i64, ptr %i.z, align 8, !tbaa !43 ; 2 uses
  %.pre2.i.i.i53 = add i64 %.pre6.i.i.i.a, 1
  br label %_ZN12OutputStreamlsEc.exit.i54

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreamlsEc.exit.i54:                   ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i.a, %16
  %.pre-phi.i.i.i55 = phi i64 [ %.pre2.i.i.i53, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i.a ], [ %17, %16 ]
  %19 = phi i64 [ %.pre6.i.i.i.a, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i.a ], [ %14, %16 ]
  %20 = phi ptr [ %i.hm, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i.a ], [ %.pre.i.i.i49, %16 ]
  store i64 %.pre-phi.i.i.i55, ptr %i.z, align 8, !tbaa !43
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 %19
  store i8 48, ptr %21, align 1, !tbaa !15
  %.pre137 = load i64, ptr %i.z, align 8, !tbaa !43
  br label %_ZN12OutputStream13writeUnsignedEmb.exit

22:                                               ; preds = %_ZN12OutputStream4growEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  br label %_ZN12OutputStream4growEm.exit.i.i.i.a

_ZN12OutputStream4growEm.exit.i.i.i.a:            ; preds = %_ZN12OutputStream4growEm.exit.i.i.i.a, %22
  %i.ho = phi i64 [ 21, %22 ], [ %i.hp, %_ZN12OutputStream4growEm.exit.i.i.i.a ] ; 2 uses
  %.0817.i = phi i64 [ %.sroa.0.4.i.i, %22 ], [ %26, %_ZN12OutputStream4growEm.exit.i.i.i.a ] ; 3 uses
  %23 = urem i64 %.0817.i, 10
  %24 = trunc nuw nsw i64 %23 to i8
  %25 = or disjoint i8 %24, 48
  %i.hp = add nsw i64 %i.ho, -1                   ; 4 uses
  %.ptr15.i = getelementptr inbounds i8, ptr %3, i64 %i.hp
  store i8 %25, ptr %.ptr15.i, align 1, !tbaa !15
  %26 = udiv i64 %.0817.i, 10
  %.not.i.i.i28.i.a = icmp ult i64 %.0817.i, 10
  br i1 %.not.i.i.i28.i.a, label %27, label %_ZN12OutputStream4growEm.exit.i.i.i.a, !llvm.loop !177

27:                                               ; preds = %_ZN12OutputStream4growEm.exit.i.i.i.a
  %.ptr15.i.le = getelementptr inbounds i8, ptr %3, i64 %i.hp
  %gepdiff.i = sub nsw i64 22, %i.ho              ; 3 uses
  %28 = icmp eq i64 %i.hp, 21
  br i1 %28, label %_ZN12OutputStreamlsE10StringView.exit.i47, label %29

29:                                               ; preds = %27
  %30 = add i64 %gepdiff.i, %14                   ; 2 uses
  %31 = load i64, ptr %i.aa, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i10.i = icmp ult i64 %30, %31
  %.pre.i.i11.i = load ptr, ptr %4, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i10.i, label %_ZN12OutputStream4growEm.exit.i.i.i46, label %32

32:                                               ; preds = %29
  %33 = shl i64 %31, 1
  %spec.store.select.i.i.i12.i = call i64 @llvm.umax.i64(i64 %33, i64 %30) ; 2 uses
  store i64 %spec.store.select.i.i.i12.i, ptr %i.aa, align 8, !tbaa !45
  %34 = call ptr @realloc(ptr noundef %.pre.i.i11.i, i64 noundef %spec.store.select.i.i.i12.i) #24 ; 3 uses
  store ptr %34, ptr %4, align 8, !tbaa !44
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i13.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i13.i: ; preds = %32
  %.pre6.i.i.i45 = load i64, ptr %i.z, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i.i46

36:                                               ; preds = %32
  call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i.i46:            ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i13.i, %29
  %37 = phi i64 [ %14, %29 ], [ %.pre6.i.i.i45, %._ZN12OutputStream4growEm.exit_crit_edge.i.i13.i ]
  %38 = phi ptr [ %.pre.i.i11.i, %29 ], [ %34, %._ZN12OutputStream4growEm.exit_crit_edge.i.i13.i ]
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 %37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr nonnull align 1 %.ptr15.i.le, i64 %gepdiff.i, i1 false)
  %40 = load i64, ptr %i.z, align 8, !tbaa !43
  %41 = add i64 %40, %gepdiff.i                   ; 2 uses
  store i64 %41, ptr %i.z, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit.i47

_ZN12OutputStreamlsE10StringView.exit.i47:        ; preds = %_ZN12OutputStream4growEm.exit.i.i.i46, %27
  %42 = phi i64 [ %41, %_ZN12OutputStream4growEm.exit.i.i.i46 ], [ %14, %27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN12OutputStream13writeUnsignedEmb.exit

_ZN12OutputStream13writeUnsignedEmb.exit:         ; preds = %_ZN12OutputStreamlsE10StringView.exit.i47, %_ZN12OutputStreamlsEc.exit.i54
  %43 = phi i64 [ %42, %_ZN12OutputStreamlsE10StringView.exit.i47 ], [ %.pre137, %_ZN12OutputStreamlsEc.exit.i54 ] ; 2 uses
  %44 = add i64 %43, 1                            ; 2 uses
  %45 = load i64, ptr %i.aa, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i28.i = icmp ult i64 %44, %45
  %.pre.i.i29.i = load ptr, ptr %4, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i28.i, label %_ZN12OutputStream4growEm.exit.i.i33.i, label %bb.am

bb.am:                                            ; preds = %_ZN12OutputStream13writeUnsignedEmb.exit
  %i.hq = shl i64 %45, 1
  %spec.store.select.i.i.i30.i = call i64 @llvm.umax.i64(i64 %i.hq, i64 %44) ; 2 uses
  store i64 %spec.store.select.i.i.i30.i, ptr %i.aa, align 8, !tbaa !45
  %i.hr = call ptr @realloc(ptr noundef %.pre.i.i29.i, i64 noundef %spec.store.select.i.i.i30.i) #24, !inline_history !176 ; 3 uses
  store ptr %i.hr, ptr %4, align 8, !tbaa !44
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.an, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i: ; preds = %bb.am
  %.pre6.i.i32.i = load i64, ptr %i.z, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i33.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt9terminatev() #23, !inline_history !176
  unreachable

_ZN12OutputStream4growEm.exit.i.i33.i:            ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i, %_ZN12OutputStream13writeUnsignedEmb.exit
  %i.ht = phi i64 [ %43, %_ZN12OutputStream13writeUnsignedEmb.exit ], [ %.pre6.i.i32.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i ]
  %i.hu = phi ptr [ %.pre.i.i29.i, %_ZN12OutputStream13writeUnsignedEmb.exit ], [ %i.hr, %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ht
  store i8 39, ptr %i.hv, align 1
  %i.hw = load i64, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.hx = add i64 %i.hw, 1                        ; 2 uses
  store i64 %i.hx, ptr %i.z, align 8, !tbaa !43
  %i.hy = add i64 %i.hw, 2                        ; 3 uses
  %i.hz = load i64, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i35.i = icmp ult i64 %i.hy, %i.hz
  %.pre.i.i36.i = load ptr, ptr %4, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i35.i, label %_ZN12OutputStreamlsEc.exit42.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN12OutputStream4growEm.exit.i.i33.i
  %i.ia = shl i64 %i.hz, 1
  %spec.store.select.i.i.i37.i = call i64 @llvm.umax.i64(i64 %i.ia, i64 %i.hy) ; 2 uses
  store i64 %spec.store.select.i.i.i37.i, ptr %i.aa, align 8, !tbaa !45
  %i.ib = call ptr @realloc(ptr noundef %.pre.i.i36.i, i64 noundef %spec.store.select.i.i.i37.i) #24, !inline_history !176 ; 3 uses
  store ptr %i.ib, ptr %4, align 8, !tbaa !44
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.ap, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i: ; preds = %bb.ao
  %.pre1.i.i39.i = load i64, ptr %i.z, align 8, !tbaa !43 ; 2 uses
  %.pre2.i.i40.i = add i64 %.pre1.i.i39.i, 1
  br label %_ZN12OutputStreamlsEc.exit42.i

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt9terminatev() #23, !inline_history !176
  unreachable

_ZN12OutputStreamlsEc.exit42.i:                   ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i, %_ZN12OutputStream4growEm.exit.i.i33.i
  %.pre-phi.i.i41.i = phi i64 [ %.pre2.i.i40.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %i.hy, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  %i.id = phi i64 [ %.pre1.i.i39.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %i.hx, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  %i.ie = phi ptr [ %i.ib, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %.pre.i.i36.i, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  store i64 %.pre-phi.i.i41.i, ptr %i.z, align 8, !tbaa !43
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.id
  store i8 0, ptr %i.if, align 1, !tbaa !15
  %i.ig = load ptr, ptr %4, align 8, !tbaa !44    ; 3 uses
  %i.ih = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ig) #21, !inline_history !176 ; 2 uses
  %i.ii = add i64 %i.ih, 1                        ; 3 uses
  %i.ij = load ptr, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !31
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !35 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.im
  %i.io = add i64 %i.im, %i.ii                    ; 2 uses
  store i64 %i.io, ptr %i.il, align 8, !tbaa !35
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !33
  %i.ir = icmp ugt i64 %i.io, %i.iq
  br i1 %i.ir, label %bb.aq, label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i

bb.aq:                                            ; preds = %_ZN12OutputStreamlsEc.exit42.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ii, i64 4096) ; 2 uses
  %i.is = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !176 ; 5 uses
  %i.it = call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i.i.i) #20, !inline_history !176 ; 2 uses
  store ptr %i.it, ptr %i.is, align 8, !tbaa !31
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store i64 %.sroa.speculated.i.i.i, ptr %i.iw, align 8, !tbaa !33
  store ptr %i.is, ptr %i.a, align 8, !tbaa !34
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i64 %i.ii, ptr %i.ix, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i: ; preds = %bb.aq, %_ZN12OutputStreamlsEc.exit42.i
  %.0.i.i.i = phi ptr [ %i.it, %bb.aq ], [ %i.in, %_ZN12OutputStreamlsEc.exit42.i ] ; 3 uses
  %i.iy = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i.i.i, ptr noundef nonnull dereferenceable(1) %i.ig) #19, !inline_history !176 ; 0 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ih
  store ptr %.0.i.i.i, ptr %i.fg, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 32
  store ptr %i.iz, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !55
  call void @free(ptr noundef nonnull %i.ig) #19, !inline_history !176
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZL27startsWithLocalScopePattern10StringView.exit.thread: ; preds = %.lr.ph.i, %bb.s, %bb.u, %bb.t, %bb.q, %bb.r, %_ZNK10StringView4findEcm.exit.i, %bb.p, %_ZNK10StringView10startsWithEc.exit.i.i26
  %i.ja = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit15.i, %bb.o, %_ZNK10StringView4findEcm.exit.thread.i, %bb.j, %bb.i, %_ZNK10StringView10startsWithES_.exit40.thread, %_ZL27startsWithLocalScopePattern10StringView.exit.thread
  %.0.i = phi ptr [ %i.ja, %_ZL27startsWithLocalScopePattern10StringView.exit.thread ], [ %i.bt, %_ZNK10StringView10startsWithES_.exit40.thread ], [ %i.bl, %bb.j ], [ %.sink13.i.i29, %bb.o ], [ null, %bb.i ], [ null, %_ZNK10StringView4findEcm.exit.thread.i ], [ %.sink13.i.i, %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i ], [ null, %_ZN10StringView12consumeFrontEc.exit15.i ]
  %i.jb = load i8, ptr %i.w, align 8, !tbaa !28, !range !51, !noundef !52
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit
  store ptr %.0.i, ptr %.sink.i22, align 8, !tbaa !106
  br label %bb.d

bb.as:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.jd, ptr %1, align 8, !tbaa !55
  %i.je = load ptr, ptr %.pre111, align 8, !tbaa !31
  %i.jf = ptrtoint ptr %i.je to i64               ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.pre111, i64 8 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !35
  %i.ji = add i64 %i.jf, 7
  %i.jj = add i64 %i.ji, %i.jh
  %i.jk = and i64 %i.jj, -8                       ; 2 uses
  %reass.sub.i24 = sub i64 %i.jk, %i.jf
  %i.jl = add i64 %reass.sub.i24, 24              ; 2 uses
  store i64 %i.jl, ptr %i.jg, align 8, !tbaa !35
  %i.jm = getelementptr inbounds nuw i8, ptr %.pre111, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !33
  %i.jo = icmp ult i64 %i.jl, %i.jn
  br i1 %i.jo, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jp = inttoptr i64 %i.jk to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit

bb.au:                                            ; preds = %bb.as
  %i.jq = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.jr = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.jr, ptr %i.jq, align 8, !tbaa !31
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store i64 4096, ptr %i.ju, align 8, !tbaa !33
  store ptr %i.jq, ptr %i.a, align 8, !tbaa !34
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i64 24, ptr %i.jv, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.at, %bb.au
  %.sink11.i = phi ptr [ %i.jr, %bb.au ], [ %i.jp, %bb.at ] ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 8
  store i32 20, ptr %i.jw, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle17QualifiedNameNodeE, i64 16), ptr %.sink11.i, align 8, !tbaa !20
  %i.jx = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 16 ; 2 uses
  store ptr null, ptr %i.jx, align 8, !tbaa !68
  %i.jy = call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.020, i64 noundef %.019)
  store ptr %i.jy, ptr %i.jx, align 8, !tbaa !68
  br label %.thread

.thread:                                          ; preds = %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit, %.critedge, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit
  %.3 = phi ptr [ null, %.critedge ], [ %.sink11.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !55 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !55 ; 2 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  br i1 %i.a, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit

_ZL15startsWithDigit10StringView.exit:            ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !15 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigit10StringView.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.d = sext i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 1
  store ptr %i.i, ptr %1, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.a, %_ZL15startsWithDigit10StringView.exit
  %i.m = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.n = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %_ZNK10StringView10startsWithES_.exit.thread9, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZL15startsWithDigit10StringView.exit.thread
  %i.q = load i16, ptr %.sroa.0.0.copyload.i, align 1
  %i.r = icmp ne i16 9279, %i.q
  %i.s = zext i1 %i.r to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.thread9

_ZNK10StringView10startsWithES_.exit.thread:      ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.t = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !178
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZNK10StringView10startsWithES_.exit.thread9:     ; preds = %_ZL15startsWithDigit10StringView.exit.thread, %_ZNK10StringView10startsWithES_.exit
  %i.u = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit: ; preds = %bb.d, %bb.c, %_ZNK10StringView10startsWithES_.exit.thread, %_ZNK10StringView10startsWithES_.exit.thread9
  %.0.i = phi ptr [ %i.u, %_ZNK10StringView10startsWithES_.exit.thread9 ], [ %i.t, %_ZNK10StringView10startsWithES_.exit.thread ], [ null, %bb.c ], [ %i.l, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !28, !range !51, !noundef !52
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %i.y = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.0.i)
  %i.z = load i8, ptr %i.v, align 8, !tbaa !28, !range !51, !noundef !52
  %i.aa = trunc nuw i8 %i.z to i1
  %. = select i1 %i.aa, ptr null, ptr %i.y
  br label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit, %bb.e
  %.1 = phi ptr [ %., %bb.e ], [ null, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = add i64 %i.c, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub.i, 32                 ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !31
  %i.p = load ptr, ptr %0, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !33
  store ptr %i.n, ptr %0, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 32, ptr %i.s, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink11.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 8
  store i32 19, ptr %i.t, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle13NodeArrayNodeE, i64 16), ptr %.sink11.i, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 16 ; 2 uses
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 24
  store i64 %2, ptr %i.v, align 8, !tbaa !73
  %i.w = shl i64 %2, 3                            ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !35
  %i.ac = add i64 %i.z, 7
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %i.af = sub i64 %i.w, %i.z
  %i.ag = add i64 %i.ae, %i.af                    ; 2 uses
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !33
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.ak = inttoptr i64 %i.ae to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.al = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.am = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !31
  %i.an = load ptr, ptr %0, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 4096, ptr %i.ap, align 8, !tbaa !33
  store ptr %i.al, ptr %0, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.w, ptr %i.aq, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit: ; preds = %bb.d, %bb.e
  %.sink.i = phi ptr [ %i.am, %bb.e ], [ %i.ak, %bb.d ] ; 7 uses
  %i.ar = icmp ugt i64 %2, 2305843009213693951
  %i.as = select i1 %i.ar, i64 -1, i64 %i.w
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %i.as, i1 false)
  store ptr %.sink.i, ptr %i.u, align 8, !tbaa !72
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.at = icmp ult i64 %2, 4
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.015.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bs, %._crit_edge.loopexit.unr-lcssa ]
  %.01314.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.br, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.015.epil = phi i64 [ %i.ay, %.lr.ph.epil ], [ %.015.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.01314.epil = phi ptr [ %i.ax, %.lr.ph.epil ], [ %.01314.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.au = load ptr, ptr %.01314.epil, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015.epil
  store ptr %i.au, ptr %i.av, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %.01314.epil, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !107
  %i.ay = add nuw i64 %.015.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !179

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit
  ret ptr %.sink11.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.015 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bs, %.lr.ph ] ; 5 uses
  %.01314 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.br, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.az = load ptr, ptr %.01314, align 8, !tbaa !106
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %.01314, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !107 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !106
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !107 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !75
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !107 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !106
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !75
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !107 ; 2 uses
  %i.bs = add nuw i64 %.015, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !180
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i8 noundef zeroext range(i8 1, 3) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %.sroa.0 = alloca [10 x ptr], align 8           ; 6 uses
  %.sroa.7 = alloca [10 x ptr], align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %_ZN10StringView12consumeFrontES_.exit, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.a
  %i.k = load i16, ptr %i.f, align 1
  %i.l = icmp ne i16 9279, %i.k
  %i.m = zext i1 %i.l to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread.i, label %_ZN10StringView12consumeFrontES_.exit

_ZNK10StringView10startsWithES_.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.n, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontES_.exit

_ZN10StringView12consumeFrontES_.exit:            ; preds = %bb.a, %_ZNK10StringView10startsWithES_.exit.i, %_ZNK10StringView10startsWithES_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false), !tbaa.struct !184
  %.sroa.6.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %.sroa.6.0.copyload87 = load i64, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !53 ; 3 uses
  %.sroa.7.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, i64 80, i1 false), !tbaa.struct !185
  %.sroa.795.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %.sroa.795.0.copyload97 = load i64, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !53 ; 3 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !53
  store i64 0, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !53
  %i.p = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !28, !range !51, !noundef !52
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.bk
  %.081.i.ph = phi i64 [ %i.be, %bb.bk ], [ 0, %bb.b ] ; 2 uses
  %.079.i.ph = phi ptr [ %i.pj, %bb.bk ], [ %i.a, %bb.b ]
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %.promoted = load ptr, ptr %1, align 8, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit84, %.lr.ph
  %i.w = phi ptr [ %.promoted, %.lr.ph ], [ %i.bd, %_ZN10StringView12consumeFrontES_.exit84 ] ; 11 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %_ZNK10StringView10startsWithEc.exit85.thread, label %_ZNK10StringView10startsWithEc.exit85

_ZNK10StringView10startsWithEc.exit85:            ; preds = %bb.c
  %i.y = load i8, ptr %i.w, align 1, !tbaa !15
  %i.z = icmp eq i8 %i.y, 64
  br i1 %i.z, label %_ZNK10StringView10startsWithEc.exit.i, label %_ZNK10StringView10startsWithEc.exit85.thread

_ZNK10StringView10startsWithEc.exit85.thread:     ; preds = %bb.c, %_ZNK10StringView10startsWithEc.exit85
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.v, %i.aa                     ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 2
  br i1 %i.ac, label %.thread, label %_ZNK10StringView10startsWithES_.exit.i79

_ZNK10StringView10startsWithES_.exit.i79:         ; preds = %_ZNK10StringView10startsWithEc.exit85.thread
  %i.ad = load i16, ptr %i.w, align 1
  %i.ae = icmp ne i16 21284, %i.ad
  %i.af = zext i1 %i.ae to i32
  %.not9.i.i.i.i.i.i81 = icmp eq i32 %i.af, 0
  br i1 %.not9.i.i.i.i.i.i81, label %_ZN10StringView12consumeFrontES_.exit84, label %bb.d

bb.d:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i79
  %i.ag = icmp eq i64 %i.ab, 2
  br i1 %i.ag, label %.thread, label %_ZNK10StringView10startsWithES_.exit.i72

_ZNK10StringView10startsWithES_.exit.i72:         ; preds = %bb.d
  %i.ah = load i16, ptr %i.w, align 1
  %i.ai = xor i16 9252, %i.ah
  %i.aj = getelementptr i8, ptr %i.w, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i16
  %i.am = xor i16 86, %i.al
  %i.an = or i16 %i.ai, %i.am
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not9.i.i.i.i.i.i74 = icmp eq i32 %i.ap, 0
  br i1 %.not9.i.i.i.i.i.i74, label %_ZN10StringView12consumeFrontES_.exit84, label %bb.e

bb.e:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i72
  %i.aq = icmp ult i64 %i.ab, 4
  br i1 %i.aq, label %_ZNK10StringView10startsWithES_.exit.i58, label %_ZNK10StringView10startsWithES_.exit.i65

_ZNK10StringView10startsWithES_.exit.i65:         ; preds = %bb.e
  %i.ar = load i32, ptr %i.w, align 1
  %i.as = icmp ne i32 1445209124, %i.ar
  %i.at = zext i1 %i.as to i32
  %.not9.i.i.i.i.i.i67 = icmp eq i32 %i.at, 0
  br i1 %.not9.i.i.i.i.i.i67, label %_ZN10StringView12consumeFrontES_.exit84, label %_ZNK10StringView10startsWithES_.exit.i58

_ZNK10StringView10startsWithES_.exit.i58:         ; preds = %_ZNK10StringView10startsWithES_.exit.i65, %bb.e
  %i.au = load i16, ptr %i.w, align 1
  %i.av = xor i16 9252, %i.au
  %i.aw = getelementptr i8, ptr %i.w, i64 2
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i16
  %i.az = xor i16 90, %i.ay
  %i.ba = or i16 %i.av, %i.az
  %i.bb = icmp ne i16 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.not9.i.i.i.i.i.i60 = icmp eq i32 %i.bc, 0
  br i1 %.not9.i.i.i.i.i.i60, label %_ZN10StringView12consumeFrontES_.exit84, label %.thread

_ZN10StringView12consumeFrontES_.exit84:          ; preds = %_ZNK10StringView10startsWithES_.exit.i58, %_ZNK10StringView10startsWithES_.exit.i65, %_ZNK10StringView10startsWithES_.exit.i72, %_ZNK10StringView10startsWithES_.exit.i79
  %.sink207 = phi i64 [ 4, %_ZNK10StringView10startsWithES_.exit.i65 ], [ 3, %_ZNK10StringView10startsWithES_.exit.i72 ], [ 2, %_ZNK10StringView10startsWithES_.exit.i79 ], [ 3, %_ZNK10StringView10startsWithES_.exit.i58 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink207 ; 2 uses
  store ptr %i.bd, ptr %1, align 8, !tbaa !55
  br label %bb.c

.thread:                                          ; preds = %_ZNK10StringView10startsWithEc.exit85.thread, %bb.d, %_ZNK10StringView10startsWithES_.exit.i58
  %i.be = add i64 %.081.i.ph, 1
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !34  ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !35
  %i.bk = add i64 %i.bh, 7
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = and i64 %i.bl, -8                       ; 2 uses
  %reass.sub.i56 = sub i64 %i.bm, %i.bh
  %i.bn = add i64 %reass.sub.i56, 16              ; 2 uses
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33
  %i.bq = icmp ult i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.br = inttoptr i64 %i.bm to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.g:                                             ; preds = %.thread
  %i.bs = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.bt = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !31
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 4096, ptr %i.bw, align 8, !tbaa !33
  store ptr %i.bs, ptr %i.t, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 16, ptr %i.bx, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi ptr [ %i.bt, %bb.g ], [ %i.br, %bb.f ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i8 0, i64 16, i1 false)
  store ptr %.sink.i, ptr %.079.i.ph, align 8, !tbaa !116
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !41  ; 3 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !40    ; 23 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 3                   ; 2 uses
  br i1 %i.cd, label %bb.k, label %_ZNK10StringView10startsWithES_.exit.i50

_ZNK10StringView10startsWithES_.exit.i50:         ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %i.ce = load i16, ptr %i.bz, align 1
  %i.cf = xor i16 9252, %i.ce
  %i.cg = getelementptr i8, ptr %i.bz, i64 2
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i16
  %i.cj = xor i16 89, %i.ci
  %i.ck = or i16 %i.cf, %i.cj
  %i.cl = icmp ne i16 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %.not9.i.i.i.i.i.i52 = icmp eq i32 %i.cm, 0
  br i1 %.not9.i.i.i.i.i.i52, label %bb.h, label %_ZNK10StringView10startsWithES_.exit.i43

bb.h:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  store ptr %i.cn, ptr %1, align 8, !tbaa !55
  %i.co = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !182
  store ptr %i.co, ptr %.sink.i, align 8, !tbaa !106
  br label %bb.bk

_ZNK10StringView10startsWithES_.exit.i43:         ; preds = %_ZNK10StringView10startsWithES_.exit.i50
  %i.cp = load i16, ptr %i.bz, align 1
  %i.cq = xor i16 9252, %i.cp
  %i.cr = getelementptr i8, ptr %i.bz, i64 2
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i16
  %i.cu = xor i16 66, %i.ct
  %i.cv = or i16 %i.cq, %i.cu
  %i.cw = icmp ne i16 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %.not9.i.i.i.i.i.i45 = icmp eq i32 %i.cx, 0
  br i1 %.not9.i.i.i.i.i.i45, label %bb.i, label %_ZNK10StringView10startsWithES_.exit.i36

bb.i:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i43
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  store ptr %i.cy, ptr %1, align 8, !tbaa !55
  %i.cz = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !182
  store ptr %i.cz, ptr %.sink.i, align 8, !tbaa !106
  br label %bb.bk

_ZNK10StringView10startsWithES_.exit.i36:         ; preds = %_ZNK10StringView10startsWithES_.exit.i43
  %i.da = load i16, ptr %i.bz, align 1
  %i.db = xor i16 9252, %i.da
  %i.dc = getelementptr i8, ptr %i.bz, i64 2
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = zext i8 %i.dd to i16
  %i.df = xor i16 67, %i.de
  %i.dg = or i16 %i.db, %i.df
  %i.dh = icmp ne i16 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %.not9.i.i.i.i.i.i38 = icmp eq i32 %i.di, 0
  br i1 %.not9.i.i.i.i.i.i38, label %bb.j, label %_ZNK10StringView10startsWithES_.exit34

bb.j:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i36
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  store ptr %i.dj, ptr %1, align 8, !tbaa !55
  %i.dk = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1), !inline_history !182
  store ptr %i.dk, ptr %.sink.i, align 8, !tbaa !106
  br label %bb.bk

bb.k:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %.not208 = icmp eq i64 %i.cc, 2
  br i1 %.not208, label %_ZNK10StringView10startsWithES_.exit34, label %.thread311

_ZNK10StringView10startsWithES_.exit34:           ; preds = %_ZNK10StringView10startsWithES_.exit.i36, %bb.k
  %i.dl = load i16, ptr %i.bz, align 1
  %i.dm = icmp ne i16 12580, %i.dl
  %i.dn = zext i1 %i.dm to i32
  %.not9.i.i.i.i.i32 = icmp eq i32 %i.dn, 0
  br i1 %.not9.i.i.i.i.i32, label %_ZNK10StringView10startsWithES_.exit34.thread, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZNK10StringView10startsWithES_.exit34
  %i.do = load i16, ptr %i.bz, align 1
  %i.dp = icmp ne i16 18468, %i.do
  %i.dq = zext i1 %i.dp to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit34.thread, label %_ZNK10StringView10startsWithES_.exit211

_ZNK10StringView10startsWithES_.exit211:          ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.dr = load i16, ptr %i.bz, align 1
  %i.ds = icmp ne i16 18724, %i.dr
  %i.dt = zext i1 %i.ds to i32
  %.not9.i.i.i.i.i210 = icmp eq i32 %i.dt, 0
  br i1 %.not9.i.i.i.i.i210, label %_ZNK10StringView10startsWithES_.exit34.thread, label %_ZNK10StringView10startsWithES_.exit215

_ZNK10StringView10startsWithES_.exit215:          ; preds = %_ZNK10StringView10startsWithES_.exit211
  %i.du = load i16, ptr %i.bz, align 1
  %i.dv = icmp ne i16 18980, %i.du
  %i.dw = zext i1 %i.dv to i32
  %.not9.i.i.i.i.i213 = icmp eq i32 %i.dw, 0
  br i1 %.not9.i.i.i.i.i213, label %_ZNK10StringView10startsWithES_.exit34.thread, label %bb.al

_ZNK10StringView10startsWithES_.exit34.thread:    ; preds = %_ZNK10StringView10startsWithES_.exit215, %_ZNK10StringView10startsWithES_.exit211, %_ZNK10StringView10startsWithES_.exit, %_ZNK10StringView10startsWithES_.exit34
  %i.dx = load ptr, ptr %i.t, align 8, !tbaa !34  ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !31
  %i.dz = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ec = add i64 %i.dz, 7
  %i.ed = add i64 %i.ec, %i.eb
  %i.ee = and i64 %i.ed, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.ee, %i.dz
  %i.ef = add i64 %reass.sub.i, 64                ; 2 uses
  store i64 %i.ef, ptr %i.ea, align 8, !tbaa !35
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !33
  %i.ei = icmp ult i64 %i.ef, %i.eh
  br i1 %i.ei, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK10StringView10startsWithES_.exit34.thread
  %i.ej = inttoptr i64 %i.ee to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit

bb.m:                                             ; preds = %_ZNK10StringView10startsWithES_.exit34.thread
  %i.ek = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.el = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.el, ptr %i.ek, align 8, !tbaa !31
  %i.em = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store ptr %i.em, ptr %i.en, align 8, !tbaa !32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 4096, ptr %i.eo, align 8, !tbaa !33
  store ptr %i.ek, ptr %i.t, align 8, !tbaa !34
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 64, ptr %i.ep, align 8, !tbaa !35
  %.pre345 = load ptr, ptr %i.d, align 8, !tbaa !41
  %.pre346 = load ptr, ptr %1, align 8, !tbaa !40
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.l, %bb.m
  %i.eq = phi ptr [ %.pre346, %bb.m ], [ %i.bz, %bb.l ] ; 2 uses
  %i.er = phi ptr [ %.pre345, %bb.m ], [ %i.by, %bb.l ] ; 2 uses
  %.sink14.i = phi ptr [ %i.el, %bb.m ], [ %i.ej, %bb.l ] ; 10 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 21, ptr %i.es, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30TemplateParameterReferenceNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16 ; 2 uses
  store ptr null, ptr %i.et, align 8, !tbaa !189
  %i.eu = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24 ; 7 uses
  store i32 0, ptr %i.eu, align 8, !tbaa !190
  %i.ev = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 56 ; 2 uses
  store i32 0, ptr %i.ev, align 8, !tbaa !191
  %i.ew = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 60
  store ptr %.sink14.i, ptr %.sink.i, align 8, !tbaa !106
  store i8 1, ptr %i.ew, align 4, !tbaa !192
  %i.ex = icmp ne ptr %i.er, %i.eq
  %spec.select.i27 = zext i1 %i.ex to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 %spec.select.i27 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 3 uses
  store ptr %i.ez, ptr %1, align 8, !tbaa !40
  %i.fa = load i8, ptr %i.ey, align 1, !tbaa !15
  %i.fb = icmp eq ptr %i.ez, %i.er
  br i1 %i.fb, label %_ZNK10StringView10startsWithEc.exit.thread, label %_ZNK10StringView10startsWithEc.exit

_ZNK10StringView10startsWithEc.exit:              ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit
  %i.fc = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fd = icmp eq i8 %i.fc, 63
  br i1 %i.fd, label %bb.n, label %_ZNK10StringView10startsWithEc.exit.thread

bb.n:                                             ; preds = %_ZNK10StringView10startsWithEc.exit
  %i.fe = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !182 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !61
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !68 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !72
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !73
  %i.fn = getelementptr [8 x i8], ptr %i.fk, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !75
  call fastcc void @_ZN12_GLOBAL__N_19Demangler18memorizeIdentifierEPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.fp), !inline_history !182
  br label %_ZNK10StringView10startsWithEc.exit.thread

_ZNK10StringView10startsWithEc.exit.thread:       ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit, %bb.n, %_ZNK10StringView10startsWithEc.exit
  %.082.i = phi ptr [ %i.fe, %bb.n ], [ null, %_ZNK10StringView10startsWithEc.exit ], [ null, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit ]
  switch i8 %i.fa, label %bb.aj [
    i8 74, label %bb.o
    i8 73, label %_ZNK10StringView10startsWithEc.exit.thread._crit_edge347
    i8 72, label %_ZNK10StringView10startsWithEc.exit.thread._crit_edge
    i8 49, label %bb.ak
  ]

_ZNK10StringView10startsWithEc.exit.thread._crit_edge347: ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  %.pre348 = load ptr, ptr %1, align 8, !tbaa !40
  %.pre349 = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %bb.v

_ZNK10StringView10startsWithEc.exit.thread._crit_edge: ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !41
  %.pre350 = load ptr, ptr %1, align 8, !tbaa !40
  br label %bb.ac

bb.o:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  %i.fq = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZN10StringView12consumeFrontEc.exit.i.i217, label %_ZNK10StringView10startsWithEc.exit.i.i.i216

_ZNK10StringView10startsWithEc.exit.i.i.i216:     ; preds = %bb.o
  %i.ft = load i8, ptr %i.fq, align 1, !tbaa !15
  %i.fu = icmp eq i8 %i.ft, 63
  br i1 %i.fu, label %bb.p, label %_ZN10StringView12consumeFrontEc.exit.i.i217

bb.p:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i216
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 2 uses
  store ptr %i.fv, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i217

_ZN10StringView12consumeFrontEc.exit.i.i217:      ; preds = %bb.p, %_ZNK10StringView10startsWithEc.exit.i.i.i216, %bb.o
  %i.fw = phi ptr [ %i.fv, %bb.p ], [ %i.fq, %_ZNK10StringView10startsWithEc.exit.i.i.i216 ], [ %i.fq, %bb.o ] ; 7 uses
  %i.fx = phi i1 [ true, %bb.p ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i216 ], [ false, %bb.o ] ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fr
  br i1 %i.fy, label %.thread.i226, label %_ZL15startsWithDigit10StringView.exit.i.i218

_ZL15startsWithDigit10StringView.exit.i.i218:     ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i217
  %i.fz = load i8, ptr %i.fw, align 1, !tbaa !15  ; 2 uses
  %i.ga = sext i8 %i.fz to i32
  %isdigittmp.i.i.i219 = add nsw i32 %i.ga, -48
  %isdigit.i.i.i220 = icmp ult i32 %isdigittmp.i.i.i219, 10
  br i1 %isdigit.i.i.i220, label %bb.q, label %.lr.ph.preheader.i.i221

bb.q:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i218
  %i.gb = sext i8 %i.fz to i64
  %i.gc = add nsw i64 %i.gb, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228

.lr.ph.preheader.i.i221:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i218
  %i.gd = ptrtoint ptr %i.fr to i64
  %i.ge = ptrtoint ptr %i.fw to i64
  %i.gf = sub i64 %i.gd, %i.ge
  br label %.lr.ph.i.i222

.lr.ph.i.i222:                                    ; preds = %bb.s, %.lr.ph.preheader.i.i221
  %.02557.i.i223 = phi i64 [ %i.gn, %bb.s ], [ 0, %.lr.ph.preheader.i.i221 ] ; 3 uses
  %.03656.i.i224 = phi i64 [ %i.gm, %bb.s ], [ 0, %.lr.ph.preheader.i.i221 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.02557.i.i223
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !15  ; 2 uses
  %i.gi = icmp eq i8 %i.gh, 64
  br i1 %i.gi, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i222
  %i.gj = add i8 %i.gh, -65                       ; 2 uses
  %or.cond.i.i225 = icmp ult i8 %i.gj, 16
  br i1 %or.cond.i.i225, label %bb.s, label %.thread.i226

bb.s:                                             ; preds = %bb.r
  %i.gk = shl i64 %.03656.i.i224, 4
  %i.gl = zext nneg i8 %i.gj to i64
  %i.gm = or disjoint i64 %i.gk, %i.gl
  %i.gn = add nuw i64 %.02557.i.i223, 1           ; 2 uses
  %exitcond.not.i.i227 = icmp eq i64 %i.gn, %i.gf
  br i1 %exitcond.not.i.i227, label %.thread.i226, label %.lr.ph.i.i222, !llvm.loop !4

.thread.i226:                                     ; preds = %bb.s, %bb.r, %_ZN10StringView12consumeFrontEc.exit.i.i217
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit: ; preds = %.lr.ph.i.i222
  %i.go = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.02557.i.i223
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit, %bb.q
  %.pn.i229 = phi ptr [ %i.fw, %bb.q ], [ %i.go, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit ]
  %.sroa.0.4.i.i230 = phi i64 [ %i.gc, %bb.q ], [ %.03656.i.i224, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228.loopexit ] ; 4 uses
  %storemerge.i231 = getelementptr inbounds nuw i8, ptr %.pn.i229, i64 1 ; 4 uses
  store ptr %storemerge.i231, ptr %1, align 8, !tbaa !55
  %i.gp = icmp slt i64 %.sroa.0.4.i.i230, 0
  br i1 %i.gp, label %.split.i232, label %bb.t

.split.i232:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br i1 %i.fx, label %bb.u, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i228
  br i1 %i.fx, label %bb.u, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

bb.u:                                             ; preds = %bb.t, %.split.i232
  %i.gq = sub nsw i64 0, %.sroa.0.4.i.i230
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233: ; preds = %.thread.i226, %.split.i232, %bb.t, %bb.u
  %i.gr = phi ptr [ %storemerge.i231, %bb.u ], [ %storemerge.i231, %bb.t ], [ %i.fw, %.thread.i226 ], [ %storemerge.i231, %.split.i232 ]
  %i.gs = phi i64 [ %i.gq, %bb.u ], [ %.sroa.0.4.i.i230, %bb.t ], [ 0, %.thread.i226 ], [ %.sroa.0.4.i.i230, %.split.i232 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  %i.gu = load i32, ptr %i.eu, align 8, !tbaa !190 ; 2 uses
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.eu, align 8, !tbaa !190
  %i.gw = sext i32 %i.gu to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gw
  store i64 %i.gs, ptr %i.gx, align 8, !tbaa !53
  br label %bb.v

bb.v:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.thread._crit_edge347, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233
  %i.gy = phi ptr [ %.pre349, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge347 ], [ %i.fr, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233 ] ; 4 uses
  %i.gz = phi ptr [ %.pre348, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge347 ], [ %i.gr, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit233 ] ; 5 uses
  %i.ha = icmp eq ptr %i.gz, %i.gy
  br i1 %i.ha, label %_ZN10StringView12consumeFrontEc.exit.i.i9, label %_ZNK10StringView10startsWithEc.exit.i.i.i8

_ZNK10StringView10startsWithEc.exit.i.i.i8:       ; preds = %bb.v
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !15
  %i.hc = icmp eq i8 %i.hb, 63
  br i1 %i.hc, label %bb.w, label %_ZN10StringView12consumeFrontEc.exit.i.i9

bb.w:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 2 uses
  store ptr %i.hd, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i9

_ZN10StringView12consumeFrontEc.exit.i.i9:        ; preds = %bb.w, %_ZNK10StringView10startsWithEc.exit.i.i.i8, %bb.v
  %i.he = phi ptr [ %i.hd, %bb.w ], [ %i.gz, %_ZNK10StringView10startsWithEc.exit.i.i.i8 ], [ %i.gz, %bb.v ] ; 7 uses
  %i.hf = phi i1 [ true, %bb.w ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i8 ], [ false, %bb.v ] ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.gy
  br i1 %i.hg, label %.thread.i18, label %_ZL15startsWithDigit10StringView.exit.i.i10

_ZL15startsWithDigit10StringView.exit.i.i10:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i9
  %i.hh = load i8, ptr %i.he, align 1, !tbaa !15  ; 2 uses
  %i.hi = sext i8 %i.hh to i32
  %isdigittmp.i.i.i11 = add nsw i32 %i.hi, -48
  %isdigit.i.i.i12 = icmp ult i32 %isdigittmp.i.i.i11, 10
  br i1 %isdigit.i.i.i12, label %bb.x, label %.lr.ph.preheader.i.i13

bb.x:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i10
  %i.hj = sext i8 %i.hh to i64
  %i.hk = add nsw i64 %i.hj, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21

.lr.ph.preheader.i.i13:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i10
  %i.hl = ptrtoint ptr %i.gy to i64
  %i.hm = ptrtoint ptr %i.he to i64
  %i.hn = sub i64 %i.hl, %i.hm
  br label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %bb.z, %.lr.ph.preheader.i.i13
  %.02557.i.i15 = phi i64 [ %i.hv, %bb.z ], [ 0, %.lr.ph.preheader.i.i13 ] ; 3 uses
  %.03656.i.i16 = phi i64 [ %i.hu, %bb.z ], [ 0, %.lr.ph.preheader.i.i13 ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.he, i64 %.02557.i.i15
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !15  ; 2 uses
  %i.hq = icmp eq i8 %i.hp, 64
  br i1 %i.hq, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i14
  %i.hr = add i8 %i.hp, -65                       ; 2 uses
  %or.cond.i.i17 = icmp ult i8 %i.hr, 16
  br i1 %or.cond.i.i17, label %bb.z, label %.thread.i18

bb.z:                                             ; preds = %bb.y
  %i.hs = shl i64 %.03656.i.i16, 4
  %i.ht = zext nneg i8 %i.hr to i64
  %i.hu = or disjoint i64 %i.hs, %i.ht
  %i.hv = add nuw i64 %.02557.i.i15, 1            ; 2 uses
  %exitcond.not.i.i19 = icmp eq i64 %i.hv, %i.hn
  br i1 %exitcond.not.i.i19, label %.thread.i18, label %.lr.ph.i.i14, !llvm.loop !4

.thread.i18:                                      ; preds = %bb.z, %bb.y, %_ZN10StringView12consumeFrontEc.exit.i.i9
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit: ; preds = %.lr.ph.i.i14
  %i.hw = getelementptr inbounds nuw i8, ptr %i.he, i64 %.02557.i.i15
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit, %bb.x
  %.pn.i22 = phi ptr [ %i.he, %bb.x ], [ %i.hw, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit ]
  %.sroa.0.4.i.i23 = phi i64 [ %i.hk, %bb.x ], [ %.03656.i.i16, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21.loopexit ] ; 4 uses
  %storemerge.i24 = getelementptr inbounds nuw i8, ptr %.pn.i22, i64 1 ; 4 uses
  store ptr %storemerge.i24, ptr %1, align 8, !tbaa !55
  %i.hx = icmp slt i64 %.sroa.0.4.i.i23, 0
  br i1 %i.hx, label %.split.i25, label %bb.aa

.split.i25:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br i1 %i.hf, label %bb.ab, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

bb.aa:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i21
  br i1 %i.hf, label %bb.ab, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

bb.ab:                                            ; preds = %bb.aa, %.split.i25
  %i.hy = sub nsw i64 0, %.sroa.0.4.i.i23
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26: ; preds = %.thread.i18, %.split.i25, %bb.aa, %bb.ab
  %i.hz = phi ptr [ %storemerge.i24, %bb.ab ], [ %storemerge.i24, %bb.aa ], [ %i.he, %.thread.i18 ], [ %storemerge.i24, %.split.i25 ]
  %i.ia = phi i64 [ %i.hy, %bb.ab ], [ %.sroa.0.4.i.i23, %bb.aa ], [ 0, %.thread.i18 ], [ %.sroa.0.4.i.i23, %.split.i25 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  %i.ic = load i32, ptr %i.eu, align 8, !tbaa !190 ; 2 uses
  %i.id = add nsw i32 %i.ic, 1
  store i32 %i.id, ptr %i.eu, align 8, !tbaa !190
  %i.ie = sext i32 %i.ic to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ie
  store i64 %i.ia, ptr %i.if, align 8, !tbaa !53
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.thread._crit_edge, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26
  %i.ig = phi ptr [ %.pre350, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge ], [ %i.hz, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26 ] ; 5 uses
  %i.ih = phi ptr [ %.pre, %_ZNK10StringView10startsWithEc.exit.thread._crit_edge ], [ %i.gy, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit26 ] ; 3 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.ac
  %i.ij = load i8, ptr %i.ig, align 1, !tbaa !15
  %i.ik = icmp eq i8 %i.ij, 63
  br i1 %i.ik, label %bb.ad, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.ad:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 1 ; 2 uses
  store ptr %i.il, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.ad, %_ZNK10StringView10startsWithEc.exit.i.i.i, %bb.ac
  %i.im = phi ptr [ %i.il, %bb.ad ], [ %i.ig, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.ig, %bb.ac ] ; 6 uses
  %i.in = phi i1 [ true, %bb.ad ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %bb.ac ] ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.ih
  br i1 %i.io, label %.thread.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.ip = load i8, ptr %i.im, align 1, !tbaa !15  ; 2 uses
  %i.iq = sext i8 %i.ip to i32
  %isdigittmp.i.i.i = add nsw i32 %i.iq, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.ae, label %.lr.ph.preheader.i.i

bb.ae:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.ir = sext i8 %i.ip to i64
  %i.is = add nsw i64 %i.ir, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.it = ptrtoint ptr %i.ih to i64
  %i.iu = ptrtoint ptr %i.im to i64
  %i.iv = sub i64 %i.it, %i.iu
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.jd, %bb.ag ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.jc, %bb.ag ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 %.02557.i.i
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !15  ; 2 uses
  %i.iy = icmp eq i8 %i.ix, 64
  br i1 %i.iy, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.iz = add i8 %i.ix, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.iz, 16
  br i1 %or.cond.i.i, label %bb.ag, label %.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.ja = shl i64 %.03656.i.i, 4
  %i.jb = zext nneg i8 %i.iz to i64
  %i.jc = or disjoint i64 %i.ja, %i.jb
  %i.jd = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jd, %i.iv
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !4

.thread.i:                                        ; preds = %bb.ag, %bb.af, %_ZN10StringView12consumeFrontEc.exit.i.i
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.im, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.ae
  %.pn.i = phi ptr [ %i.im, %bb.ae ], [ %i.je, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i64 [ %i.is, %bb.ae ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 4 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !55
  %i.jf = icmp slt i64 %.sroa.0.4.i.i, 0
  br i1 %i.jf, label %.split.i, label %bb.ah

.split.i:                                         ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br i1 %i.in, label %bb.ai, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  br i1 %i.in, label %bb.ai, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ai:                                            ; preds = %bb.ah, %.split.i
  %i.jg = sub nsw i64 0, %.sroa.0.4.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit: ; preds = %.thread.i, %.split.i, %bb.ah, %bb.ai
  %i.jh = phi i64 [ %i.jg, %bb.ai ], [ %.sroa.0.4.i.i, %bb.ah ], [ 0, %.thread.i ], [ %.sroa.0.4.i.i, %.split.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  %i.jj = load i32, ptr %i.eu, align 8, !tbaa !190 ; 2 uses
  %i.jk = add nsw i32 %i.jj, 1
  store i32 %i.jk, ptr %i.eu, align 8, !tbaa !190
  %i.jl = sext i32 %i.jj to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jl
  store i64 %i.jh, ptr %i.jm, align 8, !tbaa !53
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.thread
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit, %_ZNK10StringView10startsWithEc.exit.thread
  store i32 1, ptr %i.ev, align 8, !tbaa !191
  store ptr %.082.i, ptr %i.et, align 8, !tbaa !189
  br label %bb.bk

bb.al:                                            ; preds = %_ZNK10StringView10startsWithES_.exit215
  br i1 %i.cd, label %_ZNK10StringView10startsWithES_.exit249, label %_ZNK10StringView10startsWithES_.exit237

_ZNK10StringView10startsWithES_.exit237:          ; preds = %bb.al
  %i.jn = load i16, ptr %i.bz, align 1
  %i.jo = xor i16 17700, %i.jn
  %i.jp = getelementptr i8, ptr %i.bz, i64 2
  %i.jq = load i8, ptr %i.jp, align 1
  %i.jr = zext i8 %i.jq to i16
  %i.js = xor i16 63, %i.jr
  %i.jt = or i16 %i.jo, %i.js
  %i.ju = icmp ne i16 %i.jt, 0
  %i.jv = zext i1 %i.ju to i32
  %.not9.i.i.i.i.i235 = icmp eq i32 %i.jv, 0
  br i1 %.not9.i.i.i.i.i235, label %bb.am, label %_ZNK10StringView10startsWithES_.exit249

bb.am:                                            ; preds = %_ZNK10StringView10startsWithES_.exit237
  %i.jw = load i16, ptr %i.bz, align 1
  %i.jx = icmp ne i16 17700, %i.jw
  %i.jy = zext i1 %i.jx to i32
  %.not9.i.i.i.i.i.i240 = icmp eq i32 %i.jy, 0
  br i1 %.not9.i.i.i.i.i.i240, label %_ZNK10StringView10startsWithES_.exit.thread.i241, label %_ZN10StringView12consumeFrontES_.exit242

_ZNK10StringView10startsWithES_.exit.thread.i241: ; preds = %bb.am
  %i.jz = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store ptr %i.jz, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontES_.exit242

_ZN10StringView12consumeFrontES_.exit242:         ; preds = %bb.am, %_ZNK10StringView10startsWithES_.exit.thread.i241
  %i.ka = load ptr, ptr %i.t, align 8, !tbaa !34  ; 3 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !31
  %i.kc = ptrtoint ptr %i.kb to i64               ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !35
  %i.kf = add i64 %i.kc, 7
  %i.kg = add i64 %i.kf, %i.ke
  %i.kh = and i64 %i.kg, -8                       ; 2 uses
  %reass.sub.i243 = sub i64 %i.kh, %i.kc
  %i.ki = add i64 %reass.sub.i243, 64             ; 2 uses
  store i64 %i.ki, ptr %i.kd, align 8, !tbaa !35
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !33
  %i.kl = icmp ult i64 %i.ki, %i.kk
  br i1 %i.kl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit242
  %i.km = inttoptr i64 %i.kh to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245

bb.ao:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit242
  %i.kn = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ko = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ko, ptr %i.kn, align 8, !tbaa !31
  %i.kp = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store i64 4096, ptr %i.kr, align 8, !tbaa !33
  store ptr %i.kn, ptr %i.t, align 8, !tbaa !34
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store i64 64, ptr %i.ks, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245: ; preds = %bb.an, %bb.ao
  %.sink14.i244 = phi ptr [ %i.ko, %bb.ao ], [ %i.km, %bb.an ] ; 7 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 8
  store i32 21, ptr %i.kt, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30TemplateParameterReferenceNodeE, i64 16), ptr %.sink14.i244, align 8, !tbaa !20
  %i.ku = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 16 ; 2 uses
  store ptr null, ptr %i.ku, align 8, !tbaa !189
  %i.kv = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 24
  store i32 0, ptr %i.kv, align 8, !tbaa !190
  %i.kw = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 56 ; 2 uses
  store i32 0, ptr %i.kw, align 8, !tbaa !191
  %i.kx = getelementptr inbounds nuw i8, ptr %.sink14.i244, i64 60
  store i8 0, ptr %i.kx, align 4, !tbaa !192
  store ptr %.sink14.i244, ptr %.sink.i, align 8, !tbaa !106
  %i.ky = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !182
  store ptr %i.ky, ptr %i.ku, align 8, !tbaa !189
  store i32 2, ptr %i.kw, align 8, !tbaa !191
  br label %bb.bk

_ZNK10StringView10startsWithES_.exit249:          ; preds = %_ZNK10StringView10startsWithES_.exit237, %bb.al
  %i.kz = load i16, ptr %i.bz, align 1
  %i.la = icmp ne i16 17956, %i.kz
  %i.lb = zext i1 %i.la to i32
  %.not9.i.i.i.i.i247 = icmp eq i32 %i.lb, 0
  br i1 %.not9.i.i.i.i.i247, label %bb.ap, label %_ZNK10StringView10startsWithES_.exit253

_ZNK10StringView10startsWithES_.exit253:          ; preds = %_ZNK10StringView10startsWithES_.exit249
  %i.lc = load i16, ptr %i.bz, align 1
  %i.ld = icmp ne i16 18212, %i.lc
  %i.le = zext i1 %i.ld to i32
  %.not9.i.i.i.i.i251 = icmp eq i32 %i.le, 0
  br i1 %.not9.i.i.i.i.i251, label %bb.ap, label %bb.bi

bb.ap:                                            ; preds = %_ZNK10StringView10startsWithES_.exit253, %_ZNK10StringView10startsWithES_.exit249
  %i.lf = load ptr, ptr %i.t, align 8, !tbaa !34  ; 3 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !31
  %i.lh = ptrtoint ptr %i.lg to i64               ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 2 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !35
  %i.lk = add i64 %i.lh, 7
  %i.ll = add i64 %i.lk, %i.lj
  %i.lm = and i64 %i.ll, -8                       ; 2 uses
  %reass.sub.i254 = sub i64 %i.lm, %i.lh
  %i.ln = add i64 %reass.sub.i254, 64             ; 2 uses
  store i64 %i.ln, ptr %i.li, align 8, !tbaa !35
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !33
  %i.lq = icmp ult i64 %i.ln, %i.lp
  br i1 %i.lq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.lr = inttoptr i64 %i.lm to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256

bb.ar:                                            ; preds = %bb.ap
  %i.ls = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.lt = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.lt, ptr %i.ls, align 8, !tbaa !31
  %i.lu = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !32
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store i64 4096, ptr %i.lw, align 8, !tbaa !33
  store ptr %i.ls, ptr %i.t, align 8, !tbaa !34
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store i64 64, ptr %i.lx, align 8, !tbaa !35
  %.pre342 = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256: ; preds = %bb.aq, %bb.ar
  %i.ly = phi ptr [ %.pre342, %bb.ar ], [ %i.by, %bb.aq ] ; 2 uses
  %.sink14.i255 = phi ptr [ %i.lt, %bb.ar ], [ %i.lr, %bb.aq ] ; 9 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 8
  store i32 21, ptr %i.lz, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30TemplateParameterReferenceNodeE, i64 16), ptr %.sink14.i255, align 8, !tbaa !20
  %i.ma = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 16
  store ptr null, ptr %i.ma, align 8, !tbaa !189
  %i.mb = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 24 ; 5 uses
  store i32 0, ptr %i.mb, align 8, !tbaa !190
  %i.mc = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 56
  store i32 0, ptr %i.mc, align 8, !tbaa !191
  %i.md = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 60 ; 2 uses
  store i8 0, ptr %i.md, align 4, !tbaa !192
  store ptr %.sink14.i255, ptr %.sink.i, align 8, !tbaa !106
  %i.me = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.mf = icmp ne ptr %i.ly, %i.me
  %spec.select.i = zext i1 %i.mf to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 %spec.select.i ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 1 ; 2 uses
  store ptr %i.mh, ptr %1, align 8, !tbaa !40
  %i.mi = load i8, ptr %i.mg, align 1, !tbaa !15
  switch i8 %i.mi, label %bb.bg [
    i8 71, label %bb.as
    i8 70, label %bb.at
    i8 48, label %bb.bh
  ]

bb.as:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  %i.mj = call fastcc noundef i64 @_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !182
  %i.mk = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 32
  %i.ml = load i32, ptr %i.mb, align 8, !tbaa !190 ; 2 uses
  %i.mm = add nsw i32 %i.ml, 1                    ; 2 uses
  store i32 %i.mm, ptr %i.mb, align 8, !tbaa !190
  %i.mn = sext i32 %i.ml to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.mn
  store i64 %i.mj, ptr %i.mo, align 8, !tbaa !53
  %.pre343 = load ptr, ptr %1, align 8, !tbaa !40
  %.pre344 = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  %i.mp = phi i32 [ %i.mm, %bb.as ], [ 0, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256 ] ; 3 uses
  %i.mq = phi ptr [ %.pre344, %bb.as ], [ %i.ly, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256 ] ; 6 uses
  %i.mr = phi ptr [ %.pre343, %bb.as ], [ %i.mh, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256 ] ; 5 uses
  %i.ms = icmp eq ptr %i.mr, %i.mq
  br i1 %i.ms, label %_ZN10StringView12consumeFrontEc.exit.i.i258, label %_ZNK10StringView10startsWithEc.exit.i.i.i257

_ZNK10StringView10startsWithEc.exit.i.i.i257:     ; preds = %bb.at
  %i.mt = load i8, ptr %i.mr, align 1, !tbaa !15
  %i.mu = icmp eq i8 %i.mt, 63
  br i1 %i.mu, label %bb.au, label %_ZN10StringView12consumeFrontEc.exit.i.i258

bb.au:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i257
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 1 ; 2 uses
  store ptr %i.mv, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i258

_ZN10StringView12consumeFrontEc.exit.i.i258:      ; preds = %bb.au, %_ZNK10StringView10startsWithEc.exit.i.i.i257, %bb.at
  %i.mw = phi ptr [ %i.mv, %bb.au ], [ %i.mr, %_ZNK10StringView10startsWithEc.exit.i.i.i257 ], [ %i.mr, %bb.at ] ; 7 uses
  %i.mx = phi i1 [ true, %bb.au ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i257 ], [ false, %bb.at ] ; 2 uses
  %i.my = icmp eq ptr %i.mw, %i.mq
  br i1 %i.my, label %.thread.i267, label %_ZL15startsWithDigit10StringView.exit.i.i259

_ZL15startsWithDigit10StringView.exit.i.i259:     ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i258
  %i.mz = load i8, ptr %i.mw, align 1, !tbaa !15  ; 2 uses
  %i.na = sext i8 %i.mz to i32
  %isdigittmp.i.i.i260 = add nsw i32 %i.na, -48
  %isdigit.i.i.i261 = icmp ult i32 %isdigittmp.i.i.i260, 10
  br i1 %isdigit.i.i.i261, label %bb.av, label %.lr.ph.preheader.i.i262

bb.av:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i259
  %i.nb = sext i8 %i.mz to i64
  %i.nc = add nsw i64 %i.nb, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270

.lr.ph.preheader.i.i262:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i259
  %i.nd = ptrtoint ptr %i.mq to i64
  %i.ne = ptrtoint ptr %i.mw to i64
  %i.nf = sub i64 %i.nd, %i.ne
  br label %.lr.ph.i.i263

.lr.ph.i.i263:                                    ; preds = %bb.ax, %.lr.ph.preheader.i.i262
  %.02557.i.i264 = phi i64 [ %i.nn, %bb.ax ], [ 0, %.lr.ph.preheader.i.i262 ] ; 3 uses
  %.03656.i.i265 = phi i64 [ %i.nm, %bb.ax ], [ 0, %.lr.ph.preheader.i.i262 ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.02557.i.i264
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !15  ; 2 uses
  %i.ni = icmp eq i8 %i.nh, 64
  br i1 %i.ni, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i263
  %i.nj = add i8 %i.nh, -65                       ; 2 uses
  %or.cond.i.i266 = icmp ult i8 %i.nj, 16
  br i1 %or.cond.i.i266, label %bb.ax, label %.thread.i267

bb.ax:                                            ; preds = %bb.aw
  %i.nk = shl i64 %.03656.i.i265, 4
  %i.nl = zext nneg i8 %i.nj to i64
  %i.nm = or disjoint i64 %i.nk, %i.nl
  %i.nn = add nuw i64 %.02557.i.i264, 1           ; 2 uses
  %exitcond.not.i.i268 = icmp eq i64 %i.nn, %i.nf
  br i1 %exitcond.not.i.i268, label %.thread.i267, label %.lr.ph.i.i263, !llvm.loop !4

.thread.i267:                                     ; preds = %bb.ax, %bb.aw, %_ZN10StringView12consumeFrontEc.exit.i.i258
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit: ; preds = %.lr.ph.i.i263
  %i.no = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.02557.i.i264
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit, %bb.av
  %.pn.i271 = phi ptr [ %i.mw, %bb.av ], [ %i.no, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit ]
  %.sroa.0.4.i.i272 = phi i64 [ %i.nc, %bb.av ], [ %.03656.i.i265, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270.loopexit ] ; 4 uses
  %storemerge.i273 = getelementptr inbounds nuw i8, ptr %.pn.i271, i64 1 ; 4 uses
  store ptr %storemerge.i273, ptr %1, align 8, !tbaa !55
  %i.np = icmp slt i64 %.sroa.0.4.i.i272, 0
  br i1 %i.np, label %.split.i274, label %bb.ay

.split.i274:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br i1 %i.mx, label %bb.az, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i270
  br i1 %i.mx, label %bb.az, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

bb.az:                                            ; preds = %bb.ay, %.split.i274
  %i.nq = sub nsw i64 0, %.sroa.0.4.i.i272
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275: ; preds = %.thread.i267, %.split.i274, %bb.ay, %bb.az
  %i.nr = phi ptr [ %storemerge.i273, %bb.az ], [ %storemerge.i273, %bb.ay ], [ %i.mw, %.thread.i267 ], [ %storemerge.i273, %.split.i274 ] ; 5 uses
  %i.ns = phi i64 [ %i.nq, %bb.az ], [ %.sroa.0.4.i.i272, %bb.ay ], [ 0, %.thread.i267 ], [ %.sroa.0.4.i.i272, %.split.i274 ]
  %i.nt = getelementptr inbounds nuw i8, ptr %.sink14.i255, i64 32 ; 2 uses
  %i.nu = add nsw i32 %i.mp, 1                    ; 2 uses
  store i32 %i.nu, ptr %i.mb, align 8, !tbaa !190
  %i.nv = sext i32 %i.mp to i64
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.nv
  store i64 %i.ns, ptr %i.nw, align 8, !tbaa !53
  %i.nx = icmp eq ptr %i.nr, %i.mq
  br i1 %i.nx, label %_ZN10StringView12consumeFrontEc.exit.i.i277, label %_ZNK10StringView10startsWithEc.exit.i.i.i276

_ZNK10StringView10startsWithEc.exit.i.i.i276:     ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275
  %i.ny = load i8, ptr %i.nr, align 1, !tbaa !15
  %i.nz = icmp eq i8 %i.ny, 63
  br i1 %i.nz, label %bb.ba, label %_ZN10StringView12consumeFrontEc.exit.i.i277

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i276
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nr, i64 1 ; 2 uses
  store ptr %i.oa, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i277

_ZN10StringView12consumeFrontEc.exit.i.i277:      ; preds = %bb.ba, %_ZNK10StringView10startsWithEc.exit.i.i.i276, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275
  %i.ob = phi ptr [ %i.oa, %bb.ba ], [ %i.nr, %_ZNK10StringView10startsWithEc.exit.i.i.i276 ], [ %i.nr, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275 ] ; 6 uses
  %i.oc = phi i1 [ true, %bb.ba ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i276 ], [ false, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit275 ] ; 2 uses
  %i.od = icmp eq ptr %i.ob, %i.mq
  br i1 %i.od, label %.thread.i286, label %_ZL15startsWithDigit10StringView.exit.i.i278

_ZL15startsWithDigit10StringView.exit.i.i278:     ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i277
  %i.oe = load i8, ptr %i.ob, align 1, !tbaa !15  ; 2 uses
  %i.of = sext i8 %i.oe to i32
  %isdigittmp.i.i.i279 = add nsw i32 %i.of, -48
  %isdigit.i.i.i280 = icmp ult i32 %isdigittmp.i.i.i279, 10
  br i1 %isdigit.i.i.i280, label %bb.bb, label %.lr.ph.preheader.i.i281

bb.bb:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i278
  %i.og = sext i8 %i.oe to i64
  %i.oh = add nsw i64 %i.og, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289

.lr.ph.preheader.i.i281:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i278
  %i.oi = ptrtoint ptr %i.mq to i64
  %i.oj = ptrtoint ptr %i.ob to i64
  %i.ok = sub i64 %i.oi, %i.oj
  br label %.lr.ph.i.i282

.lr.ph.i.i282:                                    ; preds = %bb.bd, %.lr.ph.preheader.i.i281
  %.02557.i.i283 = phi i64 [ %i.os, %bb.bd ], [ 0, %.lr.ph.preheader.i.i281 ] ; 3 uses
  %.03656.i.i284 = phi i64 [ %i.or, %bb.bd ], [ 0, %.lr.ph.preheader.i.i281 ] ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.02557.i.i283
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !15  ; 2 uses
  %i.on = icmp eq i8 %i.om, 64
  br i1 %i.on, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i282
  %i.oo = add i8 %i.om, -65                       ; 2 uses
  %or.cond.i.i285 = icmp ult i8 %i.oo, 16
  br i1 %or.cond.i.i285, label %bb.bd, label %.thread.i286

bb.bd:                                            ; preds = %bb.bc
  %i.op = shl i64 %.03656.i.i284, 4
  %i.oq = zext nneg i8 %i.oo to i64
  %i.or = or disjoint i64 %i.op, %i.oq
  %i.os = add nuw i64 %.02557.i.i283, 1           ; 2 uses
  %exitcond.not.i.i287 = icmp eq i64 %i.os, %i.ok
  br i1 %exitcond.not.i.i287, label %.thread.i286, label %.lr.ph.i.i282, !llvm.loop !4

.thread.i286:                                     ; preds = %bb.bd, %bb.bc, %_ZN10StringView12consumeFrontEc.exit.i.i277
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit: ; preds = %.lr.ph.i.i282
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.02557.i.i283
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit, %bb.bb
  %.pn.i290 = phi ptr [ %i.ob, %bb.bb ], [ %i.ot, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit ]
  %.sroa.0.4.i.i291 = phi i64 [ %i.oh, %bb.bb ], [ %.03656.i.i284, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289.loopexit ] ; 4 uses
  %storemerge.i292 = getelementptr inbounds nuw i8, ptr %.pn.i290, i64 1
  store ptr %storemerge.i292, ptr %1, align 8, !tbaa !55
  %i.ou = icmp slt i64 %.sroa.0.4.i.i291, 0
  br i1 %i.ou, label %.split.i293, label %bb.be

.split.i293:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br i1 %i.oc, label %bb.bf, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

bb.be:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i289
  br i1 %i.oc, label %bb.bf, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

bb.bf:                                            ; preds = %bb.be, %.split.i293
  %i.ov = sub nsw i64 0, %.sroa.0.4.i.i291
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294: ; preds = %.thread.i286, %.split.i293, %bb.be, %bb.bf
  %i.ow = phi i64 [ %i.ov, %bb.bf ], [ %.sroa.0.4.i.i291, %bb.be ], [ 0, %.thread.i286 ], [ %.sroa.0.4.i.i291, %.split.i293 ]
  %i.ox = add nsw i32 %i.mp, 2
  store i32 %i.ox, ptr %i.mb, align 8, !tbaa !190
  %i.oy = sext i32 %i.nu to i64
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.oy
  store i64 %i.ow, ptr %i.oz, align 8, !tbaa !53
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  store i8 1, ptr %i.md, align 4, !tbaa !192
  br label %bb.bk

bb.bi:                                            ; preds = %_ZNK10StringView10startsWithES_.exit253
  %i.pa = load i16, ptr %i.bz, align 1
  %i.pb = icmp ne i16 12324, %i.pa
  %i.pc = zext i1 %i.pb to i32
  %.not9.i.i.i.i.i.i297 = icmp eq i32 %i.pc, 0
  br i1 %.not9.i.i.i.i.i.i297, label %bb.bj, label %.thread311

bb.bj:                                            ; preds = %bb.bi
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store ptr %i.pd, ptr %1, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 0, ptr %i.b, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 0, ptr %i.c, align 8, !tbaa !53
  %i.pe = call fastcc { i64, i8 } @_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !182 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.pe, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.pe, 1
  store i64 %.fca.0.extract.i, ptr %i.c, align 8, !tbaa !53
  store i8 %.fca.1.extract.i, ptr %i.b, align 1, !tbaa !117
  %i.pf = call noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !182
  store ptr %i.pf, ptr %.sink.i, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.bk

.thread311:                                       ; preds = %bb.k, %bb.bi
  %i.pg = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !182
  store ptr %i.pg, ptr %.sink.i, align 8, !tbaa !106
  br label %bb.bk

bb.bk:                                            ; preds = %.thread311, %bb.bj, %bb.bh, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245, %bb.ak, %bb.j, %bb.i, %bb.h
  %i.ph = load i8, ptr %i.q, align 8, !tbaa !28, !range !51, !noundef !52
  %i.pi = trunc nuw i8 %i.ph to i1
  %i.pj = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  br i1 %i.pi, label %.critedge418, label %.lr.ph, !llvm.loop !183

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZNK10StringView10startsWithEc.exit85
  %i.pk = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.pk, ptr %1, align 8, !tbaa !55
  %.0..0..0..0..0..0..i = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.pl = call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.081.i.ph), !inline_history !182
  %.pre174.pre = load i8, ptr %i.q, align 8, !tbaa !28, !range !51
  %i.pm = trunc nuw i8 %.pre174.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.pl, ptr %i.pn, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  store i64 %.sroa.6.0.copyload87, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  store i64 %.sroa.795.0.copyload97, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !53
  br i1 %i.pm, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.po = and i8 %2, 1
  %.not = icmp eq i8 %i.po, 0
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @_ZN12_GLOBAL__N_19Demangler18memorizeIdentifierEPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.p)
  br label %bb.bn

.critedge:                                        ; preds = %_ZN10StringView12consumeFrontES_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  store i64 %.sroa.6.0.copyload87, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  store i64 %.sroa.795.0.copyload97, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !53
  br label %bb.bn

.critedge418:                                     ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr null, ptr %i.pp, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  store i64 %.sroa.6.0.copyload87, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  store i64 %.sroa.795.0.copyload97, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !53
  br label %bb.bn

bb.bn:                                            ; preds = %.critedge418, %.critedge, %bb.bl, %bb.bm, %_ZNK10StringView10startsWithEc.exit.i
  %.0 = phi ptr [ null, %_ZNK10StringView10startsWithEc.exit.i ], [ %i.p, %bb.bm ], [ %i.p, %bb.bl ], [ null, %.critedge ], [ null, %.critedge418 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not1625.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not1625.not.i, label %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.026.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.h, 64
  br i1 %.not.i, label %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = add nuw i64 %.026.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.f
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread, label %.lr.ph.i, !llvm.loop !5

_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.j, align 8, !tbaa !28
  br label %bb.f

_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit: ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %.026.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %1, align 8, !tbaa !55
  tail call fastcc void @_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %i.c, ptr nonnull %i.k)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !28, !range !51
  %i.m = trunc nuw i8 %.pre to i1
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35
  %i.t = add i64 %i.q, 7
  %i.u = add i64 %i.t, %i.s
  %i.v = and i64 %i.u, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.v, %i.q
  %i.w = add i64 %reass.sub.i, 40                 ; 2 uses
  store i64 %i.w, ptr %i.r, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !33
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = inttoptr i64 %i.v to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ac = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !31
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 4096, ptr %i.af, align 8, !tbaa !33
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 40, ptr %i.ag, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink13.i = phi ptr [ %i.ac, %bb.e ], [ %i.aa, %bb.d ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 5, ptr %i.ah, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.ai, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %i.c, ptr %i.aj, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit
  %.0 = phi ptr [ %.sink13.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !55 ; 10 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !55 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload, %.sroa.2.0.copyload ; 2 uses
  br i1 %i.a, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit

_ZL15startsWithDigit10StringView.exit:            ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !15 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigit10StringView.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.d = sext i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  store ptr %i.i, ptr %1, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.a, %_ZL15startsWithDigit10StringView.exit
  %i.m = ptrtoint ptr %.sroa.2.0.copyload to i64  ; 2 uses
  %i.n = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %_ZNK10StringView10startsWithES_.exit.thread14, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZL15startsWithDigit10StringView.exit.thread
  %i.q = load i16, ptr %.sroa.0.0.copyload, align 1
  %i.r = icmp ne i16 9279, %i.q
  %i.s = zext i1 %i.r to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.thread14

_ZNK10StringView10startsWithES_.exit.thread:      ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.t = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 2)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZNK10StringView10startsWithES_.exit.thread14:    ; preds = %_ZL15startsWithDigit10StringView.exit.thread, %_ZNK10StringView10startsWithES_.exit
  br i1 %i.a, label %_ZNK10StringView10startsWithEc.exit.thread, label %_ZNK10StringView10startsWithEc.exit

_ZNK10StringView10startsWithEc.exit:              ; preds = %_ZNK10StringView10startsWithES_.exit.thread14
  %i.u = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !15
  %i.v = icmp eq i8 %i.u, 63
  br i1 %i.v, label %bb.e, label %_ZNK10StringView10startsWithEc.exit.thread

end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior:bb.a
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 4096, ptr %i.bf, align 8, !tbaa !33
  store ptr %i.bb, ptr %i.ah, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 32, ptr %i.bg, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i

_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i: ; preds = %bb.j, %bb.i
  %.sink17.i24.i.i = phi ptr [ %i.bc, %bb.j ], [ %i.ba, %bb.i ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 8
  store i32 8, ptr %i.bh, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 16
  store ptr null, ptr %i.bi, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE, i64 16), ptr %.sink17.i24.i.i, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 24
  store i8 %.0.i22.i.i, ptr %i.bj, align 8, !tbaa !119
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.k:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i10.i, %bb.g
  %i.bk = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZNK10StringView10startsWithEc.exit.thread:       ; preds = %_ZNK10StringView10startsWithES_.exit.thread14, %_ZNK10StringView10startsWithEc.exit
  %i.bl = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit: ; preds = %bb.k, %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i, %bb.f, %bb.d, %bb.c, %_ZNK10StringView10startsWithEc.exit.thread, %_ZNK10StringView10startsWithES_.exit.thread
  %.0 = phi ptr [ %i.bl, %_ZNK10StringView10startsWithEc.exit.thread ], [ %i.t, %_ZNK10StringView10startsWithES_.exit.thread ], [ %i.l, %bb.d ], [ null, %bb.c ], [ %i.ae, %bb.f ], [ %.sink17.i24.i.i, %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i ], [ %i.bk, %bb.k ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19Demangler18memorizeIdentifierEPN4llvh11ms_demangle14IdentifierNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.OutputStream, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 -1, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 -1, ptr %i.b, align 4, !tbaa !38
  %i.c = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #22 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !43
  store ptr %i.c, ptr %2, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 1024, ptr %i.f, align 8, !tbaa !45
  %i.g = load ptr, ptr %1, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0) #19
  %i.j = load i64, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.k, %i.l
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN12OutputStreamlsEc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = shl i64 %i.l, 1
  %spec.store.select.i.i.i = call i64 @llvm.umax.i64(i64 %i.m, i64 %i.k) ; 2 uses
  store i64 %spec.store.select.i.i.i, ptr %i.f, align 8, !tbaa !45
  %i.n = call ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %spec.store.select.i.i.i) #24 ; 3 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !44
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i:     ; preds = %bb.d
  %.pre1.i.i = load i64, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %.pre2.i.i = add i64 %.pre1.i.i, 1
  br label %_ZN12OutputStreamlsEc.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreamlsEc.exit:                       ; preds = %bb.c, %._ZN12OutputStream4growEm.exit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %i.k, %bb.c ]
  %i.p = phi i64 [ %.pre1.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %i.j, %bb.c ]
  %i.q = phi ptr [ %i.n, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %.pre.i.i, %bb.c ]
  store i64 %.pre-phi.i.i, ptr %i.e, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !15
  %i.s = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #21 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = add i64 %i.t, 1                          ; 3 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !34   ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  %i.ab = add i64 %i.z, %i.v                      ; 2 uses
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.ae = icmp ugt i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.f, label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit

bb.f:                                             ; preds = %_ZN12OutputStreamlsEc.exit
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.v, i64 4096) ; 2 uses
  %i.af = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ag = call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i.i) #20 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.speculated.i.i, ptr %i.aj, align 8, !tbaa !33
  store ptr %i.af, ptr %i.u, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.v, ptr %i.ak, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit

_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit: ; preds = %_ZN12OutputStreamlsEc.exit, %bb.f
  %.0.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.aa, %_ZN12OutputStreamlsEc.exit ] ; 3 uses
  %i.al = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) %i.s) #19 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.t
  call fastcc void @_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %.0.i.i, ptr nonnull %i.am)
  call void @free(ptr noundef nonnull %i.s) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #3 align 2 {
bb.a:
  switch i32 %2, label %default.unreachable40 [
    i32 0, label %bb.b
    i32 1, label %bb.l
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.b, ptr %1, align 8, !tbaa !40
  %i.c = load i8, ptr %i.a, align 1, !tbaa !15    ; 4 uses
  switch i8 %i.c, label %bb.i [
    i8 48, label %bb.c
    i8 49, label %bb.c
    i8 66, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = icmp eq i8 %i.c, 49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !35
  %i.k = add i64 %i.h, 7
  %i.l = add i64 %i.k, %i.j
  %i.m = and i64 %i.l, -8                         ; 2 uses
  %reass.sub.i.i = sub i64 %i.m, %i.h
  %i.n = add i64 %reass.sub.i.i, 40               ; 2 uses
  store i64 %i.n, ptr %i.i, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = inttoptr i64 %i.m to ptr
  br label %_ZN12_GLOBAL__N_19Demangler26demangleStructorIdentifierER10StringViewb.exit

bb.e:                                             ; preds = %bb.c
  %i.s = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !31
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 4096, ptr %i.w, align 8, !tbaa !33
  store ptr %i.s, ptr %i.e, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 40, ptr %i.x, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_19Demangler26demangleStructorIdentifierER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler26demangleStructorIdentifierER10StringViewb.exit: ; preds = %bb.d, %bb.e
  %.sink14.i.i = phi ptr [ %i.t, %bb.e ], [ %i.r, %bb.d ] ; 6 uses
  %i.y = zext i1 %i.d to i8
  %i.z = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 8
  store i32 11, ptr %i.z, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 16
  store ptr null, ptr %i.aa, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle22StructorIdentifierNodeE, i64 16), ptr %.sink14.i.i, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 24
  store ptr null, ptr %i.ab, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 32
  store i8 %i.y, ptr %i.ac, align 8, !tbaa !193
  br label %bb.x

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !35
  %i.aj = add i64 %i.ag, 7
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, -8                       ; 2 uses
  %reass.sub.i.i19 = sub i64 %i.al, %i.ag
  %i.am = add i64 %reass.sub.i.i19, 32            ; 2 uses
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !33
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = inttoptr i64 %i.al to ptr
  br label %_ZN12_GLOBAL__N_19Demangler36demangleConversionOperatorIdentifierER10StringView.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.as = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.at, ptr %i.au, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 4096, ptr %i.av, align 8, !tbaa !33
  store ptr %i.ar, ptr %i.ad, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 32, ptr %i.aw, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_19Demangler36demangleConversionOperatorIdentifierER10StringView.exit

_ZN12_GLOBAL__N_19Demangler36demangleConversionOperatorIdentifierER10StringView.exit: ; preds = %bb.g, %bb.h
  %.sink13.i.i = phi ptr [ %i.as, %bb.h ], [ %i.aq, %bb.g ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 9, ptr %i.ax, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle32ConversionOperatorIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24
  store ptr null, ptr %i.az, align 8, !tbaa !90
  br label %bb.x

bb.i:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bb = add i8 %i.c, -48
  %or.cond.i = icmp ult i8 %i.bb, 10
  %.v.i = select i1 %or.cond.i, i64 -48, i64 -55
  %i.bc = sext i8 %i.c to i64
  %i.bd = getelementptr i8, ptr @_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE5Basic, i64 %.v.i
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %.0.i = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !34 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !35
  %i.bk = add i64 %i.bh, 7
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = and i64 %i.bl, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.bm, %i.bh
  %i.bn = add i64 %reass.sub.i, 32                ; 2 uses
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33
  %i.bq = icmp ult i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = inttoptr i64 %i.bm to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit

bb.k:                                             ; preds = %bb.i
  %i.bs = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.bt = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !31
  %i.bu = load ptr, ptr %i.ba, align 8, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 4096, ptr %i.bw, align 8, !tbaa !33
  store ptr %i.bs, ptr %i.ba, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 32, ptr %i.bx, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit: ; preds = %bb.j, %bb.k
  %.sink17.i = phi ptr [ %i.bt, %bb.k ], [ %i.br, %bb.j ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sink17.i, i64 8
  store i32 8, ptr %i.by, align 8, !tbaa !58
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink17.i, i64 16
  store ptr null, ptr %i.bz, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE, i64 16), ptr %.sink17.i, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %.sink17.i, i64 24
  store i8 %.0.i, ptr %i.ca, align 8, !tbaa !119
  br label %bb.x

bb.l:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cc = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store ptr %i.cd, ptr %1, align 8, !tbaa !40
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !15  ; 2 uses
  %i.cf = add i8 %i.ce, -48
  %or.cond.i20 = icmp ult i8 %i.cf, 10
  %.v.i21 = select i1 %or.cond.i20, i64 -48, i64 -55
  %i.cg = sext i8 %i.ce to i64
  %i.ch = getelementptr i8, ptr @_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE5Under, i64 %.v.i21
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.cg
  %.0.i22 = load i8, ptr %i.ci, align 1, !tbaa !14
  %i.cj = load ptr, ptr %i.cb, align 8, !tbaa !34 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !31
  %i.cl = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !35
  %i.co = add i64 %i.cl, 7
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = and i64 %i.cp, -8                       ; 2 uses
  %reass.sub.i23 = sub i64 %i.cq, %i.cl
  %i.cr = add i64 %reass.sub.i23, 32              ; 2 uses
  store i64 %i.cr, ptr %i.cm, align 8, !tbaa !35
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !33
  %i.cu = icmp ult i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cv = inttoptr i64 %i.cq to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit25

bb.n:                                             ; preds = %bb.l
  %i.cw = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.cx = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !31
  %i.cy = load ptr, ptr %i.cb, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 4096, ptr %i.da, align 8, !tbaa !33
  store ptr %i.cw, ptr %i.cb, align 8, !tbaa !34
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 32, ptr %i.db, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit25

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit25: ; preds = %bb.m, %bb.n
  %.sink17.i24 = phi ptr [ %i.cx, %bb.n ], [ %i.cv, %bb.m ] ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink17.i24, i64 8
  store i32 8, ptr %i.dc, align 8, !tbaa !58
  %i.dd = getelementptr inbounds nuw i8, ptr %.sink17.i24, i64 16
  store ptr null, ptr %i.dd, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE, i64 16), ptr %.sink17.i24, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %.sink17.i24, i64 24
  store i8 %.0.i22, ptr %i.de, align 8, !tbaa !119
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  %i.df = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store ptr %i.dg, ptr %1, align 8, !tbaa !40
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !15  ; 3 uses
  %cond = icmp eq i8 %i.dh, 75
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br i1 %cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !34 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !31
  %i.dl = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !35
  %i.do = add i64 %i.dl, 7
  %i.dp = add i64 %i.do, %i.dn
  %i.dq = and i64 %i.dp, -8                       ; 2 uses
  %reass.sub.i.i26 = sub i64 %i.dq, %i.dl
  %i.dr = add i64 %reass.sub.i.i26, 40            ; 2 uses
  store i64 %i.dr, ptr %i.dm, align 8, !tbaa !35
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !33
  %i.du = icmp ult i64 %i.dr, %i.dt
  br i1 %i.du, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dv = inttoptr i64 %i.dq to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29LiteralOperatorIdentifierNodeEJEEEPT_DpOT0_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.dw = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.dx = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !31
  %i.dy = load ptr, ptr %i.di, align 8, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 4096, ptr %i.ea, align 8, !tbaa !33
  store ptr %i.dw, ptr %i.di, align 8, !tbaa !34
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 40, ptr %i.eb, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29LiteralOperatorIdentifierNodeEJEEEPT_DpOT0_.exit.i

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29LiteralOperatorIdentifierNodeEJEEEPT_DpOT0_.exit.i: ; preds = %bb.r, %bb.q
  %.sink13.i.i27 = phi ptr [ %i.dx, %bb.r ], [ %i.dv, %bb.q ] ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sink13.i.i27, i64 8
  store i32 12, ptr %i.ec, align 8, !tbaa !58
  %i.ed = getelementptr inbounds nuw i8, ptr %.sink13.i.i27, i64 16
  store ptr null, ptr %i.ed, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle29LiteralOperatorIdentifierNodeE, i64 16), ptr %.sink13.i.i27, align 8, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %.sink13.i.i27, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !41 ; 2 uses
  %i.eh = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %.not1625.not.i.i = icmp eq ptr %i.eg, %i.eh
  br i1 %.not1625.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29LiteralOperatorIdentifierNodeEJEEEPT_DpOT0_.exit.i, %bb.t
  %.026.i.i = phi i64 [ %i.ep, %bb.t ], [ 0, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29LiteralOperatorIdentifierNodeEJEEEPT_DpOT0_.exit.i ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.026.i.i
  %i.em = load i8, ptr %i.el, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %i.em, 64
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.026.i.i ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store ptr %i.eo, ptr %1, align 8, !tbaa !55
  br label %_ZN12_GLOBAL__N_19Demangler33demangleLiteralOperatorIdentifierER10StringView.exit

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.ep = add nuw i64 %.026.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ep, %i.ek
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !5

.critedge.i.i:                                    ; preds = %bb.t, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29LiteralOperatorIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.eq, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler33demangleLiteralOperatorIdentifierER10StringView.exit

_ZN12_GLOBAL__N_19Demangler33demangleLiteralOperatorIdentifierER10StringView.exit: ; preds = %bb.s, %.critedge.i.i
  %.sroa.021.0.i.i = phi ptr [ null, %.critedge.i.i ], [ %i.eh, %bb.s ]
  %.sroa.3.0.i.i = phi ptr [ null, %.critedge.i.i ], [ %i.en, %bb.s ]
  store ptr %.sroa.021.0.i.i, ptr %i.ee, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i27, i64 32
  store ptr %.sroa.3.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !55
  br label %bb.x

bb.u:                                             ; preds = %bb.o
  %i.er = add i8 %i.dh, -48
  %or.cond.i28 = icmp ult i8 %i.er, 10
  %.v.i29 = select i1 %or.cond.i28, i64 -48, i64 -55
  %i.es = sext i8 %i.dh to i64
  %i.et = getelementptr i8, ptr @_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE11DoubleUnder, i64 %.v.i29
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.es
  %.0.i30 = load i8, ptr %i.eu, align 1, !tbaa !14
  %i.ev = load ptr, ptr %i.di, align 8, !tbaa !34 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !31
  %i.ex = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !35
  %i.fa = add i64 %i.ex, 7
  %i.fb = add i64 %i.fa, %i.ez
  %i.fc = and i64 %i.fb, -8                       ; 2 uses
  %reass.sub.i31 = sub i64 %i.fc, %i.ex
  %i.fd = add i64 %reass.sub.i31, 32              ; 2 uses
  store i64 %i.fd, ptr %i.ey, align 8, !tbaa !35
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !33
  %i.fg = icmp ult i64 %i.fd, %i.ff
  br i1 %i.fg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fh = inttoptr i64 %i.fc to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33

bb.w:                                             ; preds = %bb.u
  %i.fi = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.fj = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !31
  %i.fk = load ptr, ptr %i.di, align 8, !tbaa !34
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store i64 4096, ptr %i.fm, align 8, !tbaa !33
  store ptr %i.fi, ptr %i.di, align 8, !tbaa !34
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i64 32, ptr %i.fn, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33: ; preds = %bb.v, %bb.w
  %.sink17.i32 = phi ptr [ %i.fj, %bb.w ], [ %i.fh, %bb.v ] ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sink17.i32, i64 8
  store i32 8, ptr %i.fo, align 8, !tbaa !58
  %i.fp = getelementptr inbounds nuw i8, ptr %.sink17.i32, i64 16
  store ptr null, ptr %i.fp, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE, i64 16), ptr %.sink17.i32, align 8, !tbaa !20
  %i.fq = getelementptr inbounds nuw i8, ptr %.sink17.i32, i64 24
  store i8 %.0.i30, ptr %i.fq, align 8, !tbaa !119
  br label %bb.x

default.unreachable40:                            ; preds = %bb.a
  unreachable

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler33demangleLiteralOperatorIdentifierER10StringView.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33, %_ZN12_GLOBAL__N_19Demangler26demangleStructorIdentifierER10StringViewb.exit, %_ZN12_GLOBAL__N_19Demangler36demangleConversionOperatorIdentifierER10StringView.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit25
  %.2 = phi ptr [ %.sink13.i.i, %_ZN12_GLOBAL__N_19Demangler36demangleConversionOperatorIdentifierER10StringView.exit ], [ %.sink17.i24, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit25 ], [ %.sink17.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit ], [ %.sink14.i.i, %_ZN12_GLOBAL__N_19Demangler26demangleStructorIdentifierER10StringViewb.exit ], [ %.sink13.i.i27, %_ZN12_GLOBAL__N_19Demangler33demangleLiteralOperatorIdentifierER10StringView.exit ], [ %.sink17.i32, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_31IntrinsicFunctionIdentifierNodeEJNS0_21IntrinsicFunctionKindEEEEPT_DpOT0_.exit33 ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr %1, ptr %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 9
  br i1 %i.c, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  %.not.not.i.i.i.i.i.fr = freeze i1 %.not.not.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZeqRK10StringViewS1_.exit.thread7.us
  %.09.us = phi i64 [ %i.r, %_ZeqRK10StringViewS1_.exit.thread7.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.us
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp eq i64 %i.g, %i.p
  br i1 %i.q, label %.thread, label %_ZeqRK10StringViewS1_.exit.thread7.us

_ZeqRK10StringViewS1_.exit.thread7.us:            ; preds = %.lr.ph.split.us
  %i.r = add nuw i64 %.09.us, 1                   ; 2 uses
  %exitcond12.not = icmp eq i64 %i.r, %i.b
  br i1 %exitcond12.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !194

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZeqRK10StringViewS1_.exit.thread7
  %.09 = phi i64 [ %i.ac, %_ZeqRK10StringViewS1_.exit.thread7 ], [ 0, %.lr.ph ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !40   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %i.g, %i.aa
  br i1 %i.ab, label %_ZeqRK10StringViewS1_.exit, label %_ZeqRK10StringViewS1_.exit.thread7

_ZeqRK10StringViewS1_.exit:                       ; preds = %.lr.ph.split
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %i.x, i64 %i.g)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %.thread, label %_ZeqRK10StringViewS1_.exit.thread7

_ZeqRK10StringViewS1_.exit.thread7:               ; preds = %.lr.ph.split, %_ZeqRK10StringViewS1_.exit
  %i.ac = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !194

._crit_edge:                                      ; preds = %_ZeqRK10StringViewS1_.exit.thread7, %_ZeqRK10StringViewS1_.exit.thread7.us, %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !35
  %i.aj = add i64 %i.ag, 7
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.al, %i.ag
  %i.am = add i64 %reass.sub.i, 40                ; 2 uses
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !33
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.aq = inttoptr i64 %i.al to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ar = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.as = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.at, ptr %i.au, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 4096, ptr %i.av, align 8, !tbaa !33
  store ptr %i.ar, ptr %i.ad, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 40, ptr %i.aw, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.as, %bb.c ], [ %i.aq, %bb.b ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 5, ptr %i.ax, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %1, ptr %i.az, align 8, !tbaa !55
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store ptr %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  store ptr %.sink13.i, ptr %i.bd, align 8, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %_ZeqRK10StringViewS1_.exit, %.lr.ph.split.us, %bb.a, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !15
  %i.f = icmp eq i8 %i.e, 63
  br i1 %i.f, label %bb.b, label %_ZN10StringView12consumeFrontEc.exit.i

bb.b:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %bb.b, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.a, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.i = phi i1 [ true, %bb.b ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i ], [ false, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.c
  br i1 %i.j, label %.thread, label %_ZL15startsWithDigit10StringView.exit.i

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %_ZN10StringView12consumeFrontEc.exit.i
  %i.k = load i8, ptr %i.h, align 1, !tbaa !15    ; 2 uses
  %i.l = sext i8 %i.k to i32
  %isdigittmp.i.i = add nsw i32 %i.l, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %i.m = sext i8 %i.k to i64
  %i.n = add nsw i64 %i.m, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

.lr.ph.preheader.i:                               ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %i.o = ptrtoint ptr %i.c to i64
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = sub i64 %i.o, %i.p
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.02557.i = phi i64 [ %i.y, %bb.e ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.03656.i = phi i64 [ %i.x, %bb.e ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02557.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15    ; 2 uses
  %i.t = icmp eq i8 %i.s, 64
  br i1 %i.t, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = add i8 %i.s, -65                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.u, 16
  br i1 %or.cond.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.v = shl i64 %.03656.i, 4
  %i.w = zext nneg i8 %i.u to i64
  %i.x = or disjoint i64 %i.v, %i.w
  %i.y = add nuw i64 %.02557.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.q
  br i1 %exitcond.not.i, label %.thread, label %.lr.ph.i, !llvm.loop !4

.thread:                                          ; preds = %bb.e, %bb.d, %_ZN10StringView12consumeFrontEc.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.z, align 8, !tbaa !28
  br label %bb.h

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit: ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02557.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, %bb.c
  %.pn = phi ptr [ %i.h, %bb.c ], [ %i.aa, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ]
  %.sroa.0.4.i = phi i64 [ %i.n, %bb.c ], [ %.03656.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ] ; 4 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  store ptr %storemerge, ptr %1, align 8, !tbaa !55
  %i.ab = icmp slt i64 %.sroa.0.4.i, 0
  br i1 %i.ab, label %.split, label %bb.f

.split:                                           ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ac, align 8, !tbaa !28
  br i1 %i.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split, %bb.f
  %i.ad = sub nsw i64 0, %.sroa.0.4.i
  br label %bb.h

bb.h:                                             ; preds = %.split, %.thread, %bb.f, %bb.g
  %i.ae = phi i64 [ %i.ad, %bb.g ], [ %.sroa.0.4.i, %bb.f ], [ 0, %.thread ], [ %.sroa.0.4.i, %.split ]
  ret i64 %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = add i64 %i.e, %i.c
  %i.g = add i64 %i.f, 7
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 32                   ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !31
  %i.p = load ptr, ptr %0, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !33
  store ptr %i.n, ptr %0, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 32, ptr %i.s, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink20 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %i.t = load i64, ptr %1, align 8, !tbaa !53
  %i.u = load i8, ptr %2, align 1, !tbaa !117, !range !51, !noundef !52
  %i.v = getelementptr inbounds nuw i8, ptr %.sink20, i64 8
  store i32 23, ptr %i.v, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18IntegerLiteralNodeE, i64 16), ptr %.sink20, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %.sink20, i64 16
  store i64 %i.t, ptr %i.w, align 8, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %.sink20, i64 24
  store i8 %i.u, ptr %i.x, align 8, !tbaa !103
  ret ptr %.sink20
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !55 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !55 ; 2 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload, %.sroa.2.0.copyload
  br i1 %i.a, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit

_ZL15startsWithDigit10StringView.exit:            ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !15 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigit10StringView.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.d = sext i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  store ptr %i.i, ptr %1, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
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
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 56                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !33
  store ptr %i.o, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 56, ptr %i.t, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink19.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 12 ; 3 uses
  store i8 0, ptr %i.v, align 4, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 20 ; 2 uses
  store i8 0, ptr %i.x, align 4, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 22
  store i16 8, ptr %i.y, align 2, !tbaa !97
  %i.z = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 24 ; 2 uses
  store i32 0, ptr %i.z, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 32 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 40
  store i8 0, ptr %i.ab, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 48 ; 2 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !96
  %.pre = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  br i1 %2, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41 ; 4 uses
  %i.af = icmp eq ptr %.pre, %i.ae
  br i1 %i.af, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.d
  %i.ag = load i8, ptr %.pre, align 1, !tbaa !15
  %i.ah = icmp eq i8 %i.ag, 69
  br i1 %i.ah, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %.pre, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %.pre, %bb.d ] ; 5 uses
  %i.ak = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.al = icmp eq ptr %i.aj, %i.ae
  br i1 %i.al, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.an = icmp eq i8 %i.am, 73
  br i1 %i.an, label %bb.f, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.ao, ptr %1, align 8, !tbaa !55
  %i.ap = or disjoint i8 %i.ak, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.aq = phi ptr [ %i.ao, %bb.f ], [ %i.aj, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.aj, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 5 uses
  %i.ar = phi i8 [ %i.ap, %bb.f ], [ %i.ak, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.ak, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.as = icmp eq ptr %i.aq, %i.ae
  br i1 %i.as, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i8.i

_ZNK10StringView10startsWithEc.exit.i8.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !15
  %i.au = icmp eq i8 %i.at, 70
  br i1 %i.au, label %bb.g, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

bb.g:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !55
  %i.aw = or i8 %i.ar, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.g
  %i.ax = phi ptr [ %i.av, %bb.g ], [ %i.aq, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.aq, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 5 uses
  %i.ay = phi i8 [ %i.aw, %bb.g ], [ %i.ar, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.ar, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 3 uses
  store i8 %i.ay, ptr %i.v, align 4, !tbaa !91
  %i.az = icmp eq ptr %i.ax, %i.ae
  br i1 %i.az, label %_ZL28demangleFunctionRefQualifierR10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i.i18

_ZNK10StringView10startsWithEc.exit.i.i18:        ; preds = %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !15
  switch i8 %i.ba, label %_ZL28demangleFunctionRefQualifierR10StringView.exit [
    i8 71, label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i
    i8 72, label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split
  ]

_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18
  br label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i

_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split
  %.0.ph.i = phi i32 [ 1, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ 2, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  br label %_ZL28demangleFunctionRefQualifierR10StringView.exit

_ZL28demangleFunctionRefQualifierR10StringView.exit: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i
  %i.bc = phi ptr [ %i.ax, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ %i.ax, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit ], [ %i.bb, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i ] ; 2 uses
  %.0.i = phi i32 [ 0, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ 0, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit ], [ %.0.ph.i, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i ]
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.add.v4i32
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

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !16}
!5 = distinct !{!5, !16}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSN4llvh11ms_demangle21IntrinsicFunctionKindE", !10, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"vtable pointer", !9, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"bool", !10, i64 0}
!22 = !{!"any pointer", !10, i64 0}
!23 = !{!"p1 _ZTSN4llvh11ms_demangle14ArenaAllocator13AllocatorNodeE", !22, i64 0}
!24 = !{!"_ZTSN4llvh11ms_demangle14ArenaAllocatorE", !23, i64 0}
!25 = !{!"long", !10, i64 0}
!26 = !{!"_ZTSN12_GLOBAL__N_114BackrefContextE", !10, i64 0, !25, i64 80, !10, i64 88, !25, i64 168}
!27 = !{!"_ZTSN12_GLOBAL__N_19DemanglerE", !21, i64 8, !24, i64 16, !26, i64 24}
!28 = !{!27, !21, i64 8}
!29 = !{!"p1 omnipotent char", !22, i64 0}
!30 = !{!"_ZTSN4llvh11ms_demangle14ArenaAllocator13AllocatorNodeE", !29, i64 0, !25, i64 8, !25, i64 16, !23, i64 24}
!31 = !{!30, !29, i64 0}
!32 = !{!30, !23, i64 24}
!33 = !{!30, !25, i64 16}
!34 = !{!24, !23, i64 0}
!35 = !{!30, !25, i64 8}
!36 = !{!"_ZTS12OutputStream", !29, i64 0, !25, i64 8, !25, i64 16, !11, i64 24, !11, i64 28}
!37 = !{!36, !11, i64 24}
!38 = !{!36, !11, i64 28}
!39 = !{!"_ZTS10StringView", !29, i64 0, !29, i64 8}
!40 = !{!39, !29, i64 0}
!41 = !{!39, !29, i64 8}
!42 = !{!27, !25, i64 104}
!43 = !{!36, !25, i64 8}
!44 = !{!36, !29, i64 0}
!45 = !{!36, !25, i64 16}
!46 = !{!"p1 _ZTSN4llvh11ms_demangle8TypeNodeE", !22, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!27, !25, i64 192}
!49 = !{!"p1 _ZTSN4llvh11ms_demangle19NamedIdentifierNodeE", !22, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!25, !25, i64 0}
!54 = !{ptr @_ZN12_GLOBAL__N_19DemanglerD2Ev}
!55 = !{!29, !29, i64 0}
!56 = !{!"_ZTSN4llvh11ms_demangle8NodeKindE", !10, i64 0}
!57 = !{!"_ZTSN4llvh11ms_demangle4NodeE", !56, i64 8}
!58 = !{!57, !56, i64 8}
!59 = !{!"p1 _ZTSN4llvh11ms_demangle17QualifiedNameNodeE", !22, i64 0}
!60 = !{!"_ZTSN4llvh11ms_demangle10SymbolNodeE", !57, i64 0, !59, i64 16}
!61 = !{!60, !59, i64 16}
!62 = !{!"p1 _ZTSN4llvh11ms_demangle13NodeArrayNodeE", !22, i64 0}
!63 = !{!"_ZTSN4llvh11ms_demangle14IdentifierNodeE", !57, i64 0, !62, i64 16}
!64 = !{!63, !62, i64 16}
!65 = !{!"_ZTSN4llvh11ms_demangle10QualifiersE", !10, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"_ZTSN4llvh11ms_demangle17QualifiedNameNodeE", !57, i64 0, !62, i64 16}
!68 = !{!67, !62, i64 16}
!69 = !{!"any p2 pointer", !22, i64 0}
!70 = !{!"p2 _ZTSN4llvh11ms_demangle4NodeE", !69, i64 0}
!71 = !{!"_ZTSN4llvh11ms_demangle13NodeArrayNodeE", !57, i64 0, !70, i64 16, !25, i64 24}
!72 = !{!71, !70, i64 16}
!73 = !{!71, !25, i64 24}
!74 = !{!"p1 _ZTSN4llvh11ms_demangle4NodeE", !22, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"p1 _ZTSN4llvh11ms_demangle14IdentifierNodeE", !22, i64 0}
!77 = !{!"_ZTSN4llvh11ms_demangle22StructorIdentifierNodeE", !63, i64 0, !76, i64 24, !21, i64 32}
!78 = !{!77, !76, i64 24}
!79 = !{!"p1 _ZTSN4llvh11ms_demangle21FunctionSignatureNodeE", !22, i64 0}
!80 = !{!"_ZTSN4llvh11ms_demangle18FunctionSymbolNodeE", !60, i64 0, !79, i64 24}
!81 = !{!80, !79, i64 24}
!82 = !{!"_ZTSN4llvh11ms_demangle8TypeNodeE", !57, i64 0, !65, i64 12}
!83 = !{!"_ZTSN4llvh11ms_demangle15PointerAffinityE", !10, i64 0}
!84 = !{!"_ZTSN4llvh11ms_demangle11CallingConvE", !10, i64 0}
!85 = !{!"_ZTSN4llvh11ms_demangle9FuncClassE", !10, i64 0}
!86 = !{!"_ZTSN4llvh11ms_demangle20FunctionRefQualifierE", !10, i64 0}
!87 = !{!"_ZTSN4llvh11ms_demangle21FunctionSignatureNodeE", !82, i64 0, !83, i64 16, !84, i64 20, !85, i64 22, !86, i64 24, !46, i64 32, !21, i64 40, !62, i64 48}
!88 = !{!87, !46, i64 32}
!89 = !{!"_ZTSN4llvh11ms_demangle32ConversionOperatorIdentifierNodeE", !63, i64 0, !46, i64 24}
!90 = !{!89, !46, i64 24}
!91 = !{!82, !65, i64 12}
!92 = !{!87, !83, i64 16}
!93 = !{!87, !84, i64 20}
!94 = !{!87, !86, i64 24}
!95 = !{!87, !21, i64 40}
!96 = !{!87, !62, i64 48}
!97 = !{!87, !85, i64 22}
!98 = !{!"_ZTSN4llvh11ms_demangle15PointerTypeNodeE", !82, i64 0, !83, i64 16, !59, i64 24, !46, i64 32}
!99 = !{!98, !59, i64 24}
!100 = !{!98, !46, i64 32}
!101 = !{!"_ZTSN4llvh11ms_demangle18IntegerLiteralNodeE", !57, i64 0, !25, i64 16, !21, i64 24}
!102 = !{!101, !25, i64 16}
!103 = !{!101, !21, i64 24}
!104 = !{!"p1 _ZTS8NodeList", !22, i64 0}
!105 = !{!"_ZTS8NodeList", !74, i64 0, !104, i64 8}
!106 = !{!105, !74, i64 0}
!107 = !{!105, !104, i64 8}
!108 = !{!"_ZTSN4llvh11ms_demangle13PrimitiveKindE", !10, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"_ZTSN4llvh11ms_demangle17PrimitiveTypeNodeE", !82, i64 0, !108, i64 16}
!111 = !{!110, !108, i64 16}
!112 = !{!"_ZTSN4llvh11ms_demangle12StorageClassE", !10, i64 0}
!113 = !{!"_ZTSN4llvh11ms_demangle18VariableSymbolNodeE", !60, i64 0, !112, i64 24, !46, i64 32}
!114 = !{!113, !112, i64 24}
!115 = !{!113, !46, i64 32}
!116 = !{!104, !104, i64 0}
!117 = !{!21, !21, i64 0}
!118 = !{!"_ZTSN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE", !63, i64 0, !13, i64 24}
!119 = !{!118, !13, i64 24}
!120 = distinct !{!120, !16, !17, !18}
!121 = distinct !{!121, !16, !18, !17}
!122 = distinct !{!122, !16, !17, !18}
!123 = distinct !{!123, !16, !18, !17}
!124 = distinct !{null}
!125 = distinct !{!125, !16}
!126 = distinct !{!126, !16}
!127 = !{!26, !25, i64 80}
!128 = !{!26, !25, i64 168}
!129 = distinct !{null}
!130 = distinct !{null, null}
!131 = distinct !{null, null, null, ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView}
!132 = distinct !{null, null, ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView}
!133 = !{!"_ZTSN4llvh11ms_demangle22SpecialTableSymbolNodeE", !60, i64 0, !59, i64 24, !65, i64 32}
!134 = !{!133, !59, i64 24}
!135 = distinct !{!135, !16}
!136 = !{!"_ZTSN4llvh11ms_demangle8CharKindE", !10, i64 0}
!137 = !{!"_ZTSN4llvh11ms_demangle24EncodedStringLiteralNodeE", !60, i64 0, !39, i64 24, !21, i64 40, !136, i64 44}
!138 = !{!137, !136, i64 44}
!139 = !{!137, !21, i64 40}
!140 = !{!"_ZTSN4llvh11ms_demangle24VcallThunkIdentifierNodeE", !63, i64 0, !25, i64 24}
!141 = !{!140, !25, i64 24}
!142 = !{!"_ZTSN4llvh11ms_demangle30LocalStaticGuardIdentifierNodeE", !63, i64 0, !11, i64 24}
!143 = !{!142, !11, i64 24}
!144 = !{!"_ZTSN4llvh11ms_demangle28LocalStaticGuardVariableNodeE", !60, i64 0, !21, i64 24}
!145 = !{!144, !21, i64 24}
!146 = distinct !{null}
!147 = distinct !{null}
!148 = distinct !{null}
!149 = distinct !{!149, !16}
!150 = distinct !{null}
!151 = !{!"_ZTSN4llvh11ms_demangle7TagKindE", !10, i64 0}
!152 = !{!"_ZTSN4llvh11ms_demangle11TagTypeNodeE", !82, i64 0, !59, i64 16, !151, i64 24}
!153 = !{!152, !59, i64 16}
!154 = !{!152, !151, i64 24}
!155 = !{!98, !83, i64 16}
!156 = !{!83, !83, i64 0}
!157 = !{!"_ZTSN4llvh11ms_demangle13ArrayTypeNodeE", !82, i64 0, !62, i64 16, !46, i64 24}
!158 = !{!157, !62, i64 16}
!159 = !{!157, !46, i64 24}
!160 = !{ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb}
!161 = !{!"_ZTSN4llvh11ms_demangle14CustomTypeNodeE", !82, i64 0, !76, i64 16}
!162 = !{!161, !76, i64 16}
!163 = !{!"_ZTSN4llvh11ms_demangle27RttiBaseClassDescriptorNodeE", !63, i64 0, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!164 = !{!163, !11, i64 24}
!165 = !{!163, !11, i64 28}
!166 = !{!163, !11, i64 32}
!167 = !{!163, !11, i64 36}
!168 = !{!"p1 _ZTSN4llvh11ms_demangle18VariableSymbolNodeE", !22, i64 0}
!169 = !{!"_ZTSN4llvh11ms_demangle29DynamicStructorIdentifierNodeE", !63, i64 0, !168, i64 24, !59, i64 32, !21, i64 40}
!170 = !{!169, !21, i64 40}
!171 = !{!169, !168, i64 24}
!172 = !{!169, !59, i64 32}
!173 = distinct !{!173, !16}
!174 = distinct !{null}
!175 = distinct !{!175, !16}
!176 = distinct !{null, null}
!177 = distinct !{!177, !16}
!178 = distinct !{null}
!179 = distinct !{!179, !181}
!180 = distinct !{!180, !16}
!181 = !{!"llvm.loop.unroll.disable"}
!182 = distinct !{null}
!183 = distinct !{!183, !16}
!184 = !{i64 0, i64 80, !15, i64 80, i64 8, !53, i64 88, i64 80, !15, i64 168, i64 8, !53}
!185 = !{i64 0, i64 80, !15, i64 80, i64 8, !53}
!186 = !{!"p1 _ZTSN4llvh11ms_demangle10SymbolNodeE", !22, i64 0}
!187 = !{!"_ZTSSt5arrayIlLm3EE", !10, i64 0}
!188 = !{!"_ZTSN4llvh11ms_demangle30TemplateParameterReferenceNodeE", !57, i64 0, !186, i64 16, !11, i64 24, !187, i64 32, !83, i64 56, !21, i64 60}
!189 = !{!188, !186, i64 16}
!190 = !{!188, !11, i64 24}
!191 = !{!188, !83, i64 56}
!192 = !{!188, !21, i64 60}
!193 = !{!77, !21, i64 32}
!194 = distinct !{!194, !16}
!195 = distinct !{!195, !16}
!196 = !{!"_ZTSN4llvh11ms_demangle18ThunkSignatureNode12ThisAdjustorE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!197 = !{!"_ZTSN4llvh11ms_demangle18ThunkSignatureNodeE", !87, i64 0, !196, i64 56}
!198 = !{!197, !11, i64 56}
!199 = !{!197, !11, i64 60}
!200 = !{!197, !11, i64 64}
!201 = !{!197, !11, i64 68}
!202 = distinct !{null, ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView}
!203 = !{ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView}
end_hunk_4
