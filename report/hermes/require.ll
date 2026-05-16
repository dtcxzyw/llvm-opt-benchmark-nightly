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
  %.shift.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %6 = load i8, ptr %.shift.i.i.i.i.i.i.i.i.i.i, align 1
  %7 = add i8 %6, -26
  %i.r = icmp ult i8 %7, 51
  br i1 %i.r, label %_ZNK6hermes2vm6Domain9getModuleERNS0_7RuntimeEj.exit, label %bb.f

_ZNK6hermes2vm6Domain9getModuleERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.s = or i64 %.sroa.0.0.copyload.i.i67, -281474976710656 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e, !prof !24

bb.d:                                             ; preds = %_ZNK6hermes2vm6Domain9getModuleERNS0_7RuntimeEj.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !13
  store i64 %i.s, ptr %i.w, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %_ZNK6hermes2vm6Domain9getModuleERNS0_7RuntimeEj.exit
  %i.ab = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.u, i64 %i.s) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ac = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 473, ptr %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.ad = extractvalue { i32, i64 } %i.ac, 0
  %i.ae = extractvalue { i32, i64 } %i.ac, 1
  %i.af = icmp ne i32 %i.ad, 0                    ; 2 uses
  %spec.select = zext i1 %i.af to i32
  %spec.select146 = select i1 %i.af, i64 %i.ae, i64 %.sroa.0.0.copyload.i.i64, !prof !24
  br label %.thread

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr %0, ptr %4, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.an, align 4, !tbaa !28
  store ptr %i.ak, ptr %i.al, align 8
  store i32 1, ptr %i.am, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 192
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 0, ptr %i.aq, align 8, !tbaa !30
  store ptr %4, ptr %i.ah, align 8, !tbaa !9
  %i.ar = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = or i64 %i.as, -281474976710656          ; 2 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !9  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 192 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !13 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 200
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.az = icmp ult ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.g, label %bb.h, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !13
  store i64 %i.at, ptr %i.aw, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit70

bb.h:                                             ; preds = %bb.f
  %i.bb = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.au, i64 %i.at) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit70

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit70: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i69 = phi ptr [ %i.aw, %bb.g ], [ %i.bb, %bb.h ] ; 6 uses
  %i.bc = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = or i64 %i.bd, -281474976710656          ; 2 uses
  %i.bf = load ptr, ptr %i.ah, align 8, !tbaa !9  ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 192 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !13 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 200
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !23
  %i.bk = icmp ult ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.j, !prof !24

bb.i:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit70
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !13
  store i64 %i.be, ptr %i.bh, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit72

bb.j:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit70
  %i.bm = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bf, i64 %i.be) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit72

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit72: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i71 = phi ptr [ %i.bh, %bb.i ], [ %i.bm, %bb.j ] ; 3 uses
  %i.bn = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i69, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 473, ptr %.0.i.i.i.i.i.i71, ptr %.0.i.i.i.i.i.i69, i32 0) #10
  %.mask = and i32 %i.bn, 255
  %i.bo = icmp eq i32 %.mask, 0
  br i1 %i.bo, label %.critedge, label %bb.k, !prof !31

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit72
  %.sroa.0.0.copyload.i.i73 = load i64, ptr %2, align 8, !tbaa !7
  %i.bp = and i64 %.sroa.0.0.copyload.i.i73, 281474976710655
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %.sroa.0.0.copyload.i.i.i74 = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bs = zext i32 %.sroa.0.0.copyload.i.i.i74 to i64
  %i.bt = add i64 %i.bs, %i.d
  %i.bu = inttoptr i64 %i.bt to ptr
  %.sroa.0.0.copyload.i.i75 = load i64, ptr %.0.i.i.i.i.i.i69, align 8, !tbaa !7 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.m ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = and i64 %i.bz, -4194304
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = icmp eq ptr %i.by, %i.cb
  br i1 %i.cc, label %_ZN6hermes2vm6Domain9setModuleEjRNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, label %bb.l, !prof !24

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i64 %.sroa.0.0.copyload.i.i75) #10
  br label %_ZN6hermes2vm6Domain9setModuleEjRNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm6Domain9setModuleEjRNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.k, %bb.l
  store i64 %.sroa.0.0.copyload.i.i75, ptr %i.bw, align 8, !tbaa !36
  %i.ce = load ptr, ptr %i.ah, align 8, !tbaa !9  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 192 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !13 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 200
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !23
  %i.cj = icmp ult ptr %i.cg, %i.ci
  br i1 %i.cj, label %bb.m, label %bb.n, !prof !24

