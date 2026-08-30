Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/import-svg?download=true
inline.NumInlined: 174
inline.NumDeleted: 62
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.msdfgen::EdgeHolder" = type { ptr }
%"class.tinyxml2::XMLDocument" = type { %"class.tinyxml2::XMLNode", i8, i8, i32, i32, %"class.tinyxml2::StrPair", i32, ptr, i32, i32, %"class.tinyxml2::DynArray", %"class.tinyxml2::MemPoolT", %"class.tinyxml2::MemPoolT.6", %"class.tinyxml2::MemPoolT.8", %"class.tinyxml2::MemPoolT.10" }
%"class.tinyxml2::XMLNode" = type { ptr, ptr, ptr, %"class.tinyxml2::StrPair", i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.tinyxml2::StrPair" = type { i32, ptr, ptr }
%"class.tinyxml2::DynArray" = type { ptr, [10 x ptr], i32, i32 }
%"class.tinyxml2::MemPoolT" = type { %"class.tinyxml2::MemPool", %"class.tinyxml2::DynArray.5", ptr, i32, i32, i32, i32 }
%"class.tinyxml2::MemPool" = type { ptr }
%"class.tinyxml2::DynArray.5" = type { ptr, [10 x ptr], i32, i32 }
%"class.tinyxml2::MemPoolT.6" = type { %"class.tinyxml2::MemPool", %"class.tinyxml2::DynArray.7", ptr, i32, i32, i32, i32 }
%"class.tinyxml2::DynArray.7" = type { ptr, [10 x ptr], i32, i32 }
%"class.tinyxml2::MemPoolT.8" = type { %"class.tinyxml2::MemPool", %"class.tinyxml2::DynArray.9", ptr, i32, i32, i32, i32 }
%"class.tinyxml2::DynArray.9" = type { ptr, [10 x ptr], i32, i32 }
%"class.tinyxml2::MemPoolT.10" = type { %"class.tinyxml2::MemPool", %"class.tinyxml2::DynArray.11", ptr, i32, i32, i32, i32 }
%"class.tinyxml2::DynArray.11" = type { ptr, [10 x ptr], i32, i32 }
%"struct.msdfgen::Vector2" = type { double, double }

@_ZN7msdfgen18SVG_IMPORT_FAILUREE = local_unnamed_addr constant i32 0, align 4
@_ZN7msdfgen23SVG_IMPORT_SUCCESS_FLAGE = local_unnamed_addr constant i32 1, align 4
@_ZN7msdfgen31SVG_IMPORT_PARTIAL_FAILURE_FLAGE = local_unnamed_addr constant i32 2, align 4
@_ZN7msdfgen26SVG_IMPORT_INCOMPLETE_FLAGE = local_unnamed_addr constant i32 4, align 4
@_ZN7msdfgen35SVG_IMPORT_UNSUPPORTED_FEATURE_FLAGE = local_unnamed_addr constant i32 8, align 4
@_ZN7msdfgen38SVG_IMPORT_TRANSFORMATION_IGNORED_FLAGE = local_unnamed_addr constant i32 16, align 4
@.str = private unnamed_addr constant [4 x i8] c"svg\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"viewBox\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"circle\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ellipse\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"polygon\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"use\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen21buildShapeFromSvgPathERNS_5ShapeEPKcd(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, double noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %4 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  %i.v = alloca ptr, align 8                      ; 5 uses
  %i.w = alloca ptr, align 8                      ; 5 uses
  %i.x = alloca ptr, align 8                      ; 5 uses
  %i.y = alloca ptr, align 8                      ; 5 uses
  %i.z = alloca ptr, align 8                      ; 5 uses
  %i.aa = alloca ptr, align 8                     ; 5 uses
  %i.ab = alloca ptr, align 8                     ; 5 uses
  %i.ac = alloca ptr, align 8                     ; 5 uses
  %5 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %6 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %7 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %8 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %9 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %10 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %11 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %12 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.28.0 = phi double [ 0.000000e+00, %bb.a ], [ %i.tk, %.backedge ]
  %.sroa.0314.0 = phi double [ 0.000000e+00, %bb.a ], [ %i.tl, %.backedge ]
  %.0358 = phi i8 [ 0, %bb.a ], [ %.2360577, %.backedge ]
  %.0 = phi ptr [ %1, %bb.a ], [ %.2536, %.backedge ] ; 2 uses
  %.0152 = phi i1 [ false, %bb.a ], [ %.1153, %.backedge ]
  %i.ad = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.tj, %.backedge ]
  br i1 %.0152, label %.critedge, label %.preheader447

.preheader447:                                    ; preds = %bb.b, %.critedge.i.i
  %i.ae = phi ptr [ %i.ag, %.critedge.i.i ], [ %.0, %bb.b ] ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8   ; 3 uses
  switch i8 %i.af, label %bb.c [
    i8 44, label %.critedge.i.i
    i8 32, label %.critedge.i.i
    i8 9, label %.critedge.i.i
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 46, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread
    i8 45, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread
    i8 0, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread
    i8 43, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread
  ]

.critedge.i.i:                                    ; preds = %.preheader447, %.preheader447, %.preheader447, %.preheader447, %.preheader447
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  br label %.preheader447, !llvm.loop !9

bb.c:                                             ; preds = %.preheader447
  %i.ah = add i8 %i.af, -58
  %or.cond14.i = icmp ult i8 %i.ah, -10
  br i1 %or.cond14.i, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

_ZN7msdfgenL12readNodeTypeERcRPKc.exit:           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  br label %.critedge

.critedge:                                        ; preds = %_ZN7msdfgenL12readNodeTypeERcRPKc.exit, %bb.b
  %.1359 = phi i8 [ %.0358, %bb.b ], [ %i.af, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit ] ; 2 uses
  %.1 = phi ptr [ %.0, %bb.b ], [ %i.ai, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit ] ; 3 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7msdfgen5Shape10addContourEv(ptr noundef nonnull align 8 dereferenceable(25) %0) ; 14 uses
  %i.ak = load i8, ptr %.1, align 1, !tbaa !8     ; 2 uses
  %.not742 = icmp eq i8 %i.ak, 0
  br i1 %.not742, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283
  %i.al = phi i8 [ %i.te, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ %i.ak, %.critedge ] ; 9 uses
  %.1150752 = phi i8 [ %.3361, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ 0, %.critedge ] ; 2 uses
  %.0155751 = phi i1 [ %i.ta, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ true, %.critedge ] ; 3 uses
  %.2750 = phi ptr [ %.65, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ %.1, %.critedge ] ; 11 uses
  %.2360749 = phi i8 [ %.5363, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ %.1359, %.critedge ] ; 24 uses
  %.sroa.0289.0748 = phi double [ %i.tf, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ 0.000000e+00, %.critedge ]
  %.sroa.43.0747 = phi double [ %i.tg, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ 0.000000e+00, %.critedge ]
  %i.am = phi <2 x double> [ %i.su, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ %i.ad, %.critedge ] ; 34 uses
  %i.an = phi <2 x double> [ %i.sv, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ zeroinitializer, %.critedge ] ; 13 uses
  %i.ao = phi <2 x double> [ %i.sw, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ zeroinitializer, %.critedge ] ; 9 uses
  %i.ap = phi <2 x double> [ %i.su, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ zeroinitializer, %.critedge ] ; 8 uses
  %i.aq = phi <2 x double> [ %i.sx, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ], [ zeroinitializer, %.critedge ] ; 11 uses
  switch i8 %.2360749, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread [
    i8 77, label %bb.d
    i8 109, label %bb.d
    i8 90, label %bb.f
    i8 122, label %bb.f
    i8 76, label %.preheader1502
    i8 108, label %.preheader1502
    i8 72, label %.preheader1503
    i8 104, label %.preheader1503
    i8 86, label %.preheader1504
    i8 118, label %.preheader1504
    i8 81, label %.preheader1505
    i8 113, label %.preheader1505
    i8 84, label %bb.w
    i8 116, label %bb.w
    i8 67, label %.preheader1506
    i8 99, label %.preheader1506
    i8 83, label %bb.ah
    i8 115, label %bb.ah
    i8 65, label %.preheader1507
    i8 97, label %.preheader1507
  ]

.preheader1507:                                   ; preds = %.lr.ph, %.lr.ph
  br label %bb.am

.preheader1506:                                   ; preds = %.lr.ph, %.lr.ph
  br label %bb.ad

.preheader1505:                                   ; preds = %.lr.ph, %.lr.ph
  br label %bb.s

.preheader1504:                                   ; preds = %.lr.ph, %.lr.ph
  br label %bb.o

.preheader1503:                                   ; preds = %.lr.ph, %.lr.ph
  br label %bb.k

.preheader1502:                                   ; preds = %.lr.ph, %.lr.ph
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph, %.lr.ph
  br i1 %.0155751, label %.preheader, label %.loopexit.loopexit.split.loop.exit

.preheader:                                       ; preds = %bb.d, %.critedge.i.i.i
  %i.ar = phi i8 [ %.pre1064, %.critedge.i.i.i ], [ %i.al, %bb.d ]
  %.6 = phi ptr [ %i.as, %.critedge.i.i.i ], [ %.2750, %bb.d ] ; 3 uses
  switch i8 %i.ar, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i [
    i8 44, label %.critedge.i.i.i
    i8 32, label %.critedge.i.i.i
    i8 9, label %.critedge.i.i.i
    i8 13, label %.critedge.i.i.i
    i8 10, label %.critedge.i.i.i
  ]

.critedge.i.i.i:                                  ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  %.pre1064 = load i8, ptr %i.as, align 1, !tbaa !8
  br label %.preheader, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i:       ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #12
  store ptr null, ptr %i.ac, align 8, !tbaa !11
  %i.at = call double @strtod(ptr noundef nonnull %.6, ptr noundef nonnull %i.ac) #12
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
  %i.av = icmp ugt ptr %i.au, %.6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #12
  br i1 %i.av, label %.preheader1393.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1393.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i, %.critedge.i.i5.i
  %.7 = phi ptr [ %i.ax, %.critedge.i.i5.i ], [ %i.au, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i ] ; 4 uses
  %i.aw = load i8, ptr %.7, align 1, !tbaa !8
  switch i8 %i.aw, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i [
    i8 44, label %.critedge.i.i5.i
    i8 32, label %.critedge.i.i5.i
    i8 9, label %.critedge.i.i5.i
    i8 13, label %.critedge.i.i5.i
    i8 10, label %.critedge.i.i5.i
  ]

.critedge.i.i5.i:                                 ; preds = %.preheader1393.a, %.preheader1393.a, %.preheader1393.a, %.preheader1393.a, %.preheader1393.a
  %i.ax = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br label %.preheader1393.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i:      ; preds = %.preheader1393.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #12
  store ptr null, ptr %i.ab, align 8, !tbaa !11
  %i.ay = call double @strtod(ptr noundef nonnull %.7, ptr noundef nonnull %i.ab) #12
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %i.ba = icmp ugt ptr %i.az, %.7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #12
  br i1 %i.ba, label %bb.e, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

