inline.NumInlined: 678
inline.NumDeleted: 474
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.155", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.155" = type { %"class.llvh::SmallVectorImpl.156", %"struct.llvh::SmallVectorStorage.159" }
%"class.llvh::SmallVectorImpl.156" = type { %"class.llvh::SmallVectorTemplateBase.157" }
%"class.llvh::SmallVectorTemplateBase.157" = type { %"class.llvh::SmallVectorTemplateCommon.158" }
%"class.llvh::SmallVectorTemplateCommon.158" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.159" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.160"] }
%"struct.llvh::AlignedCharArrayUnion.160" = type { %"struct.llvh::AlignedCharArray.161" }
%"struct.llvh::AlignedCharArray.161" = type { [8 x i8] }
%"class.std::reverse_iterator" = type { ptr }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.12 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.12 = type { i64, [8 x i8] }
%"class.llvh::SmallString" = type { %"class.llvh::SmallVector.201" }
%"class.llvh::SmallVector.201" = type { %"class.llvh::SmallVectorImpl.202", %"struct.llvh::SmallVectorStorage.205" }
%"class.llvh::SmallVectorImpl.202" = type { %"class.llvh::SmallVectorTemplateBase.203" }
%"class.llvh::SmallVectorTemplateBase.203" = type { %"class.llvh::SmallVectorTemplateCommon.204" }
%"class.llvh::SmallVectorTemplateCommon.204" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.205" = type { [32 x %"struct.llvh::AlignedCharArrayUnion.206"] }
%"struct.llvh::AlignedCharArrayUnion.206" = type { %"struct.llvh::AlignedCharArray.207" }
%"struct.llvh::AlignedCharArray.207" = type { [1 x i8] }
%"class.hermes::vm::SmallXString" = type { %"class.llvh::SmallVector.252" }
%"class.llvh::SmallVector.252" = type { %"class.llvh::SmallVectorImpl.253", %"struct.llvh::SmallVectorStorage.256" }
%"class.llvh::SmallVectorImpl.253" = type { %"class.llvh::SmallVectorTemplateBase.254" }
%"class.llvh::SmallVectorTemplateBase.254" = type { %"class.llvh::SmallVectorTemplateCommon.255" }
%"class.llvh::SmallVectorTemplateCommon.255" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.256" = type { [32 x %"struct.llvh::AlignedCharArrayUnion.257"] }
%"struct.llvh::AlignedCharArrayUnion.257" = type { %"struct.llvh::AlignedCharArray.258" }
%"struct.llvh::AlignedCharArray.258" = type { [2 x i8] }
%"class.llvh::Twine" = type <{ %"union.llvh::Twine::Child", %"union.llvh::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvh::Twine::Child" = type { ptr }

$_ZN6hermes2vmplERKNS0_11TwineChar16ES3_ = comdat any

$_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE = comdat any

@.str = private unnamed_addr constant [32 x i8] c"Unable to find module with ID: \00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to find module: \00", align 1
@_ZN6hermes2vm15HandleRootOwner10nullValue_E = external local_unnamed_addr global %"class.hermes::vm::PinnedHermesValue", align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm14runRequireCallERNS0_7RuntimeENS0_6HandleINS0_14RequireContextEEENS3_INS0_6DomainEEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !7
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.c, align 4, !tbaa !3
  %i.d = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = zext i32 %3 to i64                       ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %.sroa.0.0.copyload.i.i64 = load i64, ptr %i.j, align 8, !tbaa !7 ; 8 uses
  %.mask.i = and i64 %.sroa.0.0.copyload.i.i64, -140737488355328
  %i.k = icmp eq i64 %.mask.i, -1970324836974592
  br i1 %i.k, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %3, 1
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.m
  %.sroa.0.0.copyload.i.i67 = load i64, ptr %i.n, align 8, !tbaa !7 ; 3 uses
  %i.o = icmp ugt i64 %.sroa.0.0.copyload.i.i67, -844424930131969
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = and i64 %.sroa.0.0.copyload.i.i67, 281474976710655
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, -436207616
  %i.t = icmp ult i32 %i.s, 855638016
  br i1 %i.t, label %_ZNK6hermes2vm6Domain9getModuleERNS0_7RuntimeEj.exit, label %bb.f

_ZNK6hermes2vm6Domain9getModuleERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.u = or i64 %.sroa.0.0.copyload.i.i67, -281474976710656 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !9    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23
  %i.ab = icmp ult ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e, !prof !24

bb.d:                                             ; preds = %_ZNK6hermes2vm6Domain9getModuleERNS0_7RuntimeEj.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !13
  store i64 %i.u, ptr %i.y, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %_ZNK6hermes2vm6Domain9getModuleERNS0_7RuntimeEj.exit
  %i.ad = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.w, i64 %i.u) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ae = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 473, ptr %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.af = extractvalue { i32, i64 } %i.ae, 0
  %i.ag = extractvalue { i32, i64 } %i.ae, 1
  %i.ah = icmp ne i32 %i.af, 0                    ; 2 uses
  %spec.select = zext i1 %i.ah to i32
  %spec.select146 = select i1 %i.ah, i64 %i.ag, i64 %.sroa.0.0.copyload.i.i64, !prof !24
  br label %.thread

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr %0, ptr %4, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !9
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.ap, align 4, !tbaa !28
  store ptr %i.am, ptr %i.an, align 8
  store i32 1, ptr %i.ao, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 192
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.al, ptr %i.ar, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 0, ptr %i.as, align 8, !tbaa !30
  store ptr %4, ptr %i.aj, align 8, !tbaa !9
  %i.at = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = or i64 %i.au, -281474976710656          ; 2 uses
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !9  ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 192 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !13 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 200
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23
  %i.bb = icmp ult ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !13
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit70