bb.m:                                             ; preds = %_ZN6hermes2vm6Domain9setModuleEjRNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ck, ptr %i.cf, align 8, !tbaa !13
  store i64 -281474976710656, ptr %i.cg, align 8, !tbaa !7
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.n:                                             ; preds = %_ZN6hermes2vm6Domain9setModuleEjRNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.cl = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ce, i64 -281474976710656) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i.i76 = phi ptr [ %i.cg, %bb.m ], [ %i.cl, %bb.n ] ; 4 uses
  %i.cm = load i64, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, -844424930131969
  %i.co = and i64 %i.cm, 281474976710655
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = and i1 %i.cn, %i.cp
  br i1 %i.cq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cs, ptr %5, align 8, !tbaa !38
  %i.ct = call { i32, i64 } @_ZN6hermes2vm13BoundFunction6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEjSt16reverse_iteratorIPKNS0_17PinnedHermesValueEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.cr, i32 noundef 1, ptr noundef nonnull dead_on_return %5) #10 ; 2 uses
  %i.cu = extractvalue { i32, i64 } %i.ct, 0
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %.critedge, label %bb.p, !prof !31

bb.p:                                             ; preds = %bb.o
  %i.cw = extractvalue { i32, i64 } %i.ct, 1
  %i.cx = or i64 %i.cw, -281474976710656
  store i64 %i.cx, ptr %.0.i.i.i.i.i.i76, align 8, !tbaa !36
  %i.cy = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr nonnull %.0.i.i.i.i.i.i76, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 472, i16 2, ptr nonnull %1) #10
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.critedge, label %.critedge63, !prof !31

bb.q:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %.sroa.0.0.copyload.i.i77 = load i64, ptr %2, align 8, !tbaa !7
  %i.cz = and i64 %.sroa.0.0.copyload.i.i77, 281474976710655
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = call ptr @_ZNK6hermes2vm6Domain18getThrowingRequireERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(96) %i.da, ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = or i64 %i.dc, -281474976710656
  store i64 %i.dd, ptr %.0.i.i.i.i.i.i76, align 8, !tbaa !36
  br label %.critedge63

.critedge63:                                      ; preds = %bb.p, %bb.q
  %.sroa.0.0.copyload.i.i78 = load i64, ptr %2, align 8, !tbaa !7
  %i.de = and i64 %.sroa.0.0.copyload.i.i78, 281474976710655
  %i.df = inttoptr i64 %i.de to ptr               ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = udiv i32 %3, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.di
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !44 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %.sroa.0.0.copyload.i.i.i80 = load i32, ptr %i.dm, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm11requireFastEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.bj = insertvalue { i32, i64 } %i.bi, i64 undef, 1
  br label %bb.g

bb.f:                                             ; preds = %_ZNK6hermes2vm6Domain18getCJSModuleOffsetERNS0_7RuntimeEj.exit
  %.sroa.0.0.extract.trunc = trunc i64 %i.av to i32
  %i.bk = tail call { i32, i64 } @_ZN6hermes2vm14runRequireCallERNS0_7RuntimeENS0_6HandleINS0_14RequireContextEEENS3_INS0_6DomainEEEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, ptr nonnull %.0.i.i.i.i.i.i.i, i32 noundef %.sroa.0.0.extract.trunc)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6hermes2vm6Domain18getCJSModuleOffsetERNS0_7RuntimeEj.exit.thread
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.bk, %bb.f ], [ %i.bj, %_ZNK6hermes2vm6Domain18getCJSModuleOffsetERNS0_7RuntimeEj.exit.thread ]
  ret { i32, i64 } %.fca.1.insert.merged
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::TwineChar16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100, !noalias !101 ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !100, !noalias !101 ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !100, !alias.scope !104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.h, align 8, !tbaa !94, !alias.scope !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !104
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.b, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !107
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %i.e, 1
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !107
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !noalias !101
  %i.p = icmp eq i32 %i.o, 1                      ; 2 uses
  %.sroa.06.0.copyload.i = load ptr, ptr %1, align 8, !noalias !101
  %.0.i = select i1 %i.p, i32 %i.b, i32 2
  %.sroa.06.0.i = select i1 %i.p, ptr %.sroa.06.0.copyload.i, ptr %1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i32, ptr %i.q, align 8, !noalias !101
  %i.s = icmp eq i32 %i.r, 1                      ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !noalias !101
  %.015.i = select i1 %i.s, i32 %i.e, i32 2
  %.sroa.03.0.i = select i1 %i.s, ptr %.sroa.03.0.copyload.i, ptr %2
  store ptr %.sroa.06.0.i, ptr %0, align 8, !tbaa !99, !alias.scope !101
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0.i, ptr %i.t, align 8, !tbaa !100, !alias.scope !101
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.03.0.i, ptr %i.u, align 8, !tbaa !99, !alias.scope !101
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.015.i, ptr %i.v, align 8, !tbaa !94, !alias.scope !101
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load <2 x i64>, ptr %i.l, align 8, !tbaa !7, !noalias !101 ; 2 uses
  %i.y = load <2 x i64>, ptr %i.m, align 8, !tbaa !7, !noalias !101 ; 2 uses
  %i.z = shufflevector <2 x i64> %i.x, <2 x i64> %i.y, <2 x i32> <i32 1, i32 3>
  %i.aa = shufflevector <2 x i64> %i.x, <2 x i64> %i.y, <2 x i32> <i32 0, i32 2>
  %i.ab = add <2 x i64> %i.z, %i.aa
  store <2 x i64> %i.ab, ptr %i.w, align 8, !tbaa !7, !alias.scope !101
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