bb.e:                                             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i
  %i.bb = icmp eq i8 %.2360749, 109
  %i.bc = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ay, i64 1 ; 2 uses
  %i.be = fadd <2 x double> %i.am, %i.bd
  %i.bf = insertelement <2 x i1> poison, i1 %i.bb, i64 0
  %i.bg = shufflevector <2 x i1> %i.bf, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bh = select <2 x i1> %i.bg, <2 x double> %i.be, <2 x double> %i.bd ; 2 uses
  %i.bi = add i8 %.2360749, -1
  br label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

bb.f:                                             ; preds = %.lr.ph, %.lr.ph
  %i.bj = extractelement <2 x double> %i.am, i64 0
  %i.bk = extractelement <2 x double> %i.am, i64 1
  br i1 %.0155751, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread, label %.loopexit

bb.g:                                             ; preds = %.preheader1502, %.critedge.i.i.i167
  %i.bl = phi i8 [ %.pre1063, %.critedge.i.i.i167 ], [ %i.al, %.preheader1502 ]
  %.10 = phi ptr [ %i.bm, %.critedge.i.i.i167 ], [ %.2750, %.preheader1502 ] ; 3 uses
  switch i8 %i.bl, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i168 [
    i8 44, label %.critedge.i.i.i167
    i8 32, label %.critedge.i.i.i167
    i8 9, label %.critedge.i.i.i167
    i8 13, label %.critedge.i.i.i167
    i8 10, label %.critedge.i.i.i167
  ]

.critedge.i.i.i167:                               ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 2 uses
  %.pre1063 = load i8, ptr %i.bm, align 1, !tbaa !8
  br label %bb.g, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i168:    ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #12
  store ptr null, ptr %i.aa, align 8, !tbaa !11
  %i.bn = call double @strtod(ptr noundef nonnull %.10, ptr noundef nonnull %i.aa) #12
  %i.bo = load ptr, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.bp = icmp ugt ptr %i.bo, %.10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #12
  br i1 %i.bp, label %.preheader1394.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1394.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i168, %.critedge.i.i5.i170
  %.11 = phi ptr [ %i.br, %.critedge.i.i5.i170 ], [ %i.bo, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i168 ] ; 4 uses
  %i.bq = load i8, ptr %.11, align 1, !tbaa !8
  switch i8 %i.bq, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i171 [
    i8 44, label %.critedge.i.i5.i170
    i8 32, label %.critedge.i.i5.i170
    i8 9, label %.critedge.i.i5.i170
    i8 13, label %.critedge.i.i5.i170
    i8 10, label %.critedge.i.i5.i170
  ]

.critedge.i.i5.i170:                              ; preds = %.preheader1394.a, %.preheader1394.a, %.preheader1394.a, %.preheader1394.a, %.preheader1394.a
  %i.br = getelementptr inbounds nuw i8, ptr %.11, i64 1
  br label %.preheader1394.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i171:   ; preds = %.preheader1394.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #12
  store ptr null, ptr %i.z, align 8, !tbaa !11
  %i.bs = call double @strtod(ptr noundef nonnull %.11, ptr noundef nonnull %i.z) #12
  %i.bt = load ptr, ptr %i.z, align 8, !tbaa !11  ; 2 uses
  %i.bu = icmp ugt ptr %i.bt, %.11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #12
  br i1 %i.bu, label %bb.h, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

bb.h:                                             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i171
  %i.bv = icmp eq i8 %.2360749, 108
  %i.bw = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bs, i64 1 ; 2 uses
  %i.by = fadd <2 x double> %i.am, %i.bx
  %i.bz = insertelement <2 x i1> poison, i1 %i.bv, i64 0
  %i.ca = shufflevector <2 x i1> %i.bz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cb = select <2 x i1> %i.ca, <2 x double> %i.by, <2 x double> %i.bx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.cc = extractelement <2 x double> %i.am, i64 0
  %i.cd = extractelement <2 x double> %i.am, i64 1
  %i.ce = extractelement <2 x double> %i.cb, i64 0
  %i.cf = extractelement <2 x double> %i.cb, i64 1
  %i.cg = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %i.cc, double %i.cd, double %i.ce, double %i.cf, i32 noundef 7)
  store ptr %i.cg, ptr %5, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

bb.j:                                             ; preds = %bb.h
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %common.resume

bb.k:                                             ; preds = %.preheader1503, %.critedge.i.i175
  %i.ci = phi i8 [ %.pre1062, %.critedge.i.i175 ], [ %i.al, %.preheader1503 ]
  %.14 = phi ptr [ %i.cj, %.critedge.i.i175 ], [ %.2750, %.preheader1503 ] ; 3 uses
  switch i8 %i.ci, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i176 [
    i8 44, label %.critedge.i.i175
    i8 32, label %.critedge.i.i175
    i8 9, label %.critedge.i.i175
    i8 13, label %.critedge.i.i175
    i8 10, label %.critedge.i.i175
  ]

.critedge.i.i175:                                 ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 2 uses
  %.pre1062 = load i8, ptr %i.cj, align 1, !tbaa !8
  br label %bb.k, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i176:      ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #12
  store ptr null, ptr %i.y, align 8, !tbaa !11
  %i.ck = call double @strtod(ptr noundef nonnull %.14, ptr noundef nonnull %i.y) #12 ; 2 uses
  %i.cl = load ptr, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %i.cm = icmp ugt ptr %i.cl, %.14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #12
  br i1 %i.cm, label %bb.l, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

bb.l:                                             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i176
  %i.cn = icmp eq i8 %.2360749, 104
  %i.co = extractelement <2 x double> %i.am, i64 0 ; 2 uses
  %i.cp = fadd double %i.co, %i.ck
  %.sroa.0289.3 = select i1 %i.cn, double %i.cp, double %i.ck ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.cq = extractelement <2 x double> %i.am, i64 1
  %i.cr = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %i.co, double %i.cq, double %.sroa.0289.3, double %.sroa.43.0747, i32 noundef 7)
  store ptr %i.cr, ptr %6, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.cs = insertelement <2 x double> %i.ap, double %.sroa.0289.3, i64 0
  br label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

bb.n:                                             ; preds = %bb.l
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %common.resume

bb.o:                                             ; preds = %.preheader1504, %.critedge.i.i178
  %i.cu = phi i8 [ %.pre1061, %.critedge.i.i178 ], [ %i.al, %.preheader1504 ]
  %.16 = phi ptr [ %i.cv, %.critedge.i.i178 ], [ %.2750, %.preheader1504 ] ; 3 uses
  switch i8 %i.cu, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i179 [
    i8 44, label %.critedge.i.i178
    i8 32, label %.critedge.i.i178
    i8 9, label %.critedge.i.i178
    i8 13, label %.critedge.i.i178
    i8 10, label %.critedge.i.i178
  ]

.critedge.i.i178:                                 ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %.16, i64 1 ; 2 uses
  %.pre1061 = load i8, ptr %i.cv, align 1, !tbaa !8
  br label %bb.o, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i179:      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #12
  store ptr null, ptr %i.x, align 8, !tbaa !11
  %i.cw = call double @strtod(ptr noundef nonnull %.16, ptr noundef nonnull %i.x) #12 ; 2 uses
  %i.cx = load ptr, ptr %i.x, align 8, !tbaa !11  ; 2 uses
  %i.cy = icmp ugt ptr %i.cx, %.16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #12
  br i1 %i.cy, label %bb.p, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

bb.p:                                             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i179
  %i.cz = icmp eq i8 %.2360749, 118
  %i.da = extractelement <2 x double> %i.am, i64 1 ; 2 uses
  %i.db = fadd double %i.da, %i.cw
  %.sroa.43.3 = select i1 %i.cz, double %i.db, double %i.cw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.dc = extractelement <2 x double> %i.am, i64 0
  %i.dd = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %i.dc, double %i.da, double %.sroa.0289.0748, double %.sroa.43.3, i32 noundef 7)
  store ptr %i.dd, ptr %7, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.de = insertelement <2 x double> %i.ap, double %.sroa.43.3, i64 1
  br label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

bb.r:                                             ; preds = %bb.p
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %common.resume

bb.s:                                             ; preds = %.preheader1505, %.critedge.i.i.i182
  %i.dg = phi i8 [ %.pre1060, %.critedge.i.i.i182 ], [ %i.al, %.preheader1505 ]
  %.18 = phi ptr [ %i.dh, %.critedge.i.i.i182 ], [ %.2750, %.preheader1505 ] ; 3 uses
  switch i8 %i.dg, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i183 [
    i8 44, label %.critedge.i.i.i182
    i8 32, label %.critedge.i.i.i182
    i8 9, label %.critedge.i.i.i182
    i8 13, label %.critedge.i.i.i182
    i8 10, label %.critedge.i.i.i182
  ]

.critedge.i.i.i182:                               ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %.18, i64 1 ; 2 uses
  %.pre1060 = load i8, ptr %i.dh, align 1, !tbaa !8
  br label %bb.s, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i183:    ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #12
  store ptr null, ptr %i.w, align 8, !tbaa !11
  %i.di = call double @strtod(ptr noundef nonnull %.18, ptr noundef nonnull %i.w) #12
  %i.dj = load ptr, ptr %i.w, align 8, !tbaa !11  ; 2 uses
  %i.dk = icmp ugt ptr %i.dj, %.18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #12
  br i1 %i.dk, label %.preheader1397.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1397.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i183, %.critedge.i.i5.i185
  %.19 = phi ptr [ %i.dm, %.critedge.i.i5.i185 ], [ %i.dj, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i183 ] ; 4 uses
  %i.dl = load i8, ptr %.19, align 1, !tbaa !8
  switch i8 %i.dl, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i186 [
    i8 44, label %.critedge.i.i5.i185
    i8 32, label %.critedge.i.i5.i185
    i8 9, label %.critedge.i.i5.i185
    i8 13, label %.critedge.i.i5.i185
    i8 10, label %.critedge.i.i5.i185
  ]

.critedge.i.i5.i185:                              ; preds = %.preheader1397.a, %.preheader1397.a, %.preheader1397.a, %.preheader1397.a, %.preheader1397.a
  %i.dm = getelementptr inbounds nuw i8, ptr %.19, i64 1
  br label %.preheader1397.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i186:   ; preds = %.preheader1397.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #12
  store ptr null, ptr %i.v, align 8, !tbaa !11
  %i.dn = call double @strtod(ptr noundef nonnull %.19, ptr noundef nonnull %i.v) #12
  %i.do = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %i.dp = icmp ugt ptr %i.do, %.19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #12
  br i1 %i.dp, label %.preheader1396.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1396.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i186, %.critedge.i.i.i190
  %.22 = phi ptr [ %i.dr, %.critedge.i.i.i190 ], [ %i.do, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i186 ] ; 4 uses
  %i.dq = load i8, ptr %.22, align 1, !tbaa !8
  switch i8 %i.dq, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i191 [
    i8 44, label %.critedge.i.i.i190
    i8 32, label %.critedge.i.i.i190
    i8 9, label %.critedge.i.i.i190
    i8 13, label %.critedge.i.i.i190
    i8 10, label %.critedge.i.i.i190
  ]

