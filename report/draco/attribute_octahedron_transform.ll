Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/attribute_octahedron_transform?download=true
inline.NumInlined: 210
inline.NumDeleted: 126
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.draco::OctahedronToolBox" = type { i32, i32, i32, float, i32 }

$_ZNK5draco17OctahedronToolBox38FloatVectorToQuantizedOctahedralCoordsIfEEvPKT_PiS5_ = comdat any

$_ZN5draco18AttributeTransformD2Ev = comdat any

$_ZN5draco28AttributeOctahedronTransformD0Ev = comdat any

$_ZNK5draco28AttributeOctahedronTransform4TypeEv = comdat any

$_ZNK5draco28AttributeOctahedronTransform22GetTransformedDataTypeERKNS_14PointAttributeE = comdat any

$_ZNK5draco28AttributeOctahedronTransform27GetTransformedNumComponentsERKNS_14PointAttributeE = comdat any

$_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag = comdat any

@_ZTVN5draco28AttributeOctahedronTransformE = local_unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN5draco28AttributeOctahedronTransformE, ptr @_ZN5draco18AttributeTransformD2Ev, ptr @_ZN5draco28AttributeOctahedronTransformD0Ev, ptr @_ZNK5draco28AttributeOctahedronTransform4TypeEv, ptr @_ZN5draco28AttributeOctahedronTransform17InitFromAttributeERKNS_14PointAttributeE, ptr @_ZNK5draco28AttributeOctahedronTransform28CopyToAttributeTransformDataEPNS_22AttributeTransformDataE, ptr @_ZN5draco28AttributeOctahedronTransform18TransformAttributeERKNS_14PointAttributeERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS7_EEPS1_, ptr @_ZN5draco28AttributeOctahedronTransform25InverseTransformAttributeERKNS_14PointAttributeEPS1_, ptr @_ZNK5draco28AttributeOctahedronTransform16EncodeParametersEPNS_13EncoderBufferE, ptr @_ZN5draco28AttributeOctahedronTransform16DecodeParametersERKNS_14PointAttributeEPNS_13DecoderBufferE, ptr @_ZN5draco18AttributeTransform24InitTransformedAttributeERKNS_14PointAttributeEi, ptr @_ZNK5draco28AttributeOctahedronTransform22GetTransformedDataTypeERKNS_14PointAttributeE, ptr @_ZNK5draco28AttributeOctahedronTransform27GetTransformedNumComponentsERKNS_14PointAttributeE] }, align 8
@_ZTIN5draco28AttributeOctahedronTransformE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5draco28AttributeOctahedronTransformE, ptr @_ZTIN5draco18AttributeTransformE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5draco28AttributeOctahedronTransformE = constant [39 x i8] c"N5draco28AttributeOctahedronTransformE\00", align 1
@_ZTIN5draco18AttributeTransformE = external constant ptr
@.str = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5draco28AttributeOctahedronTransform17InitFromAttributeERKNS_14PointAttributeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %.not7 = icmp eq i32 %i.c, 2
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %.0.copyload.i = load i32, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0.copyload.i, ptr %i.f, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZNK5draco28AttributeOctahedronTransform28CopyToAttributeTransformDataEPNS_22AttributeTransformDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef initializes((0, 4)) %1) unnamed_addr #2 align 2 {
bb.a:
  store i32 2, ptr %1, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = shl i64 %i.g, 32
  %i.i = ashr exact i64 %i.h, 32                  ; 2 uses
  %i.j = add nsw i64 %i.i, 4                      ; 2 uses
  %i.k = icmp ugt i64 %i.j, %i.g
  br i1 %i.k, label %bb.b, label %_ZN5draco22AttributeTransformData20AppendParameterValueIiEEvRKT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5draco10DataBuffer6ResizeEl(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef %i.j)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %_ZN5draco22AttributeTransformData20AppendParameterValueIiEEvRKT_.exit