_ZNK6hermes2vm11TwineChar166concatERKS1_.exit:    ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7requireEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 {
_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %6 = alloca %"class.llvh::SmallString", align 8 ; 13 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %1, ptr %5, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  store ptr %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !28
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !30
  store ptr %5, ptr %i.b, align 8, !tbaa !9
  %i.l = load ptr, ptr %2, align 8, !tbaa !38, !noalias !109 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.l, align 8, !tbaa !7
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.sroa.0.0.copyload.i.i.i28 = load i32, ptr %i.o, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i28, 0
  %i.p = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.q = zext i32 %.sroa.0.0.copyload.i.i.i28 to i64
  %i.r = add i64 %i.q, %i.p
  %i.s = or i64 %i.r, -281474976710656
  %i.t = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 %i.t, ptr %i.e, align 8, !tbaa !7
  %.sroa.0.0.copyload.i.i.i29 = load i64, ptr %i.l, align 8, !tbaa !7
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i29, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.0.0.copyload.i.i.i30 = load i32, ptr %i.x, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq i32 %.sroa.0.0.copyload.i.i.i30, 0
  %i.y = zext i32 %.sroa.0.0.copyload.i.i.i30 to i64
  %i.z = add i64 %i.y, %i.p
  %i.aa = or i64 %i.z, -844424930131968
  %i.ab = select i1 %.not.i.i.i.i.i31, i64 -844424930131968, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !13
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !88
  %.not = icmp eq i32 %.pre, 0
  %i.ad = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ad
  %i.ae = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10 ; 2 uses
  %.not66 = icmp eq ptr %i.ae, inttoptr (i64 -1 to ptr)
  br i1 %.not66, label %bb.ae, label %bb.a, !prof !31

bb.a:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = or i64 %i.af, -844424930131968          ; 3 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !9   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !13 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !13
  store i64 %i.ag, ptr %i.aj, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.ao = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ah, i64 %i.ag) #10 ; 2 uses
  %.sroa.0.0.copyload.i.i.i34.pre = load i64, ptr %i.ao, align 8, !tbaa !7, !noalias !112
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.copyload.i.i.i34 = phi i64 [ %i.ag, %bb.b ], [ %.sroa.0.0.copyload.i.i.i34.pre, %bb.c ]
  %.0.i.i.i.i.i.i33 = phi ptr [ %i.aj, %bb.b ], [ %i.ao, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 32, i1 false), !alias.scope !112
  store ptr %i.ap, ptr %6, align 8, !tbaa !27, !alias.scope !112
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !29, !alias.scope !112
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 32, ptr %i.ar, align 4, !tbaa !28, !alias.scope !112
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i34, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr               ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !115
  %i.aw = and i32 %i.av, 2147483647
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.q, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ax = load i32, ptr %i.at, align 4            ; 3 uses
  %i.ay = and i32 %i.ax, 16777216
  %i.az = icmp eq i32 %i.ay, 0
  %10 = lshr i32 %i.ax, 24
  %11 = trunc nuw i32 %10 to i8                   ; 2 uses
  %i.ba = icmp ugt i32 %i.ax, 150994943           ; 2 uses
  br i1 %i.az, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  br i1 %i.ba, label %bb.f, label %bb.g, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !119
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  switch i8 %11, label %bb.j [
    i8 8, label %bb.h
    i8 4, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bf, align 8, !tbaa !7
  %i.bg = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !119
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i.i

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %.0.i.i.i = phi ptr [ %i.bc, %bb.f ], [ %i.bd, %bb.h ], [ %i.be, %bb.i ], [ %i.bj, %bb.j ]
  %i.bk = load i8, ptr %.0.i.i.i, align 1, !tbaa !99
  %i.bl = sext i8 %i.bk to i16
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit.i

bb.k:                                             ; preds = %bb.d
  br i1 %i.ba, label %bb.l, label %bb.m, !prof !31

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !120
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  switch i8 %11, label %bb.p [
    i8 7, label %bb.n
    i8 3, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i.i

bb.p:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0.0.copyload.i.i.i5.i.i = load i64, ptr %i.bq, align 8, !tbaa !7
  %i.br = and i64 %.sroa.0.0.copyload.i.i.i5.i.i, 281474976710655
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !120
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i.i

_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %.0.i4.i.i = phi ptr [ %i.bn, %bb.l ], [ %i.bo, %bb.n ], [ %i.bp, %bb.o ], [ %i.bu, %bb.p ]
  %i.bv = load i16, ptr %.0.i4.i.i, align 2, !tbaa !124
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit.i

_ZNK6hermes2vm15StringPrimitive2atEj.exit.i:      ; preds = %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i.i, %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i.i
  %.0.i.i = phi i16 [ %i.bl, %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i.i ], [ %i.bv, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i.i ]
  %i.bw = icmp eq i16 %.0.i.i, 47
  br i1 %i.bw, label %_ZN6hermes2vmL16canonicalizePathERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive2atEj.exit.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  call fastcc void @"_ZZN6hermes2vmL16canonicalizePathERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_ENK3$_0clES5_j"(ptr nonnull align 8 %6, ptr nonnull readonly %i.u, i32 noundef 0)
  br label %_ZN6hermes2vmL16canonicalizePathERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_.exit

_ZN6hermes2vmL16canonicalizePathERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_.exit: ; preds = %_ZNK6hermes2vm15StringPrimitive2atEj.exit.i, %bb.q
  %.sink.i = phi i32 [ 0, %bb.q ], [ 1, %_ZNK6hermes2vm15StringPrimitive2atEj.exit.i ]
  call fastcc void @"_ZZN6hermes2vmL16canonicalizePathERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_ENK3$_0clES5_j"(ptr nonnull align 8 %6, ptr nonnull readonly %.0.i.i.i.i.i.i33, i32 noundef %.sink.i)
  %i.bx = call noundef zeroext i1 @_ZN4llvh3sys4path11remove_dotsERNS_15SmallVectorImplIcEEbNS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext true, i32 noundef 1) #10 ; 0 uses
  %i.by = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.bz = load i32, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %.not.i35 = icmp ult i32 %i.bz, 65536
  br i1 %.not.i35, label %bb.r, label %bb.s, !prof !24

bb.r:                                             ; preds = %_ZN6hermes2vmL16canonicalizePathERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_.exit
  %i.cb = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.by, i64 %i.ca) #10
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