.critedge.i.i.i190:                               ; preds = %.preheader1396.a, %.preheader1396.a, %.preheader1396.a, %.preheader1396.a, %.preheader1396.a
  %i.dr = getelementptr inbounds nuw i8, ptr %.22, i64 1
  br label %.preheader1396.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i191:    ; preds = %.preheader1396.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #12
  store ptr null, ptr %i.u, align 8, !tbaa !11
  %i.ds = call double @strtod(ptr noundef nonnull %.22, ptr noundef nonnull %i.u) #12
  %i.dt = load ptr, ptr %i.u, align 8, !tbaa !11  ; 2 uses
  %i.du = icmp ugt ptr %i.dt, %.22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #12
  br i1 %i.du, label %.preheader1395.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1395.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i191, %.critedge.i.i5.i193
  %.23 = phi ptr [ %i.dw, %.critedge.i.i5.i193 ], [ %i.dt, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i191 ] ; 4 uses
  %i.dv = load i8, ptr %.23, align 1, !tbaa !8
  switch i8 %i.dv, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i194 [
    i8 44, label %.critedge.i.i5.i193
    i8 32, label %.critedge.i.i5.i193
    i8 9, label %.critedge.i.i5.i193
    i8 13, label %.critedge.i.i5.i193
    i8 10, label %.critedge.i.i5.i193
  ]

.critedge.i.i5.i193:                              ; preds = %.preheader1395.a, %.preheader1395.a, %.preheader1395.a, %.preheader1395.a, %.preheader1395.a
  %i.dw = getelementptr inbounds nuw i8, ptr %.23, i64 1
  br label %.preheader1395.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i194:   ; preds = %.preheader1395.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #12
  store ptr null, ptr %i.t, align 8, !tbaa !11
  %i.dx = call double @strtod(ptr noundef nonnull %.23, ptr noundef nonnull %i.t) #12
  %i.dy = load ptr, ptr %i.t, align 8, !tbaa !11  ; 2 uses
  %i.dz = icmp ugt ptr %i.dy, %.23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #12
  br i1 %i.dz, label %bb.t, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

bb.t:                                             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i194
  %i.ea = icmp eq i8 %.2360749, 113               ; 2 uses
  %i.eb = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dx, i64 1 ; 2 uses
  %i.ed = insertelement <2 x double> poison, double %i.di, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %i.dn, i64 1 ; 2 uses
  %i.ef = fadd <2 x double> %i.am, %i.ee
  %i.eg = fadd <2 x double> %i.am, %i.ec
  %i.eh = select i1 %i.ea, <2 x double> %i.eg, <2 x double> %i.ec ; 3 uses
  %i.ei = select i1 %i.ea, <2 x double> %i.ef, <2 x double> %i.ee ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ej = extractelement <2 x double> %i.am, i64 0
  %i.ek = extractelement <2 x double> %i.am, i64 1
  %i.el = extractelement <2 x double> %i.eh, i64 0
  %i.em = extractelement <2 x double> %i.eh, i64 1
  %i.en = extractelement <2 x double> %i.ei, i64 0
  %i.eo = extractelement <2 x double> %i.ei, i64 1
  %i.ep = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_NS_9EdgeColorE(double %i.ej, double %i.ek, double %i.en, double %i.eo, double %i.el, double %i.em, i32 noundef 7)
  store ptr %i.ep, ptr %8, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

bb.v:                                             ; preds = %bb.t
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %common.resume

bb.w:                                             ; preds = %.lr.ph, %.lr.ph
  switch i8 %.1150752, label %bb.y [
    i8 116, label %bb.x
    i8 113, label %bb.x
    i8 84, label %bb.x
    i8 81, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w, %bb.w
  %i.er = fadd <2 x double> %i.ap, %i.ap
  %i.es = fsub <2 x double> %i.er, %i.ao
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.et = phi <2 x double> [ %i.es, %bb.x ], [ %i.ap, %bb.w ] ; 3 uses
  br label %bb.z

bb.z:                                             ; preds = %.critedge.i.i.i200, %bb.y
  %i.eu = phi i8 [ %i.al, %bb.y ], [ %.pre1059.a, %.critedge.i.i.i200 ]
  %.26 = phi ptr [ %.2750, %bb.y ], [ %i.ev, %.critedge.i.i.i200 ] ; 3 uses
  switch i8 %i.eu, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i201 [
    i8 44, label %.critedge.i.i.i200
    i8 32, label %.critedge.i.i.i200
    i8 9, label %.critedge.i.i.i200
    i8 13, label %.critedge.i.i.i200
    i8 10, label %.critedge.i.i.i200
  ]

.critedge.i.i.i200:                               ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %.26, i64 1 ; 2 uses
  %.pre1059.a = load i8, ptr %i.ev, align 1, !tbaa !8
  br label %bb.z, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i201:    ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #12
  store ptr null, ptr %i.s, align 8, !tbaa !11
  %i.ew = call double @strtod(ptr noundef nonnull %.26, ptr noundef nonnull %i.s) #12
  %i.ex = load ptr, ptr %i.s, align 8, !tbaa !11  ; 2 uses
  %i.ey = icmp ugt ptr %i.ex, %.26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #12
  br i1 %i.ey, label %.preheader1398.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1398.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i201, %.critedge.i.i5.i203
  %.27 = phi ptr [ %i.fa, %.critedge.i.i5.i203 ], [ %i.ex, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i201 ] ; 4 uses
  %i.ez = load i8, ptr %.27, align 1, !tbaa !8
  switch i8 %i.ez, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i204 [
    i8 44, label %.critedge.i.i5.i203
    i8 32, label %.critedge.i.i5.i203
    i8 9, label %.critedge.i.i5.i203
    i8 13, label %.critedge.i.i5.i203
    i8 10, label %.critedge.i.i5.i203
  ]

.critedge.i.i5.i203:                              ; preds = %.preheader1398.a, %.preheader1398.a, %.preheader1398.a, %.preheader1398.a, %.preheader1398.a
  %i.fa = getelementptr inbounds nuw i8, ptr %.27, i64 1
  br label %.preheader1398.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i204:   ; preds = %.preheader1398.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #12
  store ptr null, ptr %i.r, align 8, !tbaa !11
  %i.fb = call double @strtod(ptr noundef nonnull %.27, ptr noundef nonnull %i.r) #12
  %i.fc = load ptr, ptr %i.r, align 8, !tbaa !11  ; 2 uses
  %i.fd = icmp ugt ptr %i.fc, %.27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #12
  br i1 %i.fd, label %bb.aa, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

bb.aa:                                            ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i204
  %i.fe = icmp eq i8 %.2360749, 116
  %i.ff = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.fb, i64 1 ; 2 uses
  %i.fh = fadd <2 x double> %i.am, %i.fg
  %i.fi = insertelement <2 x i1> poison, i1 %i.fe, i64 0
  %i.fj = shufflevector <2 x i1> %i.fi, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fk = select <2 x i1> %i.fj, <2 x double> %i.fh, <2 x double> %i.fg ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.fl = extractelement <2 x double> %i.am, i64 0
  %i.fm = extractelement <2 x double> %i.am, i64 1
  %i.fn = extractelement <2 x double> %i.fk, i64 0
  %i.fo = extractelement <2 x double> %i.fk, i64 1
  %i.fp = extractelement <2 x double> %i.et, i64 0
  %i.fq = extractelement <2 x double> %i.et, i64 1
  %i.fr = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_NS_9EdgeColorE(double %i.fl, double %i.fm, double %i.fp, double %i.fq, double %i.fn, double %i.fo, i32 noundef 7)
  store ptr %i.fr, ptr %9, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %common.resume

bb.ad:                                            ; preds = %.preheader1506, %.critedge.i.i.i208
  %i.ft = phi i8 [ %.pre1058, %.critedge.i.i.i208 ], [ %i.al, %.preheader1506 ]
  %.30 = phi ptr [ %i.fu, %.critedge.i.i.i208 ], [ %.2750, %.preheader1506 ] ; 3 uses
  switch i8 %i.ft, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i209 [
    i8 44, label %.critedge.i.i.i208
    i8 32, label %.critedge.i.i.i208
    i8 9, label %.critedge.i.i.i208
    i8 13, label %.critedge.i.i.i208
    i8 10, label %.critedge.i.i.i208
  ]

.critedge.i.i.i208:                               ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.fu = getelementptr inbounds nuw i8, ptr %.30, i64 1 ; 2 uses
  %.pre1058 = load i8, ptr %i.fu, align 1, !tbaa !8
  br label %bb.ad, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i209:    ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #12
  store ptr null, ptr %i.q, align 8, !tbaa !11
  %i.fv = call double @strtod(ptr noundef nonnull %.30, ptr noundef nonnull %i.q) #12
  %i.fw = load ptr, ptr %i.q, align 8, !tbaa !11  ; 2 uses
  %i.fx = icmp ugt ptr %i.fw, %.30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #12
  br i1 %i.fx, label %.preheader1403.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1403.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i209, %.critedge.i.i5.i211
  %.31 = phi ptr [ %i.fz, %.critedge.i.i5.i211 ], [ %i.fw, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i209 ] ; 4 uses
  %i.fy = load i8, ptr %.31, align 1, !tbaa !8
  switch i8 %i.fy, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i212 [
    i8 44, label %.critedge.i.i5.i211
    i8 32, label %.critedge.i.i5.i211
    i8 9, label %.critedge.i.i5.i211
    i8 13, label %.critedge.i.i5.i211
    i8 10, label %.critedge.i.i5.i211
  ]

.critedge.i.i5.i211:                              ; preds = %.preheader1403.a, %.preheader1403.a, %.preheader1403.a, %.preheader1403.a, %.preheader1403.a
  %i.fz = getelementptr inbounds nuw i8, ptr %.31, i64 1
  br label %.preheader1403.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i212:   ; preds = %.preheader1403.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #12
  store ptr null, ptr %i.p, align 8, !tbaa !11
  %i.ga = call double @strtod(ptr noundef nonnull %.31, ptr noundef nonnull %i.p) #12
  %i.gb = load ptr, ptr %i.p, align 8, !tbaa !11  ; 2 uses
  %i.gc = icmp ugt ptr %i.gb, %.31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  br i1 %i.gc, label %.preheader1402.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1402.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i212, %.critedge.i.i.i216
  %.34 = phi ptr [ %i.ge, %.critedge.i.i.i216 ], [ %i.gb, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i212 ] ; 4 uses
  %i.gd = load i8, ptr %.34, align 1, !tbaa !8
  switch i8 %i.gd, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i217 [
    i8 44, label %.critedge.i.i.i216
    i8 32, label %.critedge.i.i.i216
    i8 9, label %.critedge.i.i.i216
    i8 13, label %.critedge.i.i.i216
    i8 10, label %.critedge.i.i.i216
  ]

.critedge.i.i.i216:                               ; preds = %.preheader1402.a, %.preheader1402.a, %.preheader1402.a, %.preheader1402.a, %.preheader1402.a
  %i.ge = getelementptr inbounds nuw i8, ptr %.34, i64 1
  br label %.preheader1402.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i217:    ; preds = %.preheader1402.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  store ptr null, ptr %i.o, align 8, !tbaa !11
  %i.gf = call double @strtod(ptr noundef nonnull %.34, ptr noundef nonnull %i.o) #12
  %i.gg = load ptr, ptr %i.o, align 8, !tbaa !11  ; 2 uses
  %i.gh = icmp ugt ptr %i.gg, %.34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  br i1 %i.gh, label %.preheader1401.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1401.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i217, %.critedge.i.i5.i219
  %.35 = phi ptr [ %i.gj, %.critedge.i.i5.i219 ], [ %i.gg, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i217 ] ; 4 uses
  %i.gi = load i8, ptr %.35, align 1, !tbaa !8
  switch i8 %i.gi, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i220 [
    i8 44, label %.critedge.i.i5.i219
    i8 32, label %.critedge.i.i5.i219
    i8 9, label %.critedge.i.i5.i219
    i8 13, label %.critedge.i.i5.i219
    i8 10, label %.critedge.i.i5.i219
  ]

.critedge.i.i5.i219:                              ; preds = %.preheader1401.a, %.preheader1401.a, %.preheader1401.a, %.preheader1401.a, %.preheader1401.a
  %i.gj = getelementptr inbounds nuw i8, ptr %.35, i64 1
  br label %.preheader1401.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i220:   ; preds = %.preheader1401.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  store ptr null, ptr %i.n, align 8, !tbaa !11
  %i.gk = call double @strtod(ptr noundef nonnull %.35, ptr noundef nonnull %i.n) #12
  %i.gl = load ptr, ptr %i.n, align 8, !tbaa !11  ; 2 uses
  %i.gm = icmp ugt ptr %i.gl, %.35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  br i1 %i.gm, label %.preheader1400.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1400.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i220, %.critedge.i.i.i224
  %.38 = phi ptr [ %i.go, %.critedge.i.i.i224 ], [ %i.gl, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i220 ] ; 4 uses
  %i.gn = load i8, ptr %.38, align 1, !tbaa !8
  switch i8 %i.gn, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i225 [
    i8 44, label %.critedge.i.i.i224
    i8 32, label %.critedge.i.i.i224
    i8 9, label %.critedge.i.i.i224
    i8 13, label %.critedge.i.i.i224
    i8 10, label %.critedge.i.i.i224
  ]

.critedge.i.i.i224:                               ; preds = %.preheader1400.a, %.preheader1400.a, %.preheader1400.a, %.preheader1400.a, %.preheader1400.a
  %i.go = getelementptr inbounds nuw i8, ptr %.38, i64 1
  br label %.preheader1400.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i225:    ; preds = %.preheader1400.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  store ptr null, ptr %i.m, align 8, !tbaa !11
  %i.gp = call double @strtod(ptr noundef nonnull %.38, ptr noundef nonnull %i.m) #12
  %i.gq = load ptr, ptr %i.m, align 8, !tbaa !11  ; 2 uses
  %i.gr = icmp ugt ptr %i.gq, %.38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  br i1 %i.gr, label %.preheader1399.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1399.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i225, %.critedge.i.i5.i227
  %.39 = phi ptr [ %i.gt, %.critedge.i.i5.i227 ], [ %i.gq, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i225 ] ; 4 uses
  %i.gs = load i8, ptr %.39, align 1, !tbaa !8
  switch i8 %i.gs, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i228 [
    i8 44, label %.critedge.i.i5.i227
    i8 32, label %.critedge.i.i5.i227
    i8 9, label %.critedge.i.i5.i227
    i8 13, label %.critedge.i.i5.i227
    i8 10, label %.critedge.i.i5.i227
  ]

.critedge.i.i5.i227:                              ; preds = %.preheader1399.a, %.preheader1399.a, %.preheader1399.a, %.preheader1399.a, %.preheader1399.a
  %i.gt = getelementptr inbounds nuw i8, ptr %.39, i64 1
  br label %.preheader1399.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i228:   ; preds = %.preheader1399.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  store ptr null, ptr %i.l, align 8, !tbaa !11
  %i.gu = call double @strtod(ptr noundef nonnull %.39, ptr noundef nonnull %i.l) #12
  %i.gv = load ptr, ptr %i.l, align 8, !tbaa !11  ; 2 uses
  %i.gw = icmp ugt ptr %i.gv, %.39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  br i1 %i.gw, label %bb.ae, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

bb.ae:                                            ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i228
  %i.gx = icmp eq i8 %.2360749, 99                ; 3 uses
  %i.gy = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gu, i64 1 ; 2 uses
  %i.ha = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.ga, i64 1 ; 2 uses
  %i.hc = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %i.gk, i64 1 ; 2 uses
  %i.he = fadd <2 x double> %i.am, %i.hb
  %i.hf = fadd <2 x double> %i.am, %i.hd
  %i.hg = fadd <2 x double> %i.am, %i.gz
  %i.hh = select i1 %i.gx, <2 x double> %i.hg, <2 x double> %i.gz ; 3 uses
  %i.hi = select i1 %i.gx, <2 x double> %i.he, <2 x double> %i.hb ; 3 uses
  %i.hj = select i1 %i.gx, <2 x double> %i.hf, <2 x double> %i.hd ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.hk = extractelement <2 x double> %i.am, i64 0
  %i.hl = extractelement <2 x double> %i.am, i64 1
  %i.hm = extractelement <2 x double> %i.hh, i64 0
  %i.hn = extractelement <2 x double> %i.hh, i64 1
  %i.ho = extractelement <2 x double> %i.hj, i64 0
  %i.hp = extractelement <2 x double> %i.hj, i64 1
  %i.hq = extractelement <2 x double> %i.hi, i64 0
  %i.hr = extractelement <2 x double> %i.hi, i64 1
  %i.hs = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double %i.hk, double %i.hl, double %i.hq, double %i.hr, double %i.ho, double %i.hp, double %i.hm, double %i.hn, i32 noundef 7)
  store ptr %i.hs, ptr %10, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %common.resume

