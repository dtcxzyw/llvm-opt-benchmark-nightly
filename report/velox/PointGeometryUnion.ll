inline.NumInlined: 180
inline.NumDeleted: 134
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.geos::algorithm::PointLocator" = type { i8, i32 }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<geos::geom::Coordinate, geos::geom::Coordinate, std::_Identity<geos::geom::Coordinate>, std::less<geos::geom::Coordinate>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<geos::geom::Coordinate, geos::geom::Coordinate, std::_Identity<geos::geom::Coordinate>, std::less<geos::geom::Coordinate>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.geos::operation::geounion::PointGeometryUnion" = type { ptr, ptr, ptr }

$_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_ = comdat any

@_ZTIN4geos4geom8GeometryE = external constant ptr
@_ZTIN4geos4geom5PointE = external constant ptr
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

@_ZN4geos9operation8geounion18PointGeometryUnionC1ERKNS_4geom8GeometryES6_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4geos9operation8geounion18PointGeometryUnionC2ERKNS_4geom8GeometryES6_

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::algorithm::PointLocator", align 4 ; 4 uses
  %3 = alloca %"class.std::set", align 8          ; 11 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !17
  %i.f = load ptr, ptr %1, align 8, !tbaa !18, !nonnull !22, !align !23 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.preheader unwind label %bb.b ; 2 uses

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE6insertERKS2_.exit, %.preheader
  %i.l = load i64, ptr %i.e, align 8, !tbaa !17   ; 8 uses
  switch i64 %i.l, label %bb.q [
    i64 0, label %bb.m
    i64 1, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

bb.c:                                             ; preds = %.lr.ph, %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE6insertERKS2_.exit
  %.053 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE6insertERKS2_.exit ] ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !18, !nonnull !22, !align !23 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef %.053)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = call ptr @__dynamic_cast(ptr nonnull %i.r, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom5PointE, i64 0) #16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(82) %i.s)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

bb.f:                                             ; preds = %bb.d
  br i1 %i.w, label %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE6insertERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(82) %i.s)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !26, !nonnull !22, !align !23
  %i.ad = invoke noundef signext i8 @_ZN4geos9algorithm12PointLocator6locateERKNS_4geom10CoordinateEPKNS2_8GeometryE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull %i.ac)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp eq i8 %i.ad, 2
  br i1 %i.ae, label %bb.j, label %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE6insertERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = invoke { ptr, i8 } @_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE6insertERKS2_.exit unwind label %bb.l ; 0 uses

bb.k:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

bb.l:                                             ; preds = %bb.j, %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE6insertERKS2_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %i.ai = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !27

bb.m:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26, !nonnull !22, !align !23 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 416
  %i.an = load ptr, ptr %i.am, align 8, !noalias !29
  %i.ao = invoke noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_ZNK4geos4geom8Geometry5cloneEv.exit unwind label %bb.n, !inline_history !32

_ZNK4geos4geom8Geometry5cloneEv.exit:             ; preds = %bb.m
  store ptr %i.ao, ptr %0, align 8, !tbaa !33, !alias.scope !29
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

bb.o:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aw = icmp ugt i64 %i.l, 384307168202282325
  br i1 %i.aw, label %bb.r, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ax = mul nuw nsw i64 %i.l, 24
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #18
          to label %.noexc31 unwind label %bb.t   ; 5 uses

.noexc31:                                         ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.ay, ptr %4, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.l
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !38
  %i.bb = add nsw i64 %i.l, -1
  %xtraiter = and i64 %i.l, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc31, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.prol ], [ %i.ay, %.noexc31 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %.noexc31 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc31 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i.prol, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.bc, align 8, !tbaa !39
  %i.bd = add i64 %.01012.i.i.i.i.i.prol, -1      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !42

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc31
  %.lcssa.unr = phi ptr [ poison, %.noexc31 ], [ %i.be, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.ay, %.noexc31 ], [ %i.be, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.l, %.noexc31 ], [ %i.bd, %.lr.ph.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.bb, 7
  br i1 %i.bf, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.bg, align 8, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.bi, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.bk, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.bm, align 8, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.bo, align 8, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.bq, align 8, !tbaa !39
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 144
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.bs, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 168
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.bu, align 8, !tbaa !39
  %i.bv = add i64 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i.i.i.7, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !44

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bw, %.lr.ph.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.lcssa, ptr %i.bx, align 8, !tbaa !45
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.by, %i.a
  br i1 %.not6.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %.unr-lcssa, %.lr.ph.i.i.i.i.i32
  %.08.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i32 ], [ %i.ay, %.unr-lcssa ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i32 ], [ %i.by, %.unr-lcssa ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !tbaa.struct !46
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  %i.cb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i) #19 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cb, %i.a
  br i1 %.not.i.i.i.i.i33, label %.loopexit, label %.lr.ph.i.i.i.i.i32, !llvm.loop !48

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i32, %.unr-lcssa
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !34
  %i.ce = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory16createMultiPointERKSt6vectorINS0_10CoordinateESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(45) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit37 unwind label %bb.u

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit37: ; preds = %.loopexit
  %i.cf = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit37
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #20
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit37, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i, %bb.r
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit39

bb.u:                                             ; preds = %.loopexit
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit39, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #20
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit39

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit39: ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.t ], [ %i.ch, %bb.u ], [ %i.ch, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.o, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit
  %.sroa.044.0 = phi ptr [ %i.ce, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit ], [ %i.au, %bb.o ] ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !26, !nonnull !22, !align !23
  invoke void @_ZN4geos4geom4util16GeometryCombiner7combineEPKNS0_8GeometryES5_(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %.sroa.044.0, ptr noundef nonnull %i.ck)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit
  %.not.i = icmp eq ptr %.sroa.044.0, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i: ; preds = %bb.w
  %i.cl = load ptr, ptr %.sroa.044.0, align 8, !tbaa !24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.sroa.044.0) #16, !inline_history !49
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i40 = icmp eq ptr %.sroa.044.0, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i41

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i41: ; preds = %bb.x
  %i.cp = load ptr, ptr %.sroa.044.0, align 8, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.sroa.044.0) #16, !inline_history !49
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i, %bb.w, %_ZNK4geos4geom8Geometry5cloneEv.exit
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !14
  invoke void @_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.cs)
          to label %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #21
  unreachable

_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit39, %bb.p, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i41, %bb.x, %bb.b, %bb.k, %bb.l, %bb.e, %bb.n
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.ap, %bb.n ], [ %i.m, %bb.b ], [ %i.x, %bb.e ], [ %i.ah, %bb.l ], [ %i.co, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i41 ], [ %i.co, %bb.x ], [ %.pn, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit39 ], [ %i.av, %bb.p ]
  call void @_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn26.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #2

declare noundef signext i8 @_ZN4geos9algorithm12PointLocator6locateERKNS_4geom10CoordinateEPKNS2_8GeometryE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

end_hunk_0