bb.s:                                             ; preds = %_ZN6hermes2vmL16canonicalizePathERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr %i.by, i64 %i.ca)
  %i.cc = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %i.cd = load ptr, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !99
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit: ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.cb, %bb.r ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.ci = extractvalue { i32, i64 } %.pn.i, 0
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.ac, label %bb.t, !prof !31

bb.t:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  %i.ck = extractvalue { i32, i64 } %.pn.i, 1
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = call ptr @_ZN6hermes2vm16stringToSymbolIDERNS0_7RuntimeENS0_12PseudoHandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.cm) #10 ; 2 uses
  %.not67 = icmp eq ptr %i.cn, inttoptr (i64 -1 to ptr)
  br i1 %.not67, label %bb.ac, label %bb.u, !prof !31

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8, !tbaa !7
  %i.co = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i36 = load i64, ptr %i.cn, align 8, !tbaa !7
  %i.cq = trunc i64 %.sroa.0.0.copyload.i.i.i36 to i32 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !126 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !129 ; 4 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = mul i32 %i.cq, 37
  %i.cx = add i32 %i.cu, -1                       ; 2 uses
  %.03649.i.i.i = and i32 %i.cx, %i.cw            ; 2 uses
  %i.cy = zext i32 %.03649.i.i.i to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cy ; 2 uses
  %.sroa.05.0.copyload50.i.i.i = load i32, ptr %i.cz, align 4, !tbaa !3 ; 2 uses
  %i.da = icmp eq i32 %.sroa.05.0.copyload50.i.i.i, %i.cq
  br i1 %i.da, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.i, label %.lr.ph.i.i.i, !prof !130