bb.ah:                                            ; preds = %.lr.ph, %.lr.ph
  %i.hu = add i8 %.1150752, -67                   ; 2 uses
  %i.hv = call i8 @llvm.fshl.i8(i8 %i.hu, i8 %i.hu, i8 4)
  %switch = icmp ult i8 %i.hv, 4
  %i.hw = fadd <2 x double> %i.ap, %i.ap
  %i.hx = fsub <2 x double> %i.hw, %i.aq
  %i.hy = insertelement <2 x i1> poison, i1 %switch, i64 0
  %i.hz = shufflevector <2 x i1> %i.hy, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ia = select <2 x i1> %i.hz, <2 x double> %i.hx, <2 x double> %i.ap ; 3 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge.i.i.i236, %bb.ah
  %i.ib = phi i8 [ %i.al, %bb.ah ], [ %.pre1057, %.critedge.i.i.i236 ]
  %.42 = phi ptr [ %.2750, %bb.ah ], [ %i.ic, %.critedge.i.i.i236 ] ; 3 uses
  switch i8 %i.ib, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i237 [
    i8 44, label %.critedge.i.i.i236
    i8 32, label %.critedge.i.i.i236
    i8 9, label %.critedge.i.i.i236
    i8 13, label %.critedge.i.i.i236
    i8 10, label %.critedge.i.i.i236
  ]

.critedge.i.i.i236:                               ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  %i.ic = getelementptr inbounds nuw i8, ptr %.42, i64 1 ; 2 uses
  %.pre1057 = load i8, ptr %i.ic, align 1, !tbaa !8
  br label %bb.ai, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i237:    ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  store ptr null, ptr %i.k, align 8, !tbaa !11
  %i.id = call double @strtod(ptr noundef nonnull %.42, ptr noundef nonnull %i.k) #12
  %i.ie = load ptr, ptr %i.k, align 8, !tbaa !11  ; 2 uses
  %i.if = icmp ugt ptr %i.ie, %.42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br i1 %i.if, label %.preheader1406.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1406.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i237, %.critedge.i.i5.i239
  %.43 = phi ptr [ %i.ih, %.critedge.i.i5.i239 ], [ %i.ie, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i237 ] ; 4 uses
  %i.ig = load i8, ptr %.43, align 1, !tbaa !8
  switch i8 %i.ig, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i240 [
    i8 44, label %.critedge.i.i5.i239
    i8 32, label %.critedge.i.i5.i239
    i8 9, label %.critedge.i.i5.i239
    i8 13, label %.critedge.i.i5.i239
    i8 10, label %.critedge.i.i5.i239
  ]

.critedge.i.i5.i239:                              ; preds = %.preheader1406.a, %.preheader1406.a, %.preheader1406.a, %.preheader1406.a, %.preheader1406.a
  %i.ih = getelementptr inbounds nuw i8, ptr %.43, i64 1
  br label %.preheader1406.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i240:   ; preds = %.preheader1406.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  store ptr null, ptr %i.j, align 8, !tbaa !11
  %i.ii = call double @strtod(ptr noundef nonnull %.43, ptr noundef nonnull %i.j) #12
  %i.ij = load ptr, ptr %i.j, align 8, !tbaa !11  ; 2 uses
  %i.ik = icmp ugt ptr %i.ij, %.43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  br i1 %i.ik, label %.preheader1405.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1405.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i240, %.critedge.i.i.i244
  %.46 = phi ptr [ %i.im, %.critedge.i.i.i244 ], [ %i.ij, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i240 ] ; 4 uses
  %i.il = load i8, ptr %.46, align 1, !tbaa !8
  switch i8 %i.il, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i245 [
    i8 44, label %.critedge.i.i.i244
    i8 32, label %.critedge.i.i.i244
    i8 9, label %.critedge.i.i.i244
    i8 13, label %.critedge.i.i.i244
    i8 10, label %.critedge.i.i.i244
  ]

.critedge.i.i.i244:                               ; preds = %.preheader1405.a, %.preheader1405.a, %.preheader1405.a, %.preheader1405.a, %.preheader1405.a
  %i.im = getelementptr inbounds nuw i8, ptr %.46, i64 1
  br label %.preheader1405.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i245:    ; preds = %.preheader1405.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  store ptr null, ptr %i.i, align 8, !tbaa !11
  %i.in = call double @strtod(ptr noundef nonnull %.46, ptr noundef nonnull %i.i) #12
  %i.io = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %i.ip = icmp ugt ptr %i.io, %.46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br i1 %i.ip, label %.preheader1404.a, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1404.a:                                 ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i245, %.critedge.i.i5.i247
  %.47 = phi ptr [ %i.ir, %.critedge.i.i5.i247 ], [ %i.io, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i245 ] ; 4 uses
  %i.iq = load i8, ptr %.47, align 1, !tbaa !8
  switch i8 %i.iq, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i248 [
    i8 44, label %.critedge.i.i5.i247
    i8 32, label %.critedge.i.i5.i247
    i8 9, label %.critedge.i.i5.i247
    i8 13, label %.critedge.i.i5.i247
    i8 10, label %.critedge.i.i5.i247
  ]