_ZN5draco22AttributeTransformData20AppendParameterValueIiEEvRKT_.exit: ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %.pre.i.i, %bb.b ], [ %i.d, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.i
  %i.o = load i32, ptr %i.m, align 8
  store i32 %i.o, ptr %i.n, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco28AttributeOctahedronTransform18TransformAttributeERKNS_14PointAttributeERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS7_EEPS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  %i.c = tail call noundef zeroext i1 @_ZNK5draco28AttributeOctahedronTransform25GeneratePortableAttributeERKNS_14PointAttributeERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS7_EEiPS1_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.b, ptr noundef nonnull %3)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5draco28AttributeOctahedronTransform25GeneratePortableAttributeERKNS_14PointAttributeERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS7_EEiPS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %5 = alloca %"class.draco::OctahedronToolBox", align 4 ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50
  %i.h = load ptr, ptr %4, align 8, !tbaa !51
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %i.m = add i32 %i.l, -2
  %or.cond.i = icmp ult i32 %i.m, 29              ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.l, ptr %5, align 4, !tbaa !70
  %notmask.i = shl nsw i32 -1, %i.l               ; 2 uses
  %i.r = xor i32 %notmask.i, -1
  store i32 %i.r, ptr %i.q, align 4, !tbaa !71
  %i.s = sub nuw nsw i32 -2, %notmask.i           ; 3 uses
  store i32 %i.s, ptr %i.p, align 4, !tbaa !54
  %i.t = uitofp nneg i32 %i.s to float
  %i.u = fdiv float 2.000000e+00, %i.t
  store float %i.u, ptr %i.o, align 4, !tbaa !72
  %i.v = lshr i32 %i.s, 1
  store i32 %i.v, ptr %i.n, align 4, !tbaa !55
  %i.w = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not46 = icmp eq i32 %3, 0
  br i1 %.not46, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit, label %.lr.ph45

.lr.ph45:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %.cont34
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.cont34 ] ; 2 uses
  %6 = phi ptr [ %i.w, %.lr.ph ], [ %i.be, %.cont34 ]
  %7 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %.cont34 ]
  %.042.a = phi i32 [ 0, %.lr.ph ], [ %i.bb, %.cont34 ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !76 ; 2 uses
  %i.ak = load i8, ptr %i.aa, align 4, !tbaa !77, !range !78, !noalias !79, !noundef !80
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.cont34, label %.else35

.else35:                                          ; preds = %bb.c
  %i.am = load ptr, ptr %i.ab, align 8, !noalias !79
  %i.an = zext i32 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %storemerge.i.else.val = load i32, ptr %i.ao, align 4, !tbaa !56, !noalias !79
  br label %.cont34

.cont34:                                          ; preds = %bb.c, %.else35
  %storemerge.i = phi i32 [ %i.aj, %bb.c ], [ %storemerge.i.else.val, %.else35 ]
  %i.ap = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.aq = load i64, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.ar = zext i32 %storemerge.i to i64
  %i.as = mul nsw i64 %i.aq, %i.ar
  %i.at = load ptr, ptr %1, align 8, !tbaa !51
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21
  %i.av = getelementptr i8, ptr %i.au, i64 %i.ap
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.a, ptr align 1 %i.aw, i64 %i.aq, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @_ZNK5draco17OctahedronToolBox38FloatVectorToQuantizedOctahedralCoordsIfEEvPKT_PiS5_(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !56
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !56
  %i.az = load i32, ptr %i.c, align 4, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.bb = add i32 %.042.a, 1                      ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !83
  %i.be = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = icmp ugt i64 %i.bi, %i.bc
  br i1 %i.bj, label %bb.c, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit, !llvm.loop !66

bb.d:                                             ; preds = %.lr.ph45, %.cont
  %indvars.iv51 = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next52, %.cont ] ; 3 uses
  %indvars.iv49 = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next50, %.cont ] ; 2 uses
  %i.bk = load i8, ptr %i.ae, align 4, !tbaa !77, !range !78, !noalias !85, !noundef !80
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.cont, label %.else

.else:                                            ; preds = %bb.d
  %i.bm = load ptr, ptr %i.af, align 8, !noalias !85
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv51
  %storemerge.i25.else.val = load i32, ptr %i.bn, align 4, !tbaa !56, !noalias !85
  %i.bo = zext i32 %storemerge.i25.else.val to i64
  br label %.cont

