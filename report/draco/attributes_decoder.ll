Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/attributes_decoder?download=true
inline.NumInlined: 250
inline.NumDeleted: 161
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.draco::GeometryAttribute" = type { ptr, %"struct.draco::DataBufferDescriptor", i8, i32, i8, i64, i64, i32, i32 }
%"struct.draco::DataBufferDescriptor" = type { i64, i64 }
%"class.std::unique_ptr.12" = type { %"struct.std::__uniq_ptr_data.13" }
%"struct.std::__uniq_ptr_data.13" = type { %"class.std::__uniq_ptr_impl.14" }
%"class.std::__uniq_ptr_impl.14" = type { %"class.std::tuple.15" }
%"class.std::tuple.15" = type { %"struct.std::_Tuple_impl.16" }
%"struct.std::_Tuple_impl.16" = type { %"struct.std::_Head_base.19" }
%"struct.std::_Head_base.19" = type { ptr }

$_ZN5draco17AttributesDecoderD2Ev = comdat any

$_ZN5draco17AttributesDecoderD0Ev = comdat any

$_ZN5draco17AttributesDecoder16DecodeAttributesEPNS_13DecoderBufferE = comdat any

$_ZNK5draco17AttributesDecoder14GetAttributeIdEi = comdat any

$_ZNK5draco17AttributesDecoder16GetNumAttributesEv = comdat any

$_ZNK5draco17AttributesDecoder10GetDecoderEv = comdat any

$_ZN5draco26AttributesDecoderInterface20GetPortableAttributeEi = comdat any

$_ZN5draco17AttributesDecoder36DecodeDataNeededByPortableTransformsEPNS_13DecoderBufferE = comdat any

$_ZN5draco17AttributesDecoder35TransformAttributesToOriginalFormatEv = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_ = comdat any

$_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi = comdat any

$_ZTIN5draco26AttributesDecoderInterfaceE = comdat any

$_ZTSN5draco26AttributesDecoderInterfaceE = comdat any