.critedge.i.i5.i247:                              ; preds = %.preheader1404.a, %.preheader1404.a, %.preheader1404.a, %.preheader1404.a, %.preheader1404.a
  %i.ir = getelementptr inbounds nuw i8, ptr %.47, i64 1
  br label %.preheader1404.a, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i248:   ; preds = %.preheader1404.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store ptr null, ptr %i.h, align 8, !tbaa !11
  %i.is = call double @strtod(ptr noundef nonnull %.47, ptr noundef nonnull %i.h) #12
  %i.it = load ptr, ptr %i.h, align 8, !tbaa !11  ; 2 uses
  %i.iu = icmp ugt ptr %i.it, %.47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br i1 %i.iu, label %bb.aj, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

bb.aj:                                            ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i248
  %i.iv = icmp eq i8 %.2360749, 115               ; 2 uses
  %i.iw = insertelement <2 x double> poison, double %i.in, i64 0
  %i.ix = insertelement <2 x double> %i.iw, double %i.is, i64 1 ; 2 uses
  %i.iy = insertelement <2 x double> poison, double %i.id, i64 0
  %i.iz = insertelement <2 x double> %i.iy, double %i.ii, i64 1 ; 2 uses
  %i.ja = fadd <2 x double> %i.am, %i.iz
  %i.jb = fadd <2 x double> %i.am, %i.ix
  %i.jc = select i1 %i.iv, <2 x double> %i.jb, <2 x double> %i.ix ; 3 uses
  %i.jd = select i1 %i.iv, <2 x double> %i.ja, <2 x double> %i.iz ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.je = extractelement <2 x double> %i.am, i64 0
  %i.jf = extractelement <2 x double> %i.am, i64 1
  %i.jg = extractelement <2 x double> %i.jc, i64 0
  %i.jh = extractelement <2 x double> %i.jc, i64 1
  %i.ji = extractelement <2 x double> %i.ia, i64 0
  %i.jj = extractelement <2 x double> %i.ia, i64 1
  %i.jk = extractelement <2 x double> %i.jd, i64 0
  %i.jl = extractelement <2 x double> %i.jd, i64 1
  %i.jm = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double %i.je, double %i.jf, double %i.ji, double %i.jj, double %i.jk, double %i.jl, double %i.jg, double %i.jh, i32 noundef 7)
  store ptr %i.jm, ptr %11, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

bb.al:                                            ; preds = %bb.aj
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %common.resume

bb.am:                                            ; preds = %.preheader1507, %.critedge.i.i.i252
  %i.jo = phi i8 [ %.pre, %.critedge.i.i.i252 ], [ %i.al, %.preheader1507 ]
  %.50 = phi ptr [ %i.jp, %.critedge.i.i.i252 ], [ %.2750, %.preheader1507 ] ; 3 uses
  switch i8 %i.jo, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i253 [
    i8 44, label %.critedge.i.i.i252
    i8 32, label %.critedge.i.i.i252
    i8 9, label %.critedge.i.i.i252
    i8 13, label %.critedge.i.i.i252
    i8 10, label %.critedge.i.i.i252
  ]

.critedge.i.i.i252:                               ; preds = %bb.am, %bb.am, %bb.am, %bb.am, %bb.am
  %i.jp = getelementptr inbounds nuw i8, ptr %.50, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.jp, align 1, !tbaa !8
  br label %bb.am, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i253:    ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store ptr null, ptr %i.g, align 8, !tbaa !11
  %i.jq = call double @strtod(ptr noundef nonnull %.50, ptr noundef nonnull %i.g) #12 ; 3 uses
  %i.jr = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.js = icmp ugt ptr %i.jr, %.50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br i1 %i.js, label %.preheader1412, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1412:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i253, %.critedge.i.i5.i255
  %.51 = phi ptr [ %i.ju, %.critedge.i.i5.i255 ], [ %i.jr, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i253 ] ; 4 uses
  %i.jt = load i8, ptr %.51, align 1, !tbaa !8
  switch i8 %i.jt, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256 [
    i8 44, label %.critedge.i.i5.i255
    i8 32, label %.critedge.i.i5.i255
    i8 9, label %.critedge.i.i5.i255
    i8 13, label %.critedge.i.i5.i255
    i8 10, label %.critedge.i.i5.i255
  ]

.critedge.i.i5.i255:                              ; preds = %.preheader1412, %.preheader1412, %.preheader1412, %.preheader1412, %.preheader1412
  %i.ju = getelementptr inbounds nuw i8, ptr %.51, i64 1
  br label %.preheader1412, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256:   ; preds = %.preheader1412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store ptr null, ptr %i.f, align 8, !tbaa !11
  %i.jv = call double @strtod(ptr noundef nonnull %.51, ptr noundef nonnull %i.f) #12 ; 3 uses
  %i.jw = load ptr, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %i.jx = icmp ugt ptr %i.jw, %.51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br i1 %i.jx, label %.preheader1411, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1411:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256, %.critedge.i.i260
  %.54 = phi ptr [ %i.jz, %.critedge.i.i260 ], [ %i.jw, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256 ] ; 4 uses
  %i.jy = load i8, ptr %.54, align 1, !tbaa !8
  switch i8 %i.jy, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261 [
    i8 44, label %.critedge.i.i260
    i8 32, label %.critedge.i.i260
    i8 9, label %.critedge.i.i260
    i8 13, label %.critedge.i.i260
    i8 10, label %.critedge.i.i260
  ]

.critedge.i.i260:                                 ; preds = %.preheader1411, %.preheader1411, %.preheader1411, %.preheader1411, %.preheader1411
  %i.jz = getelementptr inbounds nuw i8, ptr %.54, i64 1
  br label %.preheader1411, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261:      ; preds = %.preheader1411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8, !tbaa !11
  %i.ka = call double @strtod(ptr noundef nonnull %.54, ptr noundef nonnull %i.e) #12
  %i.kb = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.kc = icmp ugt ptr %i.kb, %.54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br i1 %i.kc, label %.preheader1410, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1410:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261, %.critedge.i.i264
  %.56 = phi ptr [ %i.ke, %.critedge.i.i264 ], [ %i.kb, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261 ] ; 4 uses
  %i.kd = load i8, ptr %.56, align 1, !tbaa !8
  switch i8 %i.kd, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265 [
    i8 44, label %.critedge.i.i264
    i8 32, label %.critedge.i.i264
    i8 9, label %.critedge.i.i264
    i8 13, label %.critedge.i.i264
    i8 10, label %.critedge.i.i264
  ]

.critedge.i.i264:                                 ; preds = %.preheader1410, %.preheader1410, %.preheader1410, %.preheader1410, %.preheader1410
  %i.ke = getelementptr inbounds nuw i8, ptr %.56, i64 1
  br label %.preheader1410, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265:      ; preds = %.preheader1410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.kf = call i64 @__isoc23_strtol(ptr noundef nonnull %.56, ptr noundef nonnull %i.d, i32 noundef 10) #12
  %i.kg = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.kh = icmp ugt ptr %i.kg, %.56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br i1 %i.kh, label %.preheader1409, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1409:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265, %.critedge.i.i267
  %.58 = phi ptr [ %i.kj, %.critedge.i.i267 ], [ %i.kg, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265 ] ; 4 uses
  %i.ki = load i8, ptr %.58, align 1, !tbaa !8
  switch i8 %i.ki, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268 [
    i8 44, label %.critedge.i.i267
    i8 32, label %.critedge.i.i267
    i8 9, label %.critedge.i.i267
    i8 13, label %.critedge.i.i267
    i8 10, label %.critedge.i.i267
  ]

.critedge.i.i267:                                 ; preds = %.preheader1409, %.preheader1409, %.preheader1409, %.preheader1409, %.preheader1409
  %i.kj = getelementptr inbounds nuw i8, ptr %.58, i64 1
  br label %.preheader1409, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268:      ; preds = %.preheader1409
  %i.kk = icmp ne i64 %i.kf, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.kl = call i64 @__isoc23_strtol(ptr noundef nonnull %.58, ptr noundef nonnull %i.c, i32 noundef 10) #12
  %i.km = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.kn = icmp ugt ptr %i.km, %.58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br i1 %i.kn, label %.preheader1408, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1408:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268, %.critedge.i.i.i271
  %.60 = phi ptr [ %i.kp, %.critedge.i.i.i271 ], [ %i.km, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268 ] ; 4 uses
  %i.ko = load i8, ptr %.60, align 1, !tbaa !8
  switch i8 %i.ko, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272 [
    i8 44, label %.critedge.i.i.i271
    i8 32, label %.critedge.i.i.i271
    i8 9, label %.critedge.i.i.i271
    i8 13, label %.critedge.i.i.i271
    i8 10, label %.critedge.i.i.i271
  ]

.critedge.i.i.i271:                               ; preds = %.preheader1408, %.preheader1408, %.preheader1408, %.preheader1408, %.preheader1408
  %i.kp = getelementptr inbounds nuw i8, ptr %.60, i64 1
  br label %.preheader1408, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272:    ; preds = %.preheader1408
  %i.kq = icmp ne i64 %i.kl, 0                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.kr = call double @strtod(ptr noundef nonnull %.60, ptr noundef nonnull %i.b) #12
  %i.ks = load ptr, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.kt = icmp ugt ptr %i.ks, %.60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %i.kt, label %.preheader1407, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1407:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272, %.critedge.i.i5.i274
  %.61 = phi ptr [ %i.kv, %.critedge.i.i5.i274 ], [ %i.ks, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272 ] ; 4 uses
  %i.ku = load i8, ptr %.61, align 1, !tbaa !8
  switch i8 %i.ku, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275 [
    i8 44, label %.critedge.i.i5.i274
    i8 32, label %.critedge.i.i5.i274
    i8 9, label %.critedge.i.i5.i274
    i8 13, label %.critedge.i.i5.i274
    i8 10, label %.critedge.i.i5.i274
  ]