.cont:                                            ; preds = %bb.d, %.else
  %storemerge.i25 = phi i64 [ %indvars.iv51, %bb.d ], [ %i.bo, %.else ]
  %i.bp = load i64, ptr %i.ag, align 8, !tbaa !50
  %i.bq = load i64, ptr %i.ah, align 8, !tbaa !81 ; 2 uses
  %i.br = mul nsw i64 %i.bq, %storemerge.i25
  %i.bs = load ptr, ptr %1, align 8, !tbaa !51
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bp
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.a, ptr align 1 %i.bv, i64 %i.bq, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @_ZNK5draco17OctahedronToolBox38FloatVectorToQuantizedOctahedralCoordsIfEEvPKT_PiS5_(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.bw = load i32, ptr %i.d, align 4, !tbaa !56
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv49 ; 2 uses
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !56
  %i.by = load i32, ptr %i.e, align 4, !tbaa !56
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count
  br i1 %exitcond.not, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit, label %bb.d, !llvm.loop !69

_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit: ; preds = %.cont34, %.cont, %.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %or.cond.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5draco28AttributeOctahedronTransform25InverseTransformAttributeERKNS_14PointAttributeEPS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !91
  %.not = icmp eq i32 %i.b, 9
  br i1 %.not, label %bb.b, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !92
  %.not19 = icmp eq i8 %i.f, 3
  br i1 %.not19, label %bb.c, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = add i32 %i.h, -2
  %or.cond.i = icmp ult i32 %i.i, 29
  br i1 %or.cond.i, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread

_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit: ; preds = %bb.c
  %notmask.i.neg = shl nuw nsw i32 1, %i.h
  %i.j = add nsw i32 %notmask.i.neg, -2
  %i.k = uitofp nneg i32 %i.j to float
  %i.l = fdiv float 2.000000e+00, %i.k            ; 2 uses
  %.not28 = icmp eq i32 %i.d, 0
  br i1 %.not28, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !51
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 5 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !51
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 %i.u     ; 5 uses
  %i.w = zext i32 %i.d to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.x = add i32 %i.d, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = mul nuw nsw i64 %i.y, 12
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.u
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 12
  %i.ad = shl nuw nsw i64 %i.y, 3
  %i.ae = getelementptr i8, ptr %i.n, i64 %i.p
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %bound0 = icmp ult ptr %i.v, %i.ag
  %bound1 = icmp ult ptr %i.q, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4294967292               ; 5 uses
  %i.ah = trunc nuw i64 %n.vec to i32
  %i.ai = mul nuw nsw i64 %n.vec, 12
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.ak = shl nuw nsw i64 %n.vec, 3
  %i.al = getelementptr i8, ptr %i.q, i64 %i.ak
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.am
  %i.an = shl i64 %index, 3
  %next.gep31 = getelementptr i8, ptr %i.q, i64 %i.an
  %wide.vec = load <8 x i32>, ptr %next.gep31, align 4, !tbaa !56, !alias.scope !93 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec32 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ao = sitofp <4 x i32> %strided.vec to <4 x float>
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %broadcast.splat, <4 x float> splat (float -1.000000e+00)) ; 3 uses
  %i.aq = sitofp <4 x i32> %strided.vec32 to <4 x float>
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %broadcast.splat, <4 x float> splat (float -1.000000e+00)) ; 3 uses
  %i.as = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ap)
  %i.at = fsub <4 x float> splat (float 1.000000e+00), %i.as
  %i.au = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ar)
  %i.av = fsub <4 x float> %i.at, %i.au           ; 5 uses
  %i.aw = fneg <4 x float> %i.av
  %i.ax = fcmp ogt <4 x float> %i.av, zeroinitializer
  %i.ay = select <4 x i1> %i.ax, <4 x float> zeroinitializer, <4 x float> %i.aw ; 3 uses
  %i.az = fcmp olt <4 x float> %i.ap, zeroinitializer
  %i.ba = fneg <4 x float> %i.ay                  ; 2 uses
  %i.bb = select <4 x i1> %i.az, <4 x float> %i.ay, <4 x float> %i.ba
  %i.bc = fadd <4 x float> %i.ap, %i.bb           ; 3 uses
  %i.bd = fcmp olt <4 x float> %i.ar, zeroinitializer
  %i.be = select <4 x i1> %i.bd, <4 x float> %i.ay, <4 x float> %i.ba
  %i.bf = fadd <4 x float> %i.ar, %i.be           ; 3 uses
  %i.bg = fmul <4 x float> %i.bc, %i.bc
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.av, <4 x float> %i.bg)
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.bf, <4 x float> %i.bh) ; 2 uses
  %i.bj = fpext <4 x float> %i.bi to <4 x double>
  %i.bk = fcmp olt <4 x double> %i.bj, splat (double f0x3EB0C6F7A0B5ED8D) ; 3 uses
  %i.bl = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bi)
  %i.bm = fdiv <4 x float> splat (float 1.000000e+00), %i.bl ; 3 uses
  %i.bn = fmul <4 x float> %i.av, %i.bm
  %i.bo = fmul <4 x float> %i.bc, %i.bm
  %i.bp = fmul <4 x float> %i.bf, %i.bm
  %predphi = select <4 x i1> %i.bk, <4 x float> zeroinitializer, <4 x float> %i.bn
  %predphi33 = select <4 x i1> %i.bk, <4 x float> zeroinitializer, <4 x float> %i.bo
  %predphi34 = select <4 x i1> %i.bk, <4 x float> zeroinitializer, <4 x float> %i.bp
  %i.bq = shufflevector <4 x float> %predphi, <4 x float> %predphi33, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = shufflevector <4 x float> %predphi34, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.bq, <8 x float> %i.br, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !94, !noalias !93
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.w
  br i1 %cmp.n, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.01627.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  %.01726.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %.01825.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  %i.bt = insertelement <2 x float> poison, float %i.l, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit
  %.01627 = phi i32 [ %i.df, %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit ], [ %.01627.ph, %.lr.ph.preheader37 ]
  %.01726 = phi ptr [ %i.de, %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit ], [ %.01726.ph, %.lr.ph.preheader37 ] ; 3 uses
  %.01825 = phi ptr [ %i.bv, %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit ], [ %.01825.ph, %.lr.ph.preheader37 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01825, i64 8
  %i.bw = load <2 x i32>, ptr %.01825, align 4, !tbaa !56
  %i.bx = sitofp <2 x i32> %i.bw to <2 x float>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bu, <2 x float> splat (float -1.000000e+00)) ; 4 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0
  %i.ca = extractelement <2 x float> %i.by, i64 1
  %i.cb = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.by) ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0
  %i.cd = fsub float 1.000000e+00, %i.cc
  %i.ce = extractelement <2 x float> %i.cb, i64 1
  %i.cf = fsub float %i.cd, %i.ce                 ; 5 uses
  %i.cg = fneg float %i.cf
  %i.ch = fcmp ogt float %i.cf, 0.000000e+00
  %i.ci = select i1 %i.ch, float 0.000000e+00, float %i.cg ; 3 uses
  %i.cj = fneg float %i.ci                        ; 2 uses
  %i.ck = fcmp olt <2 x float> %i.by, zeroinitializer ; 2 uses
  %i.cl = extractelement <2 x i1> %i.ck, i64 0
  %i.cm = select i1 %i.cl, float %i.ci, float %i.cj
  %i.cn = fadd float %i.bz, %i.cm                 ; 3 uses
  %i.co = extractelement <2 x i1> %i.ck, i64 1
  %i.cp = select i1 %i.co, float %i.ci, float %i.cj
  %i.cq = fadd float %i.ca, %i.cp                 ; 3 uses
  %i.cr = fmul float %i.cn, %i.cn
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.cr)
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cs) ; 2 uses
  %i.cu = fpext float %i.ct to double
  %i.cv = fcmp olt double %i.cu, f0x3EB0C6F7A0B5ED8D
  br i1 %i.cv, label %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.ct)
  %i.cw = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.cx = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cn, i64 1
  %i.cz = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x float> %i.cy, %i.da
  %i.dc = fmul float %i.cq, %i.cw
  br label %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit

_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit: ; preds = %.lr.ph, %bb.d
  %.sink.i.i = phi float [ %i.dc, %bb.d ], [ 0.000000e+00, %.lr.ph ]
  %i.dd = phi <2 x float> [ %i.db, %bb.d ], [ zeroinitializer, %.lr.ph ]
  store <2 x float> %i.dd, ptr %.01726, align 1
  %.sroa.5.0..017.sroa_idx = getelementptr inbounds nuw i8, ptr %.01726, i64 8
  store float %.sink.i.i, ptr %.sroa.5.0..017.sroa_idx, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.01726, i64 12
  %i.df = add nuw i32 %.01627, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %i.d
end_hunk_0
