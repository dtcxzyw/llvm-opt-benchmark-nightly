Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/loop-finder?download=true
inline.NumInlined: 356
inline.NumDeleted: 247
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::compiler::turboshaft::LoopFinder::LoopInfo" = type <{ ptr, ptr, i8, [7 x i8], i64, i64, i8, [7 x i8] }>
%"struct.std::pair.21" = type { ptr, %"struct.v8::internal::compiler::turboshaft::LoopFinder::LoopInfo" }
%"class.v8::internal::ZoneSet" = type { %"class.std::set" }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const v8::internal::compiler::turboshaft::Block *, const v8::internal::compiler::turboshaft::Block *, std::_Identity<const v8::internal::compiler::turboshaft::Block *>, v8::internal::compiler::turboshaft::LoopFinder::BlockCmp, v8::internal::ZoneAllocator<const v8::internal::compiler::turboshaft::Block *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const v8::internal::compiler::turboshaft::Block *, const v8::internal::compiler::turboshaft::Block *, std::_Identity<const v8::internal::compiler::turboshaft::Block *>, v8::internal::compiler::turboshaft::LoopFinder::BlockCmp, v8::internal::ZoneAllocator<const v8::internal::compiler::turboshaft::Block *>>::_Rb_tree_impl" = type { %"class.v8::internal::ZoneAllocator.25", [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.v8::internal::ZoneAllocator.25" = type { ptr }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.0" = type { ptr, ptr, ptr, ptr }

$_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJSB_EEES7_INSE_14_Node_iteratorISB_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE4GrowEm = comdat any

$_ZNSt8_Rb_treeIPKN2v88internal8compiler10turboshaft5BlockES6_St9_IdentityIS6_ENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE16_M_insert_uniqueIRKS6_EESt4pairISt17_Rb_tree_iteratorIS6_EbEOT_ = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft10LoopFinder3RunEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.v8::internal::compiler::turboshaft::LoopFinder::LoopInfo", align 8 ; 4 uses
  %2 = alloca %"struct.std::pair.21", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %3 = ptrtoint ptr %i.f to i64
  %4 = ptrtoint ptr %i.d to i64
  %5 = sub i64 %3, %4
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 %5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.08.013 = phi ptr [ %6, %.lr.ph ], [ %i.j, %bb.d ]
  %i.j = getelementptr inbounds i8, ptr %.sroa.08.013, i64 -8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i8, ptr %i.l, align 8
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @_ZN2v88internal8compiler10turboshaft10LoopFinder9VisitLoopEPKNS2_5BlockE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::turboshaft::LoopFinder::LoopInfo") align 8 %1, ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %i.k, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.o = call { ptr, i8 } @_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJSB_EEES7_INSE_14_Node_iteratorISB_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = icmp eq ptr %i.j, %i.d
  br i1 %i.p, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft10LoopFinder9VisitLoopEPKNS2_5BlockE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.v8::internal::compiler::turboshaft::LoopFinder::LoopInfo") align 8 captures(none) initializes((0, 17), (24, 41)) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.f, align 8 ; 3 uses
  %i.g = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.0.0.copyload.i1.i = load i32, ptr %i.h, align 4 ; 3 uses
  %i.i = lshr i32 %.sroa.0.0.copyload.i1.i, 4
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8
  store ptr %2, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.m, align 8
  store i64 1, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 1
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not2425.i = icmp eq i32 %.sroa.0.0.copyload.i1.i, %.sroa.0.0.copyload.i.i
  br i1 %.not2425.i, label %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.sroa.0.026.i = phi i32 [ %.sroa.0.0.copyload.i1.i, %.lr.ph.i ], [ %i.aj, %.critedge.i ] ; 3 uses
  %i.x = zext i32 %.sroa.0.026.i to i64
  %i.y = add i64 %i.x, %i.v
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = icmp eq i8 %i.aa, 93
  br i1 %i.ab, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit

.critedge.i:                                      ; preds = %bb.c
  %i.ac = load ptr, ptr %i.w, align 8
  %i.ad = lshr i32 %.sroa.0.026.i, 4
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 3
  %i.aj = add i32 %i.ai, %.sroa.0.026.i           ; 2 uses
  %.not24.i = icmp eq i32 %i.aj, %.sroa.0.0.copyload.i.i
  br i1 %.not24.i, label %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit, label %bb.c

_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit: ; preds = %.critedge.i, %bb.a, %bb.b, %bb.d
  %.promoted54 = phi i8 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.critedge.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 11 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp ult ptr %i.am, %i.ap
  br i1 %i.aq, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit, label %bb.e, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 noundef %i.av)
  %.pre.i = load ptr, ptr %i.an, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit

_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit, %bb.e
  %i.aw = phi ptr [ %i.am, %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.an, align 8
  store ptr %i.b, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %._crit_edge, label %.lr.ph53

.lr.ph53:                                         ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph53, %.loopexit
  %i.bf = phi i8 [ %.promoted54, %.lr.ph53 ], [ %i.ea, %.loopexit ] ; 5 uses
  %i.bg = phi ptr [ %i.az, %.lr.ph53 ], [ %i.ee, %.loopexit ]
  %i.bh = phi ptr [ %i.ay, %.lr.ph53 ], [ %i.ed, %.loopexit ]
  %i.bi = phi i64 [ 1, %.lr.ph53 ], [ %i.ec, %.loopexit ] ; 4 uses
  %i.bj = phi i64 [ %i.k, %.lr.ph53 ], [ %i.eb, %.loopexit ] ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 6 uses
  store ptr %i.bk, ptr %i.an, align 8
  %i.bm = icmp eq ptr %i.bl, %2
  br i1 %i.bm, label %.loopexit, label %bb.g, !llvm.loop !8

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.bn, align 4
  %i.bo = zext i32 %.sroa.0.0.copyload.i to i64
  %i.bp = load ptr, ptr %i.bb, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 3 uses
  %.not = icmp eq ptr %i.br, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = icmp eq ptr %i.br, %2
  br i1 %i.bs, label %.loopexit, label %bb.i, !llvm.loop !8

bb.i:                                             ; preds = %bb.h
  %i.bt = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.bu = icmp ult ptr %i.bk, %i.bt
  br i1 %i.bu, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit27, label %bb.j, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bg to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = add nsw i64 %i.by, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 noundef %i.bz)
  %.pre.i26 = load ptr, ptr %i.an, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit27

_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit27: ; preds = %bb.i, %bb.j
  %i.ca = phi ptr [ %i.bk, %bb.i ], [ %.pre.i26, %bb.j ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cb, ptr %i.an, align 8
  store ptr %i.br, ptr %i.ca, align 8
  store i8 1, ptr %i.bc, align 8
  br label %.loopexit, !llvm.loop !8

bb.k:                                             ; preds = %bb.g
  %i.cc = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.cc, ptr %i.c, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i28 = load i32, ptr %i.cd, align 8
  %i.ce = lshr i32 %.sroa.0.0.copyload.i.i28, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 44 ; 2 uses
  %.sroa.0.0.copyload.i1.i29 = load i32, ptr %i.cf, align 4
  %i.cg = lshr i32 %.sroa.0.0.copyload.i1.i29, 4
  %i.ch = sub nsw i32 %i.ce, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = add i64 %i.bj, %i.ci                    ; 3 uses
  store i64 %i.cj, ptr %i.l, align 8
  store ptr %2, ptr %i.bq, align 8
end_hunk_0