.critedge.i.i5.i274:                              ; preds = %.preheader1407, %.preheader1407, %.preheader1407, %.preheader1407, %.preheader1407
  %i.kv = getelementptr inbounds nuw i8, ptr %.61, i64 1
  br label %.preheader1407, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275:   ; preds = %.preheader1407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.kw = call double @strtod(ptr noundef nonnull %.61, ptr noundef nonnull %i.a) #12
  %i.kx = load ptr, ptr %i.a, align 8, !tbaa !11  ; 5 uses
  %i.ky = icmp ugt ptr %i.kx, %.61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %i.ky, label %.critedge163, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.critedge163:                                     ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275
  %i.kz = icmp eq i8 %.2360749, 97
  %i.la = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.lb = insertelement <2 x double> %i.la, double %i.kw, i64 1 ; 2 uses
  %i.lc = fadd <2 x double> %i.am, %i.lb
  %i.ld = insertelement <2 x i1> poison, i1 %i.kz, i64 0
  %i.le = shufflevector <2 x i1> %i.ld, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.lf = select <2 x i1> %i.le, <2 x double> %i.lc, <2 x double> %i.lb ; 9 uses
  %i.lg = fmul double %i.ka, f0x3F91DF46A2529D39  ; 2 uses
  %i.lh = extractelement <2 x double> %i.am, i64 0 ; 2 uses
  %i.li = extractelement <2 x double> %i.lf, i64 0 ; 2 uses
  %i.lj = fcmp oeq double %i.li, %i.lh
  %i.lk = extractelement <2 x double> %i.am, i64 1 ; 2 uses
  %i.ll = extractelement <2 x double> %i.lf, i64 1 ; 2 uses
  %i.lm = fcmp oeq double %i.ll, %i.lk
  %i.ln = select i1 %i.lj, i1 %i.lm, i1 false
  br i1 %i.ln, label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit, label %bb.an

bb.an:                                            ; preds = %.critedge163
  %i.lo = fcmp oeq double %i.jq, 0.000000e+00
  %i.lp = fcmp oeq double %i.jv, 0.000000e+00
  %or.cond.i = select i1 %i.lo, i1 true, i1 %i.lp
  br i1 %or.cond.i, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.lq = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %i.lh, double %i.lk, double %i.li, double %i.ll, i32 noundef 7)
  store ptr %i.lq, ptr %3, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

bb.aq:                                            ; preds = %bb.ao
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %common.resume

bb.ar:                                            ; preds = %bb.an
  %i.ls = call double @llvm.fabs.f64(double %i.jq) ; 2 uses
  %i.lt = call double @llvm.fabs.f64(double %i.jv) ; 2 uses
  %i.lu = call double @cos(double noundef %i.lg) #12 ; 2 uses
  %i.lv = call double @sin(double noundef %i.lg) #12 ; 3 uses
  %i.lw = fsub <2 x double> %i.am, %i.lf
  %i.lx = fmul <2 x double> %i.lw, splat (double 5.000000e-01) ; 2 uses
  %i.ly = fneg double %i.lv
  %i.lz = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.ma = insertelement <2 x double> %i.lz, double %i.jq, i64 1 ; 2 uses
  %i.mb = fmul <2 x double> %i.ma, %i.ma          ; 3 uses
  %13 = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mc = insertelement <2 x double> poison, double %i.lu, i64 0
  %i.md = insertelement <2 x double> %i.mc, double %i.lv, i64 1 ; 4 uses
  %i.me = fmul <2 x double> %13, %i.md
  %i.mf = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.mg = insertelement <2 x double> %i.mf, double %i.ly, i64 0
  %14 = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %14, <2 x double> %i.me) ; 8 uses
  %i.mi = fmul <2 x double> %i.mh, %i.mh          ; 3 uses
  %i.mj = fdiv <2 x double> %i.mi, %i.mb          ; 2 uses
  %shift = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.mj, %shift
  %i.mk = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ml = fcmp ogt double %i.mk, 1.000000e+00
  %i.mm = extractelement <2 x double> %i.mb, i64 0
  %i.mn = extractelement <2 x double> %i.mb, i64 1
  br i1 %i.ml, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %sqrt.i = call double @llvm.sqrt.f64(double %i.mk) ; 2 uses
  %i.mo = fmul double %i.ls, %sqrt.i              ; 3 uses
  %i.mp = fmul double %i.lt, %sqrt.i              ; 3 uses
  %i.mq = fmul double %i.mo, %i.mo
  %i.mr = fmul double %i.mp, %i.mp
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.0260.0.i = phi double [ %i.mo, %bb.as ], [ %i.ls, %bb.ar ] ; 6 uses
  %.sroa.14.0.i = phi double [ %i.mp, %bb.as ], [ %i.lt, %bb.ar ] ; 4 uses
  %.sroa.0140.0.i = phi double [ %i.mq, %bb.as ], [ %i.mn, %bb.ar ] ; 2 uses
  %.sroa.8.0.i = phi double [ %i.mr, %bb.as ], [ %i.mm, %bb.ar ] ; 2 uses
  %i.ms = extractelement <2 x double> %i.mi, i64 1
  %i.mt = fmul double %i.ms, %.sroa.8.0.i
  %i.mu = extractelement <2 x double> %i.mi, i64 0
  %i.mv = call double @llvm.fmuladd.f64(double %.sroa.0140.0.i, double %i.mu, double %i.mt)
  %i.mw = fmul double %.sroa.0140.0.i, %.sroa.8.0.i
  %i.mx = fdiv double %i.mw, %i.mv
  %i.my = fadd double %i.mx, -1.000000e+00        ; 2 uses
  %i.mz = xor i1 %i.kk, %i.kq
  %i.na = fcmp olt double %i.my, 0.000000e+00
  %i.nb = select i1 %i.na, double 0.000000e+00, double %i.my
  %i.nc = call double @sqrt(double noundef %i.nb) #12 ; 2 uses
  %i.nd = fneg double %i.nc
  %i.ne = select i1 %i.mz, double %i.nc, double %i.nd ; 2 uses
  %i.nf = fmul double %.sroa.0260.0.i, %i.ne
  %i.ng = extractelement <2 x double> %i.mh, i64 0
  %i.nh = fmul double %i.ng, %i.nf
  %i.ni = fdiv double %i.nh, %.sroa.14.0.i
  %i.nj = fneg double %i.ne
  %i.nk = fmul double %.sroa.14.0.i, %i.nj
  %i.nl = extractelement <2 x double> %i.mh, i64 1
  %i.nm = fmul double %i.nl, %i.nk
  %i.nn = fdiv double %i.nm, %.sroa.0260.0.i      ; 3 uses
  %i.no = fadd <2 x double> %i.am, %i.lf
  %i.np = fneg double %i.nn
  %i.nq = fmul <2 x double> %i.no, splat (double 5.000000e-01)
  %15 = insertelement <2 x double> poison, double %i.lv, i64 0
  %16 = insertelement <2 x double> %15, double %i.lu, i64 1 ; 3 uses
  %i.nr = insertelement <2 x double> poison, double %i.np, i64 0
  %i.ns = insertelement <2 x double> %i.nr, double %i.nn, i64 1
  %i.nt = fmul <2 x double> %16, %i.ns
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nu = insertelement <2 x double> poison, double %i.ni, i64 0
  %i.nv = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.nv, <2 x double> %i.nt)
  %i.nx = fadd <2 x double> %i.nq, %i.nw          ; 3 uses
  %i.ny = fneg <2 x double> %i.mh
  %i.nz = shufflevector <2 x double> %i.mh, <2 x double> %i.ny, <2 x i32> <i32 1, i32 3>
  %i.oa = fsub <2 x double> %i.nz, %i.nv
  %i.ob = insertelement <2 x double> poison, double %.sroa.0260.0.i, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = fdiv <2 x double> %i.oa, %i.oc          ; 4 uses
  %i.oe = extractelement <2 x double> %i.od, i64 0 ; 4 uses
  %i.of = fmul double %i.oe, 0.000000e+00
  %i.og = fneg <2 x double> %i.mh
  %i.oh = shufflevector <2 x double> %i.mh, <2 x double> %i.og, <2 x i32> <i32 0, i32 2>
  %18 = insertelement <2 x double> poison, double %i.nn, i64 0
  %i.oi = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oj = fsub <2 x double> %i.oh, %i.oi
  %i.ok = insertelement <2 x double> poison, double %.sroa.14.0.i, i64 0
  %i.ol = shufflevector <2 x double> %i.ok, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.om = fdiv <2 x double> %i.oj, %i.ol          ; 4 uses
  %i.on = extractelement <2 x double> %i.om, i64 0 ; 4 uses
  %i.oo = fcmp ogt double %i.on, %i.of
  %i.op = fmul <2 x double> %i.om, %i.om
  %i.oq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.od, <2 x double> %i.od, <2 x double> %i.op)
  %i.or = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.oq) ; 3 uses
  %i.os = extractelement <2 x double> %i.od, i64 1 ; 2 uses
  %i.ot = fneg double %i.os
  %i.ou = fmul double %i.on, %i.ot
  %i.ov = extractelement <2 x double> %i.om, i64 1 ; 2 uses
  %i.ow = call noundef double @llvm.fmuladd.f64(double %i.oe, double %i.ov, double %i.ou)
  %i.ox = fcmp ogt double %i.ow, 0.000000e+00
  %shift1499 = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1500 = fmul <2 x double> %i.or, %shift1499
  %i.oy = fmul double %i.on, 0.000000e+00
  %i.oz = fmul double %i.on, %i.ov
  %i.pa = fadd double %i.oe, %i.oy
  %i.pb = call noundef double @llvm.fmuladd.f64(double %i.oe, double %i.os, double %i.oz)
  %i.pc = insertelement <2 x double> poison, double %i.pb, i64 0
  %i.pd = insertelement <2 x double> %i.pc, double %i.pa, i64 1
  %i.pe = shufflevector <2 x double> %foldExtExtBinop1500, <2 x double> %i.or, <2 x i32> <i32 0, i32 2>
  %i.pf = fdiv <2 x double> %i.pd, %i.pe          ; 3 uses
  %i.pg = fcmp olt <2 x double> %i.pf, splat (double -1.000000e+00)
  %i.ph = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pf)
  %i.pi = fcmp ugt <2 x double> %i.ph, splat (double 1.000000e+00)
  %i.pj = select <2 x i1> %i.pg, <2 x double> splat (double -1.000000e+00), <2 x double> splat (double 1.000000e+00)
  %i.pk = select <2 x i1> %i.pi, <2 x double> %i.pj, <2 x double> %i.pf ; 2 uses
  %i.pl = extractelement <2 x double> %i.pk, i64 1
  %i.pm = call double @acos(double noundef %i.pl) #12 ; 2 uses
  %i.pn = fneg double %i.pm
  %i.po = select i1 %i.oo, double %i.pm, double %i.pn
  %i.pp = extractelement <2 x double> %i.pk, i64 0
  %i.pq = call double @acos(double noundef %i.pp) #12 ; 2 uses
  %i.pr = fneg double %i.pq
  %i.ps = select i1 %i.ox, double %i.pq, double %i.pr ; 5 uses
  %i.pt = fcmp ule double %i.ps, 0.000000e+00
  %or.cond4.not.i = or i1 %i.kq, %i.pt
  br i1 %or.cond4.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.pu = fadd double %i.ps, f0xC01921FB54442D18
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.pv = fcmp olt double %i.ps, 0.000000e+00
  %or.cond6.i = and i1 %i.kq, %i.pv
  br i1 %or.cond6.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.pw = fadd double %i.ps, f0x401921FB54442D18
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0185.i = phi double [ %i.pu, %bb.au ], [ %i.pw, %bb.aw ], [ %i.ps, %bb.av ] ; 2 uses
  %i.px = call double @llvm.fabs.f64(double %.0185.i)
  %i.py = fmul double %i.px, f0x3FE45F306DC9C883
  %i.pz = call double @llvm.ceil.f64(double %i.py)
  %i.qa = fptosi double %i.pz to i32              ; 4 uses
  %i.qb = sitofp i32 %i.qa to double
  %i.qc = fdiv double %.0185.i, %i.qb             ; 2 uses
  %i.qd = fmul double %i.qc, 5.000000e-01         ; 2 uses
  %i.qe = call double @sin(double noundef %i.qd) #12
  %i.qf = call double @cos(double noundef %i.qd) #12
  %i.qg = icmp sgt i32 %i.qa, 0
  br i1 %i.qg, label %.preheader.lr.ph.i, label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