.lr.ph.i.i.i:                                     ; preds = %bb.v, %bb.w
  %.sroa.05.0.copyload54.i.i.i = phi i32 [ %.sroa.05.0.copyload.i.i.i, %bb.w ], [ %.sroa.05.0.copyload50.i.i.i, %bb.v ]
  %.03653.i.i.i = phi i32 [ %.036.i.i.i, %bb.w ], [ %.03649.i.i.i, %bb.v ]
  %.03851.i.i.i = phi i32 [ %i.dc, %bb.w ], [ 1, %bb.v ] ; 2 uses
  %i.db = icmp eq i32 %.sroa.05.0.copyload54.i.i.i, 536870911
  br i1 %i.db, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit.i.i, label %bb.w, !prof !24

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.dc = add i32 %.03851.i.i.i, 1
  %i.dd = add i32 %.03851.i.i.i, %.03653.i.i.i
  %.036.i.i.i = and i32 %i.dd, %i.cx              ; 2 uses
  %i.de = zext i32 %.036.i.i.i to i64             ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.de
  %.sroa.05.0.copyload.i.i.i = load i32, ptr %i.df, align 4, !tbaa !3 ; 2 uses
  %i.dg = icmp eq i32 %.sroa.05.0.copyload.i.i.i, %i.cq
  br i1 %i.dg, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.i.loopexit, label %.lr.ph.i.i.i, !prof !131, !llvm.loop !132

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.u
  %i.dh = zext i32 %i.cu to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dh
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.i.loopexit: ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.de
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.i: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.i.loopexit, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit.i.i, %bb.v
  %.sink.i.ph.pn.i.i = phi ptr [ %i.di, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit.i.i ], [ %i.cz, %bb.v ], [ %i.dj, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.i.loopexit ] ; 2 uses
  %i.dk = zext i32 %i.cu to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dk
  %.not.i37 = icmp eq ptr %.sink.i.ph.pn.i.i, %i.dl
  br i1 %.not.i37, label %_ZNK6hermes2vm6Domain18getCJSModuleOffsetENS0_8SymbolIDE.exit.thread, label %_ZNK6hermes2vm6Domain18getCJSModuleOffsetENS0_8SymbolIDE.exit

_ZNK6hermes2vm6Domain18getCJSModuleOffsetENS0_8SymbolIDE.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  call void @_ZN4llvh3sys4path15remove_filenameERNS_15SmallVectorImplIcEENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 1) #10
  %i.do = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.dp = load i32, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %.not.i39 = icmp ult i32 %i.dp, 65536
  br i1 %.not.i39, label %bb.x, label %bb.y, !prof !24

_ZNK6hermes2vm6Domain18getCJSModuleOffsetENS0_8SymbolIDE.exit.thread: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.dr, align 8, !tbaa !94
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 23, ptr %i.ds, align 8, !tbaa !97
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.dt, align 8, !tbaa !98
  store ptr @.str.1, ptr %8, align 8, !tbaa !99
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.du, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %.sroa.0.0.copyload.i.i38 = load i64, ptr %.0.i.i.i.i.i.i33, align 8, !tbaa !7
  %i.dv = and i64 %.sroa.0.0.copyload.i.i38, 281474976710655
  %i.dw = inttoptr i64 %i.dv to ptr
  call void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.dw) #10
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.dx = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.ac

bb.x:                                             ; preds = %_ZNK6hermes2vm6Domain18getCJSModuleOffsetENS0_8SymbolIDE.exit
  %i.dy = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.do, i64 %i.dq) #10
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit44

bb.y:                                             ; preds = %_ZNK6hermes2vm6Domain18getCJSModuleOffsetENS0_8SymbolIDE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.do, i64 %i.dq)
  %i.dz = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %i.ea = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %bb.y
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !99
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit44

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit44: ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41
  %.pn.i42 = phi { i32, i64 } [ %i.dy, %bb.x ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41 ] ; 2 uses
  %i.ef = extractvalue { i32, i64 } %.pn.i42, 0
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.ac, label %bb.z, !prof !31

bb.z:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit44
end_hunk_1