@_ZTVN5draco17AttributesDecoderE = constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN5draco17AttributesDecoderE, ptr @_ZN5draco17AttributesDecoderD2Ev, ptr @_ZN5draco17AttributesDecoderD0Ev, ptr @_ZN5draco17AttributesDecoder4InitEPNS_17PointCloudDecoderEPNS_10PointCloudE, ptr @_ZN5draco17AttributesDecoder27DecodeAttributesDecoderDataEPNS_13DecoderBufferE, ptr @_ZN5draco17AttributesDecoder16DecodeAttributesEPNS_13DecoderBufferE, ptr @_ZNK5draco17AttributesDecoder14GetAttributeIdEi, ptr @_ZNK5draco17AttributesDecoder16GetNumAttributesEv, ptr @_ZNK5draco17AttributesDecoder10GetDecoderEv, ptr @_ZN5draco26AttributesDecoderInterface20GetPortableAttributeEi, ptr @__cxa_pure_virtual, ptr @_ZN5draco17AttributesDecoder36DecodeDataNeededByPortableTransformsEPNS_13DecoderBufferE, ptr @_ZN5draco17AttributesDecoder35TransformAttributesToOriginalFormatEv] }, align 8
@_ZTIN5draco17AttributesDecoderE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5draco17AttributesDecoderE, ptr @_ZTIN5draco26AttributesDecoderInterfaceE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5draco17AttributesDecoderE = constant [28 x i8] c"N5draco17AttributesDecoderE\00", align 1
@_ZTIN5draco26AttributesDecoderInterfaceE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5draco26AttributesDecoderInterfaceE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5draco26AttributesDecoderInterfaceE = linkonce_odr constant [37 x i8] c"N5draco26AttributesDecoderInterfaceE\00", comdat, align 1
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5draco17AttributesDecoderC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco17AttributesDecoderE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN5draco17AttributesDecoder4InitEPNS_17PointCloudDecoderEPNS_10PointCloudE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((56, 72)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %2, ptr %i.b, align 8, !tbaa !21
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco17AttributesDecoder27DecodeAttributesDecoderDataEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef captures(none) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.draco::GeometryAttribute", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"class.std::unique_ptr.12", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %4 = load i16, ptr %i.f, align 8
  %5 = and i16 %4, 254
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = add i64 %i.j, 4                          ; 2 uses
  %.not84 = icmp slt i64 %i.h, %i.k
  br i1 %.not84, label %.critedge47, label %_ZN5draco13DecoderBuffer6DecodeIjEEbPT_.exit.thread

_ZN5draco13DecoderBuffer6DecodeIjEEbPT_.exit.thread: ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !30
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.j
  %i.n = load i32, ptr %i.m, align 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = call fastcc noundef zeroext i1 @_ZN5draco12_GLOBAL__N_120DecodeVarintUnsignedIjEEbiPT_PNS_13DecoderBufferE(i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %1)
  br i1 %i.o, label %thread-pre-split, label %.critedge47

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i32, ptr %i.a, align 4, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %_ZN5draco13DecoderBuffer6DecodeIjEEbPT_.exit.thread
  %i.p = phi i32 [ %.pr, %thread-pre-split ], [ %i.n, %_ZN5draco13DecoderBuffer6DecodeIjEEbPT_.exit.thread ] ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = zext i32 %i.p to i64                     ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !29
  %i.w = sub nsw i64 %i.t, %i.v
  %i.x = mul nsw i64 %i.w, 5
  %i.y = icmp slt i64 %i.x, %i.r
  br i1 %i.y, label %.critedge47, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.r
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = sub nuw nsw i64 %i.r, %i.ag
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.ai)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = icmp ugt i64 %i.ag, %i.r
  br i1 %i.aj, label %bb.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.r ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.ak
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.i
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !32
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %.critedge54
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %indvars.iv.next, %.critedge54 ] ; 3 uses
  %i.ar = load i64, ptr %i.s, align 8, !tbaa !28  ; 4 uses
  %i.as = load i64, ptr %i.u, align 8, !tbaa !29  ; 5 uses
  %i.at = add i64 %i.as, 1                        ; 3 uses
  %.not85 = icmp slt i64 %i.ar, %i.at
  br i1 %.not85, label %.critedge47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %1, align 8, !tbaa !30    ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  store i64 %i.at, ptr %i.u, align 8, !tbaa !29
  %i.ax = add i64 %i.as, 2                        ; 3 uses
  %.not86 = icmp slt i64 %i.ar, %i.ax
  br i1 %.not86, label %.critedge47, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.at
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  store i64 %i.ax, ptr %i.u, align 8, !tbaa !29
  %i.ba = add i64 %i.as, 3                        ; 3 uses
  %.not87 = icmp slt i64 %i.ar, %i.ba
  br i1 %.not87, label %.critedge47, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.bc = load i8, ptr %i.bb, align 1             ; 3 uses
  store i64 %i.ba, ptr %i.u, align 8, !tbaa !29
  %i.bd = add i64 %i.as, 4                        ; 2 uses
  %.not88 = icmp slt i64 %i.ar, %i.bd
  br i1 %.not88, label %.critedge47, label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit57

_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit57:   ; preds = %bb.m
  %i.be = getelementptr inbounds i8, ptr %i.au, i64 %i.ba
  %i.bf = load i8, ptr %i.be, align 1
  store i64 %i.bd, ptr %i.u, align 8, !tbaa !29
  %i.bg = icmp ugt i8 %i.aw, 4
  br i1 %i.bg, label %.critedge47, label %bb.n