.preheader.lr.ph.i:                               ; preds = %bb.ax
  %i.qh = fmul double %i.qe, f0x3FF5555555555555
  %i.qi = fadd double %i.qf, 1.000000e+00
  %i.qj = fdiv double %i.qh, %i.qi                ; 3 uses
  %i.qk = fneg double %i.qj                       ; 2 uses
  %i.ql = add nsw i32 %i.qa, -1
  %i.qm = insertelement <2 x double> poison, double %i.qk, i64 0
  %i.qn = insertelement <2 x double> %i.qm, double %i.qj, i64 1
  %i.qo = insertelement <2 x double> poison, double %i.qj, i64 0
  %i.qp = insertelement <2 x double> %i.qo, double %i.qk, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ba, %.preheader.lr.ph.i
  %.0186267.i = phi double [ %i.po, %.preheader.lr.ph.i ], [ %i.rb, %bb.ba ] ; 3 uses
  %.0187266.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.ss, %bb.ba ] ; 2 uses
  %i.qq = phi <2 x double> [ %i.am, %.preheader.lr.ph.i ], [ %i.si, %bb.ba ] ; 2 uses
  %i.qr = call double @cos(double noundef %.0186267.i) #12
  %i.qs = call double @sin(double noundef %.0186267.i) #12
  %i.qt = insertelement <2 x double> poison, double %i.qs, i64 0
  %i.qu = insertelement <2 x double> %i.qt, double %i.qr, i64 1 ; 2 uses
  %i.qv = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qn, <2 x double> %i.qu, <2 x double> %i.qv) ; 2 uses
  %i.qx = extractelement <2 x double> %i.qw, i64 0
  %i.qy = fmul double %.sroa.0260.0.i, %i.qx
  %i.qz = insertelement <2 x double> poison, double %i.qy, i64 0
  %i.ra = shufflevector <2 x double> %i.qz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rb = fadd double %i.qc, %.0186267.i          ; 3 uses
  %i.rc = call double @cos(double noundef %i.rb) #12 ; 2 uses
  %i.rd = call double @sin(double noundef %i.rb) #12 ; 2 uses
  %i.re = insertelement <2 x double> poison, double %i.rd, i64 0
  %i.rf = insertelement <2 x double> %i.re, double %i.rc, i64 1 ; 2 uses
  %i.rg = shufflevector <2 x double> %i.rf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qp, <2 x double> %i.rf, <2 x double> %i.rg) ; 2 uses
  %i.ri = extractelement <2 x double> %i.rh, i64 0
  %i.rj = fmul double %.sroa.0260.0.i, %i.ri
  %i.rk = shufflevector <2 x double> %i.qw, <2 x double> %i.rh, <2 x i32> <i32 1, i32 3>
  %i.rl = fmul <2 x double> %i.ol, %i.rk          ; 3 uses
  %i.rm = fneg <2 x double> %i.rl                 ; 2 uses
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> %i.rl, <2 x i32> <i32 2, i32 0>
  %i.ro = fmul <2 x double> %i.md, %i.rn
  %i.rp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.ra, <2 x double> %i.ro)
  %19 = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rq = fadd <2 x double> %i.nx, %19            ; 2 uses
  %i.rr = shufflevector <2 x double> %i.rm, <2 x double> %i.rl, <2 x i32> <i32 3, i32 1>
  %i.rs = fmul <2 x double> %i.md, %i.rr
  %i.rt = insertelement <2 x double> poison, double %i.rj, i64 0
  %i.ru = shufflevector <2 x double> %i.rt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.ru, <2 x double> %i.rs)
  %20 = shufflevector <2 x double> %i.rv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rw = fadd <2 x double> %i.nx, %20            ; 2 uses
  %i.rx = icmp eq i32 %.0187266.i, %i.ql
  br i1 %i.rx, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.preheader.i
  %i.ry = fmul double %.sroa.0260.0.i, %i.rc
  %i.rz = fmul double %.sroa.14.0.i, %i.rd        ; 2 uses
  %i.sa = fneg double %i.rz
  %i.sb = insertelement <2 x double> poison, double %i.sa, i64 0
  %i.sc = insertelement <2 x double> %i.sb, double %i.rz, i64 1
  %i.sd = fmul <2 x double> %16, %i.sc
  %i.se = insertelement <2 x double> poison, double %i.ry, i64 0
  %i.sf = shufflevector <2 x double> %i.se, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.sf, <2 x double> %i.sd)
  %i.sh = fadd <2 x double> %i.nx, %i.sg
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.preheader.i
  %i.si = phi <2 x double> [ %i.sh, %bb.ay ], [ %i.lf, %.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.sj = extractelement <2 x double> %i.si, i64 0
  %i.sk = extractelement <2 x double> %i.si, i64 1
  %i.sl = extractelement <2 x double> %i.qq, i64 0
  %i.sm = extractelement <2 x double> %i.qq, i64 1
  %i.sn = extractelement <2 x double> %i.rq, i64 0
  %i.so = extractelement <2 x double> %i.rq, i64 1
  %i.sp = extractelement <2 x double> %i.rw, i64 0
  %i.sq = extractelement <2 x double> %i.rw, i64 1
  %i.sr = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double %i.sl, double %i.sm, double %i.sn, double %i.so, double %i.sp, double %i.sq, double %i.sj, double %i.sk, i32 noundef 7)
  store ptr %i.sr, ptr %4, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ss = add nuw nsw i32 %.0187266.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ss, %i.qa
  br i1 %exitcond.not.i, label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit, label %.preheader.i, !llvm.loop !17

bb.bb:                                            ; preds = %bb.az
  %i.st = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %bb.n, %bb.r, %bb.v, %bb.ac, %bb.ag, %bb.al, %bb.bj, %bb.aq, %bb.bb
  %common.resume.op = phi { ptr, i32 } [ %i.st, %bb.bb ], [ %i.lr, %bb.aq ], [ %i.vd, %bb.bj ], [ %i.ch, %bb.j ], [ %i.ct, %bb.n ], [ %i.df, %bb.r ], [ %i.eq, %bb.v ], [ %i.fs, %bb.ac ], [ %i.ht, %bb.ag ], [ %i.jn, %bb.al ]
  resume { ptr, i32 } %common.resume.op

_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit: ; preds = %bb.ba, %bb.ax, %bb.ap, %.critedge163, %bb.ak, %bb.af, %bb.ab, %bb.u, %bb.q, %bb.m, %bb.i, %bb.e
  %.3361 = phi i8 [ %i.bi, %bb.e ], [ %.2360749, %bb.i ], [ %.2360749, %bb.m ], [ %.2360749, %bb.q ], [ %.2360749, %bb.u ], [ %.2360749, %bb.ab ], [ %.2360749, %bb.af ], [ %.2360749, %bb.ak ], [ %.2360749, %.critedge163 ], [ %.2360749, %bb.ap ], [ %.2360749, %bb.ax ], [ %.2360749, %bb.ba ] ; 7 uses
  %.3 = phi ptr [ %i.az, %bb.e ], [ %i.bt, %bb.i ], [ %i.cl, %bb.m ], [ %i.cx, %bb.q ], [ %i.dy, %bb.u ], [ %i.fc, %bb.ab ], [ %i.gv, %bb.af ], [ %i.it, %bb.ak ], [ %i.kx, %.critedge163 ], [ %i.kx, %bb.ap ], [ %i.kx, %bb.ax ], [ %i.kx, %bb.ba ]
  %i.su = phi <2 x double> [ %i.bh, %bb.e ], [ %i.cb, %bb.i ], [ %i.cs, %bb.m ], [ %i.de, %bb.q ], [ %i.eh, %bb.u ], [ %i.fk, %bb.ab ], [ %i.hh, %bb.af ], [ %i.jc, %bb.ak ], [ %i.lf, %.critedge163 ], [ %i.lf, %bb.ap ], [ %i.lf, %bb.ax ], [ %i.lf, %bb.ba ] ; 4 uses
  %i.sv = phi <2 x double> [ %i.bh, %bb.e ], [ %i.an, %bb.i ], [ %i.an, %bb.m ], [ %i.an, %bb.q ], [ %i.an, %bb.u ], [ %i.an, %bb.ab ], [ %i.an, %bb.af ], [ %i.an, %bb.ak ], [ %i.an, %.critedge163 ], [ %i.an, %bb.ap ], [ %i.an, %bb.ax ], [ %i.an, %bb.ba ] ; 2 uses
  %i.sw = phi <2 x double> [ %i.ao, %bb.e ], [ %i.ao, %bb.i ], [ %i.ao, %bb.m ], [ %i.ao, %bb.q ], [ %i.ei, %bb.u ], [ %i.et, %bb.ab ], [ %i.hi, %bb.af ], [ %i.ia, %bb.ak ], [ %i.ao, %.critedge163 ], [ %i.ao, %bb.ap ], [ %i.ao, %bb.ax ], [ %i.ao, %bb.ba ]
  %i.sx = phi <2 x double> [ %i.aq, %bb.e ], [ %i.aq, %bb.i ], [ %i.aq, %bb.m ], [ %i.aq, %bb.q ], [ %i.aq, %bb.u ], [ %i.aq, %bb.ab ], [ %i.hj, %bb.af ], [ %i.jd, %bb.ak ], [ %i.aq, %.critedge163 ], [ %i.aq, %bb.ap ], [ %i.aq, %bb.ax ], [ %i.aq, %bb.ba ]
  %i.sy = and i8 %.3361, -33
  %i.sz = icmp eq i8 %i.sy, 77
  %i.ta = and i1 %.0155751, %i.sz
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge.i.i279, %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit
  %.64 = phi ptr [ %.3, %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit ], [ %i.tc, %.critedge.i.i279 ] ; 7 uses
  %i.tb = load i8, ptr %.64, align 1, !tbaa !8    ; 7 uses
  switch i8 %i.tb, label %bb.bd [
    i8 44, label %.critedge.i.i279
    i8 32, label %.critedge.i.i279
    i8 9, label %.critedge.i.i279
    i8 13, label %.critedge.i.i279
    i8 10, label %.critedge.i.i279
    i8 46, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283
    i8 45, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283
    i8 0, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283
    i8 43, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283
  ]