bb.h:                                             ; preds = %bb.f
  %i.bd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aw, i64 %i.av) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit70

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit70: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i69 = phi ptr [ %i.ay, %bb.g ], [ %i.bd, %bb.h ] ; 6 uses
  %i.be = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = or i64 %i.bf, -281474976710656          ; 2 uses
  %i.bh = load ptr, ptr %i.aj, align 8, !tbaa !9  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 192 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23
  %i.bm = icmp ult ptr %i.bj, %i.bl
  br i1 %i.bm, label %bb.i, label %bb.j, !prof !24

bb.i:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit70
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !13
  store i64 %i.bg, ptr %i.bj, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit72

bb.j:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit70
  %i.bo = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bh, i64 %i.bg) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit72

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit72: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i71 = phi ptr [ %i.bj, %bb.i ], [ %i.bo, %bb.j ] ; 3 uses
  %i.bp = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i69, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 473, ptr %.0.i.i.i.i.i.i71, ptr %.0.i.i.i.i.i.i69, i32 0) #10
  %.mask = and i32 %i.bp, 255
  %i.bq = icmp eq i32 %.mask, 0
  br i1 %i.bq, label %.critedge, label %bb.k, !prof !31

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit72
  %.sroa.0.0.copyload.i.i73 = load i64, ptr %2, align 8, !tbaa !7
  %i.br = and i64 %.sroa.0.0.copyload.i.i73, 281474976710655
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %.sroa.0.0.copyload.i.i.i74 = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bu = zext i32 %.sroa.0.0.copyload.i.i.i74 to i64
  %i.bv = add i64 %i.bu, %i.d
  %i.bw = inttoptr i64 %i.bv to ptr
  %.sroa.0.0.copyload.i.i75 = load i64, ptr %.0.i.i.i.i.i.i69, align 8, !tbaa !7 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.m ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !32
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = and i64 %i.cb, -4194304
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = icmp eq ptr %i.ca, %i.cd
  br i1 %i.ce, label %_ZN6hermes2vm6Domain9setModuleEjRNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, label %bb.l, !prof !24

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.by, i64 %.sroa.0.0.copyload.i.i75) #10
  br label %_ZN6hermes2vm6Domain9setModuleEjRNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm6Domain9setModuleEjRNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.k, %bb.l
  store i64 %.sroa.0.0.copyload.i.i75, ptr %i.by, align 8, !tbaa !36
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !9  ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 192 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !13 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 200
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !23
  %i.cl = icmp ult ptr %i.ci, %i.ck
  br i1 %i.cl, label %bb.m, label %bb.n, !prof !24

bb.m:                                             ; preds = %_ZN6hermes2vm6Domain9setModuleEjRNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cm, ptr %i.ch, align 8, !tbaa !13
  store i64 -281474976710656, ptr %i.ci, align 8, !tbaa !7
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.n:                                             ; preds = %_ZN6hermes2vm6Domain9setModuleEjRNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.cn = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cg, i64 -281474976710656) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i.i76 = phi ptr [ %i.ci, %bb.m ], [ %i.cn, %bb.n ] ; 4 uses
  %i.co = load i64, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.cp = icmp ugt i64 %i.co, -844424930131969
  %i.cq = and i64 %i.co, 281474976710655
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = and i1 %i.cp, %i.cr
  br i1 %i.cs, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cu, ptr %5, align 8, !tbaa !38
  %i.cv = call { i32, i64 } @_ZN6hermes2vm13BoundFunction6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEjSt16reverse_iteratorIPKNS0_17PinnedHermesValueEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.ct, i32 noundef 1, ptr noundef nonnull dead_on_return %5) #10 ; 2 uses
  %i.cw = extractvalue { i32, i64 } %i.cv, 0
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.critedge, label %bb.p, !prof !31

bb.p:                                             ; preds = %bb.o
  %i.cy = extractvalue { i32, i64 } %i.cv, 1
  %i.cz = or i64 %i.cy, -281474976710656
  store i64 %i.cz, ptr %.0.i.i.i.i.i.i76, align 8, !tbaa !36
  %i.da = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr nonnull %.0.i.i.i.i.i.i76, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 472, i16 2, ptr nonnull %1) #10
  %.not = icmp eq i32 %i.da, 0
  br i1 %.not, label %.critedge, label %.critedge63, !prof !31

bb.q:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %.sroa.0.0.copyload.i.i77 = load i64, ptr %2, align 8, !tbaa !7
  %i.db = and i64 %.sroa.0.0.copyload.i.i77, 281474976710655
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = call ptr @_ZNK6hermes2vm6Domain18getThrowingRequireERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(96) %i.dc, ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = or i64 %i.de, -281474976710656
  store i64 %i.df, ptr %.0.i.i.i.i.i.i76, align 8, !tbaa !36
  br label %.critedge63

.critedge63:                                      ; preds = %bb.p, %bb.q
  %.sroa.0.0.copyload.i.i78 = load i64, ptr %2, align 8, !tbaa !7
  %i.dg = and i64 %.sroa.0.0.copyload.i.i78, 281474976710655
  %i.dh = inttoptr i64 %i.dg to ptr               ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = udiv i32 %3, 3
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !40
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !44 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
end_hunk_0