bb.n:                                             ; preds = %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit57
  %i.bh = add i8 %i.az, -12
  %or.cond = icmp ult i8 %i.bh, -11
  %i.bi = icmp eq i8 %i.bc, 0
  %or.cond52 = select i1 %or.cond, i1 true, i1 %i.bi
  br i1 %or.cond52, label %.critedge47, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = zext nneg i8 %i.az to i32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN5draco17GeometryAttributeC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.bk = zext nneg i8 %i.aw to i32
  %i.bl = icmp ne i8 %i.bf, 0
  %i.bm = call noundef i32 @_ZN5draco14DataTypeLengthENS_8DataTypeE(i32 noundef %i.bj)
  %i.bn = zext i8 %i.bc to i32
  %i.bo = mul nsw i32 %i.bm, %i.bn
  %i.bp = sext i32 %i.bo to i64
  call void @_ZN5draco17GeometryAttribute4InitENS0_4TypeEPNS_10DataBufferEhNS_8DataTypeEbll(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.bk, ptr noundef null, i8 noundef zeroext %i.bc, i32 noundef %i.bj, i1 noundef zeroext %i.bl, i64 noundef %i.bp, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %7 = load i16, ptr %i.br, align 8
  %8 = call noundef i16 @llvm.bswap.i16(i16 %7)
  %i.bs = icmp ult i16 %8, 259
  br i1 %i.bs, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bt = load i64, ptr %i.s, align 8, !tbaa !28
  %i.bu = load i64, ptr %i.u, align 8, !tbaa !29  ; 2 uses
  %i.bv = add i64 %i.bu, 2                        ; 2 uses
  %.not89 = icmp slt i64 %i.bt, %i.bv
  br i1 %.not89, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %1, align 8, !tbaa !30
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bu
  %i.by = load i16, ptr %i.bx, align 1
  store i64 %i.bv, ptr %i.u, align 8, !tbaa !29
  %i.bz = zext i16 %i.by to i32                   ; 2 uses
  store i32 %i.bz, ptr %i.b, align 4, !tbaa !31
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.ca = call fastcc noundef zeroext i1 @_ZN5draco12_GLOBAL__N_120DecodeVarintUnsignedIjEEbiPT_PNS_13DecoderBufferE(i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %1)
  br i1 %i.ca, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.cb = load i32, ptr %i.b, align 4, !tbaa !31
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %storemerge = phi i32 [ %i.cb, %bb.s ], [ %i.bz, %bb.q ] ; 2 uses
  store i32 %storemerge, ptr %i.an, align 4, !tbaa !42
  %i.cc = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #14 ; 3 uses
  invoke void @_ZN5draco14PointAttributeC1ERKNS_17GeometryAttributeE(ptr noundef nonnull align 8 dereferenceable(112) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %bb.t
  store ptr %i.cc, ptr %3, align 8, !tbaa !44
  %i.cd = invoke noundef i32 @_ZN5draco10PointCloud12AddAttributeESt10unique_ptrINS_14PointAttributeESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(164) %i.am, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.v unwind label %bb.ac      ; 4 uses

bb.v:                                             ; preds = %bb.u
  %i.ce = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.ce)
  br label %_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %bb.w
  %i.cf = sext i32 %i.cd to i64                   ; 2 uses
  %i.cg = load ptr, ptr %i.ao, align 8, !tbaa !47
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 60
  store i32 %storemerge, ptr %i.cj, align 4, !tbaa !42
  %i.ck = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %i.cd, ptr %i.cl, align 4, !tbaa !31
  %i.cm = load ptr, ptr %i.aq, align 8, !tbaa !32 ; 3 uses
  %i.cn = load ptr, ptr %i.ap, align 8, !tbaa !33 ; 6 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2                 ; 4 uses
  %i.cs = trunc i64 %i.cr to i32
  %.not = icmp slt i32 %i.cd, %i.cs
  br i1 %.not, label %.critedge54, label %bb.x

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit
  %i.ct = add nsw i32 %i.cd, 1
  %i.cu = sext i32 %i.ct to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 -1, ptr %i.c, align 4, !tbaa !31
  %i.cv = icmp ult i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cw = sub nuw nsw i64 %i.cu, %i.cr
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr %i.cm, i64 noundef %i.cw, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %.pre.pre = load ptr, ptr %i.ap, align 8, !tbaa !33
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.z:                                             ; preds = %bb.x
  %i.cx = icmp ugt i64 %i.cr, %i.cu
  br i1 %i.cx, label %bb.aa, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cu ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.cm, %i.cy
  br i1 %.not.i.i58, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i59

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i59:      ; preds = %bb.aa
  store ptr %i.cy, ptr %i.aq, align 8, !tbaa !32
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %bb.y, %bb.z, %bb.aa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i59
  %.pre = phi ptr [ %.pre.pre, %bb.y ], [ %i.cn, %bb.z ], [ %i.cn, %bb.aa ], [ %i.cn, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.critedge54

bb.ab:                                            ; preds = %bb.t
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 112) #15
  br label %_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit61

bb.ac:                                            ; preds = %bb.u
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %.not.i60 = icmp eq ptr %i.db, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit61, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.db)
  br label %_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit61