.critedge.i.i279:                                 ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc
  %i.tc = getelementptr inbounds nuw i8, ptr %.64, i64 1
  br label %bb.bc, !llvm.loop !9

bb.bd:                                            ; preds = %bb.bc
  %i.td = add i8 %i.tb, -58
  %or.cond14.i282 = icmp ult i8 %i.td, -10        ; 2 uses
  %spec.select = select i1 %or.cond14.i282, i8 %i.tb, i8 %.3361
  %spec.select445.idx = zext i1 %or.cond14.i282 to i64
  %spec.select445 = getelementptr inbounds nuw i8, ptr %.64, i64 %spec.select445.idx ; 2 uses
  %.pre1065 = load i8, ptr %spec.select445, align 1, !tbaa !8
  br label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283

_ZN7msdfgenL12readNodeTypeERcRPKc.exit283:        ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bd
  %i.te = phi i8 [ %.pre1065, %bb.bd ], [ %i.tb, %bb.bc ], [ %i.tb, %bb.bc ], [ %i.tb, %bb.bc ], [ %i.tb, %bb.bc ] ; 2 uses
  %.5363 = phi i8 [ %spec.select, %bb.bd ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ] ; 2 uses
  %.65 = phi ptr [ %spec.select445, %bb.bd ], [ %.64, %bb.bc ], [ %.64, %bb.bc ], [ %.64, %bb.bc ], [ %.64, %bb.bc ] ; 2 uses
  %.not = icmp eq i8 %i.te, 0
  %i.tf = extractelement <2 x double> %i.su, i64 0 ; 2 uses
  %i.tg = extractelement <2 x double> %i.su, i64 1 ; 2 uses
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.d
  %i.th = extractelement <2 x double> %i.am, i64 0
  %i.ti = extractelement <2 x double> %i.am, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.split.loop.exit, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283, %.critedge, %bb.f
  %.sroa.28.1741 = phi double [ %i.bk, %bb.f ], [ %.sroa.28.0, %.critedge ], [ %i.ti, %.loopexit.loopexit.split.loop.exit ], [ %i.tg, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 2 uses
  %.sroa.0314.1700 = phi double [ %i.bj, %bb.f ], [ %.sroa.0314.0, %.critedge ], [ %i.th, %.loopexit.loopexit.split.loop.exit ], [ %i.tf, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 2 uses
  %.2360577 = phi i8 [ %.2360749, %bb.f ], [ %.1359, %.critedge ], [ %.2360749, %.loopexit.loopexit.split.loop.exit ], [ %.5363, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %.2536 = phi ptr [ %.2750, %bb.f ], [ %.1, %.critedge ], [ %.2750, %.loopexit.loopexit.split.loop.exit ], [ %.65, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %.1153 = phi i1 [ false, %bb.f ], [ false, %.critedge ], [ true, %.loopexit.loopexit.split.loop.exit ], [ false, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %i.tj = phi <2 x double> [ %i.an, %bb.f ], [ zeroinitializer, %.critedge ], [ %i.an, %.loopexit.loopexit.split.loop.exit ], [ %i.sv, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 3 uses
  %i.tk = extractelement <2 x double> %i.tj, i64 1 ; 3 uses
  %i.tl = extractelement <2 x double> %i.tj, i64 0 ; 3 uses
  %i.tm = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.tn = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !19 ; 2 uses
  %i.tp = icmp eq ptr %i.tm, %i.to
  br i1 %i.tp, label %.backedge, label %bb.be

bb.be:                                            ; preds = %.loopexit
  %i.tq = fcmp une double %.sroa.0314.1700, %i.tl
  %i.tr = fcmp une double %.sroa.28.1741, %i.tk
  %i.ts = select i1 %i.tq, i1 true, i1 %i.tr
  br i1 %i.ts, label %bb.bf, label %.backedge

bb.bf:                                            ; preds = %bb.be
  %i.tt = getelementptr inbounds i8, ptr %i.to, i64 -8
  %i.tu = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tt) ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !21
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 40
  %i.tx = load ptr, ptr %i.tw, align 8
  %i.ty = call { double, double } %i.tx(ptr noundef nonnull align 8 dereferenceable(12) %i.tu, double noundef 1.000000e+00) ; 2 uses
  %i.tz = extractvalue { double, double } %i.ty, 0
  %i.ua = extractvalue { double, double } %i.ty, 1
  %i.ub = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.uc = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ub) ; 2 uses
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !21
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  %i.uf = load ptr, ptr %i.ue, align 8
  %i.ug = call { double, double } %i.uf(ptr noundef nonnull align 8 dereferenceable(12) %i.uc, double noundef 0.000000e+00) ; 2 uses
  %i.uh = extractvalue { double, double } %i.ug, 0
  %i.ui = extractvalue { double, double } %i.ug, 1
  %i.uj = fsub double %i.tz, %i.uh                ; 2 uses
  %i.uk = fsub double %i.ua, %i.ui                ; 2 uses
  %i.ul = fmul double %i.uk, %i.uk
  %i.um = call double @llvm.fmuladd.f64(double %i.uj, double %i.uj, double %i.ul)
  %sqrt.i286 = call noundef double @llvm.sqrt.f64(double %i.um)
  %i.un = fcmp olt double %sqrt.i286, %2
  br i1 %i.un, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.uo = load ptr, ptr %i.tn, align 8, !tbaa !19
  %i.up = getelementptr inbounds i8, ptr %i.uo, i64 -8
  %i.uq = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.up) ; 2 uses
  %i.ur = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.us = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ur) ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !21
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 40
  %i.uv = load ptr, ptr %i.uu, align 8
  %i.uw = call { double, double } %i.uv(ptr noundef nonnull align 8 dereferenceable(12) %i.us, double noundef 0.000000e+00) ; 2 uses
  %i.ux = extractvalue { double, double } %i.uw, 0
  %i.uy = extractvalue { double, double } %i.uw, 1
  %i.uz = load ptr, ptr %i.uq, align 8, !tbaa !21
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 112
  %i.vb = load ptr, ptr %i.va, align 8
  call void %i.vb(ptr noundef nonnull align 8 dereferenceable(12) %i.uq, double %i.ux, double %i.uy)
  br label %.backedge

.backedge:                                        ; preds = %bb.bg, %bb.bi, %bb.be, %.loopexit
  br label %bb.b, !llvm.loop !25

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.vc = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %.sroa.0314.1700, double %.sroa.28.1741, double %i.tl, double %i.tk, i32 noundef 7)
  store ptr %i.vc, ptr %12, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %.backedge

bb.bj:                                            ; preds = %bb.bh
  %i.vd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %common.resume

_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread:    ; preds = %bb.c, %bb.f, %.preheader447, %.preheader447, %.preheader447, %.preheader447, %.lr.ph, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i253, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i248, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i245, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i240, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i237, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i228, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i225, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i220, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i217, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i212, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i209, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i204, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i201, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i194, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i191, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i186, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i183, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i179, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i176, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i171, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i168, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i
  %.5 = phi i1 [ true, %.preheader447 ], [ false, %.lr.ph ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i168 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i171 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i176 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i179 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i183 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i186 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i191 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i194 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i201 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i204 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i209 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i212 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i217 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i220 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i225 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i228 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i237 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i240 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i245 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i248 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i253 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275 ], [ true, %.preheader447 ], [ true, %.preheader447 ], [ true, %.preheader447 ], [ true, %bb.c ], [ false, %bb.f ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7msdfgen5Shape10addContourEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL10readDoubleERdRPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.promoted.i = load ptr, ptr %1, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %bb.a
  %i.b = phi ptr [ %i.d, %.critedge.i ], [ %.promoted.i, %bb.a ] ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8
  switch i8 %i.c, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit [
    i8 44, label %.critedge.i
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !11
  br label %bb.b, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit:           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.e = call double @strtod(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #12
  store double %i.e, ptr %0, align 8, !tbaa !26
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !11
  %i.h = icmp ugt ptr %i.f, %i.g                  ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit
  store ptr %i.f, ptr %1, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i1 %i.h
}

declare noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen12loadSvgShapeERNS_5ShapeEPKciPNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.tinyxml2::XMLDocument", align 8 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.msdfgen::Vector2", align 8 ; 8 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN8tinyxml211XMLDocumentC1EbNS_10WhitespaceE(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext true, i32 noundef 0)
  %i.g = invoke noundef i32 @_ZN8tinyxml211XMLDocument8LoadFileEPKc(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.d:                                             ; preds = %bb.b
  %i.i = invoke noundef ptr @_ZNK8tinyxml27XMLNode17FirstChildElementEPKc(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull @.str)
          to label %_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit unwind label %bb.e ; 6 uses

_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit: ; preds = %bb.d
  %.not32 = icmp eq ptr %i.i, null
  br i1 %.not32, label %bb.ad, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.f:                                             ; preds = %_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.k = call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.l = icmp ne i32 %2, 0
  %.neg = sext i1 %i.l to i32
  %i.m = add nsw i32 %i.k, %.neg
  store i32 %i.m, ptr %i.e, align 4, !tbaa !30
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_ZN7msdfgenL22findPathByForwardIndexERPN8tinyxml210XMLElementERiS4_S2_b(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef %i.i, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.i:                                             ; preds = %bb.f
  invoke fastcc void @_ZN7msdfgenL23findPathByBackwardIndexERPN8tinyxml210XMLElementERiS4_S2_b(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef %i.i, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not33 = icmp eq ptr %i.p, null
  br i1 %.not33, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = invoke noundef ptr @_ZNK8tinyxml210XMLElement9AttributeEPKcS2_(ptr noundef nonnull align 8 dereferenceable(120) %i.p, ptr noundef nonnull @.str.1, ptr noundef null)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.not34 = icmp eq ptr %i.q, null
  br i1 %.not34, label %bb.ab, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.s = invoke noundef double @_ZNK8tinyxml210XMLElement15DoubleAttributeEPKcd(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull @.str.2, double noundef 0.000000e+00)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.t = invoke noundef double @_ZNK8tinyxml210XMLElement15DoubleAttributeEPKcd(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull @.str.3, double noundef 0.000000e+00)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  store double %i.s, ptr %5, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store double %i.t, ptr %i.u, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.v = invoke noundef ptr @_ZNK8tinyxml210XMLElement9AttributeEPKcS2_(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull @.str.4, ptr noundef null)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %.not35 = icmp eq ptr %i.v, null
  br i1 %.not35, label %_ZN7msdfgenL10readDoubleERdRPKc.exit, label %.preheader

.preheader:                                       ; preds = %bb.q, %.critedge.i.i
  %i.w = phi ptr [ %i.y, %.critedge.i.i ], [ %i.v, %bb.q ] ; 4 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  switch i8 %i.x, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i [
    i8 44, label %.critedge.i.i
    i8 32, label %.critedge.i.i
    i8 9, label %.critedge.i.i
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
  ]

.critedge.i.i:                                    ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
end_hunk_0