.critedge54:                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, %_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit
  %i.dc = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ], [ %i.cn, %_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cf
  %i.de = trunc nuw i64 %indvars.iv to i32
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond.not, label %.critedge47, label %bb.j, !llvm.loop !37

.critedge:                                        ; preds = %bb.p, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %.critedge47

_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit61: ; preds = %bb.ad, %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.ab ], [ %i.da, %bb.ac ], [ %i.da, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  resume { ptr, i32 } %.pn

.critedge47:                                      ; preds = %bb.m, %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit57, %bb.n, %bb.j, %bb.k, %bb.l, %.critedge54, %bb.b, %.critedge, %bb.e, %bb.d, %bb.c
  %.7 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %.critedge ], [ false, %bb.b ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit57 ], [ true, %.critedge54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN5draco17GeometryAttributeC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare void @_ZN5draco17GeometryAttribute4InitENS0_4TypeEPNS_10DataBufferEhNS_8DataTypeEbll(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5draco14DataTypeLengthENS_8DataTypeE(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef i32 @_ZN5draco10PointCloud12AddAttributeESt10unique_ptrINS_14PointAttributeESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(164), ptr nofreeobj noundef align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN5draco14PointAttributeC1ERKNS_17GeometryAttributeE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco17AttributesDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco17AttributesDecoderE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco17AttributesDecoderD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17AttributesDecoder16DecodeAttributesEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ %i.l, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco17AttributesDecoder14GetAttributeIdEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco17AttributesDecoder16GetNumAttributesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5draco17AttributesDecoder10GetDecoderEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5draco26AttributesDecoderInterface20GetPortableAttributeEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17AttributesDecoder36DecodeDataNeededByPortableTransformsEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17AttributesDecoder35TransformAttributesToOriginalFormatEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN5draco12_GLOBAL__N_120DecodeVarintUnsignedIjEEbiPT_PNS_13DecoderBufferE(i32 noundef range(i32 1, 7) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp samesign ugt i32 %0, 5
  br i1 %i.a, label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %.not13 = icmp slt i64 %i.c, %i.f
  br i1 %.not13, label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !30
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %i.e
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !29
  %.not = icmp sgt i8 %i.i, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw nsw i32 %0, 1
  %i.k = tail call fastcc noundef zeroext i1 @_ZN5draco12_GLOBAL__N_120DecodeVarintUnsignedIjEEbiPT_PNS_13DecoderBufferE(i32 noundef %i.j, ptr noundef %1, ptr noundef nonnull %2)
  br i1 %i.k, label %bb.e, label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %1, align 4, !tbaa !31
  %i.m = shl i32 %i.l, 7
  %i.n = and i8 %i.i, 127
  %i.o = zext nneg i8 %i.n to i32
  %i.p = or disjoint i32 %i.m, %i.o
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.q = zext nneg i8 %i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge = phi i32 [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !31
  br label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit

_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit:     ; preds = %bb.g, %bb.d, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.g ], [ false, %bb.d ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !31
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !32
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #14 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !31
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !31
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #15
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #15
  br label %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 48) #15
  br label %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 4 uses
  %.not.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i1.i, label %_ZN5draco14PointAttributeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #15
  br label %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 40) #15
  br label %_ZN5draco14PointAttributeD2Ev.exit

_ZN5draco14PointAttributeD2Ev.exit:               ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i, %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 112) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZN5draco14PointAttributeD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !31     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !66

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !31
  store i32 %i.s, ptr %i.d, align 4, !tbaa !31
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !32
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !31
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !31
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !31
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !58

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !59

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !31
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !61

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !32
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !66

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !31
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !31
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !32
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !31
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !31
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !62

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !31
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !63

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !33    ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !31    ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !31
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !31
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !64

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !31
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !65

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !66

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !31
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !31
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !66

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !31
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #15
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !33
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8, !tbaa !36
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTSN5draco26AttributesDecoderInterfaceE"}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !13, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorIiSaIiEE", !15, i64 0}
!17 = !{!"p1 _ZTSN5draco17PointCloudDecoderE", !11, i64 0}
!18 = !{!"p1 _ZTSN5draco10PointCloudE", !11, i64 0}
!19 = !{!"_ZTSN5draco17AttributesDecoderE", !10, i64 0, !16, i64 8, !16, i64 32, !17, i64 56, !18, i64 64}
!20 = !{!19, !17, i64 56}
!21 = !{!19, !18, i64 64}
!22 = !{!"p1 omnipotent char", !11, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSN5draco13DecoderBuffer10BitDecoderE", !22, i64 0, !22, i64 8, !23, i64 16}
!25 = !{!"bool", !4, i64 0}
!26 = !{!"short", !4, i64 0}
!27 = !{!"_ZTSN5draco13DecoderBufferE", !22, i64 0, !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 48, !26, i64 50}
!28 = !{!27, !23, i64 8}
!29 = !{!27, !23, i64 16}
!30 = !{!27, !22, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!13, !12, i64 8}
!33 = !{!13, !12, i64 0}
!34 = !{!"p1 _ZTSN5draco10DataBufferE", !11, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!13, !12, i64 16}
!37 = distinct !{!37, !35}
!38 = !{!"_ZTSN5draco20DataBufferDescriptorE", !23, i64 0, !23, i64 8}
!39 = !{!"_ZTSN5draco8DataTypeE", !4, i64 0}
!40 = !{!"_ZTSN5draco17GeometryAttribute4TypeE", !4, i64 0}
!41 = !{!"_ZTSN5draco17GeometryAttributeE", !34, i64 0, !38, i64 8, !4, i64 24, !39, i64 28, !25, i64 32, !23, i64 40, !23, i64 48, !40, i64 56, !5, i64 60}
!42 = !{!41, !5, i64 60}
!43 = !{!"p1 _ZTSN5draco14PointAttributeE", !11, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"p1 _ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !11, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!46, !45, i64 0}
!48 = !{!"p1 _ZTSN5draco22AttributeTransformDataE", !11, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!51 = !{!50, !22, i64 0}
!52 = !{!50, !22, i64 16}
!53 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !11, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!54, !53, i64 0}
!56 = !{!54, !53, i64 16}
!57 = !{!34, !34, i64 0}
!58 = distinct !{!58, !35, !67, !68}
!59 = distinct !{!59, !35, !68, !67}
!60 = distinct !{!60, !35, !67, !68}
!61 = distinct !{!61, !35, !68, !67}
!62 = distinct !{!62, !35, !67, !68}
!63 = distinct !{!63, !35, !68, !67}
!64 = distinct !{!64, !35, !67, !68}
!65 = distinct !{!65, !35, !68, !67}
!66 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
